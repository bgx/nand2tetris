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
        f.write('del \".\\' + classUnderTest + 'Test\\' + classUnderTest + '.jack\"' + '\n')
        f.write('del \".\\' + classUnderTest + 'Test\\' + classUnderTest + '.vm\"' + '\n')
        f.write('pause')

def generateLoad(classUnderTest):
    with open(classUnderTest + 'Test_Load.bat', 'w') as f:
        f.write('copy \".\\myOS\\' + classUnderTest + '.jack\" \".\\' + classUnderTest + 'Test\\' + classUnderTest + '.jack\"' + '\n')
        f.write('pause')

def generateCompile(classUnderTest):
    with open(classUnderTest + 'Test_Compile.bat', 'w') as f:
        f.write('cd \".\\' + classUnderTest + 'Test\"' + '\n')
        f.write('call \"..\\..\\..\\tools\\JackCompiler.bat\"' + '\n')
        f.write('pause')
               
if __name__ == '__main__':
    sys.exit(main())