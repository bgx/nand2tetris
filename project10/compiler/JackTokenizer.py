''' JackTokenizer '''

import os

def jack_tokenizer(jack_filename):
    with open(jack_filename, 'r') as jack:
        jack_lines = jack.readlines()
            
    xmlT = (get_xml_filename(jack_filename)).split('.')[0] + 'T.xml'        
    with open(xmlT, 'w') as tokens:
    
        for line in jack_lines:
            line = clean_line(line, ['//'])
            xml = line
            if not line:
                oline = ''
            else:
                oline = xml + '\n'
            tokens.write(oline)
    
    return xmlT
            
def get_xml_filename(jack_filename):
    ''' returns xml filename for a given jack_filename '''
    xml_filename = os.path.dirname(jack_filename) + '\\xml\\' + (os.path.split(jack_filename)[1]).split('.')[0] + '.xml'
    if not os.path.exists(os.path.dirname(xml_filename)):
        os.makedirs(os.path.dirname(xml_filename))
    return xml_filename            
        
def clean_line(line, sep):
    '''Remove - a. comments and b. whitespace (outer) - from line

    sep  -- commenting symbol ( in this case double-slash, so: ['//'])
    '''
    for s in sep:
        line = line.split(s)[0]
    return line.strip()

if __name__ == '__main__':
    sys.exit(main())