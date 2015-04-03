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

Passed all project10 tests on ___
'''

import sys
import string
import os
import argparse
import re

import CompilationEngine

def main():
    '''Main entry point for the script.'''
    
    #### parse command line to get path names and flag values
    commandline_args = parse_commandline()

    path = get_path(commandline_args)
    if path == 'exit':
        return
    
    jack_filenames = get_jack_filenames(path) 
    ####
    
    #### write to file for each .jack file
    for file in jack_filenames:
    
        jt = JackTokenizer(file)
        xml = get_xml_filename(file)
        
        with open(xml, 'w') as xml_output:
        
            while(jt.advance()):
                    xml_text = jt.tokenType() + ' ' + str(jt.tokenValue())
                    if not xml_text:
                        oline = ''
                    else:
                        oline = xml_text + '\n'
                    xml_output.write(oline)
            
        del jt    
        
       
# functions to collect information from command line call of JackCompiler.py
def parse_commandline():
    '''parse command line arguments to get directory name or file name'''
    
    parser = argparse.ArgumentParser()
    
    parser.add_argument('inputargument', nargs='?')
    
    args = parser.parse_args()
    
    return args
                    
def get_path(args):
    '''parse command line arguments to get directory name or file name'''
    
    if(args.inputargument is None):
        print('JackCompiler.py must have a directory name or file name argument.  Type a directory path or .jack file name path as an argument.')
        return 'exit'
        
    path = os.path.abspath(args.inputargument)

    if(not os.path.exists(path)):
        print("The directory or file to translate does not exist.  Try another directory or file path.")
        return 'exit'
        
    return path
    
def get_jack_filenames(path):
    '''create a list of filenames to move through'''
    jack_filenames = []
    if(os.path.isdir(path)):
        for file in os.listdir(path):
            if file.endswith(".jack"):
                jack_filenames.append(os.path.join(path, file))
        if not jack_filenames:
            print("If a directory is used as an argument it must contain at least one .jack file.  Try another directory or file path.")
            return
    else:
        if not path.endswith(".jack"):
            print("JackCompiler.py only works on .jack files.  Try another path argument.")
            return
        else:
            jack_filenames.append(path)
    return jack_filenames
    
def get_xml_filename(jack_filename):
    ''' returns xml filename for a given jack_filename '''
    xml_filename = os.path.dirname(jack_filename) + '\\xml\\' + (os.path.split(jack_filename)[1]).split('.')[0] + '.xml'
    if not os.path.exists(os.path.dirname(xml_filename)):
        os.makedirs(os.path.dirname(xml_filename))
    return xml_filename
    
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
        xmlT_filename = os.path.dirname(jack_filename) + '\\xml\\' + (os.path.split(jack_filename)[1]).split('.')[0] + 'T.xml'
        if not os.path.exists(os.path.dirname(xmlT_filename)):
            os.makedirs(os.path.dirname(xmlT_filename))
        self.xmlT = open(xmlT_filename, 'w')
        ####
        
        self.xmlT.write('<tokens>' + '\n')
        
        self.mlc_flag = False;
        self.token_buffer = []
        self.rebuffer()
        self.tokenize_line()
        self.token_buffer_k = 0
        self.advancePass = True
        
        
    def __del__(self):
        self.xmlT.write('</tokens>')
        self.xmlT.close()
        
        
    def tokenize_line(self):
        self.token_buffer.clear()
        slc_flag = False;
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
                            if value == '<':
                                value = '&lt;'
                            elif value == '>':
                                value = '&gt;'
                            elif value == '&':
                                value = '&amp;'
                        else:
                            tokenType = 'MISMATCH'
                    xml = '<' + self.xml_translate[tokenType] + '> ' + str(value) + ' </' + self.xml_translate[tokenType] + '>'
                    if not xml:
                        oline = ''
                    else:
                        oline = '\t' + xml + '\n'
                    self.xmlT.write(oline)
                    self.token_buffer.append((tokenType,value))
                    
    def advance(self):
        self.token_buffer_k += 1
        success = True
        if (self.token_buffer_k >= len(self.token_buffer)):
            success = self.rebuffer()
        return success
            
    def rebuffer(self):
        self.token_buffer_k = 0
        self.line = self.jack.readline()
        self.tokenize_line()
        while(self.line != '' and len(self.token_buffer) < 1):
            self.line = self.jack.readline()
            self.tokenize_line()
        if(self.line == ''):
            return False
        else:
            return True
    
    def tokenType(self):
        return self.token_buffer[self.token_buffer_k][0]
        
    def tokenValue(self):
        return self.token_buffer[self.token_buffer_k][1]         
    
   
if __name__ == '__main__':
    sys.exit(main())