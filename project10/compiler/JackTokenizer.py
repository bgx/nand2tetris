''' JackTokenizer '''

import os
import re

def jack_tokenizer(line, mlc_flag, output):
    keywords = {'class','constructor','function','method','field','static','var','int','char','boolean',
                'void','true','false','null','this','let','do','if','else','while','return'}
    symbols  = {'{','}','(',')','[',']','.',',',';','+','-','*','/','&','|','<','>','=','~'}            
    token_specification = [
        ('MLC_START',    r'\/\*'),                  # Multi-line comment start
        ('MLC_FINISH',   r'\*\/'),                  # Multi-line comment finish
        ('SLC_START',    r'\/{2}'),                 # Single line comment start
        ('IDENTIFIER',   r'[a-zA-Z_][A-Za-z\d]*'),  # Identifiers
        ('INT_CONST',    r'\d+'),                   # Integer constants
        ('STRING_CONST', r'\".+\"'),                # String constants
        ('OTHER',        r'[^\s]'),                 # Other
    ]
    tok_regex = '|'.join('(?P<%s>%s)' % pair for pair in token_specification)
    xml_translate = {'KEYWORD':'keyword','SYMBOL':'symbol','INT_CONST':'integerConstant','STRING_CONST':'stringConstant','IDENTIFIER':'identifier'}

    tokens = []
    slc_flag = False;
    for mo in re.finditer(tok_regex,line):
        tokenType = mo.lastgroup
        value = mo.group(tokenType)
        if mlc_flag:
            if tokenType == 'MLC_FINISH':
                mlc_flag = False;
        elif tokenType == 'MLC_START':
            mlc_flag = True;
        elif not slc_flag:
            if tokenType == 'SLC_START':
                slc_flag = True;
            else:
                if tokenType == 'IDENTIFIER' and value in keywords:
                    tokenType = 'KEYWORD'
                elif tokenType == 'STRING_CONST':
                    value = value[1:-1]
                elif tokenType == 'OTHER':
                    if value in symbols:
                        tokenType = 'SYMBOL'
                        if value == '<':
                            value = '&lt;'
                        elif value == '>':
                            value = '&gt;'
                        elif value == '&':
                            value = '&amp;'
                    else:
                        tokenType = 'MISMATCH'
                xml = '<' + xml_translate[tokenType] + '> ' + str(value) + ' </' + xml_translate[tokenType] + '>'
                if not line:
                    oline = ''
                else:
                    oline = '\t' + xml + '\n'
                output.write(oline)
                tokens.append((tokenType,value))
    
    return (tokens,mlc_flag)            

if __name__ == '__main__':
    sys.exit(main())