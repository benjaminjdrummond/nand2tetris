// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.


// PSEUDOCODE FOR REFERENCE :
// for (int i = 1; i <= 0; i++) {
//      R2 += R1;
//  }


// Put your code here.
	// Initialize
	@R0 // multiplier
	@R1 // multiplicand
	@R2 // product
	@i // counter

	@R2
	M = 0 // R2 = 0 , set product to 0

	@i
	M = 0 // i = 0, set increment to 0

(LOOP) // LOOPING ADDITION
	@i // store value back into i
	D = M // D = i

	@R1
	D = D - M 

	@END
	D; JGE //

	@R0 // get value of 0
	D = M // D = R0
	@R2 // get value of R0
	M = M + D // Add R0 to R2 (multiplying)

	@i
	M = M + 1 // stores in i

	@LOOP
	D;JMP // repeats cycle for multiplication

	(END)

(END)
	0;JMP // Infinite LOOP
	
	
	
