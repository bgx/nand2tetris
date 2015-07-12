'''Compiles Jack files into VM files

Writing of compiler broken into 5 modules:
1. JackCompiler: top-level driver that sets up and invokes the other modules
2. JackTokenizer: tokenizer
3. SymbolTable: symbol table
4. VMWriter: output module for generating VM code
5. CompilationEngine: recursive top-down compilation engine

Brian Grady

Passed all project11 tests on ____
'''

import sys
import string
import os
import argparse
import re

def main():
    '''Main entry point for the script.'''
    
    commandline = CommandLineInterpreter()
    
    for filename in commandline.jack_filenames:
        jt = JackTokenizer(filename)
        ce = CompilationEngine(filename, jt)
        del ce    
        del jt    
        
       
class CommandLineInterpreter:

    def __init__(self):
        self.commandline_args = self.parse_commandline()
        self.path = self.get_path(self.commandline_args)
        self.jack_filenames = self.get_jack_filenames(self.path)            
    
    def parse_commandline(self):
        '''parse command line arguments to get directory name or file name'''
        parser = argparse.ArgumentParser()
        parser.add_argument('inputargument', nargs='?')
        args = parser.parse_args()
        return args
                    
    def get_path(self,args):
        '''parse command line arguments to get directory name or file name'''
        if(args.inputargument is None):
            print('JackCompiler.py must have a directory name or file name argument.  Type a directory path or .jack file name path as an argument.')
            sys.exit(1)
        path = os.path.abspath(args.inputargument)
        if(not os.path.exists(path)):
            print("The directory or file to translate does not exist.  Try another directory or file path.")
            sys.exit(1)
        return path
    
    def get_jack_filenames(self,path):
        '''create a list of filenames to move through'''
        jack_filenames = []
        if(os.path.isdir(path)):
            for file in os.listdir(path):
                if file.endswith(".jack"):
                    jack_filenames.append(os.path.join(path, file))
            if not jack_filenames:
                print("If a directory is used as an argument it must contain at least one .jack file.  Try another directory or file path.")
                sys.exit(1)
        else:
            if not path.endswith(".jack"):
                print("JackCompiler.py only works on .jack files.  Try another path argument.")
                sys.exit(1)
            else:
                jack_filenames.append(path)
        return jack_filenames
        
class JackTokenizer:
    
    def __init__(self,jack_filename):
        self.keywords = {'class','constructor','function','method','field','static','var','int',
                         'char','boolean','void','true','false','null','this','let','do','if',
                         'else','while','return'}
        self.symbols  = {'{','}','(',')','[',']','.',',',';','+','-','*','/','&','|','<','>','=','~'}
        self.token_specification = [
            ('MLC_START',    r'\/\*'),                  # Multi-line comment start
            ('MLC_FINISH',   r'\*\/'),                  # Multi-line comment finish
            ('SLC_START',    r'\/{2}'),                 # Single line comment start
            ('IDENTIFIER',   r'[a-zA-Z_][A-Za-z\d]*'),  # Identifiers
            ('INT_CONST',    r'\d+'),                   # Integer constants
            ('STRING_CONST', r'\".+\"'),                # String constants
            ('OTHER',        r'[^\s]'),                 # Other
        ]
        self.tok_regex = '|'.join('(?P<%s>%s)' % pair for pair in self.token_specification)
        self.xml_translate = {'KEYWORD':'keyword','SYMBOL':'symbol','INT_CONST':'integerConstant',
                              'STRING_CONST':'stringConstant','IDENTIFIER':'identifier'}
        ####

        self.jack = open(jack_filename, 'r')
        
        ####
        self.xmlT_filename = os.path.dirname(jack_filename) + '\\xml\\' + (os.path.split(jack_filename)[1]).split('.')[0] + 'T.xml'
        if not os.path.exists(os.path.dirname(self.xmlT_filename)):
            os.makedirs(os.path.dirname(self.xmlT_filename))
        self.xmlT = open(self.xmlT_filename, 'w')
        ####
        
        #self.debug = open(self.xmlT_filename.split('.')[0] + 'debug.xml', 'w')
        
        self.xmlT.write('<tokens>' + '\n')
        
        self.mlc_flag = False #multi line comment (/* comment */)
        self.readEOF = False
        self.token_list = []
        self.token_list_temp = []
        self.token_list_k = 0
        self.rebuffer()
        
        
    def __del__(self):
        self.xmlT.write('</tokens>')
        self.xmlT.close()
        
    def getTokenType(self):
        return self.token_list[self.token_list_k][0]
        
    def getTokenValue(self):
        return self.token_list[self.token_list_k][1]      
        
    def advance(self):
        if not self.readEOF:
            self.token_list_k += 1
            if (self.token_list_k >= len(self.token_list)):
                self.rebuffer()
                                
    def rebuffer(self):
        self.line = self.jack.readline()
        self.tokenizeLine()
        while( (self.line != '') and (len(self.token_list_temp) < 1) ):
            self.line = self.jack.readline()
            self.tokenizeLine()
        if(self.line == ''):
            self.readEOF = True
            self.token_list_k -= 1
        else:
            self.token_list = self.token_list_temp[:] #[:] creates a copy
            self.token_list_k = 0    
       
    def tokenizeLine(self):
        self.token_list_temp.clear()
        slc_flag = False; #single line comment (//comment)
        for mo in re.finditer(self.tok_regex,self.line):
            tokenType = mo.lastgroup
            value = mo.group(tokenType)
            if self.mlc_flag:
                if tokenType == 'MLC_FINISH':
                    self.mlc_flag = False;
            elif tokenType == 'MLC_START':
                self.mlc_flag = True;
            elif not slc_flag:
                if tokenType == 'SLC_START':
                    slc_flag = True;
                else:
                    if tokenType == 'IDENTIFIER' and value in self.keywords:
                        tokenType = 'KEYWORD'
                    elif tokenType == 'STRING_CONST':
                        value = value[1:-1]
                    elif tokenType == 'OTHER':
                        if value in self.symbols:
                            tokenType = 'SYMBOL'
                        else:
                            tokenType = 'MISMATCH'
                    self.writeTokenXml(tokenType,value)        
                    self.token_list_temp.append((tokenType,value))
        
    def writeTokenXml(self, tokenType, value):
        xml_value = str(value)
        if(xml_value in ('<','>','&')):
            if xml_value == '<':
                xml_value = '&lt;'
            elif xml_value == '>':
                xml_value = '&gt;'
            else:
                xml_value = '&amp;'
                
        xml = '\t<' + self.xml_translate[tokenType] + '> ' + xml_value + ' </' + self.xml_translate[tokenType] + '>\n'
        self.xmlT.write(xml)
    
    ### thrown together for quick debugging    
    def printTokenListTemp(self):
        self.debug.write('buffer:')  
        for pair in self.token_list_temp:
            self.debug.write(pair[1] + ',')
        self.debug.write('\n')  
        
    def printTokenList(self):
        self.debug.write('buffer:')  
        for pair in self.token_list:
            self.debug.write(pair[1] + ',')
        self.debug.write('\n')    
    
class CompilationEngine:

    def __init__(self, filename, jt):
        self.jt = jt
        
        self.xml_filename = self.jt.xmlT_filename.split('T.')[0] + '.xml'
        if not os.path.exists(os.path.dirname(self.xml_filename)):
            os.makedirs(os.path.dirname(self.xml_filename))
        self.xml = open(self.xml_filename, 'w')
                
        self.tabk = 0
        
        self.symbol_table = SymbolTable()
        self.identifier_category = ''
        self.identifier_type = ''
        self.identifier_context = ''
        self.current_class = ''
        self.current_subroutine = ''
        self.subroutine_locals = 0
        self.subroutine_args = 0
        
        self.vm_writer = VMWriter(filename)

        self.controlstatementlabeltag = 0
        
        if(self.jt.getTokenValue() == 'class'):
            self.compileClass()
        else:
            print('invalid syntax in init')
        
    def __del__(self):
        self.xml.close()
        del self.symbol_table
        del self.vm_writer
        
    def setIdentifierCategory(self, category):
        self.identifier_category = category
        
    def setIdentifierType(self, type):
        self.identifier_type = type
    
    def setIdentifierContext(self, context):
        self.identifier_context = context

    def setCurrentClass(self):
        self.current_class = self.jt.getTokenValue()
        
    def setCurrentSubroutine(self):
        self.current_subroutine = self.jt.getTokenValue()
        
    def getControlStatementLabelTag(self):
        tag = self.controlstatementlabeltag
        self.controlstatementlabeltag += 1
        return tag
        
    def resetControlStatementLabelTag(self):
        self.controlstatementlabeltag = 0

    def writeXmlNonTerminal(self, s, tag_type):
        if(tag_type == 'begin'):
            self.xml.write('\t'*self.tabk + '<' + s + '>\n')
            self.tabk += 1
        elif(tag_type == 'end'):
            self.tabk -= 1
            self.xml.write('\t'*self.tabk + '</' + s + '>\n')
        else:
            self.xml.write('invalid tag_type parameter value given to writeXmlNonTerminal')
    
    def writeXmlTerminal(self):
        xml_value = str(self.jt.getTokenValue())
        if(xml_value in ('<','>','&')):
            if xml_value == '<':
                xml_value = '&lt;'
            elif xml_value == '>':
                xml_value = '&gt;'
            else:
                xml_value = '&amp;'
        self.xml.write('\t'*self.tabk + '<' + self.jt.xml_translate[self.jt.getTokenType()] + '> ' + 
                       xml_value + ' </' + self.jt.xml_translate[self.jt.getTokenType()] + '>\n')
        if(self.jt.getTokenType() == 'IDENTIFIER'):
            self.writeXmlTerminalIdentifier()    
            
    def writeXmlTerminalIdentifier(self, token_value = None):
        if not token_value:
            token_value = self.jt.getTokenValue()
        self.xml.write('\t'*self.tabk + self.identifier_category + ' : ' + self.identifier_context)
        if self.identifier_category in ('var','argument','static','field'):
            if self.identifier_category in ('var','argument'):
                if token_value not in self.symbol_table.subroutine_table:
                    self.symbol_table.define(token_value, self.identifier_type, self.identifier_category)
            elif self.identifier_category in ('static','field'):
                if token_value not in self.symbol_table.class_table:
                    self.symbol_table.define(token_value, self.identifier_type, self.identifier_category)
            self.xml.write(' : ' + self.symbol_table.kindOf(token_value) + ' ' + str(self.symbol_table.indexOf(token_value)))
        self.xml.write('\n')    
                       
    def expectTokenType(self, *token_type):
        if(self.jt.getTokenType() not in token_type):
            print('syntax error: expected tokenType in ' + str(token_type) + ' in routine ' + sys._getframe().f_back.f_code.co_name)
            print('source line: ', end='')  
            for pair in self.jt.token_list:
                print(pair[1] + ' ',end='')
            print('\ntoken index: ' + str(self.jt.token_list_k))
            sys.exit(1)
            
    def expectTokenValue(self, *token_value):  
        if(self.jt.getTokenValue() not in token_value):
            print('syntax error: expected tokenValue in ' + str(token_value) + ' in routine ' + sys._getframe().f_back.f_code.co_name)
            print('source line: ', end='')  
            for pair in self.jt.token_list:
                print(pair[1] + ' ', end='')
            print('\ntoken index: ' + str(self.jt.token_list_k))
            sys.exit(1)
    
    def processTokenExpectingType(self, *token_type):
        self.expectTokenType(*token_type)
        self.writeXmlTerminal()
        self.jt.advance()
    
    def processTokenExpectingValue(self, *token_value):
        self.expectTokenValue(*token_value)
        self.writeXmlTerminal()
        self.jt.advance()
        
        
    
    def compileClass(self):
        '''.'''
        self.writeXmlNonTerminal('class','begin')
        
        self.processTokenExpectingValue('class')
        self.setCurrentClass()
        self.setIdentifierCategory('class')
        self.setIdentifierContext('defined')
        self.processTokenExpectingType('IDENTIFIER')
        self.processTokenExpectingValue('{')
        
        while( self.jt.getTokenValue() != '}'):
            if(self.jt.getTokenValue() in ('static', 'field')):
                self.compileVarDec('class')
            elif(self.jt.getTokenValue() in ('constructor', 'function', 'method')):
                self.compileSubroutine()
            else:
                print('error in compileClass()\n')
                sys.exit(1)
        
        self.processTokenExpectingValue('}')
                
        self.writeXmlNonTerminal('class','end')
        
    def compileVarDec(self,varScope):
        '''.'''
        if(varScope not in ['class','subroutine']):
            print('error in compileVarDec()\n')
            sys.exit(1)
            
        if(varScope == 'class'):
            self.writeXmlNonTerminal('classVarDec','begin')
        else:
            self.writeXmlNonTerminal('varDec','begin')
        
        #var or static or field
        category = self.jt.getTokenValue()
        self.writeXmlTerminal()
        self.jt.advance()
        
        # expecting type
        self.expectTokenType('IDENTIFIER','KEYWORD')
        if(self.jt.getTokenType() == 'KEYWORD'):
            self.expectTokenValue('int','char','boolean')
        self.setIdentifierCategory('class')
        self.setIdentifierContext('used')
        self.setIdentifierType(self.jt.getTokenValue())
        self.writeXmlTerminal()
        self.jt.advance()
        self.setIdentifierCategory(category)
        self.setIdentifierContext('defined')
        self.processTokenExpectingType('IDENTIFIER')
        if(varScope == 'subroutine'):
            self.subroutine_locals += 1;
        
        while(self.jt.getTokenValue() != ';'):
            self.processTokenExpectingValue(',')
            self.processTokenExpectingType('IDENTIFIER')
            if(varScope == 'subroutine'):
                self.subroutine_locals += 1;
            
        # ;
        self.writeXmlTerminal()
        self.jt.advance() 

        if(varScope == 'class'):
            self.writeXmlNonTerminal('classVarDec','end')
        else:
            self.writeXmlNonTerminal('varDec','end')
        
    def compileSubroutine(self):
        '''.'''
        self.writeXmlNonTerminal('subroutineDec','begin')
        
        self.symbol_table.startSubroutine()
        # self.symbol_table.define('this',self.current_class,'argument')
        self.subroutine_locals = 0
        self.resetControlStatementLabelTag()
        
        #constructor or function or method
        self.writeXmlTerminal()
        self.jt.advance()
        
        # expecting type
        self.expectTokenType('IDENTIFIER','KEYWORD')
        if(self.jt.getTokenType() == 'KEYWORD'):
            self.expectTokenValue('void','int','char','boolean')
        self.setIdentifierCategory('class')
        self.setIdentifierContext('used')
        self.setIdentifierType(self.jt.getTokenValue())
        self.writeXmlTerminal()
        self.jt.advance()
        self.setIdentifierCategory('subroutine')
        self.setIdentifierContext('defined')
        self.expectTokenType('IDENTIFIER')
        self.writeXmlTerminal()
        self.setCurrentSubroutine()
        self.jt.advance()
        self.processTokenExpectingValue('(')
        
        self.compileParameterList()
        
        self.processTokenExpectingValue(')')
                
        self.writeXmlNonTerminal('subroutineBody','begin')
        
        self.processTokenExpectingValue('{')
        
        while(self.jt.getTokenValue() == 'var'):
            self.compileVarDec('subroutine')

        self.vm_writer.writeFunction(self.current_class + '.' + self.current_subroutine, self.subroutine_locals)

        if(self.jt.getTokenValue() != '}'):
            self.compileStatements()
        
        self.processTokenExpectingValue('}')
        
        self.writeXmlNonTerminal('subroutineBody','end')
        
        self.writeXmlNonTerminal('subroutineDec','end')
        
    def compileParameterList(self):
        '''.'''
        self.writeXmlNonTerminal('parameterList','begin')
        
        if(self.jt.getTokenValue() != ')'):
            self.setIdentifierContext('used')
            self.setIdentifierCategory('class')
            # expecting type
            self.expectTokenType('IDENTIFIER','KEYWORD')
            if(self.jt.getTokenType() == 'KEYWORD'):
                self.expectTokenValue('void','int','char','boolean')
            self.setIdentifierType(self.jt.getTokenValue())
            self.writeXmlTerminal()
            self.jt.advance()
            self.setIdentifierContext('defined')
            self.setIdentifierCategory('argument')
            self.processTokenExpectingType('IDENTIFIER')
            while(self.jt.getTokenValue() != ')'):
                self.processTokenExpectingValue(',')
                self.setIdentifierCategory('class')
                # expecting type
                self.expectTokenType('IDENTIFIER','KEYWORD')
                if(self.jt.getTokenType() == 'KEYWORD'):
                    self.expectTokenValue('void','int','char','boolean')
                self.writeXmlTerminal()
                self.jt.advance()
                self.setIdentifierContext('defined')
                self.setIdentifierCategory('argument')
                self.processTokenExpectingType('IDENTIFIER')
            
        self.writeXmlNonTerminal('parameterList','end')
                
    def compileStatements(self):
        '''.'''
        self.writeXmlNonTerminal('statements','begin')
        
        self.setIdentifierContext('used')
        
        while(self.jt.getTokenValue() != '}'):
            if(self.jt.getTokenValue() == 'let'):
                self.compileLet()
            elif(self.jt.getTokenValue() == 'if'):
                self.compileIf()
            elif(self.jt.getTokenValue() == 'while'):
                self.compileWhile()
            elif(self.jt.getTokenValue() == 'do'):
                self.compileDo()
            elif(self.jt.getTokenValue() == 'return'):
                self.compileReturn()
            else:
                print('error in compileStatements()\n')
                sys.exit(1)
                        
        self.writeXmlNonTerminal('statements','end')
        
    def compileDo(self):
        '''.'''
        self.writeXmlNonTerminal('doStatement','begin')
               
        #do
        self.writeXmlTerminal()
        self.jt.advance()
               
        self.compileSubroutineCall()
        self.vm_writer.writePop('temp',0)
        
        self.processTokenExpectingValue(';')        
                
        self.writeXmlNonTerminal('doStatement','end')
        
    def compileLet(self):
        '''.'''
        self.writeXmlNonTerminal('letStatement','begin')
        
        #let
        self.writeXmlTerminal()
        self.jt.advance()
        
        nameOfVariableBeingAssignedTo = self.jt.getTokenValue()
        self.setIdentifierCategory(self.symbol_table.kindOf(self.jt.getTokenValue()))
        self.processTokenExpectingType('IDENTIFIER')
        
        self.expectTokenValue('[','=')
        if(self.jt.getTokenValue() == '['):
            self.writeXmlTerminal()
            self.jt.advance()
            self.compileExpression()
            self.processTokenExpectingValue(']')
            
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.compileExpression()
        
        self.processTokenExpectingValue(';')  

        self.vm_writer.writePop(self.symbol_table.kindOf(nameOfVariableBeingAssignedTo), self.symbol_table.indexOf(nameOfVariableBeingAssignedTo))        
        
        self.writeXmlNonTerminal('letStatement','end')
        
    def compileWhile(self):
        '''.'''
        self.writeXmlNonTerminal('whileStatement','begin')
        
        L1 = self.current_class + self.current_subroutine + str(self.getControlStatementLabelTag())
        L2 = self.current_class + self.current_subroutine + str(self.getControlStatementLabelTag())
        
        #while
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.vm_writer.writeLabel(L1)
        
        self.processTokenExpectingValue('(')
        self.compileExpression()
        self.processTokenExpectingValue(')')
        
        self.vm_writer.writeArithmetic('not')
        self.vm_writer.writeIf(L2)
        
        self.processTokenExpectingValue('{')    
        self.compileStatements()
        self.processTokenExpectingValue('}')  

        self.vm_writer.writeGoTo(L1)
        self.vm_writer.writeLabel(L2)
                        
        self.writeXmlNonTerminal('whileStatement','end')
        
    def compileReturn(self):
        '''.'''
        self.writeXmlNonTerminal('returnStatement','begin')
        
        #return
        self.writeXmlTerminal()
        self.jt.advance()
                
        if(self.jt.getTokenValue() != ';'):
            self.compileExpression()
            
        self.expectTokenValue(';')
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.vm_writer.writeReturn()    
        
        self.writeXmlNonTerminal('returnStatement','end')
        
    def compileIf(self):
        '''.'''
        self.writeXmlNonTerminal('ifStatement','begin')
        
        L1 = self.current_class + self.current_subroutine + str(self.getControlStatementLabelTag())
        L2 = self.current_class + self.current_subroutine + str(self.getControlStatementLabelTag())
        
        #if
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.processTokenExpectingValue('(')    
        self.compileExpression()
        self.processTokenExpectingValue(')') 

        self.vm_writer.writeArithmetic('not')
        self.vm_writer.writeIf(L1)
        
        self.processTokenExpectingValue('{')    
        self.compileStatements()
        self.processTokenExpectingValue('}')

        self.vm_writer.writeGoTo(L2)
        self.vm_writer.writeLabel(L1)
        
        if(self.jt.getTokenValue() == 'else'):
            self.writeXmlTerminal()
            self.jt.advance()
            
            self.processTokenExpectingValue('{')    
            self.compileStatements()
            self.processTokenExpectingValue('}')    
        
        self.vm_writer.writeLabel(L2)
        
        self.writeXmlNonTerminal('ifStatement','end')
        
    def compileExpression(self):
        '''.'''
        self.writeXmlNonTerminal('expression','begin')

        self.setIdentifierCategory('var') 

        self.compileTerm()     
        
        while(self.jt.getTokenValue() in ('+','-','*','/','&','|','<','>','=')):
            op_postfix = self.jt.getTokenValue()
            self.writeXmlTerminal()
            self.jt.advance()
            self.compileTerm()
            if(op_postfix == '*'):
                self.vm_writer.writeCall('Math.multiply', 2)
            elif(op_postfix == '/'):
                self.vm_writer.writeCall('Math.divide', 2)
            else:
                op_translate = {'+':'add','-':'sub','=':'eq','>':'gt','<':'lt','&':'and','|':'or'}
                self.vm_writer.writeArithmetic(op_translate[op_postfix])
            
                
        self.writeXmlNonTerminal('expression','end')
        
    def compileTerm(self):
        '''.'''
        self.writeXmlNonTerminal('term','begin')

        if(self.jt.getTokenType() == 'IDENTIFIER'):
            holdName = self.jt.getTokenValue()
            self.jt.advance()
            
            if(self.jt.getTokenValue() in ('(','.')):
                self.compileSubroutineCall(holdName)
            elif(self.jt.getTokenValue() == '['):
                self.xml.write('\t'*self.tabk + '<identifier> ' + str(holdName) + ' </identifier>\n')
                self.setIdentifierCategory(self.symbol_table.kindOf(holdName))
                self.writeXmlTerminalIdentifier(holdName)
                self.writeXmlTerminal()
                self.jt.advance()
                self.compileExpression()
                self.processTokenExpectingValue(']')
            else:
                self.xml.write('\t'*self.tabk + '<identifier> ' + str(holdName) + ' </identifier>\n')
                self.vm_writer.writePush(self.symbol_table.kindOf(holdName),self.symbol_table.indexOf(holdName))
                self.setIdentifierCategory(self.symbol_table.kindOf(holdName))
                self.writeXmlTerminalIdentifier(holdName)
                
        elif(self.jt.getTokenType() == 'SYMBOL'):
            if(self.jt.getTokenValue() == ('-')):
                self.writeXmlTerminal()
                self.jt.advance()
                self.compileTerm()
                self.vm_writer.writeArithmetic('neg')
            elif(self.jt.getTokenValue() == ('~')):
                self.writeXmlTerminal()
                self.jt.advance()
                self.compileTerm()
                self.vm_writer.writeArithmetic('not')
            elif(self.jt.getTokenValue() == '('):
                self.writeXmlTerminal()
                self.jt.advance()
                self.compileExpression()
                self.processTokenExpectingValue(')')
        elif(self.jt.getTokenType() == 'INT_CONST'):
            self.vm_writer.writePush('constant',self.jt.getTokenValue())
            self.writeXmlTerminal()
            self.jt.advance()
        elif(self.jt.getTokenType() == 'KEYWORD'):
            if(self.jt.getTokenValue() in ('null','false')):
                self.vm_writer.writePush('constant',0)
            elif(self.jt.getTokenValue() in ('true')):
                self.vm_writer.writePush('constant',1)
                self.vm_writer.writeArithmetic('neg')
            self.writeXmlTerminal()
            self.jt.advance()
        else:
            self.writeXmlTerminal()
            self.jt.advance()
                
        self.writeXmlNonTerminal('term','end')
        
    def compileSubroutineCall(self, subroutineName = None):
        '''.'''
        self.subroutine_args = 0
        subroutine_call_name = ''
        self.setIdentifierCategory('subroutine')
        self.setIdentifierContext('used')
        if(subroutineName):
            holdName = subroutineName
        else:
            holdName = self.jt.getTokenValue()
            self.jt.advance()
        subroutine_call_name = holdName    
        
        if(self.jt.getTokenValue() == '.'):
            self.xml.write('\t'*self.tabk + '<identifier> ' + str(holdName) + ' </identifier>\n')
            if((holdName in self.symbol_table.subroutine_table) or (holdName in self.symbol_table.class_table)):
                self.setIdentifierCategory(self.symbol_table.kindOf(holdName))
            else:
                self.setIdentifierCategory('class')
            self.writeXmlTerminalIdentifier(holdName)
            self.writeXmlTerminal()    
            self.jt.advance()
            subroutine_call_name = subroutine_call_name + '.' + self.jt.getTokenValue()
            self.setIdentifierCategory('subroutine')
            self.processTokenExpectingType('IDENTIFIER')
        else:
            self.xml.write('\t'*self.tabk + '<identifier> ' + str(holdName) + ' </identifier>\n')
            self.writeXmlTerminalIdentifier(holdName)    

        self.processTokenExpectingValue('(')
        self.compileExpressionList()
        self.processTokenExpectingValue(')')
        
        self.vm_writer.writeCall(subroutine_call_name,self.subroutine_args)
        
    def compileExpressionList(self):
        '''.'''
        self.writeXmlNonTerminal('expressionList','begin')
        
        if(self.jt.getTokenValue() != ')'):
            self.compileExpression()
            self.subroutine_args += 1
            while(self.jt.getTokenValue() != ')'):
                self.processTokenExpectingValue(',')
                self.compileExpression()
                self.subroutine_args += 1
            
        self.writeXmlNonTerminal('expressionList','end')

class SymbolTable:

    def __init__(self):
        self.class_table = {}
        self.subroutine_table = {}
        self.var_count = {'static':0,'field':0,'argument':0,'var':0}
        
    def startSubroutine(self):
        self.subroutine_table = {}
        self.var_count['argument']=0
        self.var_count['var']=0
        
    def define(self,name,type,kind):
        '''.'''
        if kind in ('static','field'):
            self.class_table[name] = (type,kind,self.varCount(kind))
            self.var_count[kind] += 1
        elif kind in ('argument','var'):
            self.subroutine_table[name] = (type,kind,self.varCount(kind))
            self.var_count[kind] += 1
        else:
            print('error in SymbolTable.define() for name: ' + name)
            sys.exit(1)
        
    def varCount(self,kind):
        '''.'''
        if kind in self.var_count:
            return self.var_count[kind]
        else:
            print('error in SymbolTable.varCount() for kind: ' + kind)
            sys.exit(1)
        
    def kindOf(self,name):
        '''.'''
        if name in self.subroutine_table:
            return self.subroutine_table[name][1]
        elif name in self.class_table:
            return self.class_table[name][1]
        
    def typeOf(self,name):
        '''.'''
        if name in self.subroutine_table:
            return self.subroutine_table[name][0]
        elif name in self.class_table:
            return self.class_table[name][0]
        
    def indexOf(self,name):
        '''.'''
        if name in self.subroutine_table:
            return self.subroutine_table[name][2]
        elif name in self.class_table:
            return self.class_table[name][2]
            
class VMWriter:

    def __init__(self, filename):
        '''.'''
        self.vm_filename = filename.split('.')[0] + '.vm'
        self.vm_file = open(self.vm_filename, 'w')
        
        self.segment_names = ['constant','argument','local','static','this','that','pointer','temp']
        self.command_names = ['add','sub','neg','eq','gt','lt','and','or','not']
        
        self.symboltablekindtovmwritersegment = {'static':'static','field':'this','argument':'argument','var':'local'}

    def writePush(self, segment, index):
        '''.'''
        if(segment in self.symboltablekindtovmwritersegment):
            segment = self.symboltablekindtovmwritersegment[segment]
        if(isinstance(segment,str)):
            segment.lower()
            if(segment not in self.segment_names):
                print('error in writePush: segment name not legal')
                sys.exit(1)
        else:
            print('error in writePush: segment not a string')
            sys.exit(1)    
            
        self.vm_file.write('push ' + segment + ' ' + str(index) + '\n')
    
    def writePop(self, segment, index):
        '''.'''
        if(segment in self.symboltablekindtovmwritersegment):
            segment = self.symboltablekindtovmwritersegment[segment]
        if(isinstance(segment,str)):
            segment.lower()
            if(segment not in self.segment_names):
                print('error in writePush: segment name not legal')
                sys.exit(1)
        else:
            print('error in writePush: segment not a string')
            sys.exit(1)    
            
        self.vm_file.write('pop ' + segment + ' ' + str(index) + '\n')
    
    def writeArithmetic(self, command):
        '''.'''
        if(isinstance(command,str)):
            command.lower()
            if(command not in self.command_names):
                print('error in writeArithmetic: command name not legal')
                sys.exit(1)
        else:
            print('error in writeArithmetic: command not a string')
            sys.exit(1)    
        
        self.vm_file.write(command + '\n')
    
    def writeLabel(self, label):
        '''.'''
        self.vm_file.write('label ' + label + '\n')
    
    def writeGoTo(self, label):
        '''.'''
        self.vm_file.write('goto ' + label + '\n')
    
    def writeIf(self, label):
        '''.'''
        self.vm_file.write('if-goto ' + label + '\n')
    
    def writeCall(self, name, nArgs):
        '''.'''
        self.vm_file.write('call ' + name + ' ' + str(nArgs) + '\n')
    
    def writeFunction(self, name, nLocals):
        '''.'''
        self.vm_file.write('function ' + name + ' ' + str(nLocals) + '\n')
    
    def writeReturn(self):
        '''.'''
        self.vm_file.write('return' + '\n')
    
    def close(self):
        '''.'''
        self.vm_file.close()
        
    def writeDebug(self,arg):
        self.vm_file.write(arg + '\n')
   
if __name__ == '__main__':
    sys.exit(main())