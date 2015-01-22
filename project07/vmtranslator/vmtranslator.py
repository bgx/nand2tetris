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
    
    # create a list of filenames to move through
    li = []
    if(os.path.isdir(path)):
        for file in os.listdir(path):
            if file.endswith(".vm"):
                li.append(os.path.join(path, file))
        if not li:
            print("If a directory is used as an argument it must contain at least one .vm file.  Try another directory or file path.")
            return
    else:
        if not path.endswith(".vm"):
            print("vmtranslator.py only works on .vm files.  Try another path argument.")
            return
        else:
            li.append(path)
    
    asm_file_name = os.path.dirname(li[0]) + '\\' + os.path.split(os.path.dirname(li[0]))[1] + '.asm'
    
    with open(asm_file_name, 'w') as output:
    
        #used to assign unique label to memory location for each translation of eq,gt, or lt
        label_ctr = [0,0,0]
        
        for file in li:
        
            with open(file, 'r') as vm:
                for line in vm:
                    line = clean_line(line, ['//'])
                    ct = get_command_type(line)
                    args = get_arguments(line, ct)
                    asm = translate_command(ct, args, label_ctr)
                    if not line:
                        oline = line
                    else:
                        oline = asm + '\n'
                    output.write(oline)
                    
                    
    
"""
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
    line3 = line[0:3]
    if line3 in ['']:
        return ''
    elif line3 in ['pus']:
        return 'C_PUSH'
    elif line3 in ['pop']:
        return 'C_POP'        
    elif line3 in ['lab']:
        return 'C_LABEL'
    elif line3 in ['got']:
        return 'C_GOTO'
    elif line3 in ['if-']:
        return 'C_IF'
    elif line3 in ['fun']:
        return 'C_FUNCTION'
    elif line3 in ['cal']:
        return 'C_CALL'
    elif line3 in ['ret']:
        return 'C_RETURN'
    else:
        return 'C_ARITHMETIC'
        
def get_arguments(line, ct):
    '''Returns the arguments of the line's command'''
    
    if ct == 'C_RETURN':
        return ['']
    elif ct == 'C_ARITHMETIC':
        return [line]
    #elif ct is c_label
        # arg1 is after label
    #elif ct is c_goto
        # arg1 is after goto
    #elif ct is c_if
        # arg1 is after if-goto
    
    elif ct=='C_PUSH' or ct=='C_POP':
        return line.split()[1:3]
    #elif ct is c_function
        # function arg1 arg2
    #elif ct is c_call
        # call arg1 arg2
    
def translate_command(ct, args, label_ctr):
    '''Translates vm command to assembly code'''
        
    if ct == '':
        asm = ''
    #if ct == 'C_RETURN':
        # ??
    elif ct == 'C_ARITHMETIC':
        if args[0] == 'add':
            asm = ('@SP'   + '\n' + # set A to the address of the stack pointer register (SP)
                   'M=M-1' + '\n' + # decrement contents of SP
                   'A=M'   + '\n' + # set A to the contents of SP (an address being pointed to)
                   'D=M'   + '\n' + # set D to the contents of the address that SP points to
                   'A=A-1' + '\n' + # set A to the address of the second addend
                   'M=D+M')         # add the first and second addends
        elif args[0] == 'sub':
            asm = ('@SP'   + '\n' + # set A to the address of the stack pointer register (SP)
                   'M=M-1' + '\n' + # decrement contents of SP
                   'A=M'   + '\n' + # set A to the contents of SP (an address being pointed to)
                   'D=M'   + '\n' + # set D to the contents of the address that SP points to
                   'A=A-1' + '\n' + # set A to the address of the second addend
                   'M=M-D')         # subtract
        elif args[0] == 'neg':
            asm = ('@SP'   + '\n' + # set A to the address of the stack pointer register (SP)
                   'M=M-1' + '\n' + # decrement contents of SP
                   'A=M'   + '\n' + # set A to the contents of SP (an address being pointed to)
                   'M=-M'  + '\n' + # negate the contents of the address that SP points to
                   '@SP'   + '\n' + # increment contents of SP
                   'M=M+1')
        elif args[0] == 'eq':
            asm = ('@SP'      + '\n' + # set A to the address of the stack pointer register (SP)
                   'M=M-1'    + '\n' + # decrement contents of SP
                   'A=M'      + '\n' + # set A to the contents of SP (an address being pointed to)
                   'D=M'      + '\n' + # set D to the contents of the address that SP points to
                   'A=A-1'    + '\n' + # set A to the address of the second number
                   'D=M-D'    + '\n' + # subtract
                   '@EQTRUE'  + str(label_ctr[0]) + '\n' + # jump to (EQTRUE) if zero
                   'D;JEQ'    + '\n' +
                   '@SP'      + '\n' + # set the contents of the stack address to 0 (false)
                   'A=M-1'      + '\n' +
                   'M=0'      + '\n' +
                   '@EQEND'   + str(label_ctr[0]) + '\n' + # jump to (EQEND)
                   '0;JMP'    + '\n' +
                   '(EQTRUE'  + str(label_ctr[0]) + ')' + '\n' + 
                   '@SP'      + '\n' + # set the contents of the stack address to -1 (true)
                   'A=M-1'      + '\n' + 
                   'M=-1'     + '\n' + 
                   '(EQEND'   + str(label_ctr[0]) + ')')
            label_ctr[0] = label_ctr[0] + 1
        elif args[0] == 'gt':
            asm = ('@SP'      + '\n' + # set A to the address of the stack pointer register (SP)
                   'M=M-1'    + '\n' + # decrement contents of SP
                   'A=M'      + '\n' + # set A to the contents of SP (an address being pointed to)
                   'D=M'      + '\n' + # set D to the contents of the address that SP points to
                   'A=A-1'    + '\n' + # set A to the address of the second number
                   'D=M-D'    + '\n' + # subtract
                   '@GTTRUE'  + str(label_ctr[1]) + '\n' + # jump to (GTTRUE) if zero
                   'D;JGT'    + '\n' +
                   '@SP'      + '\n' + # set the contents of the stack address to 0 (false)
                   'A=M-1'    + '\n' +
                   'M=0'      + '\n' +
                   '@GTEND'   + str(label_ctr[1]) + '\n' + # jump to (GTEND)
                   '0;JMP'    + '\n' +
                   '(GTTRUE'  + str(label_ctr[1]) + ')' + '\n' + 
                   '@SP'      + '\n' + # set the contents of the stack address to -1 (true)
                   'A=M-1'      + '\n' + 
                   'M=-1'     + '\n' + 
                   '(GTEND'   + str(label_ctr[1]) + ')')
            label_ctr[1] = label_ctr[1] + 1
            
        elif args[0] == 'lt':
            asm = ('@SP'      + '\n' + # set A to the address of the stack pointer register (SP)
                   'M=M-1'    + '\n' + # decrement contents of SP
                   'A=M'      + '\n' + # set A to the contents of SP (an address being pointed to)
                   'D=M'      + '\n' + # set D to the contents of the address that SP points to
                   'A=A-1'    + '\n' + # set A to the address of the second number
                   'D=M-D'    + '\n' + # subtract
                   '@LTTRUE'  + str(label_ctr[2]) + '\n' + # jump to (EQTRUE) if zero
                   'D;JLT'    + '\n' +
                   '@SP'      + '\n' + # set the contents of the stack address to 0 (false)
                   'A=M-1'      + '\n' +
                   'M=0'      + '\n' +
                   '@LTEND'   + str(label_ctr[2]) + '\n' + # jump to (EQEND)
                   '0;JMP'    + '\n' +
                   '(LTTRUE'  + str(label_ctr[2]) + ')' + '\n' + 
                   '@SP'      + '\n' + # set the contents of the stack address to -1 (true)
                   'A=M-1'      + '\n' + 
                   'M=-1'     + '\n' + 
                   '(LTEND'   + str(label_ctr[2]) + ')' )
            label_ctr[2] = label_ctr[2] + 1
            
        elif args[0] == 'and':
            asm = ''
        elif args[0] == 'or':
            asm = ''
        elif args[0] == 'not':
            asm = ''
    #elif ct is c_label
        # ??
    #elif ct is c_goto
        # ??
    #elif ct is c_if
        # ??
    elif ct == 'C_PUSH':
        # put segment[index] onto stack
        if args[0] == 'constant':
            asm = ('@' + args[1] + '\n' + # set A to constant value
                   'D=A' + '\n' +         # D contains constant value
                   '@SP' + '\n' +         # set A to the address of the stack pointer register (SP)
                   'A=M' + '\n' +         # set A to the contents of SP (an address being pointed to)
                   'M=D' + '\n' +         # set (the register being pointed to by SP) to the constant value stored in D
                   '@SP' + '\n' +         # increment contents of SP
                   'M=M+1')
    """elif ct == 'C_POP':
        # pull from stack and store in segment[index]
        if args[0] == 'constant':
            asm = ('@' + args[1] + '\n' + # set A to constant value
                   'D=A' + '\n' +         # D contains constant value
                   '@SP' + '\n' +         # set A to the address of the stack pointer register (SP)
                   'A=M' + '\n' +         # set A to the contents of SP (an address being pointed to)
                   'M=D' + '\n' +         # set (the register being pointed to by SP) to the constant value stored in D
                   '@SP' + '\n' +         # increment contents of SP
                   'M=M+1')"""
    #elif ct is c_function
        # ??
    #elif ct is c_call
        # ??
    return asm

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