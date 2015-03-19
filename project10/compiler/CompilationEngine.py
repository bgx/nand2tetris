''' CompilationEngine '''

def compile(xmlT):
    with open(xmlT, 'r') as tokens:
        tokens_lines = tokens.readlines()
        
    with open(xmlT.split('T.')[0] + '.xml', 'w') as output:    
    
        for line in tokens_lines:
            oline = line
            output.write(oline)
        

if __name__ == '__main__':
    sys.exit(main())