// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// bg 2014.7.15

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

	@R2		// initialize product to zero
	M=0
	
	@R0		// sort R0 and R1 so lesser multiplicand is in R0
	D=M
	@R1
	D=D-M	// R0-R1
	@LOOP	// jump to loop if R0<=R1
	D;JLE
			// swap values of R0 and R1 otherwise
	@R1		// move value of R1 to basket
	D=M		
	@basket	
	M=D
	@R0		// move value of R0 to R1
	D=M
	@R1
	M=D
	@basket	// move value from basket to R0
	D=M
	@R0
	M=D
	
(LOOP)	
	@R0		// jump to end if R0<=0 (like condition of while loop)
	D=M
	@END
	D;JLE
	
	@R1		// add R1 to R2, decrement R0
	D=M
	@R2
	M=D+M
	@R0
	M=M-1
	
	@LOOP	// Goto LOOP (like the end bracket of a while loop)
	0;JMP
	
(END)
	@END
	0;JMP	// Infinite loop