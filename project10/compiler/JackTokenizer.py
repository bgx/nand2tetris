''' JackTokenizer '''

import os
import re

def jack_tokenizer(jack_filename):
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
    
    xmlT = (get_xml_filename(jack_filename)).split('.')[0] + 'T.xml'        
    with open(xmlT, 'w') as tokens:
    
        with open(jack_filename, 'r') as jack:
            mlc_flag = False;
            tokens.write('<tokens>' + '\n')
            
            for line in jack:
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
                            if tokenType == 'OTHER':
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
                            xml = '<' + tokenType + '> ' + str(value) + ' </' + tokenType + '>'
                            if not line:
                                oline = ''
                            else:
                                oline = '\t' + xml + '\n'
                            tokens.write(oline)
    
            tokens.write('</tokens>')
    return xmlT
            
def get_xml_filename(jack_filename):
    ''' returns xml filename for a given jack_filename '''
    xml_filename = os.path.dirname(jack_filename) + '\\xml\\' + (os.path.split(jack_filename)[1]).split('.')[0] + '.xml'
    if not os.path.exists(os.path.dirname(xml_filename)):
        os.makedirs(os.path.dirname(xml_filename))
    return xml_filename            

if __name__ == '__main__':
    sys.exit(main())