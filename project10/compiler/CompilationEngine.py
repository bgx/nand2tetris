''' CompilationEngine '''

def compile(tokens,output):
    '''test output if tokens are being passed correctly'''    
    for pair in tokens:
        xml = pair[0] + ' ' + str(pair[1])
        if not pair:
            oline = ''
        else:
            oline = '\t' + xml + '\n'
        output.write(oline)
        

if __name__ == '__main__':
    sys.exit(main())