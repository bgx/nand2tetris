'''Compiles Jack files into VM files

Writing of compiler broken into 5 modules:
1. JackCompiler: top-level driver that sets up and invokes the other modules
2. JackTokenizer: tokenizer
3. SymbolTable: symbol table
4. VMWriter: output module for generating VM code
5. CompilationEngine: recursive top-down compilation engine

The objective of Project 10 is to build a syntax analyzer without any implementation details (working 2 w/ rough 1 and 5)
(1-5 are fully implemented in Project 11)

Brian Grady

Passed all project10 tests on 2015.04.08
'''

import sys
import string
import os
import argparse
import re

def main():
    '''Main entry point for the script.'''
    
    commandline = CommandLineInterpreter()
    
    for file in commandline.jack_filenames:
        jt = JackTokenizer(file)
        ce = CompilationEngine(jt)
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

    def __init__(self, jt):
        self.jt = jt
        
        self.xml_filename = self.jt.xmlT_filename.split('T.')[0] + '.xml'
        if not os.path.exists(os.path.dirname(self.xml_filename)):
            os.makedirs(os.path.dirname(self.xml_filename))
        self.xml = open(self.xml_filename, 'w')
                
        self.tabk = 0
        
        if(self.jt.getTokenValue() == 'class'):
            self.compileClass()
        else:
            print('invalid syntax in init')
        
    def __del__(self):
        self.xml.close()

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
        self.processTokenExpectingType('IDENTIFIER')
        self.processTokenExpectingValue('{')
        
        while( self.jt.getTokenValue() != '}'):
            if(self.jt.getTokenValue() in ('static', 'field')):
                self.compileClassVarDec()
            elif(self.jt.getTokenValue() in ('constructor', 'function', 'method')):
                self.compileSubroutine()
            else:
                print('error in compileClass()\n')
                sys.exit(1)
        
        self.processTokenExpectingValue('}')
                
        self.writeXmlNonTerminal('class','end')
        
    def compileClassVarDec(self):
        '''.'''
        self.writeXmlNonTerminal('classVarDec','begin')
        
        # static or field
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.expectTokenType('IDENTIFIER','KEYWORD')
        if(self.jt.getTokenType() == 'KEYWORD'):
            self.expectTokenValue('int','char','boolean')
        self.writeXmlTerminal()
        self.jt.advance()
        self.processTokenExpectingType('IDENTIFIER')
        
        while(self.jt.getTokenValue() != ';'):
            self.processTokenExpectingValue(',')
            self.processTokenExpectingType('IDENTIFIER')
            
        # ;
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.writeXmlNonTerminal('classVarDec','end')
        
        
    def compileSubroutine(self):
        '''.'''
        self.writeXmlNonTerminal('subroutineDec','begin')
        
        #constructor or function or method
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.expectTokenType('IDENTIFIER','KEYWORD')
        if(self.jt.getTokenType() == 'KEYWORD'):
            self.expectTokenValue('void','int','char','boolean')
        self.writeXmlTerminal()
        self.jt.advance()
        self.processTokenExpectingType('IDENTIFIER')
        self.processTokenExpectingValue('(')
        
        self.compileParameterList()
        
        self.processTokenExpectingValue(')')
        
        self.writeXmlNonTerminal('subroutineBody','begin')
        
        self.processTokenExpectingValue('{')
        
        while(self.jt.getTokenValue() == 'var'):
            self.compileVarDec()
        
        if(self.jt.getTokenValue() != '}'):
            self.compileStatements()
        
        self.processTokenExpectingValue('}')
        
        self.writeXmlNonTerminal('subroutineBody','end')
        
        self.writeXmlNonTerminal('subroutineDec','end')
        
    def compileParameterList(self):
        '''.'''
        self.writeXmlNonTerminal('parameterList','begin')
        
        while(self.jt.getTokenValue() != ')'):
            self.expectTokenType('IDENTIFIER','KEYWORD')
            if(self.jt.getTokenType() == 'KEYWORD'):
                self.expectTokenValue('void','int','char','boolean')
            self.writeXmlTerminal()
            self.jt.advance()
            self.processTokenExpectingType('IDENTIFIER')
            while(self.jt.getTokenValue() != ')'):
                self.processTokenExpectingValue(',')
                self.expectTokenType('IDENTIFIER','KEYWORD')
                if(self.jt.getTokenType() == 'KEYWORD'):
                    self.expectTokenValue('void','int','char','boolean')
                self.writeXmlTerminal()
                self.jt.advance()
                self.processTokenExpectingType('IDENTIFIER')
            
        self.writeXmlNonTerminal('parameterList','end')
        
    def compileVarDec(self):
        '''.'''
        self.writeXmlNonTerminal('varDec','begin')
                
        #var
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.expectTokenType('IDENTIFIER','KEYWORD')
        if(self.jt.getTokenType() == 'KEYWORD'):
            self.expectTokenValue('int','char','boolean')
        self.writeXmlTerminal()
        self.jt.advance()
        self.processTokenExpectingType('IDENTIFIER')
        
        while(self.jt.getTokenValue() != ';'):
            self.processTokenExpectingValue(',')
            self.processTokenExpectingType('IDENTIFIER')
            
        # ;
        self.writeXmlTerminal()
        self.jt.advance()            
        
        self.writeXmlNonTerminal('varDec','end')
        
    def compileStatements(self):
        '''.'''
        self.writeXmlNonTerminal('statements','begin')
        
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
        
        self.processTokenExpectingValue(';')        
                
        self.writeXmlNonTerminal('doStatement','end')
        
    def compileLet(self):
        '''.'''
        self.writeXmlNonTerminal('letStatement','begin')
        
        #let
        self.writeXmlTerminal()
        self.jt.advance()
        
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
        
        self.writeXmlNonTerminal('letStatement','end')
        
    def compileWhile(self):
        '''.'''
        self.writeXmlNonTerminal('whileStatement','begin')
        
        #while
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.processTokenExpectingValue('(')    
        
        self.compileExpression()
        
        self.processTokenExpectingValue(')')    
        
        self.processTokenExpectingValue('{')    
        
        self.compileStatements()
        
        self.processTokenExpectingValue('}')    
                        
        self.writeXmlNonTerminal('whileStatement','end')
        
    def compileReturn(self):
        '''.'''
        self.writeXmlNonTerminal('returnStatement','begin')
        
        #return
        self.writeXmlTerminal()
        self.jt.advance()
                
        if(self.jt.getTokenValue() != ';'):
            self.compileExpression()
            
        self.processTokenExpectingValue(';')    
        
        self.writeXmlNonTerminal('returnStatement','end')
        
    def compileIf(self):
        '''.'''
        self.writeXmlNonTerminal('ifStatement','begin')
        
        #if
        self.writeXmlTerminal()
        self.jt.advance()
        
        self.processTokenExpectingValue('(')    
        
        self.compileExpression()
        
        self.processTokenExpectingValue(')')    
        
        self.processTokenExpectingValue('{')    
        
        self.compileStatements()
        
        self.processTokenExpectingValue('}')    
                
        if(self.jt.getTokenValue() == 'else'):
            self.writeXmlTerminal()
            self.jt.advance()
            self.processTokenExpectingValue('{')    
            
            self.compileStatements()
            
            self.processTokenExpectingValue('}')    
        
        self.writeXmlNonTerminal('ifStatement','end')
        
    def compileExpression(self):
        '''.'''
        self.writeXmlNonTerminal('expression','begin')
        
        self.compileTerm()     
        
        while(self.jt.getTokenValue() in ('+','-','*','/','&','|','<','>','=')):
            self.writeXmlTerminal()
            self.jt.advance()
            self.compileTerm()
                
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
                self.writeXmlTerminal()
                self.jt.advance()
                self.compileExpression()
                self.processTokenExpectingValue(']')
            else:
                self.xml.write('\t'*self.tabk + '<identifier> ' + str(holdName) + ' </identifier>\n')
                
        elif(self.jt.getTokenType() == 'SYMBOL'):
            if(self.jt.getTokenValue() in ('-','~')):
                self.writeXmlTerminal()
                self.jt.advance()
                self.compileTerm()
            elif(self.jt.getTokenValue() == '('):
                self.writeXmlTerminal()
                self.jt.advance()
                self.compileExpression()
                self.processTokenExpectingValue(')')
        else:
            self.writeXmlTerminal()
            self.jt.advance()
                
        self.writeXmlNonTerminal('term','end')
        
    def compileSubroutineCall(self, subroutineName = None):
        '''.'''
        if(subroutineName):
            self.xml.write('\t'*self.tabk + '<identifier> ' + str(subroutineName) + ' </identifier>\n')
        else:
            self.writeXmlTerminal()
            self.jt.advance()
        
        if(self.jt.getTokenValue() == '.'):
            self.writeXmlTerminal()
            self.jt.advance()
            self.processTokenExpectingType('IDENTIFIER')
        
        self.processTokenExpectingValue('(')
        self.compileExpressionList()
        self.processTokenExpectingValue(')')
        
    def compileExpressionList(self):
        '''.'''
        self.writeXmlNonTerminal('expressionList','begin')
        
        if(self.jt.getTokenValue() != ')'):
            self.compileExpression()
            while(self.jt.getTokenValue() != ')'):
                self.processTokenExpectingValue(',')
                self.compileExpression()
            
        self.writeXmlNonTerminal('expressionList','end')
   
def get_xml_filename(jack_filename):
    ''' returns xml filename for a given jack_filename '''
    xml_filename = os.path.dirname(jack_filename) + '\\xml\\' + (os.path.split(jack_filename)[1]).split('.')[0] + '.xml'
    if not os.path.exists(os.path.dirname(xml_filename)):
        os.makedirs(os.path.dirname(xml_filename))
    return xml_filename

   
if __name__ == '__main__':
    sys.exit(main())