// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// bg 2014.7.15

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

	@SCREEN			// inialize SCREENPOINTER to address of first pixel
	D=A
	@SCREENPOINTER
	M=D
	
(LOOP)

	@KBD
	D=M
	@PRESSED
	D;JNE
	
(UNPRESSED)	
	@SCREEN			// jump to LRET if SCREENPOINTER=address of SCREEN
	D=A
	@SCREENPOINTER
	D=D-M
	@LRET
	D;JEQ
	
	@SCREENPOINTER	// decrement SCREENPOINTER and write 0
	M=M-1
	@SCREENPOINTER
	A=M
	M=0
	
	@LRET
	0;JMP
	
(PRESSED)	
	@KBD			// jump to LRET if SCREENPOINTER=address of KBD
	D=A
	@SCREENPOINTER
	D=D-M
	@LRET
	D;JEQ

	@SCREENPOINTER	// write -1 and increment SCREENPOINTER
	A=M
	M=-1
	@SCREENPOINTER
	M=M+1

(LRET)
	@LOOP
	0;JMP