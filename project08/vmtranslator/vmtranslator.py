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
    
        #used to assign unique label to memory location for each translation of eq,gt, or lt
        label_ctr = [0,0,0]
        
        for file in li:
        
            with open(file, 'r') as vm:
                static_base = os.path.split(os.path.dirname(file))[1] # static variable number j in a VM file f represented as assembly language symbol f.j
                for line in vm:
                    line = clean_line(line, ['//'])
                    ct = get_command_type(line)
                    args = get_arguments(line, ct)
                    asm = translate_command(ct, args, label_ctr, static_base)
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
    
    if ct == 'C_RETURN':
        return ['']
    elif ct == 'C_ARITHMETIC':
        return [line]
    elif ct=='C_LABEL' or ct=='C_GOTO' or ct=='C_IF':
        return line.split()[1]
    elif ct=='C_PUSH' or ct=='C_POP' or ct=='C_FUNCTION' or ct=='C_CALL':
        return line.split()[1:3]
    
def translate_command(ct, args, label_ctr, static_base):
    '''Translates vm command to assembly code'''
    
    if   ct == '':
        asm = ''
    elif ct == 'C_ARITHMETIC':
        if args[0] == 'add':
            asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
                   'M=M-1' + '\n' +
                   'A=M'   + '\n' +
                   'D=M'   + '\n' +
                   'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
                   'M=D+M')         # add the first and second operands
        elif args[0] == 'sub':
            asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
                   'M=M-1' + '\n' +
                   'A=M'   + '\n' +
                   'D=M'   + '\n' +
                   'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
                   'M=M-D')         # subtract first operand from second operand
        elif args[0] == 'neg':
            asm = ('@SP'   + '\n' +
                   'M=M-1' + '\n' +
                   'A=M'   + '\n' +
                   'M=-M'  + '\n' + # arithmetically negate the contents of the address that SP points to
                   '@SP'   + '\n' +
                   'M=M+1')
        elif args[0] == 'eq':
            asm = ('@SP'      + '\n' +                              # pull first operand from stack and place in D register
                   'M=M-1'    + '\n' +
                   'A=M'      + '\n' +
                   'D=M'      + '\n' +
                   'A=A-1'    + '\n' +                              # set A to the address of the second operand, leaving SP where it needs to be
                   'D=M-D'    + '\n' +                              # subtract first operand from second operand
                   '@EQTRUE'  + str(label_ctr[0]) + '\n' +          # jump to (EQTRUE#) if result is zero
                   'D;JEQ'    + '\n' +
                   '@SP'      + '\n' +                              # result is not zero(not equal): place 0 (false) on the stack 
                   'A=M-1'    + '\n' +
                   'M=0'      + '\n' +
                   '@EQEND'   + str(label_ctr[0]) + '\n' + 
                   '0;JMP'    + '\n' +
                   '(EQTRUE'  + str(label_ctr[0]) + ')' + '\n' + 
                   '@SP'      + '\n' +                              # result is zero(equal): place -1 (true) on the stack
                   'A=M-1'    + '\n' + 
                   'M=-1'     + '\n' + 
                   '(EQEND'   + str(label_ctr[0]) + ')')
            label_ctr[0] = label_ctr[0] + 1
        elif args[0] == 'gt':
            asm = ('@SP'      + '\n' +                              # pull first operand from stack and place in D register
                   'M=M-1'    + '\n' +
                   'A=M'      + '\n' +
                   'D=M'      + '\n' +
                   'A=A-1'    + '\n' +                              # set A to the address of the second operand, leaving SP where it needs to be
                   'D=M-D'    + '\n' +                              # subtract first operand from second operand
                   '@GTTRUE'  + str(label_ctr[1]) + '\n' +          # jump to (GTTRUE#) if result is positive
                   'D;JGT'    + '\n' +
                   '@SP'      + '\n' +                              # result is zero or negative(not gt): place 0 (false) on the stack
                   'A=M-1'    + '\n' +
                   'M=0'      + '\n' +
                   '@GTEND'   + str(label_ctr[1]) + '\n' +
                   '0;JMP'    + '\n' +
                   '(GTTRUE'  + str(label_ctr[1]) + ')' + '\n' + 
                   '@SP'      + '\n' +                              # result is positive(gt): place -1 (true) on the stack
                   'A=M-1'    + '\n' + 
                   'M=-1'     + '\n' + 
                   '(GTEND'   + str(label_ctr[1]) + ')')
            label_ctr[1] = label_ctr[1] + 1
        elif args[0] == 'lt':
            asm = ('@SP'      + '\n' +                              # pull first operand from stack and place in D register
                   'M=M-1'    + '\n' +
                   'A=M'      + '\n' +
                   'D=M'      + '\n' +
                   'A=A-1'    + '\n' +                              # set A to the address of the second operand, leaving SP where it needs to be
                   'D=M-D'    + '\n' +                              # subtract first operand from second operand
                   '@LTTRUE'  + str(label_ctr[2]) + '\n' +          # jump to (LTTRUE#) if result is negative
                   'D;JLT'    + '\n' +
                   '@SP'      + '\n' +                              # result is zero or positive(not lt): place 0 (false) on the stack
                   'A=M-1'    + '\n' +
                   'M=0'      + '\n' +
                   '@LTEND'   + str(label_ctr[2]) + '\n' +
                   '0;JMP'    + '\n' +
                   '(LTTRUE'  + str(label_ctr[2]) + ')' + '\n' + 
                   '@SP'      + '\n' +                              # result is negative(lt): place -1 (true) on the stack
                   'A=M-1'    + '\n' + 
                   'M=-1'     + '\n' + 
                   '(LTEND'   + str(label_ctr[2]) + ')' )
            label_ctr[2] = label_ctr[2] + 1
        elif args[0] == 'and':
            asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
                   'M=M-1' + '\n' +
                   'A=M'   + '\n' +
                   'D=M'   + '\n' +
                   'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
                   'M=D&M')         # bit-wise AND the two operands
        elif args[0] == 'or':
            asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
                   'M=M-1' + '\n' +
                   'A=M'   + '\n' +
                   'D=M'   + '\n' +
                   'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
                   'M=D|M')         # bit-wise OR the two operands
        elif args[0] == 'not':
            asm = ('@SP'   + '\n' +
                   'M=M-1' + '\n' +
                   'A=M'   + '\n' +
                   'M=!M'  + '\n' + # bit-wise NOT the contents of the address that SP points to
                   '@SP'   + '\n' +
                   'M=M+1')
    elif ct == 'C_PUSH':
        # put segment[index] onto stack
        if args[0] == 'constant':
            asm = ('@' + args[1] + '\n' + # set A to constant value
                   'D=A' + '\n' +         # D contains constant value
                   '@SP' + '\n' +         
                   'A=M' + '\n' +         
                   'M=D' + '\n' +         # set (the register being pointed to by SP) to the constant value stored in D
                   '@SP' + '\n' +         # increment stack pointer
                   'M=M+1')
        elif args[0] == 'local':
            asm = ('@LCL'  + '\n' +           # store the contents of the memory location local+index in D
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
                   'A=D+A' + '\n' +
                   'D=M'   + '\n' +
                   '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
                   'A=M'   + '\n' + 
                   'M=D'   + '\n' +
                   '@SP'   + '\n' +           # increment contents of SP
                   'M=M+1')
        elif args[0] == 'argument':
            asm = ('@ARG'  + '\n' +           # store the contents of the memory location argument+index in D
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
                   'A=D+A' + '\n' +
                   'D=M'   + '\n' +
                   '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
                   'A=M'   + '\n' + 
                   'M=D'   + '\n' +
                   '@SP'   + '\n' +           # increment contents of SP
                   'M=M+1')
        elif args[0] == 'this':
            asm = ('@THIS'  + '\n' +           # store the contents of the memory location this+index in D
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
                   'A=D+A' + '\n' +
                   'D=M'   + '\n' +
                   '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
                   'A=M'   + '\n' + 
                   'M=D'   + '\n' +
                   '@SP'   + '\n' +           # increment contents of SP
                   'M=M+1')
        elif args[0] == 'that':
            asm = ('@THAT'  + '\n' +           # store the contents of the memory location that+index in D
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
                   'A=D+A' + '\n' +
                   'D=M'   + '\n' +
                   '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
                   'A=M'   + '\n' + 
                   'M=D'   + '\n' +
                   '@SP'   + '\n' +           # increment contents of SP
                   'M=M+1')
        elif args[0] == 'pointer':
            asm = ('@R3'  + '\n' +            # store 3+index in D
                   'D=A'   + '\n' +
                   '@'     + args[1] + '\n' +
                   'A=D+A' + '\n' +
                   'D=M'   + '\n' +
                   '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
                   'A=M'   + '\n' + 
                   'M=D'   + '\n' +
                   '@SP'   + '\n' +           # increment contents of SP
                   'M=M+1')
        elif args[0] == 'temp':
            asm = ('@R5'  + '\n' +            # store 5+index in D
                   'D=A'   + '\n' +
                   '@'     + args[1] + '\n' +
                   'A=D+A' + '\n' +
                   'D=M'   + '\n' +
                   '@SP'   + '\n' +           # set (the register being pointed to by SP) to the constant value stored in D
                   'A=M'   + '\n' + 
                   'M=D'   + '\n' +
                   '@SP'   + '\n' +           # increment contents of SP
                   'M=M+1')
        elif args[0] == 'static':
            asm = ('@' + static_base + '.' + args[1] + '\n' + #store value of static variable register in D
                   'D=M' + '\n' +
                   '@SP' + '\n' +         
                   'A=M' + '\n' +         
                   'M=D' + '\n' +                             # set (the register being pointed to by SP) to the value stored in D
                   '@SP' + '\n' +                             # increment contents of SP
                   'M=M+1')
    elif ct == 'C_POP':
        # pull from stack and store in segment[index]
        if args[0] == 'constant':
            asm = ('@SP' + '\n' +             # decrement contents of SP
                   'M=M-1')
        elif args[0] == 'local':
            asm = ('@LCL'  + '\n' +           # store the address local+index in R13
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
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
        elif args[0] == 'argument':
            asm = ('@ARG'  + '\n' +           # store the address argument+index in R13
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
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
        elif args[0] == 'this':
            asm = ('@THIS'  + '\n' +          # store the address this+index in R13
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
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
        elif args[0] == 'that':
            asm = ('@THAT'  + '\n' +          # store the address that+index in R13
                   'D=M'   + '\n' +
                   '@'     + args[1] + '\n' +
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
        elif args[0] == 'pointer':
            asm = ('@R3'  + '\n' +            # store 3+index in R13
                   'D=A'   + '\n' +
                   '@'     + args[1] + '\n' +
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
        elif args[0] == 'temp':
            asm = ('@R5'  + '\n' +            # store 5+index in R13
                   'D=A'   + '\n' +
                   '@'     + args[1] + '\n' +
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
        elif args[0] == 'static':
            asm = ('@SP'   + '\n' +                                     # set D to the contents of the address that SP points to
                   'M=M-1' + '\n' + 
                   'A=M'   + '\n' + 
                   'D=M'   + '\n' + 
                   '@' + static_base + '.' + args[1] + '\n' +           # store the contents of D in the memory location of static variable
                   'M=D')
    elif ct == 'C_LABEL':
        asm = '(' + args + ')'
    elif ct == 'C_GOTO':
        asm = ('@' + args + '\n' +
              '0;JMP')
    elif ct == 'C_IF':
        asm = ('@SP'      + '\n' +          # pop value from stack and place in D register
               'M=M-1'    + '\n' +
               'A=M'      + '\n' +
               'D=M'      + '\n' +
               '@' + args + '\n' +          # jump to (args) if D is not zero
               'D;JNE')
    elif ct == 'C_CALL':
        asm = ( '@' + args[0] + '.RETURN' + '//Call ' + args[0] + '\n' +
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
                '@'     + args[1] + '\n' +
                'D=D-A' + '\n' +
                '@5'    + '\n' +
                'D=D-A' + '\n' +
                '@ARG'  + '\n' +           # store the contents of D in the memory location ARG
                'M=D'   + '\n' +
                
                '@SP'   + '\n' +           # store the address SP in D
                'D=M'   + '\n' +
                '@LCL'  + '\n' +           # store the contents of D in the memory location LCL
                'M=D'   + '\n' +
                
                '@' + args[0] + '\n' +
                '0;JMP' + '\n' +
                
                '(' + args[0] + '.RETURN' + ')')           
    elif ct == 'C_FUNCTION':
        asm = ('(' + args[0] + ')' + '//Function ' + args[0] + '\n' +
        
               '@' + args[1] + '\n' +
               'D=A'   + '\n' +
               '@' + args[0] + '.kcnt' + '\n' +
               'M=D'   + '\n' +
               
               '(' + args[0] + '.kloop)' + '\n' +
               
               '@' + args[0] + '.kcnt' + '\n' +		# jump to f.END if f.kcnt<=0 (like condition of while loop) [while loop can be brought out into the py script, but it makes more asm instructions]
               'D=M'   + '\n' + 
               '@' + args[0] + '.END' + '\n' +
               'D;JLE' + '\n' +
                
               '@0'    + '\n' +         # set A to zero
               'D=A'   + '\n' +         # D contains zero
               '@SP'   + '\n' +         
               'A=M'   + '\n' +         
               'M=D'   + '\n' +         # set (the register being pointed to by SP) to the constant value stored in D
               '@SP'   + '\n' +         # increment stack pointer
               'M=M+1' + '\n' +
               
               '@' + args[0] + '.kcnt' + '\n' +
               'M=M-1' + '\n' +
                
               '@' + args[0] + '.kloop' + '\n' +	# Goto (f.kloop) (like the end bracket of a while loop)
               '0;JMP' + '\n' +
               '(' + args[0] + '.END)')
    elif ct == 'C_RETURN':
        asm = ( '@LCL'   '//Return ' + args[0] + '\n' +
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