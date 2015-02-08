'''Translate VM files to Hack assembly code.

Writing of transator broken into 4 stages:
1. Stack arithmetic commands
2. Memory access commands
3. Program flow commands
4. Function calling commands

The objective of Project 08 is to build a VM translator that implements 1,2,3, and 4
(1 and 2 were implemented in Project 07)

Brian Grady

Passed all project08 tests on _____
'''

import sys
import string
import os
import argparse

def main():
    '''Main entry point for the script.'''

    path = get_path()
    
    if path == 'exit':
        return
        
    li = get_vm_filenames(path)
        
    asm_file_name = os.path.dirname(li[0]) + '\\' + os.path.split(os.path.dirname(li[0]))[1] + '.asm'
    
    with open(asm_file_name, 'w') as output:
            
        # Comment out for tests 'SimpleFunction' and 'NestedCall' until a command line switch or Sys.vm detection is implemented
        output.write(write_init())
        
        for file in li:
        
            with open(file, 'r') as vm:
            
                # static variable number j in a VM file f represented as assembly language symbol f.j
                static_base = os.path.split(os.path.dirname(file))[1]
                
                for line in vm:
                    line = clean_line(line, ['//'])
                    ct = get_command_type(line)
                    args = get_arguments(line, ct)
                    asm = translate_command(ct, args, static_base)
                    if not line:
                        oline = ''
                    else:
                        oline = asm + '\n'
                    output.write(oline)



def get_path():
    '''parse command line arguments to get directory name or file name'''

    parser = argparse.ArgumentParser()
    parser.add_argument('inputargument', nargs='?')
    args = parser.parse_args()
    
    if(args.inputargument is None):
        print('vmtranslator.py must have a directory name or file name argument.  Type a directory path or .vm file name path as an argument.')
        return 'exit'
        
    path = os.path.abspath(args.inputargument)

    if(not os.path.exists(path)):
        print("The directory or file to translate does not exist.  Try another directory or file path.")
        return 'exit'
        
    return path
    
def get_vm_filenames(path):
    '''create a list of filenames to move through'''
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
    return li
                    
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
    
def translate_command(ct, args, static_base):

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
    

def write_init():
    '''aaa'''
    asm = ('@256' + '\n' +
           'D=A'  + '\n' +
           '@SP'  + '\n' +
           'M=D'  + '\n' +
           write_call('Sys.init','0') + '\n')
    return asm

def write_arithmetic(command):
    '''Translates aritmetic vm command to assembly code'''
    
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
    # put segment[index] onto stack
    if segment == 'constant':
        asm = ('@' + index + '\n' + # set A to constant value
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
    '''aaa'''
    asm = '(' + label + ')'
    return asm

def write_goto(label):
    '''aaa'''
    asm = ( '@' + label + '\n' +
            '0;JMP')
    return asm
    
def write_ifgoto(label):
    '''aaa'''
    asm = ('@SP'      + '\n' +          # pop value from stack and place in D register
           'M=M-1'    + '\n' +
           'A=M'      + '\n' +
           'D=M'      + '\n' +
           '@' + label + '\n' +          # jump to (args) if D is not zero
           'D;JNE')
    return asm       
               
def write_call(functionName, numArgs):
    '''Translates aritmetic vm command to assembly code'''
    
    if "counter" not in write_call.__dict__:
        write_call.counter = 0
    
    asm = ( '@' + functionName + '.RETURN' + str(write_call.counter) + '//Call ' + functionName + '\n' +
            'D=A' + '\n' +
            '@SP' + '\n' +         
            'A=M' + '\n' +         
            'M=D' + '\n' +                            
            '@SP' + '\n' +                             
            'M=M+1' + '\n' +
            
            '@LCL' + '\n' +          
            'D=M' + '\n' +
            '@SP' + '\n' +         
            'A=M' + '\n' +         
            'M=D' + '\n' +                             
            '@SP' + '\n' +                           
            'M=M+1' + '\n' +
            
            '@ARG' + '\n' +      
            'D=M' + '\n' +
            '@SP' + '\n' +         
            'A=M' + '\n' +         
            'M=D' + '\n' +                           
            '@SP' + '\n' +                          
            'M=M+1' + '\n' +
            
            '@THIS' + '\n' +        
            'D=M' + '\n' +
            '@SP' + '\n' +         
            'A=M' + '\n' +         
            'M=D' + '\n' +                   
            '@SP' + '\n' +                       
            'M=M+1' + '\n' +
            
            '@THAT' + '\n' +         
            'D=M' + '\n' +
            '@SP' + '\n' +         
            'A=M' + '\n' +         
            'M=D' + '\n' +                           
            '@SP' + '\n' +                    
            'M=M+1' + '\n' +
            
            #there are probably better ways to do the following
            '@SP'   + '\n' +           # store the address SP-n-5 in D
            'D=M'   + '\n' +
            '@'     + numArgs + '\n' +
            'D=D-A' + '\n' +
            '@5'    + '\n' +
            'D=D-A' + '\n' +
            '@ARG'  + '\n' +           # store the contents of D in the memory location ARG
            'M=D'   + '\n' +
            
            '@SP'   + '\n' +           # store the address SP in D
            'D=M'   + '\n' +
            '@LCL'  + '\n' +           # store the contents of D in the memory location LCL
            'M=D'   + '\n' +
            
            '@' + functionName + '\n' +
            '0;JMP' + '\n' +
            
            '(' + functionName + '.RETURN' + str(write_call.counter) + ')')   
    write_call.counter += 1
    return asm

def write_function(functionName, numLocals):
    '''aaa'''
    asm = ('(' + functionName + ')' + '//Function ' + functionName + '\n' +
    
           '@' + numLocals + '\n' +
           'D=A'   + '\n' +
           '@' + functionName + '.kcnt' + '\n' +
           'M=D'   + '\n' +
           
           '(' + functionName + '.kloop)' + '\n' +
           
           '@' + functionName + '.kcnt' + '\n' +		# jump to f.END if f.kcnt<=0 (like condition of while loop) [while loop can be brought out into the py script, but it makes more asm instructions]
           'D=M'   + '\n' + 
           '@' + functionName + '.END' + '\n' +
           'D;JLE' + '\n' +
            
           '@0'    + '\n' +         # set A to zero
           'D=A'   + '\n' +         # D contains zero
           '@SP'   + '\n' +         
           'A=M'   + '\n' +         
           'M=D'   + '\n' +         # set (the register being pointed to by SP) to the constant value stored in D
           '@SP'   + '\n' +         # increment stack pointer
           'M=M+1' + '\n' +
           
           '@' + functionName + '.kcnt' + '\n' +
           'M=M-1' + '\n' +
            
           '@' + functionName + '.kloop' + '\n' +	# Goto (f.kloop) (like the end bracket of a while loop)
           '0;JMP' + '\n' +
           '(' + functionName + '.END)')
    return asm

def write_return():
    '''aaa'''
    asm = ( '@LCL'   '//Return ' + '\n' +
            'D=M'    + '\n' +
            '@FRAME' + '\n' +
            'M=D'    + '\n' +
            
            # get RET
            '@FRAME'   + '\n' +           # store the address FRAME-5 in D
            'D=M'   + '\n' +
            '@5'    + '\n' +
            'D=D-A' + '\n' +
            'A=D'    + '\n' +
            'D=M'    + '\n' +
            '@RET'  + '\n' +           # store the contents of FRAME-5 in the memory location RET
            'M=D'   + '\n' +
            
            #*ARG = pop()
            '@SP'   + '\n' +           # set D to the contents of the address that SP points to
            'M=M-1' + '\n' + 
            'A=M'   + '\n' + 
            'D=M'   + '\n' + 
            '@ARG'  + '\n' +           # store the contents of D in the memory location argument points to
            'A=M'   + '\n' + 
            'M=D'   + '\n' +
             
            '@ARG'  + '\n' +
            'D=M'   + '\n' +
            '@SP'   + '\n' +
            'M=D+1' + '\n' +
            
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@THAT'  + '\n' +
            'M=D'    + '\n' +
            
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@THIS'  + '\n' +
            'M=D'    + '\n' +
            
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@ARG'   + '\n' +
            'M=D'    + '\n' +
            
            '@FRAME' + '\n' +
            'M=M-1'  + '\n' +
            'A=M'    + '\n' +
            'D=M'    + '\n' +
            '@LCL'   + '\n' +
            'M=D'    + '\n' +
            
            #goto RET
            '@RET' + '\n' +
            'A=M'  + '\n' +
            '0;JMP'
    
           )
    return asm

if __name__ == '__main__':
    sys.exit(main())