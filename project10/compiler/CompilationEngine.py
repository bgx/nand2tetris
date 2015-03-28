''' CompilationEngine '''

def compile(xmlT):
        
    with open(xmlT.split('T.')[0] + '.xml', 'w') as output:  

        with open(xmlT, 'r') as tokens:
    
            for line in tokens:
                oline = line
                output.write(oline)
        

if __name__ == '__main__':
    sys.exit(main())