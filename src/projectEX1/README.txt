Extra Project #1

Take a program in .jack, convert it to .hack using my tools, and run on CPUEmulator.

******************************
Supplied tools Used: CPUEmulator

My tools used: myOS, JackCompiler, vmtranslator, hackassembler

-Process-
(<program> .jack files + <myOS> .jack files) ==>{JackCompiler}==> (<program> .vm files + <myOS> .vm files) ==>{vmtranslator}==> (.asm file) ==>{hackassembler}==> (.hack file)

I am going to make changes to my tools in this project independent of project01-project12.

******************************

2016.04.02 - YES :D Used only my toolset to convert my Breakaway game into binary, and ran the game on the CPUEmulator.