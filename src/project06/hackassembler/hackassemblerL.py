'''Convert Hack assembly program to Hack machine code. (Symbol-less version)


Passed test for symbol-less assembly files on 2014.8.2
'''

import sys
import string

def main():
    '''Main entry point for the script.'''

    with open('test.hack', 'w') as output:
        with open('test.txt', 'r') as asm:
            for line in asm:
                line = clean_line(line, ['//'])
                ct = get_command_type(line)
                if ct == 'A_COMMAND':
                    oline = translate_a_command(line) + '\n'
                elif ct == 'C_COMMAND':
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
    if line == '':
        return ''
    elif line[0] == '@':
        return 'A_COMMAND'
    else:
        return 'C_COMMAND'

def translate_a_command(line):
    '''Takes assembly a-command and translates it to machine code

    assembly a-command -- @(symbol or value)
    machine code word = 0 (symbol or value in 15 bits)
    '''
    return '0' + bin(int(line[1:]))[2:].zfill(15)

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

