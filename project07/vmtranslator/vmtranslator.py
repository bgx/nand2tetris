'''Translate VM files to Hack assembly code.

Writing of transator broken into 4 stages:
1. Stack arithmetic commands
2. Memory access commands
3. Program flow commands
4. Function calling commands

The objective of Project 07 is to build a VM translator that implements 1. and 2.

Brian Grady
'''

import sys
import string
import os
#import glob
import argparse

def main():
    '''Main entry point for the script.'''

    # parse command line arguments to get directory name or file name
    parser = argparse.ArgumentParser()
    parser.add_argument('inputargument', nargs='?')
    args = parser.parse_args()
    
    if(args.inputargument is None):
        print('vmtranslator.py must have a directory name or file name argument.  Type a directory path or .vm file name path as an argument.')
        return
        
    path = os.path.abspath(args.inputargument)

    if(not os.path.exists(path)):
        print("The directory or file to translate does not exist.  Try another directory or file path.")
        return
        
    li = []
    if(os.path.isdir(path)):
        for file in os.listdir(path):
            if file.endswith(".vm"):
                li.append(file)
        if not li:
            print("If a directory is used as an argument it must contain at least one .vm file.  Try another directory or file path.")
            return
    else:
        if not path.endswith(".vm"):
            print("vmtranslator.py only works on .vm files.  Try another path argument.")
            return
        else:
            li.append(path)
        
    print(li)
        
"""        
    if(file.split('.')[1] != 'vm'):
        print("vmtranslator.py only works on .vm files.  Try another filename path.")
        return
        """
    
    # for file, do the following:
"""
    with open(file.split('.')[0] + '.asm', 'w') as output:

        ### first pass - fill symbol_table with labels and ROM addresses
        with open(file, 'r') as asm:
            program_counter = 0
            for line in asm:
                line = clean_line(line, ['//'])
                ct = get_command_type(line)
                if ct in ['A_COMMAND', 'C_COMMAND']:
                    program_counter += 1
                elif ct in ['L_COMMAND']:
                    symbol_table[line.strip('()')] = str(program_counter)

        ### second pass
        with open(file, 'r') as asm:
            for line in asm:
                line = clean_line(line, ['//','('])
                ct = get_command_type(line)
                if ct in ['A_COMMAND']:
                    oline = translate_a_command(line, symbol_table) + '\n'
                elif ct in ['C_COMMAND']:
                    oline = translate_c_command(line) + '\n'
                else:
                    oline = ''
                output.write(oline)
                """

def clean_line(line, sep):
    '''Remove - a. comments and b. whitespace (outer) - from line

    sep  -- commenting symbol ( in this case double-slash, so: ['//'])
    '''
    for s in sep:
        line = line.split(s)[0]
    return line.strip()
            
def get_command_type(line):
    '''Returns the command type of the line'''
    if line in ['']:
        return ''
    elif line[0] in ['@']:
        return 'A_COMMAND'
    elif line[0] in ['(']:
        return 'L_COMMAND'
    else:
        return 'C_COMMAND'

"""
def translate_a_command(line,symbol_table):
    '''Takes assembly a-command and translates it to machine code

    assembly a-command -- @(symbol or value)
    machine code word = 0 (symbol or value in 15 bits)
    '''
    line = line[1:]
    if not line.isdigit():
        if line not in symbol_table:
            symbol_table[line] = symbol_table['variable_pointer']
            symbol_table['variable_pointer'] += 1
        word = '0' + bin(int(symbol_table[line]))[2:].zfill(15)
    else:
        word = '0' + bin(int(line))[2:].zfill(15) 
    return word

def translate_c_command(line):
    '''Takes assembly c-command and translates it to machine code

    assembly c-command -- dest=comp;jump   dest or jump may be omitted 
    machine code word = 1 11 (comp 7bits) (dest 3bits) (jmp 3bits)
    '''
    if '=' in line and ';' in line:
        word = ''
    elif '=' in line:
        dest,comp = line.split('=')
        dest,comp = dest.strip(),comp.strip()
        word = '111' + lookup_comp(comp) + lookup_dest(dest) + '000'
    elif ';' in line:
        comp,jmp = line.split(';')
        comp,jmp = comp.strip(),jmp.strip()
        word = '111' + lookup_comp(comp) + '000' + lookup_jmp(jmp)
    else:
        word = ''
    return word
"""

if __name__ == '__main__':
    sys.exit(main())