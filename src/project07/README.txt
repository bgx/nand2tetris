VIRTUAL MACHINE I: STACK ARITHMETIC

******************************
Tools Used: CPUEmulator, VMEmulator

vmtranslator.py is a Python script that will translate a *.vm virtual machine file into a *.asm assembly language file.

(vmtranslator.py in project07 folder translates stack arithmetic and memory access commands,
but not program flow nor function calling commands)

To run vmtranslator.py from a Windows command line, use the syntax:
<python.exe pathname> <vmtranslator.py pathname> <*.vm pathname -oR- folder pathname containing *.vm files>

RUN.bat is a batch file that will generate an *.asm file in each of the five project07 test folders:
(SimpleAdd, StackTest, BasicTest, PointerTest, StaticTest).

RUN.bat can be started from the command line by typing its pathname.

***project07/vmtranslator passed all project07 tests on 2015.1.23***
-Brian Grady