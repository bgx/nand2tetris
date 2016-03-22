'''Translate VM files to Hack assembly code.

Writing of transator broken into 4 stages:
1. Stack arithmetic commands
2. Memory access commands
3. Program flow commands
4. Function calling commands

The objective of Project 08 is to build a VM translator that implements 1,2,3, and 4
(1 and 2 were implemented in Project 07)

Brian Grady

Passed all project08 tests on 2015.02.16
'''

import sys
import string
import os
import argparse

static_base = ''

def main():
    '''Main entry point for the script.'''

    # used to label static variables (find a way to not use a global variable)
    global static_base
    
    #### parse command line to get path names and flag values
    commandline_args = parse_commandline()
    
    bootstrap_switch = get_bootstrap_switch(commandline_args)

    path = get_path(commandline_args)
    if path == 'exit':
        return
    
    vm_filenames = get_vm_filenames(path)
    asm_filename = get_asm_filename(vm_filenames[0])   
    ####
    
    #### write to *.asm file
    with open(asm_filename, 'w') as output:
            
        if bootstrap_switch is True:
            output.write('// ********Bootstrap***\n')
            output.write(write_init())
            
        output.write('// ********Assembly Functions***\n')
        output.write(write_assembly_functions())
        
        for file in vm_filenames:
            
            filename_no_extension = os.path.splitext(os.path.basename(file))[0]
            output.write('// ********FILE***: ' + filename_no_extension + '\n')
            
            with open(file, 'r') as vm:
            
                # static variable number j in a VM file f represented as assembly language symbol f.j
                static_base = filename_no_extension
                
                for line in vm:
                    line = clean_line(line, ['//'])
                    ct = get_command_type(line)
                    args = get_arguments(line, ct)
                    asm = translate_command(ct, args)
                    if not line:
                        oline = ''
                    else:
                        oline = asm + '\n'
                        output.write('// ****VM***: ' + line + '\n')
                    output.write(oline)


# functions to collect information from command line call of vmtranslator.py
def parse_commandline():
    '''parse command line arguments to get (1) directory name or file name, and (2) bootstrap code insertion flag/switch'''
    
    parser = argparse.ArgumentParser()
    
    parser.add_argument('inputargument', nargs='?')
    parser.add_argument('-n', action = 'store_false')
    
    args = parser.parse_args()
    
    return args
                    
def get_path(args):
    '''parse command line arguments to get directory name or file name'''
    
    if(args.inputargument is None):
        print('vmtranslator.py must have a directory name or file name argument.  Type a directory path or .vm file name path as an argument.')
        return 'exit'
        
    path = os.path.abspath(args.inputargument)

    if(not os.path.exists(path)):
        print("The directory or file to translate does not exist.  Try another directory or file path.")
        return 'exit'
        
    return path
    
def get_bootstrap_switch(args):
    '''returns boolean to determine whether bootstrap code should be written
    returns True: no flag appended to command line call of vmtranslator.py;  bootstrap code will be written
    returns False: -n was appended to command line call of vmtranslator.py; bootstrap code will not be written'''
    return args.n
    
def get_vm_filenames(path):
    '''create a list of filenames to move through'''
    vm_filenames = []
    if(os.path.isdir(path)):
        for file in os.listdir(path):
            if file.endswith(".vm"):
                vm_filenames.append(os.path.join(path, file))
        if not vm_filenames:
            print("If a directory is used as an argument it must contain at least one .vm file.  Try another directory or file path.")
            return
    else:
        if not path.endswith(".vm"):
            print("vmtranslator.py only works on .vm files.  Try another path argument.")
            return
        else:
            vm_filenames.append(path)
    return vm_filenames

def get_asm_filename(vm_filename):
    '''return the filename that the assembly commands will be written to'''
    return os.path.dirname(vm_filename) + '\\' + os.path.split(os.path.dirname(vm_filename))[1] + '.asm'


# functions to turn vm lines into assembly lines    
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
    
    if ct == 'C_ARITHMETIC':
        return line
    elif ct=='C_LABEL' or ct=='C_GOTO' or ct=='C_IF':
        return line.split()[1]
    elif ct=='C_PUSH' or ct=='C_POP' or ct=='C_FUNCTION' or ct=='C_CALL':
        return line.split()[1:3]
    else: #C_RETURN
        return ''
    
def translate_command(ct, args):

    '''Translates vm command to assembly code'''
    
    if   ct == '':
        asm = ''
    elif ct == 'C_ARITHMETIC':
        asm = write_arithmetic(args)
    elif ct == 'C_PUSH':
        asm = write_push(*args)
    elif ct == 'C_POP':
        asm = write_pop(*args)
    elif ct == 'C_LABEL':
        asm = write_label(args)
    elif ct == 'C_GOTO':
        asm = write_goto(args)
    elif ct == 'C_IF':
        asm = write_ifgoto(args)
    elif ct == 'C_CALL':
        asm = write_call(*args)
    elif ct == 'C_FUNCTION':
        asm = write_function(*args)
    elif ct == 'C_RETURN':
        asm = write_return()
    return asm
    

# functions to write assembly    
def write_init():
    '''Writes bootstrap assembly code'''
    asm = ('@256' + '\n' +                      # Initialize the stack pointer to 256
           'D=A'  + '\n' +
           '@SP'  + '\n' +
           'M=D'  + '\n' +
           write_call('Sys.init','0') + '\n')   # Start executing (the translated code of) Sys.init
    return asm
    
def write_assembly_functions():
    '''Writes functions for assembly code that occurs frequently'''
    asm = ( write_call_assembly() + '\n' +
            write_return_assembly() + '\n' )
    return asm

def start_asm_function(name):
    asm = ( '(AsmFunction_' + name + ')' +'\n'+
            '@TemporaryStorageAddress'  +'\n'+
            'M=D'               +'\n')
    return asm

def end_asm_function():
    asm = ( '@TemporaryStorageAddress'  +'\n'+
            'A=M'               +'\n'+
            '0;JMP'             +'\n')
    return asm
    
def call_asm_function(name):
    if "counter" not in call_asm_function.__dict__:
        call_asm_function.counter = 0
    asm = ( '@AsmReturnAddress' + str(call_asm_function.counter) +'\n'+
            'D=A'                  +'\n'+
            '@AsmFunction_' + name +'\n'+
            '0;JMP'                +'\n'+
            '(AsmReturnAddress' + str(call_asm_function.counter) +')')
    call_asm_function.counter += 1
    return asm
    
def write_call_assembly():
    ''''''
    return ''
    
def write_return_assembly():
    ''''''
    asm = ( start_asm_function('RETURN')   +
    
            # FRAME = LCL
            '@LCL'   + '\n' +
            'D=M'    + '\n' +
            '@FRAME' + '\n' +
            'M=D'    + '\n' +
            
            # RET = *(FRAME-5)      (RET is return-address of the caller's code)
            '@FRAME' + '\n' +       # store the address FRAME-5 in D
            'D=M'    + '\n' +
            '@5'     + '\n' +
            'D=D-A'  + '\n' +
            'A=D'    + '\n' +
            'D=M'    + '\n' +
            '@RET'   + '\n' +       # store the contents of FRAME-5 in the memory location RET
            'M=D'    + '\n' +
            
            #*ARG = pop()
            '@SP'   + '\n' +
            'M=M-1' + '\n' + 
            'A=M'   + '\n' + 
            'D=M'   + '\n' + 
            '@ARG'  + '\n' +        # store the contents of D in the memory location argument points to
            'A=M'   + '\n' + 
            'M=D'   + '\n' +
             
            # SP = ARG+1             
            '@ARG'  + '\n' +
            'D=M'   + '\n' +
            '@SP'   + '\n' +
            'M=D+1' + '\n' +
            
            # THAT = *(FRAME-1)           
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@THAT'  + '\n' +
            'M=D'    + '\n' +
            
            # THIS = *(FRAME-2)            
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@THIS'  + '\n' +
            'M=D'    + '\n' +
            
            # ARG = *(FRAME-3)
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@ARG'   + '\n' +
            'M=D'    + '\n' +
            
            # LCL = *(FRAME-4)
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@LCL'   + '\n' +
            'M=D'    + '\n' +
            
            # goto RET
            '@RET' + '\n' +
            'A=M'  + '\n' +
            '0;JMP'  + '\n' +
            
            end_asm_function() )
    return asm

def write_arithmetic(command):
    '''Translates arithmetic vm command to assembly code'''
    
    # initialize several attributes of function write_arithmetic, to be used to 
    # make eq,gt,lt labels unique for each call of write_arithmetic (e.g. (EQTRUE0) (EQTRUE1) ...etc.)
    if "counter_eq" not in write_arithmetic.__dict__:
        write_arithmetic.counter_eq = 0
        write_arithmetic.counter_gt = 0
        write_arithmetic.counter_lt = 0
        
    if command == 'add':
        asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
               'M=M-1' + '\n' +
               'A=M'   + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=D+M')         # add the first and second operands
    elif command == 'sub':
        asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
               'M=M-1' + '\n' +
               'A=M'   + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=M-D')         # subtract first operand from second operand
    elif command == 'neg':
        asm = ('@SP'   + '\n' +
               'M=M-1' + '\n' +
               'A=M'   + '\n' +
               'M=-M'  + '\n' + # arithmetically negate the contents of the address that SP points to
               '@SP'   + '\n' +
               'M=M+1')
    elif command == 'eq':
        asm = ('@SP'      + '\n' +                              # pull first operand from stack and place in D register
               'M=M-1'    + '\n' +
               'A=M'      + '\n' +
               'D=M'      + '\n' +
               'A=A-1'    + '\n' +                              # set A to the address of the second operand, leaving SP where it needs to be
               'D=M-D'    + '\n' +                              # subtract first operand from second operand
               '@EQTRUE'  + str(write_arithmetic.counter_eq) + '\n' +          # jump to (EQTRUE#) if result is zero
               'D;JEQ'    + '\n' +
               '@SP'      + '\n' +                              # result is not zero(not equal): place 0 (false) on the stack 
               'A=M-1'    + '\n' +
               'M=0'      + '\n' +
               '@EQEND'   + str(write_arithmetic.counter_eq) + '\n' + 
               '0;JMP'    + '\n' +
               '(EQTRUE'  + str(write_arithmetic.counter_eq) + ')' + '\n' + 
               '@SP'      + '\n' +                              # result is zero(equal): place -1 (true) on the stack
               'A=M-1'    + '\n' + 
               'M=-1'     + '\n' + 
               '(EQEND'   + str(write_arithmetic.counter_eq) + ')')
        write_arithmetic.counter_eq += 1
    elif command == 'gt':
        asm = ('@SP'      + '\n' +                              # pull first operand from stack and place in D register
               'M=M-1'    + '\n' +
               'A=M'      + '\n' +
               'D=M'      + '\n' +
               'A=A-1'    + '\n' +                              # set A to the address of the second operand, leaving SP where it needs to be
               'D=M-D'    + '\n' +                              # subtract first operand from second operand
               '@GTTRUE'  + str(write_arithmetic.counter_gt) + '\n' +          # jump to (GTTRUE#) if result is positive
               'D;JGT'    + '\n' +
               '@SP'      + '\n' +                              # result is zero or negative(not gt): place 0 (false) on the stack
               'A=M-1'    + '\n' +
               'M=0'      + '\n' +
               '@GTEND'   + str(write_arithmetic.counter_gt) + '\n' +
               '0;JMP'    + '\n' +
               '(GTTRUE'  + str(write_arithmetic.counter_gt) + ')' + '\n' + 
               '@SP'      + '\n' +                              # result is positive(gt): place -1 (true) on the stack
               'A=M-1'    + '\n' + 
               'M=-1'     + '\n' + 
               '(GTEND'   + str(write_arithmetic.counter_gt) + ')')
        write_arithmetic.counter_gt += 1
    elif command == 'lt':
        asm = ('@SP'      + '\n' +                              # pull first operand from stack and place in D register
               'M=M-1'    + '\n' +
               'A=M'      + '\n' +
               'D=M'      + '\n' +
               'A=A-1'    + '\n' +                              # set A to the address of the second operand, leaving SP where it needs to be
               'D=M-D'    + '\n' +                              # subtract first operand from second operand
               '@LTTRUE'  + str(write_arithmetic.counter_lt) + '\n' +          # jump to (LTTRUE#) if result is negative
               'D;JLT'    + '\n' +
               '@SP'      + '\n' +                              # result is zero or positive(not lt): place 0 (false) on the stack
               'A=M-1'    + '\n' +
               'M=0'      + '\n' +
               '@LTEND'   + str(write_arithmetic.counter_lt) + '\n' +
               '0;JMP'    + '\n' +
               '(LTTRUE'  + str(write_arithmetic.counter_lt) + ')' + '\n' + 
               '@SP'      + '\n' +                              # result is negative(lt): place -1 (true) on the stack
               'A=M-1'    + '\n' + 
               'M=-1'     + '\n' + 
               '(LTEND'   + str(write_arithmetic.counter_lt) + ')' )
        write_arithmetic.counter_lt += 1
    elif command == 'and':
        asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
               'M=M-1' + '\n' +
               'A=M'   + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=D&M')         # bit-wise AND the two operands
    elif command == 'or':
        asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
               'M=M-1' + '\n' +
               'A=M'   + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=D|M')         # bit-wise OR the two operands
    elif command == 'not':
        asm = ('@SP'   + '\n' +
               'M=M-1' + '\n' +
               'A=M'   + '\n' +
               'M=!M'  + '\n' + # bit-wise NOT the contents of the address that SP points to
               '@SP'   + '\n' +
               'M=M+1')
    return asm

def write_push(segment, index):
    '''Translates push vm command to assembly code'''
    
    # put segment[index] onto stack
    if segment == 'constant':
        asm = ('@' + index + '\n' +   # set A to constant value
               'D=A' + '\n' +         # D contains constant value
               '@SP' + '\n' +         
               'A=M' + '\n' +         
               'M=D' + '\n' +         # set (the register being pointed to by SP) to the constant value stored in D
               '@SP' + '\n' +         # increment stack pointer
               'M=M+1')
    elif segment == 'local':
        asm = ('@LCL'  + '\n' +           # store the contents of the memory location local+index in D
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'A=D+A' + '\n' +
               'D=M'   + '\n' +
               '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
               'A=M'   + '\n' + 
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # increment contents of SP
               'M=M+1')
    elif segment == 'argument':
        asm = ('@ARG'  + '\n' +           # store the contents of the memory location argument+index in D
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'A=D+A' + '\n' +
               'D=M'   + '\n' +
               '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
               'A=M'   + '\n' + 
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # increment contents of SP
               'M=M+1')
    elif segment == 'this':
        asm = ('@THIS'  + '\n' +           # store the contents of the memory location this+index in D
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'A=D+A' + '\n' +
               'D=M'   + '\n' +
               '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
               'A=M'   + '\n' + 
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # increment contents of SP
               'M=M+1')
    elif segment == 'that':
        asm = ('@THAT'  + '\n' +           # store the contents of the memory location that+index in D
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'A=D+A' + '\n' +
               'D=M'   + '\n' +
               '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
               'A=M'   + '\n' + 
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # increment contents of SP
               'M=M+1')
    elif segment == 'pointer':
        asm = ('@R3'  + '\n' +            # store 3+index in D
               'D=A'   + '\n' +
               '@'     + index + '\n' +
               'A=D+A' + '\n' +
               'D=M'   + '\n' +
               '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
               'A=M'   + '\n' + 
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # increment contents of SP
               'M=M+1')
    elif segment == 'temp':
        asm = ('@R5'  + '\n' +            # store 5+index in D
               'D=A'   + '\n' +
               '@'     + index + '\n' +
               'A=D+A' + '\n' +
               'D=M'   + '\n' +
               '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
               'A=M'   + '\n' + 
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # increment contents of SP
               'M=M+1')
    elif segment == 'static':
        asm = ('@' + static_base + '.' + index + '\n' + #store value of static variable register in D
               'D=M' + '\n' +
               '@SP' + '\n' +         
               'A=M' + '\n' +         
               'M=D' + '\n' +                             # set (the register being pointed to by SP) to the value stored in D
               '@SP' + '\n' +                             # increment contents of SP
               'M=M+1')
    return asm

def write_pop(segment, index):
    '''Translates pop vm command to assembly code'''

    # pull from stack and store in segment[index]
    if segment == 'constant':
        asm = ('@SP' + '\n' +             # decrement contents of SP
               'M=M-1')
    elif segment == 'local':
        asm = ('@LCL'  + '\n' +           # store the address local+index in R13
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'D=D+A' + '\n' +
               '@R13'  + '\n' +
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # set D to the contents of the address that SP points to
               'M=M-1' + '\n' + 
               'A=M'   + '\n' + 
               'D=M'   + '\n' + 
               '@R13'  + '\n' +           # store the contents of D in the memory location local+index
               'A=M'   + '\n' + 
               'M=D')
    elif segment == 'argument':
        asm = ('@ARG'  + '\n' +           # store the address argument+index in R13
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'D=D+A' + '\n' +
               '@R13'  + '\n' +
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # set D to the contents of the address that SP points to
               'M=M-1' + '\n' + 
               'A=M'   + '\n' + 
               'D=M'   + '\n' + 
               '@R13'  + '\n' +           # store the contents of D in the memory location argument+index
               'A=M'   + '\n' + 
               'M=D')
    elif segment == 'this':
        asm = ('@THIS'  + '\n' +          # store the address this+index in R13
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'D=D+A' + '\n' +
               '@R13'  + '\n' +
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # set D to the contents of the address that SP points to
               'M=M-1' + '\n' + 
               'A=M'   + '\n' + 
               'D=M'   + '\n' + 
               '@R13'  + '\n' +           # store the contents of D in the memory location this+index
               'A=M'   + '\n' + 
               'M=D')
    elif segment == 'that':
        asm = ('@THAT'  + '\n' +          # store the address that+index in R13
               'D=M'   + '\n' +
               '@'     + index + '\n' +
               'D=D+A' + '\n' +
               '@R13'  + '\n' +
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # set D to the contents of the address that SP points to
               'M=M-1' + '\n' + 
               'A=M'   + '\n' + 
               'D=M'   + '\n' + 
               '@R13'  + '\n' +           # store the contents of D in the memory location that+index
               'A=M'   + '\n' + 
               'M=D')
    elif segment == 'pointer':
        asm = ('@R3'  + '\n' +            # store 3+index in R13
               'D=A'   + '\n' +
               '@'     + index + '\n' +
               'D=D+A' + '\n' +
               '@R13'  + '\n' +
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # set D to the contents of the address that SP points to
               'M=M-1' + '\n' + 
               'A=M'   + '\n' + 
               'D=M'   + '\n' + 
               '@R13'  + '\n' +           # store the contents of D in the memory location 3+index
               'A=M'   + '\n' + 
               'M=D')
    elif segment == 'temp':
        asm = ('@R5'  + '\n' +            # store 5+index in R13
               'D=A'   + '\n' +
               '@'     + index + '\n' +
               'D=D+A' + '\n' +
               '@R13'  + '\n' +
               'M=D'   + '\n' +
               '@SP'   + '\n' +           # set D to the contents of the address that SP points to
               'M=M-1' + '\n' + 
               'A=M'   + '\n' + 
               'D=M'   + '\n' + 
               '@R13'  + '\n' +           # store the contents of D in the memory location 5+index
               'A=M'   + '\n' + 
               'M=D')          
    elif segment == 'static':
        asm = ('@SP'   + '\n' +                                     # set D to the contents of the address that SP points to
               'M=M-1' + '\n' + 
               'A=M'   + '\n' + 
               'D=M'   + '\n' + 
               '@' + static_base + '.' + index + '\n' +           # store the contents of D in the memory location of static variable
               'M=D')
    return asm
               
def write_label(label):
    '''Translates label vm command to assembly code'''
    
    asm = '(' + label + ')'
    return asm

def write_goto(label):
    '''Translates goto vm command to assembly code'''

    asm = ( '@' + label + '\n' +
            '0;JMP')
    return asm
    
def write_ifgoto(label):
    '''Translates if_goto vm command to assembly code'''

    asm = ('@SP'      + '\n' +          # pop value from stack and place in D register
           'M=M-1'    + '\n' +
           'A=M'      + '\n' +
           'D=M'      + '\n' +
           '@' + label + '\n' +          # jump to (args) if D is not zero
           'D;JNE')
    return asm       
               
def write_call(functionName, numArgs):
    '''Translates call vm command to assembly code'''
    
    # initialize attribute of function write_call, to be used to 
    # make labels unique for each call of write_call (e.g. (ReturnAddress_Call0) (ReturnAddress_Call1) ...etc.)
    if "counter" not in write_call.__dict__:
        write_call.counter = 0
    
    asm = ( '@ReturnAddress_Call' + str(write_call.counter) + '\n' + # push return-address
            'D=A'   + '\n' +
            '@SP'   + '\n' +         
            'A=M'   + '\n' +         
            'M=D'   + '\n' +                            
            '@SP'   + '\n' +                             
            'M=M+1' + '\n' +
            
            '@LCL'  + '\n' +            # push LCL
            'D=M'   + '\n' +
            '@SP'   + '\n' +         
            'A=M'   + '\n' +         
            'M=D'   + '\n' +                             
            '@SP'   + '\n' +                           
            'M=M+1' + '\n' +
            
            '@ARG'  + '\n' +            # push ARG
            'D=M'   + '\n' +
            '@SP'   + '\n' +         
            'A=M'   + '\n' +         
            'M=D'   + '\n' +                           
            '@SP'   + '\n' +                          
            'M=M+1' + '\n' +
            
            '@THIS' + '\n' +            # push THIS
            'D=M'   + '\n' +
            '@SP'   + '\n' +         
            'A=M'   + '\n' +         
            'M=D'   + '\n' +                   
            '@SP'   + '\n' +                       
            'M=M+1' + '\n' +
            
            '@THAT' + '\n' +            # push THAT
            'D=M'   + '\n' +
            '@SP'   + '\n' +         
            'A=M'   + '\n' +         
            'M=D'   + '\n' +                           
            '@SP'   + '\n' +                    
            'M=M+1' + '\n' +
            
            '@SP'   + '\n' +           # ARG = SP - numArgs - 5
            'D=M'   + '\n' +
            '@'     + numArgs + '\n' +
            'D=D-A' + '\n' +
            '@5'    + '\n' +
            'D=D-A' + '\n' +
            '@ARG'  + '\n' +           
            'M=D'   + '\n' +
            
            '@SP'   + '\n' +           # LCL = SP
            'D=M'   + '\n' +
            '@LCL'  + '\n' +           
            'M=D'   + '\n' +
            
            '@' + functionName + '\n' +   # goto functionName
            '0;JMP' + '\n' +
            
            '(ReturnAddress_Call' + str(write_call.counter) + ')')   # declare a label for the return-address
            
    write_call.counter += 1
    
    return asm

def write_function(functionName, numLocals):
    '''Translates function vm command to assembly code'''

    asm = ('(' + functionName + ')' + '\n' + # declare a label for function entry
    
           '@' + numLocals + '\n' +                 # initialize counter f-LoopCounter = number of local variables
           'D=A'   + '\n' +
           '@' + functionName + '-LoopCounter' + '\n' +
           'M=D'   + '\n' +
           
           '(' + functionName + '-LoopStart)' + '\n' +
           
           '@' + functionName + '-LoopCounter' + '\n' +		# jump to f-LoopExit if f-LoopCounter<=0 (like condition of while loop) [while loop can be brought out into the py script, but it makes more asm instructions]
           'D=M'   + '\n' + 
           '@' + functionName + '-LoopExit' + '\n' +
           'D;JLE' + '\n' +
            
           '@0'    + '\n' +         # push 0
           'D=A'   + '\n' +         
           '@SP'   + '\n' +         
           'A=M'   + '\n' +         
           'M=D'   + '\n' +         
           '@SP'   + '\n' +         
           'M=M+1' + '\n' +
           
           '@' + functionName + '-LoopCounter' + '\n' +    # decrement counter f-LoopCounter
           'M=M-1' + '\n' +
            
           '@' + functionName + '-LoopStart' + '\n' +	# Goto (f-LoopStart) (like the end bracket of a while loop)
           '0;JMP' + '\n' +
           '(' + functionName + '-LoopExit)')
    return asm

def write_return():
    '''Translates return vm command to assembly code'''
    return call_asm_function('RETURN')

if __name__ == '__main__':
    sys.exit(main())