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

import JackTokenizer
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
    
        xmlT = JackTokenizer.jack_tokenizer(file)
        CompilationEngine.compile(xmlT)
        
       
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
   
if __name__ == '__main__':
    sys.exit(main())