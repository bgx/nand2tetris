'''Convert Hack assembly program to Hack machine code.

Brian Grady

Passed test for assembly files on 2014.8.4
'''

import sys
import string
import os
import glob
import argparse

def main():
    '''Main entry point for the script.'''

    # parse command line arguments to get filename
    parser = argparse.ArgumentParser()
    parser.add_argument('filename', nargs='?')
    args = parser.parse_args()
    
    if(args.filename is None):
        print('hackassembler.py must have a filename argument.  Type an .asm filename path as an argument.')
        return
        
    file = os.path.abspath(args.filename)

    if(not os.path.isfile(file)):
        print("The file to assemble does not exist.  Try another filename path.")
        return
        
    if(file.split('.')[1] != 'asm'):
        print("Hackassembler.py only works on .asm files.  Try another filename path.")
        return
    
    # for file, do the following:
           
    symbol_table = {'SP':'0', 'LCL':'1', 'ARG':'2', 'THIS':'3',
                    'THAT':'4', 'SCREEN':'16384', 'KBD':'24576'}
    for i in range(16):
        symbol_table['R'+str(i)] = str(i)
    symbol_table['variable_pointer'] = 16

    with open(file.split('.')[0] + '.hack', 'w') as output:

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

def lookup_dest(asm):
    d = {'':'000', 'M':'001', 'D':'010', 'MD':'011',
         'A':'100', 'AM':'101', 'AD':'110', 'AMD':'111'}
    return d[asm]

def lookup_comp(asm):
    c = {'0':'0101010', '1':'0111111', '-1':'0111010', 'D':'0001100',
         'A':'0110000', '!D':'0001101', '!A':'0110001', '-D':'000111',
         '-A':'0110011', 'D+1':'0011111', 'A+1':'0110111','D-1':'0001110',
         'A-1':'0110010', 'D+A':'0000010', 'D-A':'0010011', 'A-D':'0000111',
         'D&A':'0000000', 'D|A':'0010101', 'M':'1110000', '!M':'1110001',
         '-M':'1110011', 'M+1':'1110111', 'M-1':'1110010', 'D+M':'1000010',
         'D-M':'1010011', 'M-D':'1000111', 'D&M':'1000000', 'D|M':'1010101'}
    return c[asm]

def lookup_jmp(asm):
    j = {'':'000', 'JGT':'001', 'JEQ':'010', 'JGE':'011',
         'JLT':'100', 'JNE':'101', 'JLE':'110', 'JMP':'111'}
    return j[asm]


if __name__ == '__main__':
    sys.exit(main())

