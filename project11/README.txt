COMPILER II: CODE GENERATION

Extend the syntax analyzer from project10 into a full-scale compiler.

******************************

JackCompiler.py is a Python script that will compile *.jack Jack files into *.vm virtual machine files.

To run JackCompiler.py from a Windows command line, use the syntax:
<python.exe pathname> <JackCompiler.py pathname> <*.jack pathname -oR- folder pathname containing *.jack files>

CompileXXX.bat, where XXX is the name of a test, is a batch file that will generate a yyy.vm file for each of the XXX yyy.jack source files.  These files are written to
project11/XXX.

XXX Test names: Seven; ConvertToBin; Square; Average; Pong; ComplexArrays

CompileArrayTest.bat does the same for the Array Test jack source code.

A .bat file can be started from the command line by typing its pathname.

***project11/JackCompiler.py passed all project11 tests on 2015.11.08***
-Brian Grady