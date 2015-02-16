vmtranslator.py is a Python script that will translate a *.vm virtual machine file into a *.asm assembly language file.

(vmtranslator.py in project08 folder translates stack arithmetic, memory access,
program flow, and function calling commands)

To run vmtranslator.py from a Windows command line, use the syntax:
<python.exe pathname> <vmtranslator.py pathname> <*.vm pathname -oR- folder pathname containing *.vm files> <-n>
(-n is an optional flag, which if included, will cause vmtranslator.py to NOT write bootstrap code at beginning of asm file)

RUN.bat is a batch file that will generate an *.asm file in each of the six project08 test folders:
(BasicLoop, Fibonacci, SimpleFunction, NestedCall, FibonacciElement, StaticsTest).

RUN.bat can be started from the command line by typing its pathname.

***project08/vmtranslator passed all project08 tests on ________***
-Brian Grady