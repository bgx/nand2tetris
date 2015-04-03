''' CompilationEngine '''

def compile(tokens,output):
    '''test output if tokens are being passed correctly'''  
    
    n = len(tokens)
    
    for pair in tokens:
        xml = pair[0] + ' ' + str(pair[1])
        if not pair:
            oline = ''
        else:
            oline = '\t' + xml + '\n'
        output.write(oline)
        
'''def getToken(n):
    
def compileClass(output):
    
def compileClassVarDec():
    
def compileSubroutine():
    
def compileParameterList():
    
def compileVarDec():
    
def compileStatements():
    
def compileDo():
    
def compileLet():
    
def compileWhile():
    
def compileReturn():
    
def compileIf():
    
def compileExpression():
    
def compileTerm():
    
def compileExpressionList():
    
    '''

if __name__ == '__main__':
    sys.exit(main())