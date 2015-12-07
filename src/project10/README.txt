COMPILER I: SYNTAX ANALYSIS

Write a syntax analyzer to parse programs written in the Jack language.

******************************
Tools Used: VMEmulator

JackCompiler.py is a Python script that will analyze .jack files and for each file generate two .xml files: 
one expressing the tokens of the .jack source, and the other expressing the parse tree of the source.

To run JackCompiler.py from a Windows command line, use the syntax:
<python.exe pathname> <JackCompiler.py pathname> <*.jack pathname -oR- folder pathname containing *.jack files>

CompileSquare.bat is a batch file that will generate a xxx.xml file (the parse tree) and 
a xxxT.xml file (the tokens) for each of the Square xxx.jack source files.  These files are written to
project10/Square/xml.

CompileArrayTest.bat does the same for the Array Test jack source code.

Comparexxx.bat uses the provided TextComparer utility to compare the xxx.xml and xxxT.xml files generated with
JackCompiler.py to those that are supplied by the authors.

A .bat file can be started from the command line by typing its pathname.

NOTE: JackCompiler.py could more accurately be named JackAnalyzer.py.  I may change the name in the future.

***project10/JackCompiler.py passed all project10 tests on 2015.04.08***
-Brian Grady