'''
Generate batch files to help test nand2tetris project 12

Brian Grady
'''

import sys
import string
import os

def main():
    '''Main entry point for the script.'''
    
    classUnderTest = input('Enter the name of the class: ')
    
    generateReset(classUnderTest)
    generateLoad(classUnderTest)
    generateCompile(classUnderTest)
        
def generateReset(classUnderTest):
    with open(classUnderTest + 'Test_Reset.bat', 'w') as f:
        f.write('del \"C:\\Users\\Brian\\Documents\\nand2tetris\\src\\project12\\' + classUnderTest + 'Test\\' + classUnderTest + '.jack\"' + '\n')
        f.write('del \"C:\\Users\\Brian\\Documents\\nand2tetris\\src\\project12\\' + classUnderTest + 'Test\\' + classUnderTest + '.vm\"' + '\n')
        f.write('pause')

def generateLoad(classUnderTest):
    with open(classUnderTest + 'Test_Load.bat', 'w') as f:
        f.write('copy \"C:\\Users\\Brian\\Documents\\nand2tetris\\src\\project12\\myOS\\' + classUnderTest + '.jack\" \"C:\\Users\\Brian\\Documents\\nand2tetris\\src\\project12\\' + classUnderTest + 'Test\\' + classUnderTest + '.jack\"' + '\n')
        f.write('pause')

def generateCompile(classUnderTest):
    with open(classUnderTest + 'Test_Compile.bat', 'w') as f:
        f.write('cd C:\\Users\\Brian\\Documents\\nand2tetris\\src\\project12\\' + classUnderTest + 'Test' + '\n')
        f.write('call \"C:\\Users\\Brian\\Documents\\nand2tetris\\tools\\JackCompiler.bat\"' + '\n')
        f.write('pause')
               
if __name__ == '__main__':
    sys.exit(main())