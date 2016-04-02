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
from collections import deque

static_base = ''

def main():
    '''Main entry point for the script.'''

    # used to label static variables (find a way to not use a global variable)
    global static_base
    
    # This is not great but I don't want to refactor right now
    global global_assembly_functions_called
    global_assembly_functions_called = set()
    
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

        vm_functions_called = get_vm_functions_called(vm_filenames, 'Sys.init')
        if vm_functions_called:
            output.write('// ********Bootstrap***\n')
            output.write(write_init())
                
                
        vm_command_translator = VMCommandTranslator()
        
        for file in vm_filenames:
            
            filename_no_extension = os.path.splitext(os.path.basename(file))[0]
            output.write('// ********FILE***: ' + filename_no_extension + '\n')
            
            with open(file, 'r') as vm:
            
                # static variable number j in a VM file f represented as assembly language symbol f.j
                static_base = filename_no_extension
                
                is_write_enabled = True
                for line in vm:
                    line = clean_line(line, ['//'])
                    
                    if not line:
                        continue
                    
                    ct = get_command_type(line)
                    args = get_arguments(line, ct)
                    
                    if (vm_functions_called and ct == 'C_FUNCTION' and
                        args[0] not in vm_functions_called
                    ):
                        is_write_enabled = False
                    
                    if is_write_enabled:
                        asm = vm_command_translator.add_vm_command( VMCommand(line, ct, args) )
                    else:
                        asm = ''
                        if ct == 'C_RETURN':
                            is_write_enabled = True
                    
                    if asm:
                        output.write(asm + '\n')
                                
            asm = vm_command_translator.flush()
            if asm:
                output.write(asm + '\n')

        output.write('// ********Assembly Functions***\n')
        output.write(write_assembly_functions())
        
class VMCommand:
    def __init__(self, line, ct, args):
        self.vm_text = line
        self.command_type = ct
        self.arguments = args
        
        
class VMCommandTranslator:
    def __init__(self):
        self.buffer = deque((),3)
    
    def add_vm_command(self, command):
        self.buffer.append(command)
        return self._translate()
        
    def flush(self):
        #while buffer has items, translate
        asm = ''
        while self.buffer:
            if asm:
                asm += '\n'
            asm += self._translate()
        return asm
        
    # def _flush_vm_command():
        # self.buffer.popleft
        
    def _translate(self):
        # if(self.buffer[0].command_type == 'C_PUSH'):
            # if(self.buffer[1].command_type == 'C_POP'):
                # push_command = self.buffer.popleft()
                # pop_command = self.buffer.popleft()
                # translation = _write_pushpop(push_command.arguments, pop_command.arguments)
                # if translation:
                    # asm = ( '// ****VM***: ' + push_command.vm_text + '&AND&' + '\n' +
                            # '// ****VM***: ' + pop_command.vm_text  + '\n' +
                            # translation )
        # elif(self.buffer[0].command_type == 'C_ARITHMETIC'):
            # vm_command = self.buffer.popleft()
            # translation = translate_command(vm_command.command_type, vm_command.arguments)
            # if translation:
                # asm = '// ****VM***: ' + vm_command.vm_text + '\n' + translation
        # else:
            # vm_command = self.buffer.popleft()
            # translation = translate_command(vm_command.command_type, vm_command.arguments)
            # if translation:
                # asm = '// ****VM***: ' + vm_command.vm_text + '\n' + translation
                
        vm_command = self.buffer.popleft()
        translation = translate_command(vm_command.command_type, vm_command.arguments)
        if translation:
            asm = '// ****VM***: ' + vm_command.vm_text + '\n' + translation

        return asm
        
    # def _write_pushpop(self, push_arguments, pop_arguments):
        
    
    

class GraphVertice:
    def __init__(self, name):
        self.name = name
        self.adjacent_vertices = set()
        self.marked = False
        
# functions to find vm functions that are called
def get_vm_functions_called(vm_filenames, starting_function):
    # Build graph of function calls, and traverse from starting_function to find functions that need to be written into .asm file
    
    vm_functions_called = set()
    
    vertices = create_function_graph(vm_filenames)
    
    if starting_function in vertices:
        vm_functions_called = find_called_functions(vertices, starting_function)
    
    return vm_functions_called
            
def create_function_graph(vm_filenames):
    vertices = {}
    for file in vm_filenames:
        with open(file, 'r') as vm:
            vertice = GraphVertice('dummyvertice')
            for line in vm:
                line = clean_line(line, ['//'])
                ct = get_command_type(line)
                if ct == 'C_FUNCTION':
                    vertices[vertice.name] = vertice
                    args = get_arguments(line, ct)
                    vertice = GraphVertice(args[0])
                elif ct == 'C_CALL':
                    args = get_arguments(line, ct)
                    vertice.adjacent_vertices.add(args[0])
            vertices[vertice.name] = vertice
    return vertices
    
def find_called_functions(vertices, starting_function):
    vm_functions_called = set()
    queue = deque()
    
    vertice = vertices[starting_function]
    vertice.marked = True
    vm_functions_called.add(vertice.name)
    queue.extend(vertice.adjacent_vertices)
    
    while(len(queue) > 0):
        vertice = vertices[queue.popleft()]
        if not vertice.marked:
            vertice.marked = True
            vm_functions_called.add(vertice.name)
            queue.extend(vertice.adjacent_vertices)
            
    return vm_functions_called
        
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
               'AM=M-1' + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=D+M')         # add the first and second operands
    elif command == 'sub':
        asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
               'AM=M-1' + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=M-D')         # subtract first operand from second operand
    elif command == 'neg':
        asm = ('@SP'   + '\n' +
               'A=M-1' + '\n' +
               'M=-M' ) # arithmetically negate the contents of the address that SP points to
    elif command == 'eq':
        asm = ('@SP'      + '\n' +                              # pull first operand from stack and place in D register
               'AM=M-1'    + '\n' +
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
               'AM=M-1'    + '\n' +
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
               'AM=M-1'    + '\n' +
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
               'AM=M-1' + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=D&M')         # bit-wise AND the two operands
    elif command == 'or':
        asm = ('@SP'   + '\n' + # pull first operand from stack and place in D register
               'AM=M-1' + '\n' +
               'D=M'   + '\n' +
               'A=A-1' + '\n' + # set A to the address of the second operand, leaving SP where it needs to be
               'M=D|M')         # bit-wise OR the two operands
    elif command == 'not':
        asm = ('@SP'   + '\n' +
               'A=M-1' + '\n' +
               'M=!M'  ) # bit-wise NOT the contents of the address that SP points to
    return asm

    

def write_push_constant(index, should_push_d_to_sp):
    if (index in ['0','1','-1']) and should_push_d_to_sp:
        asm = ( '@SP' + '\n' +         
                'AM=M+1' + '\n' +
                'A=A-1' + '\n' +          
                'M='+index)
        return asm
    
    return write_push_dry(index, index, 'A', should_push_d_to_sp)
       
def write_push_dry(index, label, store_in_d_method, should_push_d_to_sp):
    asm_label = '@' + label + '\n'
    
    if(store_in_d_method == 'A'):
        asm_store = 'D=A'
    elif(store_in_d_method == 'M'):
        asm_store = 'D=M'
    elif(store_in_d_method == '1'):
        asm_store = write_push_store_in_D_1(index)
    elif(store_in_d_method == '2'):
        asm_store = write_push_store_in_D_2(index)
    
    asm = asm_label + asm_store
    
    if should_push_d_to_sp:
        asm += '\n' + write_push_D()
            
    return asm

def write_push_store_in_D_1(index):
    '''Store, in D, the contents of the cell referenced by A+index '''
    if (index in ['0']):
        asm = 'D=M'
    elif (index in ['1']):
        asm = ( 'A=A+1'  + '\n' +
                'D=M')
    elif (index in ['2']):
        asm = ( 'A=A+1'  + '\n' +
                'A=A+1'  + '\n' +
                'D=M')
    else:
        asm = ( 'D=A'  + '\n' + 
                '@'+index + '\n' +
                'A=D+A' + '\n' +
                'D=M')
    return asm
    
def write_push_store_in_D_2(index):
    '''Store, in D, the contents of the cell referenced by ( (the contents of the cell referenced by A) + index ) '''
    if (index in ['0']):
        asm = ( 'A=M'  + '\n' +
                'D=M')
    elif (index in ['1']):
        asm = ( 'A=M+1'   + '\n' +
                'D=M')
    elif (index in ['2']):
        asm = ( 'A=M+1'  + '\n' +
                'A=A+1'  + '\n' +
                'D=M')
    else:
        asm = ( 'D=M'  + '\n' + 
                '@'+index + '\n' +
                'A=D+A' + '\n' +
                'D=M')
    return asm
    
def write_push_D():
    asm = ( '@SP'    + '\n' +         
            'AM=M+1' + '\n' +  # SP_f = SP_i + 1
            'A=A-1'  + '\n' +          
            'M=D')             # set (the register being pointed to by SP_i) to the constant value stored in D
    return asm
    
def write_push(segment, index):
    '''Translates push vm command to assembly code'''
    
    # put segment[index] onto stack
    if segment == 'constant':
        asm = write_push_constant(index, True)
    elif segment == 'local':
        asm = write_push_dry(index, 'LCL', '2', True)
    elif segment == 'argument':
        asm = write_push_dry(index, 'ARG', '2', True)
    elif segment == 'this':
        asm = write_push_dry(index, 'THIS', '2', True)
    elif segment == 'that':
        asm = write_push_dry(index, 'THAT', '2', True)
    elif segment == 'pointer':
        asm = write_push_dry(index, 'R3', '1', True)
    elif segment == 'temp':
        asm = write_push_dry(index, 'R5', '1', True)
    elif segment == 'static':
        asm = write_push_dry(index, static_base + '.' + index, 'M', True)
    return asm
    
def write_pop_local(index):
    if (index < 8):
        asm = ( write_pop_D() +
                '@LCL'  + '\n' +
                write_pop_store_from_D_2(index) )
    else:
        asm = ( '@LCL'  + '\n' +
                'D=M'   + '\n' +
                write_pop_large_index(index) )
    return asm
    
def write_pop_argument(index):
    if (index < 8):
        asm = ( write_pop_D() +
                '@ARG'  + '\n' +
                write_pop_store_from_D_2(index) )
    else:
        asm = ( '@ARG'  + '\n' +
                'D=M'   + '\n' +
                write_pop_large_index(index) )
    return asm
    
def write_pop_this(index):
    if (index < 8):
        asm = ( write_pop_D() +
                '@THIS'  + '\n' +
                write_pop_store_from_D_2(index) )
    else:
        asm = ( '@THIS'  + '\n' +
                'D=M'   + '\n' +
                write_pop_large_index(index) )
    return asm

def write_pop_that(index):
    if (index < 8):
        asm = ( write_pop_D() +
                '@THAT'  + '\n' +
                write_pop_store_from_D_2(index) )
    else:
        asm = ( '@THAT'  + '\n' +
                'D=M'   + '\n' +
                write_pop_large_index(index) )
    return asm 
    
def write_pop_pointer(index):
    if (index < 8):
        asm = ( write_pop_D() +
                '@R3'  + '\n' +
                write_pop_store_from_D_1(index) )
    else:
        asm = ( '@R3'  + '\n' +
                'D=A'   + '\n' +
                write_pop_large_index(index) )
    return asm
    
def write_pop_temp(index):
    if (index < 8):
        asm = ( write_pop_D() +
                '@R5'  + '\n' +
                write_pop_store_from_D_1(index) )
    else:
        asm = ( '@R5'  + '\n' +
                'D=A'   + '\n' +
                write_pop_large_index(index) )
    return asm
    

    
# def write_pop_magic(label, index):
    


def write_pop_large_index(index):
    # using R13 as temporary storage.  may want to change later.
    asm = ( '@'     + str(index) + '\n' +
            'D=D+A' + '\n' +
            '@R13'  + '\n' +
            'M=D'   + '\n' +
            write_pop_D()  + 
            '@R13'  + '\n' +
            'A=M'   + '\n' + 
            'M=D')
    return asm

def write_pop_store_from_D_1(index):
    if(index == 0):
        asm = 'M=D'
    else:
        asm = 'A=A+1' + '\n'
        index -= 1
        while( index > 0 ):
            asm = asm + 'A=A+1' + '\n'
            index -= 1
        asm = asm + 'M=D'
    return asm

def write_pop_store_from_D_2(index):
    if(index == 0):
        asm = ( 'A=M'   + '\n'
                'M=D' )
    else:
        asm = 'A=M+1' + '\n'
        index -= 1
        while( index > 0 ):
            asm = asm + 'A=A+1' + '\n'
            index -= 1
        asm = asm + 'M=D'
    return asm
        
def write_pop_D():
    asm = ( '@SP'    + '\n' +
            'AM=M-1' + '\n' + 
            'D=M'    + '\n' )
    return asm

def write_pop(segment, index):
    '''Translates pop vm command to assembly code'''

    index = int(index, 10)
    # pull from stack and store in segment[index]
    if segment == 'constant':
        asm = ('@SP' + '\n' +             # decrement contents of SP
               'M=M-1')
    elif segment == 'local':
        asm = write_pop_local(index)
    elif segment == 'argument':
        asm = write_pop_argument(index)
    elif segment == 'this':
        asm = write_pop_this(index)
    elif segment == 'that':
        asm = write_pop_that(index)
    elif segment == 'pointer':
        asm = write_pop_pointer(index)
    elif segment == 'temp':
        asm = write_pop_temp(index)          
    elif segment == 'static':
        asm = ( write_pop_D() + 
                '@' + static_base + '.' + str(index) + '\n' +           # store the contents of D in the memory location of static variable
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

    asm = ( write_pop_D() +
            '@' + label + '\n' +          # jump to (args) if D is not zero
            'D;JNE')
    return asm       
               
def write_call(functionName, numArgs):
    '''Translates call vm command to assembly code'''
    
    # initialize attribute of function write_call, to be used to 
    # make labels unique for each call of write_call (e.g. (ReturnAddress_Call0) (ReturnAddress_Call1) ...etc.)
    if "counter" not in write_call.__dict__:
        write_call.counter = 0
    
    asm = ( # store return-address in R14
            '@ReturnAddress_Call' + str(write_call.counter) + '\n' +
            'D=A'    + '\n' +
            '@R14'   + '\n' +         
            'M=D'    + '\n' +

            # store numArgs in R15
            '@'     + numArgs + '\n' +
            'D=A'   + '\n' +
            '@R15'  + '\n' +
            'M=D'   + '\n' +

            call_asm_function('CALLSETUP') + '\n' +
                        
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
            
            write_push_constant('0', True) + '\n' + 
           
           '@' + functionName + '-LoopCounter' + '\n' +    # decrement counter f-LoopCounter
           'M=M-1' + '\n' +
            
           '@' + functionName + '-LoopStart' + '\n' +	# Goto (f-LoopStart) (like the end bracket of a while loop)
           '0;JMP' + '\n' +
           '(' + functionName + '-LoopExit)')
    return asm

def write_return():
    '''Translates return vm command to assembly code'''
    return call_asm_function('RETURN')
    
# functions to implement writing and calling of assembly functions
def write_assembly_functions():
    '''Writes functions for assembly code that occurs frequently'''
    asm = ( write_call_assembly() +
            write_return_assembly() )
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
        
    global_assembly_functions_called.add(name)
        
    asm = ( '@AsmReturnAddress' + str(call_asm_function.counter) +'\n'+
            'D=A'                  +'\n'+
            '@AsmFunction_' + name +'\n'+
            '0;JMP'                +'\n'+
            '(AsmReturnAddress' + str(call_asm_function.counter) +')')
    call_asm_function.counter += 1
    return asm
    
def write_call_assembly():
    ''''''
    
    if('CALLSETUP' not in global_assembly_functions_called):
        return ''
    
    # R14 and R15 are used to store return address and number of arguments.  May need to change later.
    asm = ( start_asm_function('CALLSETUP')   +
    
            '@R14'  + '\n' +            # push [return address stored in R14]
            'D=M'   + '\n' +
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
            
            '@SP'   + '\n' +            # ARG = SP - [numArgs stored in R15] - 5
            'D=M'   + '\n' +
            '@R15'  + '\n' +
            'D=D-M' + '\n' +
            '@5'    + '\n' +
            'D=D-A' + '\n' +
            '@ARG'  + '\n' +           
            'M=D'   + '\n' +
            
            '@SP'   + '\n' +            # LCL = SP
            'D=M'   + '\n' +
            '@LCL'  + '\n' +           
            'M=D'   + '\n' +
            
            end_asm_function() )
    return asm
    
def write_return_assembly():
    ''''''
    
    if('RETURN' not in global_assembly_functions_called):
        return ''
        
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
            'AM=M-1' + '\n' + 
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
            'AM=M-1'  + '\n' +
            'D=M'    + '\n' +
            '@THAT'  + '\n' +
            'M=D'    + '\n' +
            
            # THIS = *(FRAME-2)            
            '@FRAME' + '\n' +
            'AM=M-1'  + '\n' +
            'D=M'    + '\n' +
            '@THIS'  + '\n' +
            'M=D'    + '\n' +
            
            # ARG = *(FRAME-3)
            '@FRAME' + '\n' +
            'AM=M-1'  + '\n' +
            'D=M'    + '\n' +
            '@ARG'   + '\n' +
            'M=D'    + '\n' +
            
            # LCL = *(FRAME-4)
            '@FRAME' + '\n' +
            'AM=M-1'  + '\n' +
            'D=M'    + '\n' +
            '@LCL'   + '\n' +
            'M=D'    + '\n' +
            
            # goto RET
            '@RET' + '\n' +
            'A=M'  + '\n' +
            '0;JMP'  + '\n' +
            
            end_asm_function() )
    return asm

if __name__ == '__main__':
    sys.exit(main())