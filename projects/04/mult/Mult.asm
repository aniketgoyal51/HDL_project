// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@16
M=0   //RAM[16]=0
@17
M=1   //RAM[17]=1
(LOOP)
@17    
D=M   //D=17
@R0
D=D-M //D=17-R0
@END
D;JGT  // 17(17-R0) > 0 goto END
@R1
D=M   //D=R1
@16
M=D+M  //16+=R1
@17
M=M+1  //17=17+1
@LOOP
0;JMP  //Goto LOOP
(END)
@16
D=M
@R2
M=D