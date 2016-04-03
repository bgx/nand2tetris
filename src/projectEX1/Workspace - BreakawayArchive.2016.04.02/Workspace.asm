// ********Bootstrap***
@256
D=A
@SP
M=D
@ReturnAddress_Call0
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress0
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress0)
@Sys.init
0;JMP
(ReturnAddress_Call0)
// ********FILE***: Array
// ****VM***: function Array.new 0
(Array.new)
@0
D=A
@Array.new-LoopCounter
M=D
(Array.new-LoopStart)
@Array.new-LoopCounter
D=M
@Array.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Array.new-LoopCounter
M=M-1
@Array.new-LoopStart
0;JMP
(Array.new-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call1
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress1
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress1)
@Memory.alloc
0;JMP
(ReturnAddress_Call1)
// ****VM***: return
@AsmReturnAddress2
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress2)
// ****VM***: function Array.dispose 0
(Array.dispose)
@0
D=A
@Array.dispose-LoopCounter
M=D
(Array.dispose-LoopStart)
@Array.dispose-LoopCounter
D=M
@Array.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Array.dispose-LoopCounter
M=M-1
@Array.dispose-LoopStart
0;JMP
(Array.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call2
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress3
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress3)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call2)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress4
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress4)
// ********FILE***: Ball
// ****VM***: function Ball.new 0
(Ball.new)
@0
D=A
@Ball.new-LoopCounter
M=D
(Ball.new-LoopStart)
@Ball.new-LoopCounter
D=M
@Ball.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.new-LoopCounter
M=M-1
@Ball.new-LoopStart
0;JMP
(Ball.new-LoopExit)
// ****VM***: push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call3
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress5
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress5)
@Memory.alloc
0;JMP
(ReturnAddress_Call3)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push argument 0&AND&
// ****VM***: pop this 0
@ARG
A=M
D=M
@THIS
A=M
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop this 1
@ARG
A=M+1
D=M
@THIS
A=M+1
M=D
// ****VM***: push argument 2&AND&
// ****VM***: pop this 4
@ARG
A=M+1
A=A+1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push argument 3&AND&
// ****VM***: pop this 5
@ARG
D=M
@3
A=D+A
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push argument 4&AND&
// ****VM***: pop this 6
@ARG
D=M
@4
A=D+A
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call4
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress6
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress6)
@Math.multiply
0;JMP
(ReturnAddress_Call4)
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call5
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress7
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress7)
@Math.multiply
0;JMP
(ReturnAddress_Call5)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Math.sqrt 1
@ReturnAddress_Call6
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress8
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress8)
@Math.sqrt
0;JMP
(ReturnAddress_Call6)
// ****VM***: pop this 7
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.new 4
@ReturnAddress_Call7
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress9
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress9)
@Hitbox.new
0;JMP
(ReturnAddress_Call7)
// ****VM***: pop this 8
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.draw 1
@ReturnAddress_Call8
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress10
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress10)
@Ball.draw
0;JMP
(ReturnAddress_Call8)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress11
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress11)
// ****VM***: function Ball.dispose 0
(Ball.dispose)
@0
D=A
@Ball.dispose-LoopCounter
M=D
(Ball.dispose-LoopStart)
@Ball.dispose-LoopCounter
D=M
@Ball.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.dispose-LoopCounter
M=M-1
@Ball.dispose-LoopStart
0;JMP
(Ball.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 8
@THIS
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.dispose 1
@ReturnAddress_Call9
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress12
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress12)
@Hitbox.dispose
0;JMP
(ReturnAddress_Call9)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call10
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress13
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress13)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call10)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress14
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress14)
// ****VM***: function Ball.draw 0
(Ball.draw)
@0
D=A
@Ball.draw-LoopCounter
M=D
(Ball.draw-LoopStart)
@Ball.draw-LoopCounter
D=M
@Ball.draw-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.draw-LoopCounter
M=M-1
@Ball.draw-LoopStart
0;JMP
(Ball.draw-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call11
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress15
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress15)
@Screen.setColor
0;JMP
(ReturnAddress_Call11)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Screen.drawCircle 3
@ReturnAddress_Call12
D=A
@R14
M=D
@3
D=A
@R15
M=D
@AsmReturnAddress16
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress16)
@Screen.drawCircle
0;JMP
(ReturnAddress_Call12)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress17
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress17)
// ****VM***: function Ball.moveBallSim 0
(Ball.moveBallSim)
@0
D=A
@Ball.moveBallSim-LoopCounter
M=D
(Ball.moveBallSim-LoopStart)
@Ball.moveBallSim-LoopCounter
D=M
@Ball.moveBallSim-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.moveBallSim-LoopCounter
M=M-1
@Ball.moveBallSim-LoopStart
0;JMP
(Ball.moveBallSim-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push this 8
@THIS
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.update 5
@ReturnAddress_Call13
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress18
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress18)
@Hitbox.update
0;JMP
(ReturnAddress_Call13)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress19
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress19)
// ****VM***: function Ball.getHitbox 0
(Ball.getHitbox)
@0
D=A
@Ball.getHitbox-LoopCounter
M=D
(Ball.getHitbox-LoopStart)
@Ball.getHitbox-LoopCounter
D=M
@Ball.getHitbox-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.getHitbox-LoopCounter
M=M-1
@Ball.getHitbox-LoopStart
0;JMP
(Ball.getHitbox-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 8
@THIS
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress20
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress20)
// ****VM***: function Ball.flipDeltaX 0
(Ball.flipDeltaX)
@0
D=A
@Ball.flipDeltaX-LoopCounter
M=D
(Ball.flipDeltaX-LoopStart)
@Ball.flipDeltaX-LoopCounter
D=M
@Ball.flipDeltaX-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.flipDeltaX-LoopCounter
M=M-1
@Ball.flipDeltaX-LoopStart
0;JMP
(Ball.flipDeltaX-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop this 5
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress21
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress21)
// ****VM***: function Ball.flipDeltaY 0
(Ball.flipDeltaY)
@0
D=A
@Ball.flipDeltaY-LoopCounter
M=D
(Ball.flipDeltaY-LoopStart)
@Ball.flipDeltaY-LoopCounter
D=M
@Ball.flipDeltaY-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.flipDeltaY-LoopCounter
M=M-1
@Ball.flipDeltaY-LoopStart
0;JMP
(Ball.flipDeltaY-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop this 6
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress22
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress22)
// ****VM***: function Ball.setDelta 0
(Ball.setDelta)
@0
D=A
@Ball.setDelta-LoopCounter
M=D
(Ball.setDelta-LoopStart)
@Ball.setDelta-LoopCounter
D=M
@Ball.setDelta-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.setDelta-LoopCounter
M=M-1
@Ball.setDelta-LoopStart
0;JMP
(Ball.setDelta-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call14
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress23
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress23)
@Math.divide
0;JMP
(ReturnAddress_Call14)
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE0
D;JEQ
@SP
A=M-1
M=0
@EQEND0
0;JMP
(EQTRUE0)
@SP
A=M-1
M=-1
(EQEND0)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BallsetDelta0
@SP
AM=M-1
D=M
@BallsetDelta0
D;JNE
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE0
D;JGT
@SP
A=M-1
M=0
@GTEND0
0;JMP
(GTTRUE0)
@SP
A=M-1
M=-1
(GTEND0)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BallsetDelta2
@SP
AM=M-1
D=M
@BallsetDelta2
D;JNE
// ****VM***: push constant 1&AND&
// ****VM***: pop this 5
@1
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto BallsetDelta3
@BallsetDelta3
0;JMP
// ****VM***: label BallsetDelta2
(BallsetDelta2)
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE0
D;JLT
@SP
A=M-1
M=0
@LTEND0
0;JMP
(LTTRUE0)
@SP
A=M-1
M=-1
(LTEND0)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BallsetDelta4
@SP
AM=M-1
D=M
@BallsetDelta4
D;JNE
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop this 5
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto BallsetDelta5
@BallsetDelta5
0;JMP
// ****VM***: label BallsetDelta4
(BallsetDelta4)
// ****VM***: label BallsetDelta5
(BallsetDelta5)
// ****VM***: label BallsetDelta3
(BallsetDelta3)
// ****VM***: goto BallsetDelta1
@BallsetDelta1
0;JMP
// ****VM***: label BallsetDelta0
(BallsetDelta0)
// ****VM***: push argument 1&AND&
// ****VM***: pop this 5
@ARG
A=M+1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label BallsetDelta1
(BallsetDelta1)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call15
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress24
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress24)
@Math.multiply
0;JMP
(ReturnAddress_Call15)
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call16
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress25
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress25)
@Math.multiply
0;JMP
(ReturnAddress_Call16)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: call Math.sqrt 1
@ReturnAddress_Call17
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress26
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress26)
@Math.sqrt
0;JMP
(ReturnAddress_Call17)
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop this 6
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress27
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress27)
// ****VM***: function Ball.moveBall 0
(Ball.moveBall)
@0
D=A
@Ball.moveBall-LoopCounter
M=D
(Ball.moveBall-LoopStart)
@Ball.moveBall-LoopCounter
D=M
@Ball.moveBall-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Ball.moveBall-LoopCounter
M=M-1
@Ball.moveBall-LoopStart
0;JMP
(Ball.moveBall-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress28
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress28)
// ********FILE***: BreakawayGame
// ****VM***: function BreakawayGame.new 0
(BreakawayGame.new)
@0
D=A
@BreakawayGame.new-LoopCounter
M=D
(BreakawayGame.new-LoopStart)
@BreakawayGame.new-LoopCounter
D=M
@BreakawayGame.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.new-LoopCounter
M=M-1
@BreakawayGame.new-LoopStart
0;JMP
(BreakawayGame.new-LoopExit)
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call18
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress29
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress29)
@Memory.alloc
0;JMP
(ReturnAddress_Call18)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop this 7
@0
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress30
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress30)
// ****VM***: function BreakawayGame.dispose 0
(BreakawayGame.dispose)
@0
D=A
@BreakawayGame.dispose-LoopCounter
M=D
(BreakawayGame.dispose-LoopStart)
@BreakawayGame.dispose-LoopCounter
D=M
@BreakawayGame.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.dispose-LoopCounter
M=M-1
@BreakawayGame.dispose-LoopStart
0;JMP
(BreakawayGame.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call PlayArea.dispose 1
@ReturnAddress_Call19
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress31
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress31)
@PlayArea.dispose
0;JMP
(ReturnAddress_Call19)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.dispose 1
@ReturnAddress_Call20
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress32
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress32)
@Ball.dispose
0;JMP
(ReturnAddress_Call20)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.dispose 1
@ReturnAddress_Call21
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress33
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress33)
@Paddle.dispose
0;JMP
(ReturnAddress_Call21)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.dispose 1
@ReturnAddress_Call22
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress34
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress34)
@Wall.dispose
0;JMP
(ReturnAddress_Call22)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call23
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress35
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress35)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call23)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress36
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress36)
// ****VM***: function BreakawayGame.run 0
(BreakawayGame.run)
@0
D=A
@BreakawayGame.run-LoopCounter
M=D
(BreakawayGame.run-LoopStart)
@BreakawayGame.run-LoopCounter
D=M
@BreakawayGame.run-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.run-LoopCounter
M=M-1
@BreakawayGame.run-LoopStart
0;JMP
(BreakawayGame.run-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: label BreakawayGamerun0
(BreakawayGamerun0)
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamerun1
@SP
AM=M-1
D=M
@BreakawayGamerun1
D;JNE
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE1
D;JEQ
@SP
A=M-1
M=0
@EQEND1
0;JMP
(EQTRUE1)
@SP
A=M-1
M=-1
(EQEND1)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamerun2
@SP
AM=M-1
D=M
@BreakawayGamerun2
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printStartScreen 1
@ReturnAddress_Call24
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress37
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress37)
@BreakawayGame.printStartScreen
0;JMP
(ReturnAddress_Call24)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.waitSpacePressed 1
@ReturnAddress_Call25
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress38
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress38)
@BreakawayGame.waitSpacePressed
0;JMP
(ReturnAddress_Call25)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.initializeGameLoop 1
@ReturnAddress_Call26
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress39
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress39)
@BreakawayGame.initializeGameLoop
0;JMP
(ReturnAddress_Call26)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGamerun3
@BreakawayGamerun3
0;JMP
// ****VM***: label BreakawayGamerun2
(BreakawayGamerun2)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE2
D;JEQ
@SP
A=M-1
M=0
@EQEND2
0;JMP
(EQTRUE2)
@SP
A=M-1
M=-1
(EQEND2)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamerun4
@SP
AM=M-1
D=M
@BreakawayGamerun4
D;JNE
// ****VM***: call Screen.clearScreen 0
@ReturnAddress_Call27
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress40
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress40)
@Screen.clearScreen
0;JMP
(ReturnAddress_Call27)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.initializeComponents 1
@ReturnAddress_Call28
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress41
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress41)
@BreakawayGame.initializeComponents
0;JMP
(ReturnAddress_Call28)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: label BreakawayGamerun6
(BreakawayGamerun6)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE3
D;JEQ
@SP
A=M-1
M=0
@EQEND3
0;JMP
(EQTRUE3)
@SP
A=M-1
M=-1
(EQEND3)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamerun7
@SP
AM=M-1
D=M
@BreakawayGamerun7
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.processInput 1
@ReturnAddress_Call29
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress42
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress42)
@BreakawayGame.processInput
0;JMP
(ReturnAddress_Call29)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.update 1
@ReturnAddress_Call30
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress43
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress43)
@BreakawayGame.update
0;JMP
(ReturnAddress_Call30)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.render 1
@ReturnAddress_Call31
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress44
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress44)
@BreakawayGame.render
0;JMP
(ReturnAddress_Call31)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGamerun6
@BreakawayGamerun6
0;JMP
// ****VM***: label BreakawayGamerun7
(BreakawayGamerun7)
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.disposeComponents 1
@ReturnAddress_Call32
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress45
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress45)
@BreakawayGame.disposeComponents
0;JMP
(ReturnAddress_Call32)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGamerun5
@BreakawayGamerun5
0;JMP
// ****VM***: label BreakawayGamerun4
(BreakawayGamerun4)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE4
D;JEQ
@SP
A=M-1
M=0
@EQEND4
0;JMP
(EQTRUE4)
@SP
A=M-1
M=-1
(EQEND4)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamerun8
@SP
AM=M-1
D=M
@BreakawayGamerun8
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printLives 1
@ReturnAddress_Call33
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress46
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress46)
@BreakawayGame.printLives
0;JMP
(ReturnAddress_Call33)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printLostLife 1
@ReturnAddress_Call34
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress47
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress47)
@BreakawayGame.printLostLife
0;JMP
(ReturnAddress_Call34)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.waitSpacePressed 1
@ReturnAddress_Call35
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress48
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress48)
@BreakawayGame.waitSpacePressed
0;JMP
(ReturnAddress_Call35)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGamerun9
@BreakawayGamerun9
0;JMP
// ****VM***: label BreakawayGamerun8
(BreakawayGamerun8)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE5
D;JEQ
@SP
A=M-1
M=0
@EQEND5
0;JMP
(EQTRUE5)
@SP
A=M-1
M=-1
(EQEND5)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamerun10
@SP
AM=M-1
D=M
@BreakawayGamerun10
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printGameOver 1
@ReturnAddress_Call36
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress49
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress49)
@BreakawayGame.printGameOver
0;JMP
(ReturnAddress_Call36)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.waitSpacePressed 1
@ReturnAddress_Call37
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress50
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress50)
@BreakawayGame.waitSpacePressed
0;JMP
(ReturnAddress_Call37)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGamerun11
@BreakawayGamerun11
0;JMP
// ****VM***: label BreakawayGamerun10
(BreakawayGamerun10)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE6
D;JEQ
@SP
A=M-1
M=0
@EQEND6
0;JMP
(EQTRUE6)
@SP
A=M-1
M=-1
(EQEND6)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamerun12
@SP
AM=M-1
D=M
@BreakawayGamerun12
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printYouWin 1
@ReturnAddress_Call38
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress51
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress51)
@BreakawayGame.printYouWin
0;JMP
(ReturnAddress_Call38)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.waitSpacePressed 1
@ReturnAddress_Call39
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress52
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress52)
@BreakawayGame.waitSpacePressed
0;JMP
(ReturnAddress_Call39)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGamerun13
@BreakawayGamerun13
0;JMP
// ****VM***: label BreakawayGamerun12
(BreakawayGamerun12)
// ****VM***: label BreakawayGamerun13
(BreakawayGamerun13)
// ****VM***: label BreakawayGamerun11
(BreakawayGamerun11)
// ****VM***: label BreakawayGamerun9
(BreakawayGamerun9)
// ****VM***: label BreakawayGamerun5
(BreakawayGamerun5)
// ****VM***: label BreakawayGamerun3
(BreakawayGamerun3)
// ****VM***: goto BreakawayGamerun0
@BreakawayGamerun0
0;JMP
// ****VM***: label BreakawayGamerun1
(BreakawayGamerun1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress53
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress53)
// ****VM***: function BreakawayGame.waitSpacePressed 0
(BreakawayGame.waitSpacePressed)
@0
D=A
@BreakawayGame.waitSpacePressed-LoopCounter
M=D
(BreakawayGame.waitSpacePressed-LoopStart)
@BreakawayGame.waitSpacePressed-LoopCounter
D=M
@BreakawayGame.waitSpacePressed-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.waitSpacePressed-LoopCounter
M=M-1
@BreakawayGame.waitSpacePressed-LoopStart
0;JMP
(BreakawayGame.waitSpacePressed-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: label BreakawayGamewaitSpacePressed0
(BreakawayGamewaitSpacePressed0)
// ****VM***: call Keyboard.keyPressed 0
@ReturnAddress_Call40
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress54
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress54)
@Keyboard.keyPressed
0;JMP
(ReturnAddress_Call40)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE7
D;JEQ
@SP
A=M-1
M=0
@EQEND7
0;JMP
(EQTRUE7)
@SP
A=M-1
M=-1
(EQEND7)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamewaitSpacePressed1
@SP
AM=M-1
D=M
@BreakawayGamewaitSpacePressed1
D;JNE
// ****VM***: goto BreakawayGamewaitSpacePressed0
@BreakawayGamewaitSpacePressed0
0;JMP
// ****VM***: label BreakawayGamewaitSpacePressed1
(BreakawayGamewaitSpacePressed1)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE8
D;JEQ
@SP
A=M-1
M=0
@EQEND8
0;JMP
(EQTRUE8)
@SP
A=M-1
M=-1
(EQEND8)
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE9
D;JEQ
@SP
A=M-1
M=0
@EQEND9
0;JMP
(EQTRUE9)
@SP
A=M-1
M=-1
(EQEND9)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamewaitSpacePressed2
@SP
AM=M-1
D=M
@BreakawayGamewaitSpacePressed2
D;JNE
// ****VM***: push constant 1&AND&
// ****VM***: pop this 7
@1
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto BreakawayGamewaitSpacePressed3
@BreakawayGamewaitSpacePressed3
0;JMP
// ****VM***: label BreakawayGamewaitSpacePressed2
(BreakawayGamewaitSpacePressed2)
// ****VM***: push constant 0&AND&
// ****VM***: pop this 7
@0
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label BreakawayGamewaitSpacePressed3
(BreakawayGamewaitSpacePressed3)
// ****VM***: label BreakawayGamewaitSpacePressed4
(BreakawayGamewaitSpacePressed4)
// ****VM***: call Keyboard.keyPressed 0
@ReturnAddress_Call41
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress55
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress55)
@Keyboard.keyPressed
0;JMP
(ReturnAddress_Call41)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE10
D;JEQ
@SP
A=M-1
M=0
@EQEND10
0;JMP
(EQTRUE10)
@SP
A=M-1
M=-1
(EQEND10)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGamewaitSpacePressed5
@SP
AM=M-1
D=M
@BreakawayGamewaitSpacePressed5
D;JNE
// ****VM***: goto BreakawayGamewaitSpacePressed4
@BreakawayGamewaitSpacePressed4
0;JMP
// ****VM***: label BreakawayGamewaitSpacePressed5
(BreakawayGamewaitSpacePressed5)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress56
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress56)
// ****VM***: function BreakawayGame.initializeGameLoop 0
(BreakawayGame.initializeGameLoop)
@0
D=A
@BreakawayGame.initializeGameLoop-LoopCounter
M=D
(BreakawayGame.initializeGameLoop-LoopStart)
@BreakawayGame.initializeGameLoop-LoopCounter
D=M
@BreakawayGame.initializeGameLoop-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.initializeGameLoop-LoopCounter
M=M-1
@BreakawayGame.initializeGameLoop-LoopStart
0;JMP
(BreakawayGame.initializeGameLoop-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 2&AND&
// ****VM***: pop this 4
@2
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: call Wall.new 0
@ReturnAddress_Call42
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress57
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress57)
@Wall.new
0;JMP
(ReturnAddress_Call42)
// ****VM***: pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 176
@176
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.newBrickGroup 9
@ReturnAddress_Call43
D=A
@R14
M=D
@9
D=A
@R15
M=D
@AsmReturnAddress58
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress58)
@Wall.newBrickGroup
0;JMP
(ReturnAddress_Call43)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress59
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress59)
// ****VM***: function BreakawayGame.initializeComponents 0
(BreakawayGame.initializeComponents)
@0
D=A
@BreakawayGame.initializeComponents-LoopCounter
M=D
(BreakawayGame.initializeComponents-LoopStart)
@BreakawayGame.initializeComponents-LoopCounter
D=M
@BreakawayGame.initializeComponents-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.initializeComponents-LoopCounter
M=M-1
@BreakawayGame.initializeComponents-LoopStart
0;JMP
(BreakawayGame.initializeComponents-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 216
@216
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 252
@252
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call PlayArea.new 2
@ReturnAddress_Call44
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress60
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress60)
@PlayArea.new
0;JMP
(ReturnAddress_Call44)
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: push constant 250
@250
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 100
@100
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.new 5
@ReturnAddress_Call45
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress61
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress61)
@Ball.new
0;JMP
(ReturnAddress_Call45)
// ****VM***: pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// ****VM***: push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 220
@220
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.new 4
@ReturnAddress_Call46
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress62
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress62)
@Paddle.new
0;JMP
(ReturnAddress_Call46)
// ****VM***: pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printLives 1
@ReturnAddress_Call47
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress63
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress63)
@BreakawayGame.printLives
0;JMP
(ReturnAddress_Call47)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress64
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress64)
// ****VM***: function BreakawayGame.disposeComponents 0
(BreakawayGame.disposeComponents)
@0
D=A
@BreakawayGame.disposeComponents-LoopCounter
M=D
(BreakawayGame.disposeComponents-LoopStart)
@BreakawayGame.disposeComponents-LoopCounter
D=M
@BreakawayGame.disposeComponents-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.disposeComponents-LoopCounter
M=M-1
@BreakawayGame.disposeComponents-LoopStart
0;JMP
(BreakawayGame.disposeComponents-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call PlayArea.dispose 1
@ReturnAddress_Call48
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress65
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress65)
@PlayArea.dispose
0;JMP
(ReturnAddress_Call48)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.dispose 1
@ReturnAddress_Call49
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress66
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress66)
@Ball.dispose
0;JMP
(ReturnAddress_Call49)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.dispose 1
@ReturnAddress_Call50
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress67
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress67)
@Paddle.dispose
0;JMP
(ReturnAddress_Call50)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress68
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress68)
// ****VM***: function BreakawayGame.printMessage 0
(BreakawayGame.printMessage)
@0
D=A
@BreakawayGame.printMessage-LoopCounter
M=D
(BreakawayGame.printMessage-LoopStart)
@BreakawayGame.printMessage-LoopCounter
D=M
@BreakawayGame.printMessage-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.printMessage-LoopCounter
M=M-1
@BreakawayGame.printMessage-LoopStart
0;JMP
(BreakawayGame.printMessage-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.moveCursor 2
@ReturnAddress_Call51
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress69
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress69)
@Output.moveCursor
0;JMP
(ReturnAddress_Call51)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.printString 1
@ReturnAddress_Call52
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress70
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress70)
@Output.printString
0;JMP
(ReturnAddress_Call52)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.new 1
@ReturnAddress_Call53
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress71
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress71)
@String.new
0;JMP
(ReturnAddress_Call53)
// ****VM***: push constant 80
@80
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call54
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress72
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress72)
@String.appendChar
0;JMP
(ReturnAddress_Call54)
// ****VM***: push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call55
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress73
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress73)
@String.appendChar
0;JMP
(ReturnAddress_Call55)
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call56
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress74
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress74)
@String.appendChar
0;JMP
(ReturnAddress_Call56)
// ****VM***: push constant 115
@115
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call57
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress75
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress75)
@String.appendChar
0;JMP
(ReturnAddress_Call57)
// ****VM***: push constant 115
@115
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call58
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress76
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress76)
@String.appendChar
0;JMP
(ReturnAddress_Call58)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call59
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress77
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress77)
@String.appendChar
0;JMP
(ReturnAddress_Call59)
// ****VM***: push constant 83
@83
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call60
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress78
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress78)
@String.appendChar
0;JMP
(ReturnAddress_Call60)
// ****VM***: push constant 112
@112
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call61
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress79
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress79)
@String.appendChar
0;JMP
(ReturnAddress_Call61)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call62
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress80
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress80)
@String.appendChar
0;JMP
(ReturnAddress_Call62)
// ****VM***: push constant 99
@99
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call63
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress81
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress81)
@String.appendChar
0;JMP
(ReturnAddress_Call63)
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call64
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress82
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress82)
@String.appendChar
0;JMP
(ReturnAddress_Call64)
// ****VM***: push constant 98
@98
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call65
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress83
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress83)
@String.appendChar
0;JMP
(ReturnAddress_Call65)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call66
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress84
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress84)
@String.appendChar
0;JMP
(ReturnAddress_Call66)
// ****VM***: push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call67
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress85
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress85)
@String.appendChar
0;JMP
(ReturnAddress_Call67)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call68
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress86
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress86)
@String.appendChar
0;JMP
(ReturnAddress_Call68)
// ****VM***: push constant 116
@116
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call69
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress87
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress87)
@String.appendChar
0;JMP
(ReturnAddress_Call69)
// ****VM***: push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call70
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress88
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress88)
@String.appendChar
0;JMP
(ReturnAddress_Call70)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call71
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress89
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress89)
@String.appendChar
0;JMP
(ReturnAddress_Call71)
// ****VM***: push constant 80
@80
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call72
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress90
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress90)
@String.appendChar
0;JMP
(ReturnAddress_Call72)
// ****VM***: push constant 108
@108
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call73
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress91
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress91)
@String.appendChar
0;JMP
(ReturnAddress_Call73)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call74
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress92
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress92)
@String.appendChar
0;JMP
(ReturnAddress_Call74)
// ****VM***: push constant 121
@121
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call75
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress93
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress93)
@String.appendChar
0;JMP
(ReturnAddress_Call75)
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 21
@21
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.moveCursor 2
@ReturnAddress_Call76
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress94
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress94)
@Output.moveCursor
0;JMP
(ReturnAddress_Call76)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.printString 1
@ReturnAddress_Call77
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress95
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress95)
@Output.printString
0;JMP
(ReturnAddress_Call77)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress96
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress96)
// ****VM***: function BreakawayGame.printStartScreen 1
(BreakawayGame.printStartScreen)
@1
D=A
@BreakawayGame.printStartScreen-LoopCounter
M=D
(BreakawayGame.printStartScreen-LoopStart)
@BreakawayGame.printStartScreen-LoopCounter
D=M
@BreakawayGame.printStartScreen-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.printStartScreen-LoopCounter
M=M-1
@BreakawayGame.printStartScreen-LoopStart
0;JMP
(BreakawayGame.printStartScreen-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: call Screen.clearScreen 0
@ReturnAddress_Call78
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress97
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress97)
@Screen.clearScreen
0;JMP
(ReturnAddress_Call78)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.new 1
@ReturnAddress_Call79
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress98
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress98)
@String.new
0;JMP
(ReturnAddress_Call79)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call80
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress99
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress99)
@String.appendChar
0;JMP
(ReturnAddress_Call80)
// ****VM***: push constant 66
@66
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call81
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress100
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress100)
@String.appendChar
0;JMP
(ReturnAddress_Call81)
// ****VM***: push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call82
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress101
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress101)
@String.appendChar
0;JMP
(ReturnAddress_Call82)
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call83
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress102
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress102)
@String.appendChar
0;JMP
(ReturnAddress_Call83)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call84
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress103
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress103)
@String.appendChar
0;JMP
(ReturnAddress_Call84)
// ****VM***: push constant 107
@107
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call85
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress104
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress104)
@String.appendChar
0;JMP
(ReturnAddress_Call85)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call86
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress105
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress105)
@String.appendChar
0;JMP
(ReturnAddress_Call86)
// ****VM***: push constant 119
@119
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call87
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress106
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress106)
@String.appendChar
0;JMP
(ReturnAddress_Call87)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call88
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress107
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress107)
@String.appendChar
0;JMP
(ReturnAddress_Call88)
// ****VM***: push constant 121
@121
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call89
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress108
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress108)
@String.appendChar
0;JMP
(ReturnAddress_Call89)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printMessage 2
@ReturnAddress_Call90
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress109
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress109)
@BreakawayGame.printMessage
0;JMP
(ReturnAddress_Call90)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress110
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress110)
// ****VM***: function BreakawayGame.printYouWin 1
(BreakawayGame.printYouWin)
@1
D=A
@BreakawayGame.printYouWin-LoopCounter
M=D
(BreakawayGame.printYouWin-LoopStart)
@BreakawayGame.printYouWin-LoopCounter
D=M
@BreakawayGame.printYouWin-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.printYouWin-LoopCounter
M=M-1
@BreakawayGame.printYouWin-LoopStart
0;JMP
(BreakawayGame.printYouWin-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.new 1
@ReturnAddress_Call91
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress111
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress111)
@String.new
0;JMP
(ReturnAddress_Call91)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call92
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress112
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress112)
@String.appendChar
0;JMP
(ReturnAddress_Call92)
// ****VM***: push constant 89
@89
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call93
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress113
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress113)
@String.appendChar
0;JMP
(ReturnAddress_Call93)
// ****VM***: push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call94
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress114
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress114)
@String.appendChar
0;JMP
(ReturnAddress_Call94)
// ****VM***: push constant 117
@117
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call95
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress115
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress115)
@String.appendChar
0;JMP
(ReturnAddress_Call95)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call96
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress116
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress116)
@String.appendChar
0;JMP
(ReturnAddress_Call96)
// ****VM***: push constant 87
@87
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call97
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress117
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress117)
@String.appendChar
0;JMP
(ReturnAddress_Call97)
// ****VM***: push constant 105
@105
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call98
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress118
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress118)
@String.appendChar
0;JMP
(ReturnAddress_Call98)
// ****VM***: push constant 110
@110
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call99
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress119
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress119)
@String.appendChar
0;JMP
(ReturnAddress_Call99)
// ****VM***: push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call100
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress120
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress120)
@String.appendChar
0;JMP
(ReturnAddress_Call100)
// ****VM***: push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call101
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress121
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress121)
@String.appendChar
0;JMP
(ReturnAddress_Call101)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printMessage 2
@ReturnAddress_Call102
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress122
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress122)
@BreakawayGame.printMessage
0;JMP
(ReturnAddress_Call102)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress123
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress123)
// ****VM***: function BreakawayGame.printLostLife 1
(BreakawayGame.printLostLife)
@1
D=A
@BreakawayGame.printLostLife-LoopCounter
M=D
(BreakawayGame.printLostLife-LoopStart)
@BreakawayGame.printLostLife-LoopCounter
D=M
@BreakawayGame.printLostLife-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.printLostLife-LoopCounter
M=M-1
@BreakawayGame.printLostLife-LoopStart
0;JMP
(BreakawayGame.printLostLife-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.new 1
@ReturnAddress_Call103
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress124
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress124)
@String.new
0;JMP
(ReturnAddress_Call103)
// ****VM***: push constant 76
@76
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call104
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress125
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress125)
@String.appendChar
0;JMP
(ReturnAddress_Call104)
// ****VM***: push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call105
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress126
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress126)
@String.appendChar
0;JMP
(ReturnAddress_Call105)
// ****VM***: push constant 115
@115
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call106
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress127
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress127)
@String.appendChar
0;JMP
(ReturnAddress_Call106)
// ****VM***: push constant 116
@116
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call107
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress128
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress128)
@String.appendChar
0;JMP
(ReturnAddress_Call107)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call108
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress129
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress129)
@String.appendChar
0;JMP
(ReturnAddress_Call108)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call109
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress130
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress130)
@String.appendChar
0;JMP
(ReturnAddress_Call109)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call110
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress131
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress131)
@String.appendChar
0;JMP
(ReturnAddress_Call110)
// ****VM***: push constant 108
@108
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call111
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress132
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress132)
@String.appendChar
0;JMP
(ReturnAddress_Call111)
// ****VM***: push constant 105
@105
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call112
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress133
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress133)
@String.appendChar
0;JMP
(ReturnAddress_Call112)
// ****VM***: push constant 102
@102
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call113
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress134
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress134)
@String.appendChar
0;JMP
(ReturnAddress_Call113)
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call114
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress135
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress135)
@String.appendChar
0;JMP
(ReturnAddress_Call114)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printMessage 2
@ReturnAddress_Call115
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress136
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress136)
@BreakawayGame.printMessage
0;JMP
(ReturnAddress_Call115)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress137
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress137)
// ****VM***: function BreakawayGame.printGameOver 1
(BreakawayGame.printGameOver)
@1
D=A
@BreakawayGame.printGameOver-LoopCounter
M=D
(BreakawayGame.printGameOver-LoopStart)
@BreakawayGame.printGameOver-LoopCounter
D=M
@BreakawayGame.printGameOver-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.printGameOver-LoopCounter
M=M-1
@BreakawayGame.printGameOver-LoopStart
0;JMP
(BreakawayGame.printGameOver-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.new 1
@ReturnAddress_Call116
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress138
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress138)
@String.new
0;JMP
(ReturnAddress_Call116)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call117
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress139
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress139)
@String.appendChar
0;JMP
(ReturnAddress_Call117)
// ****VM***: push constant 71
@71
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call118
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress140
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress140)
@String.appendChar
0;JMP
(ReturnAddress_Call118)
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call119
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress141
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress141)
@String.appendChar
0;JMP
(ReturnAddress_Call119)
// ****VM***: push constant 109
@109
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call120
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress142
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress142)
@String.appendChar
0;JMP
(ReturnAddress_Call120)
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call121
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress143
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress143)
@String.appendChar
0;JMP
(ReturnAddress_Call121)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call122
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress144
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress144)
@String.appendChar
0;JMP
(ReturnAddress_Call122)
// ****VM***: push constant 79
@79
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call123
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress145
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress145)
@String.appendChar
0;JMP
(ReturnAddress_Call123)
// ****VM***: push constant 118
@118
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call124
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress146
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress146)
@String.appendChar
0;JMP
(ReturnAddress_Call124)
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call125
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress147
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress147)
@String.appendChar
0;JMP
(ReturnAddress_Call125)
// ****VM***: push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call126
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress148
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress148)
@String.appendChar
0;JMP
(ReturnAddress_Call126)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.printMessage 2
@ReturnAddress_Call127
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress149
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress149)
@BreakawayGame.printMessage
0;JMP
(ReturnAddress_Call127)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress150
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress150)
// ****VM***: function BreakawayGame.printLives 1
(BreakawayGame.printLives)
@1
D=A
@BreakawayGame.printLives-LoopCounter
M=D
(BreakawayGame.printLives-LoopStart)
@BreakawayGame.printLives-LoopCounter
D=M
@BreakawayGame.printLives-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.printLives-LoopCounter
M=M-1
@BreakawayGame.printLives-LoopStart
0;JMP
(BreakawayGame.printLives-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.new 1
@ReturnAddress_Call128
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress151
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress151)
@String.new
0;JMP
(ReturnAddress_Call128)
// ****VM***: push constant 76
@76
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call129
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress152
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress152)
@String.appendChar
0;JMP
(ReturnAddress_Call129)
// ****VM***: push constant 105
@105
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call130
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress153
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress153)
@String.appendChar
0;JMP
(ReturnAddress_Call130)
// ****VM***: push constant 118
@118
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call131
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress154
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress154)
@String.appendChar
0;JMP
(ReturnAddress_Call131)
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call132
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress155
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress155)
@String.appendChar
0;JMP
(ReturnAddress_Call132)
// ****VM***: push constant 115
@115
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call133
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress156
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress156)
@String.appendChar
0;JMP
(ReturnAddress_Call133)
// ****VM***: push constant 58
@58
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call134
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress157
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress157)
@String.appendChar
0;JMP
(ReturnAddress_Call134)
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call135
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress158
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress158)
@String.appendChar
0;JMP
(ReturnAddress_Call135)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.moveCursor 2
@ReturnAddress_Call136
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress159
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress159)
@Output.moveCursor
0;JMP
(ReturnAddress_Call136)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.printString 1
@ReturnAddress_Call137
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress160
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress160)
@Output.printString
0;JMP
(ReturnAddress_Call137)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.printInt 1
@ReturnAddress_Call138
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress161
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress161)
@Output.printInt
0;JMP
(ReturnAddress_Call138)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress162
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress162)
// ****VM***: function BreakawayGame.processInput 0
(BreakawayGame.processInput)
@0
D=A
@BreakawayGame.processInput-LoopCounter
M=D
(BreakawayGame.processInput-LoopStart)
@BreakawayGame.processInput-LoopCounter
D=M
@BreakawayGame.processInput-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.processInput-LoopCounter
M=M-1
@BreakawayGame.processInput-LoopStart
0;JMP
(BreakawayGame.processInput-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: call Keyboard.keyPressed 0
@ReturnAddress_Call139
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress163
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress163)
@Keyboard.keyPressed
0;JMP
(ReturnAddress_Call139)
// ****VM***: pop this 6
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress164
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress164)
// ****VM***: function BreakawayGame.update 8
(BreakawayGame.update)
@8
D=A
@BreakawayGame.update-LoopCounter
M=D
(BreakawayGame.update-LoopStart)
@BreakawayGame.update-LoopCounter
D=M
@BreakawayGame.update-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.update-LoopCounter
M=M-1
@BreakawayGame.update-LoopStart
0;JMP
(BreakawayGame.update-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.moveRight 1
@ReturnAddress_Call140
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress165
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress165)
@Wall.moveRight
0;JMP
(ReturnAddress_Call140)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call PlayArea.getHitbox 1
@ReturnAddress_Call141
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress166
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress166)
@PlayArea.getHitbox
0;JMP
(ReturnAddress_Call141)
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 81
@81
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE11
D;JEQ
@SP
A=M-1
M=0
@EQEND11
0;JMP
(EQTRUE11)
@SP
A=M-1
M=-1
(EQEND11)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate0
@SP
AM=M-1
D=M
@BreakawayGameupdate0
D;JNE
// ****VM***: push constant 0&AND&
// ****VM***: pop this 7
@0
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto BreakawayGameupdate1
@BreakawayGameupdate1
0;JMP
// ****VM***: label BreakawayGameupdate0
(BreakawayGameupdate0)
// ****VM***: label BreakawayGameupdate1
(BreakawayGameupdate1)
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 130
@130
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE12
D;JEQ
@SP
A=M-1
M=0
@EQEND12
0;JMP
(EQTRUE12)
@SP
A=M-1
M=-1
(EQEND12)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate2
@SP
AM=M-1
D=M
@BreakawayGameupdate2
D;JNE
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.moveLeftSim 1
@ReturnAddress_Call142
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress167
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress167)
@Paddle.moveLeftSim
0;JMP
(ReturnAddress_Call142)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.getHitbox 1
@ReturnAddress_Call143
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress168
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress168)
@Paddle.getHitbox
0;JMP
(ReturnAddress_Call143)
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call144
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress169
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress169)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call144)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call145
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress170
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress170)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call145)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE1
D;JLT
@SP
A=M-1
M=0
@LTEND1
0;JMP
(LTTRUE1)
@SP
A=M-1
M=-1
(LTEND1)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate4
@SP
AM=M-1
D=M
@BreakawayGameupdate4
D;JNE
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.moveLeft 1
@ReturnAddress_Call146
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress171
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress171)
@Paddle.moveLeft
0;JMP
(ReturnAddress_Call146)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGameupdate5
@BreakawayGameupdate5
0;JMP
// ****VM***: label BreakawayGameupdate4
(BreakawayGameupdate4)
// ****VM***: label BreakawayGameupdate5
(BreakawayGameupdate5)
// ****VM***: goto BreakawayGameupdate3
@BreakawayGameupdate3
0;JMP
// ****VM***: label BreakawayGameupdate2
(BreakawayGameupdate2)
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 132
@132
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE13
D;JEQ
@SP
A=M-1
M=0
@EQEND13
0;JMP
(EQTRUE13)
@SP
A=M-1
M=-1
(EQEND13)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate6
@SP
AM=M-1
D=M
@BreakawayGameupdate6
D;JNE
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.moveRightSim 1
@ReturnAddress_Call147
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress172
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress172)
@Paddle.moveRightSim
0;JMP
(ReturnAddress_Call147)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.getHitbox 1
@ReturnAddress_Call148
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress173
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress173)
@Paddle.getHitbox
0;JMP
(ReturnAddress_Call148)
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call149
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress174
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress174)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call149)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call150
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress175
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress175)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call150)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE1
D;JGT
@SP
A=M-1
M=0
@GTEND1
0;JMP
(GTTRUE1)
@SP
A=M-1
M=-1
(GTEND1)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate8
@SP
AM=M-1
D=M
@BreakawayGameupdate8
D;JNE
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.moveRight 1
@ReturnAddress_Call151
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress176
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress176)
@Paddle.moveRight
0;JMP
(ReturnAddress_Call151)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGameupdate9
@BreakawayGameupdate9
0;JMP
// ****VM***: label BreakawayGameupdate8
(BreakawayGameupdate8)
// ****VM***: label BreakawayGameupdate9
(BreakawayGameupdate9)
// ****VM***: goto BreakawayGameupdate7
@BreakawayGameupdate7
0;JMP
// ****VM***: label BreakawayGameupdate6
(BreakawayGameupdate6)
// ****VM***: label BreakawayGameupdate7
(BreakawayGameupdate7)
// ****VM***: label BreakawayGameupdate3
(BreakawayGameupdate3)
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.moveBallSim 1
@ReturnAddress_Call152
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress177
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress177)
@Ball.moveBallSim
0;JMP
(ReturnAddress_Call152)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.getHitbox 1
@ReturnAddress_Call153
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress178
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress178)
@Ball.getHitbox
0;JMP
(ReturnAddress_Call153)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.getHitbox 1
@ReturnAddress_Call154
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress179
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress179)
@Paddle.getHitbox
0;JMP
(ReturnAddress_Call154)
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call155
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress180
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress180)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call155)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call156
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress181
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress181)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call156)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE2
D;JLT
@SP
A=M-1
M=0
@LTEND2
0;JMP
(LTTRUE2)
@SP
A=M-1
M=-1
(LTEND2)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call157
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress182
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress182)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call157)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call158
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress183
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress183)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call158)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE2
D;JGT
@SP
A=M-1
M=0
@GTEND2
0;JMP
(GTTRUE2)
@SP
A=M-1
M=-1
(GTEND2)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate10
@SP
AM=M-1
D=M
@BreakawayGameupdate10
D;JNE
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.flipDeltaX 1
@ReturnAddress_Call159
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress184
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress184)
@Ball.flipDeltaX
0;JMP
(ReturnAddress_Call159)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGameupdate11
@BreakawayGameupdate11
0;JMP
// ****VM***: label BreakawayGameupdate10
(BreakawayGameupdate10)
// ****VM***: label BreakawayGameupdate11
(BreakawayGameupdate11)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call160
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress185
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress185)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call160)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call161
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress186
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress186)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call161)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE3
D;JLT
@SP
A=M-1
M=0
@LTEND3
0;JMP
(LTTRUE3)
@SP
A=M-1
M=-1
(LTEND3)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate12
@SP
AM=M-1
D=M
@BreakawayGameupdate12
D;JNE
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.flipDeltaY 1
@ReturnAddress_Call162
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress187
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress187)
@Ball.flipDeltaY
0;JMP
(ReturnAddress_Call162)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGameupdate13
@BreakawayGameupdate13
0;JMP
// ****VM***: label BreakawayGameupdate12
(BreakawayGameupdate12)
// ****VM***: label BreakawayGameupdate13
(BreakawayGameupdate13)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call163
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress188
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress188)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call163)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call164
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress189
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress189)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call164)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE3
D;JGT
@SP
A=M-1
M=0
@GTEND3
0;JMP
(GTTRUE3)
@SP
A=M-1
M=-1
(GTEND3)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate14
@SP
AM=M-1
D=M
@BreakawayGameupdate14
D;JNE
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.flipDeltaY 1
@ReturnAddress_Call165
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress190
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress190)
@Ball.flipDeltaY
0;JMP
(ReturnAddress_Call165)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE4
D;JLT
@SP
A=M-1
M=0
@LTEND4
0;JMP
(LTTRUE4)
@SP
A=M-1
M=-1
(LTEND4)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate16
@SP
AM=M-1
D=M
@BreakawayGameupdate16
D;JNE
// ****VM***: push constant 3&AND&
// ****VM***: pop this 7
@3
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto BreakawayGameupdate17
@BreakawayGameupdate17
0;JMP
// ****VM***: label BreakawayGameupdate16
(BreakawayGameupdate16)
// ****VM***: push constant 2&AND&
// ****VM***: pop this 7
@2
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label BreakawayGameupdate17
(BreakawayGameupdate17)
// ****VM***: goto BreakawayGameupdate15
@BreakawayGameupdate15
0;JMP
// ****VM***: label BreakawayGameupdate14
(BreakawayGameupdate14)
// ****VM***: label BreakawayGameupdate15
(BreakawayGameupdate15)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call166
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress191
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress191)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call166)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call167
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress192
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress192)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call167)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE4
D;JGT
@SP
A=M-1
M=0
@GTEND4
0;JMP
(GTTRUE4)
@SP
A=M-1
M=-1
(GTEND4)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call168
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress193
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress193)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call168)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call169
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress194
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress194)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call169)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE5
D;JLT
@SP
A=M-1
M=0
@LTEND5
0;JMP
(LTTRUE5)
@SP
A=M-1
M=-1
(LTEND5)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call170
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress195
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress195)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call170)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call171
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress196
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress196)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call171)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE5
D;JGT
@SP
A=M-1
M=0
@GTEND5
0;JMP
(GTTRUE5)
@SP
A=M-1
M=-1
(GTEND5)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call172
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress197
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress197)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call172)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call173
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress198
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress198)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call173)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE6
D;JLT
@SP
A=M-1
M=0
@LTEND6
0;JMP
(LTTRUE6)
@SP
A=M-1
M=-1
(LTEND6)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate18
@SP
AM=M-1
D=M
@BreakawayGameupdate18
D;JNE
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call174
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress199
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress199)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call174)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call175
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress200
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress200)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call175)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call176
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress201
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress201)
@Math.divide
0;JMP
(ReturnAddress_Call176)
// ****VM***: pop local 6
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call177
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress202
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress202)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call177)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call178
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress203
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress203)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call178)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call179
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress204
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress204)
@Math.divide
0;JMP
(ReturnAddress_Call179)
// ****VM***: pop local 7
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: call Ball.setDelta 2
@ReturnAddress_Call180
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress205
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress205)
@Ball.setDelta
0;JMP
(ReturnAddress_Call180)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGameupdate19
@BreakawayGameupdate19
0;JMP
// ****VM***: label BreakawayGameupdate18
(BreakawayGameupdate18)
// ****VM***: label BreakawayGameupdate19
(BreakawayGameupdate19)
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.getCount 1
@ReturnAddress_Call181
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress206
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress206)
@Wall.getCount
0;JMP
(ReturnAddress_Call181)
// ****VM***: pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 5
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label BreakawayGameupdate20
(BreakawayGameupdate20)
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE7
D;JLT
@SP
A=M-1
M=0
@LTEND7
0;JMP
(LTTRUE7)
@SP
A=M-1
M=-1
(LTEND7)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate21
@SP
AM=M-1
D=M
@BreakawayGameupdate21
D;JNE
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.getHitbox 2
@ReturnAddress_Call182
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress207
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress207)
@Wall.getHitbox
0;JMP
(ReturnAddress_Call182)
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call183
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress208
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress208)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call183)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call184
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress209
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress209)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call184)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE6
D;JGT
@SP
A=M-1
M=0
@GTEND6
0;JMP
(GTTRUE6)
@SP
A=M-1
M=-1
(GTEND6)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmin 1
@ReturnAddress_Call185
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress210
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress210)
@Hitbox.getXmin
0;JMP
(ReturnAddress_Call185)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getXmax 1
@ReturnAddress_Call186
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress211
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress211)
@Hitbox.getXmax
0;JMP
(ReturnAddress_Call186)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE8
D;JLT
@SP
A=M-1
M=0
@LTEND8
0;JMP
(LTTRUE8)
@SP
A=M-1
M=-1
(LTEND8)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call187
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress212
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress212)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call187)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call188
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress213
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress213)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call188)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE7
D;JGT
@SP
A=M-1
M=0
@GTEND7
0;JMP
(GTTRUE7)
@SP
A=M-1
M=-1
(GTEND7)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call189
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress214
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress214)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call189)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call190
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress215
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress215)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call190)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE9
D;JLT
@SP
A=M-1
M=0
@LTEND9
0;JMP
(LTTRUE9)
@SP
A=M-1
M=-1
(LTEND9)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call191
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress216
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress216)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call191)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmax 1
@ReturnAddress_Call192
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress217
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress217)
@Hitbox.getYmax
0;JMP
(ReturnAddress_Call192)
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE10
D;JLT
@SP
A=M-1
M=0
@LTEND10
0;JMP
(LTTRUE10)
@SP
A=M-1
M=-1
(LTEND10)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call193
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress218
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress218)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call193)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.getYmin 1
@ReturnAddress_Call194
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress219
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress219)
@Hitbox.getYmin
0;JMP
(ReturnAddress_Call194)
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE8
D;JGT
@SP
A=M-1
M=0
@GTEND8
0;JMP
(GTTRUE8)
@SP
A=M-1
M=-1
(GTEND8)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate22
@SP
AM=M-1
D=M
@BreakawayGameupdate22
D;JNE
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.flipDeltaY 1
@ReturnAddress_Call195
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress220
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress220)
@Ball.flipDeltaY
0;JMP
(ReturnAddress_Call195)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.destroyBrick 2
@ReturnAddress_Call196
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress221
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress221)
@Wall.destroyBrick
0;JMP
(ReturnAddress_Call196)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto BreakawayGameupdate23
@BreakawayGameupdate23
0;JMP
// ****VM***: label BreakawayGameupdate22
(BreakawayGameupdate22)
// ****VM***: label BreakawayGameupdate23
(BreakawayGameupdate23)
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto BreakawayGameupdate20
@BreakawayGameupdate20
0;JMP
// ****VM***: label BreakawayGameupdate21
(BreakawayGameupdate21)
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.isDestroyed 1
@ReturnAddress_Call197
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress222
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress222)
@Wall.isDestroyed
0;JMP
(ReturnAddress_Call197)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BreakawayGameupdate24
@SP
AM=M-1
D=M
@BreakawayGameupdate24
D;JNE
// ****VM***: push constant 4&AND&
// ****VM***: pop this 7
@4
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto BreakawayGameupdate25
@BreakawayGameupdate25
0;JMP
// ****VM***: label BreakawayGameupdate24
(BreakawayGameupdate24)
// ****VM***: label BreakawayGameupdate25
(BreakawayGameupdate25)
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.moveBall 1
@ReturnAddress_Call198
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress223
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress223)
@Ball.moveBall
0;JMP
(ReturnAddress_Call198)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.dispose 1
@ReturnAddress_Call199
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress224
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress224)
@Hitbox.dispose
0;JMP
(ReturnAddress_Call199)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.dispose 1
@ReturnAddress_Call200
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress225
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress225)
@Hitbox.dispose
0;JMP
(ReturnAddress_Call200)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.dispose 1
@ReturnAddress_Call201
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress226
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress226)
@Hitbox.dispose
0;JMP
(ReturnAddress_Call201)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress227
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress227)
// ****VM***: function BreakawayGame.render 0
(BreakawayGame.render)
@0
D=A
@BreakawayGame.render-LoopCounter
M=D
(BreakawayGame.render-LoopStart)
@BreakawayGame.render-LoopCounter
D=M
@BreakawayGame.render-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@BreakawayGame.render-LoopCounter
M=M-1
@BreakawayGame.render-LoopStart
0;JMP
(BreakawayGame.render-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call PlayArea.clear 1
@ReturnAddress_Call202
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress228
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress228)
@PlayArea.clear
0;JMP
(ReturnAddress_Call202)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.draw 1
@ReturnAddress_Call203
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress229
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress229)
@Paddle.draw
0;JMP
(ReturnAddress_Call203)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Ball.draw 1
@ReturnAddress_Call204
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress230
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress230)
@Ball.draw
0;JMP
(ReturnAddress_Call204)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.draw 1
@ReturnAddress_Call205
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress231
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress231)
@Wall.draw
0;JMP
(ReturnAddress_Call205)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress232
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress232)
// ********FILE***: Brick
// ****VM***: function Brick.new 0
(Brick.new)
@0
D=A
@Brick.new-LoopCounter
M=D
(Brick.new-LoopStart)
@Brick.new-LoopCounter
D=M
@Brick.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Brick.new-LoopCounter
M=M-1
@Brick.new-LoopStart
0;JMP
(Brick.new-LoopExit)
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call206
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress233
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress233)
@Memory.alloc
0;JMP
(ReturnAddress_Call206)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push argument 0&AND&
// ****VM***: pop this 0
@ARG
A=M
D=M
@THIS
A=M
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop this 1
@ARG
A=M+1
D=M
@THIS
A=M+1
M=D
// ****VM***: push argument 2&AND&
// ****VM***: pop this 2
@ARG
A=M+1
A=A+1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push argument 3&AND&
// ****VM***: pop this 3
@ARG
D=M
@3
A=D+A
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 216&AND&
// ****VM***: pop this 5
@216
D=A
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call207
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress234
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress234)
@Math.divide
0;JMP
(ReturnAddress_Call207)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 6
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 256
@256
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call208
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress235
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress235)
@Math.divide
0;JMP
(ReturnAddress_Call208)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 7
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call209
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress236
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress236)
@Math.divide
0;JMP
(ReturnAddress_Call209)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call210
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress237
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress237)
@Math.divide
0;JMP
(ReturnAddress_Call210)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call211
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress238
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress238)
@Math.divide
0;JMP
(ReturnAddress_Call211)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call212
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress239
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress239)
@Math.divide
0;JMP
(ReturnAddress_Call212)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.new 4
@ReturnAddress_Call213
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress240
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress240)
@Hitbox.new
0;JMP
(ReturnAddress_Call213)
// ****VM***: pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress241
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress241)
// ****VM***: function Brick.draw 0
(Brick.draw)
@0
D=A
@Brick.draw-LoopCounter
M=D
(Brick.draw-LoopStart)
@Brick.draw-LoopCounter
D=M
@Brick.draw-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Brick.draw-LoopCounter
M=M-1
@Brick.draw-LoopStart
0;JMP
(Brick.draw-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call214
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress242
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress242)
@Screen.setColor
0;JMP
(ReturnAddress_Call214)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call215
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress243
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress243)
@Math.divide
0;JMP
(ReturnAddress_Call215)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE9
D;JGT
@SP
A=M-1
M=0
@GTEND9
0;JMP
(GTTRUE9)
@SP
A=M-1
M=-1
(GTEND9)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Brickdraw0
@SP
AM=M-1
D=M
@Brickdraw0
D;JNE
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call216
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress244
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress244)
@Math.divide
0;JMP
(ReturnAddress_Call216)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call217
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress245
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress245)
@Math.divide
0;JMP
(ReturnAddress_Call217)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call218
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress246
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress246)
@Math.divide
0;JMP
(ReturnAddress_Call218)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call219
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress247
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress247)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call219)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call220
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress248
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress248)
@Math.divide
0;JMP
(ReturnAddress_Call220)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call221
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress249
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress249)
@Math.divide
0;JMP
(ReturnAddress_Call221)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call222
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress250
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress250)
@Math.divide
0;JMP
(ReturnAddress_Call222)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call223
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress251
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress251)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call223)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto Brickdraw1
@Brickdraw1
0;JMP
// ****VM***: label Brickdraw0
(Brickdraw0)
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call224
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress252
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress252)
@Math.divide
0;JMP
(ReturnAddress_Call224)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE11
D;JLT
@SP
A=M-1
M=0
@LTEND11
0;JMP
(LTTRUE11)
@SP
A=M-1
M=-1
(LTEND11)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Brickdraw2
@SP
AM=M-1
D=M
@Brickdraw2
D;JNE
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call225
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress253
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress253)
@Math.divide
0;JMP
(ReturnAddress_Call225)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call226
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress254
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress254)
@Math.divide
0;JMP
(ReturnAddress_Call226)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 7
@THIS
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call227
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress255
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress255)
@Math.divide
0;JMP
(ReturnAddress_Call227)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call228
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress256
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress256)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call228)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call229
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress257
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress257)
@Math.divide
0;JMP
(ReturnAddress_Call229)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call230
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress258
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress258)
@Math.divide
0;JMP
(ReturnAddress_Call230)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call231
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress259
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress259)
@Math.divide
0;JMP
(ReturnAddress_Call231)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call232
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress260
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress260)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call232)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto Brickdraw3
@Brickdraw3
0;JMP
// ****VM***: label Brickdraw2
(Brickdraw2)
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call233
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress261
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress261)
@Math.divide
0;JMP
(ReturnAddress_Call233)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call234
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress262
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress262)
@Math.divide
0;JMP
(ReturnAddress_Call234)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call235
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress263
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress263)
@Math.divide
0;JMP
(ReturnAddress_Call235)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call236
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress264
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress264)
@Math.divide
0;JMP
(ReturnAddress_Call236)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call237
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress265
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress265)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call237)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: label Brickdraw3
(Brickdraw3)
// ****VM***: label Brickdraw1
(Brickdraw1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress266
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress266)
// ****VM***: function Brick.getHitbox 0
(Brick.getHitbox)
@0
D=A
@Brick.getHitbox-LoopCounter
M=D
(Brick.getHitbox-LoopStart)
@Brick.getHitbox-LoopCounter
D=M
@Brick.getHitbox-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Brick.getHitbox-LoopCounter
M=M-1
@Brick.getHitbox-LoopStart
0;JMP
(Brick.getHitbox-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress267
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress267)
// ****VM***: function Brick.moveRight 0
(Brick.moveRight)
@0
D=A
@Brick.moveRight-LoopCounter
M=D
(Brick.moveRight-LoopStart)
@Brick.moveRight-LoopCounter
D=M
@Brick.moveRight-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Brick.moveRight-LoopCounter
M=M-1
@Brick.moveRight-LoopStart
0;JMP
(Brick.moveRight-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 363
@363
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE10
D;JGT
@SP
A=M-1
M=0
@GTEND10
0;JMP
(GTTRUE10)
@SP
A=M-1
M=-1
(GTEND10)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto BrickmoveRight0
@SP
AM=M-1
D=M
@BrickmoveRight0
D;JNE
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 216
@216
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: goto BrickmoveRight1
@BrickmoveRight1
0;JMP
// ****VM***: label BrickmoveRight0
(BrickmoveRight0)
// ****VM***: label BrickmoveRight1
(BrickmoveRight1)
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call238
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress268
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress268)
@Math.divide
0;JMP
(ReturnAddress_Call238)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call239
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress269
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress269)
@Math.divide
0;JMP
(ReturnAddress_Call239)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call240
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress270
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress270)
@Math.divide
0;JMP
(ReturnAddress_Call240)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call241
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress271
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress271)
@Math.divide
0;JMP
(ReturnAddress_Call241)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.update 5
@ReturnAddress_Call242
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress272
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress272)
@Hitbox.update
0;JMP
(ReturnAddress_Call242)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress273
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress273)
// ********FILE***: Hitbox
// ****VM***: function Hitbox.new 0
(Hitbox.new)
@0
D=A
@Hitbox.new-LoopCounter
M=D
(Hitbox.new-LoopStart)
@Hitbox.new-LoopCounter
D=M
@Hitbox.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Hitbox.new-LoopCounter
M=M-1
@Hitbox.new-LoopStart
0;JMP
(Hitbox.new-LoopExit)
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call243
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress274
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress274)
@Memory.alloc
0;JMP
(ReturnAddress_Call243)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push argument 0&AND&
// ****VM***: pop this 0
@ARG
A=M
D=M
@THIS
A=M
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop this 1
@ARG
A=M+1
D=M
@THIS
A=M+1
M=D
// ****VM***: push argument 2&AND&
// ****VM***: pop this 2
@ARG
A=M+1
A=A+1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push argument 3&AND&
// ****VM***: pop this 3
@ARG
D=M
@3
A=D+A
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress275
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress275)
// ****VM***: function Hitbox.dispose 0
(Hitbox.dispose)
@0
D=A
@Hitbox.dispose-LoopCounter
M=D
(Hitbox.dispose-LoopStart)
@Hitbox.dispose-LoopCounter
D=M
@Hitbox.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Hitbox.dispose-LoopCounter
M=M-1
@Hitbox.dispose-LoopStart
0;JMP
(Hitbox.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call244
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress276
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress276)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call244)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress277
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress277)
// ****VM***: function Hitbox.update 0
(Hitbox.update)
@0
D=A
@Hitbox.update-LoopCounter
M=D
(Hitbox.update-LoopStart)
@Hitbox.update-LoopCounter
D=M
@Hitbox.update-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Hitbox.update-LoopCounter
M=M-1
@Hitbox.update-LoopStart
0;JMP
(Hitbox.update-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop this 0
@ARG
A=M+1
D=M
@THIS
A=M
M=D
// ****VM***: push argument 2&AND&
// ****VM***: pop this 1
@ARG
A=M+1
A=A+1
D=M
@THIS
A=M+1
M=D
// ****VM***: push argument 3&AND&
// ****VM***: pop this 2
@ARG
D=M
@3
A=D+A
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push argument 4&AND&
// ****VM***: pop this 3
@ARG
D=M
@4
A=D+A
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress278
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress278)
// ****VM***: function Hitbox.getXmin 0
(Hitbox.getXmin)
@0
D=A
@Hitbox.getXmin-LoopCounter
M=D
(Hitbox.getXmin-LoopStart)
@Hitbox.getXmin-LoopCounter
D=M
@Hitbox.getXmin-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Hitbox.getXmin-LoopCounter
M=M-1
@Hitbox.getXmin-LoopStart
0;JMP
(Hitbox.getXmin-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress279
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress279)
// ****VM***: function Hitbox.getXmax 0
(Hitbox.getXmax)
@0
D=A
@Hitbox.getXmax-LoopCounter
M=D
(Hitbox.getXmax-LoopStart)
@Hitbox.getXmax-LoopCounter
D=M
@Hitbox.getXmax-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Hitbox.getXmax-LoopCounter
M=M-1
@Hitbox.getXmax-LoopStart
0;JMP
(Hitbox.getXmax-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress280
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress280)
// ****VM***: function Hitbox.getYmin 0
(Hitbox.getYmin)
@0
D=A
@Hitbox.getYmin-LoopCounter
M=D
(Hitbox.getYmin-LoopStart)
@Hitbox.getYmin-LoopCounter
D=M
@Hitbox.getYmin-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Hitbox.getYmin-LoopCounter
M=M-1
@Hitbox.getYmin-LoopStart
0;JMP
(Hitbox.getYmin-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress281
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress281)
// ****VM***: function Hitbox.getYmax 0
(Hitbox.getYmax)
@0
D=A
@Hitbox.getYmax-LoopCounter
M=D
(Hitbox.getYmax-LoopStart)
@Hitbox.getYmax-LoopCounter
D=M
@Hitbox.getYmax-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Hitbox.getYmax-LoopCounter
M=M-1
@Hitbox.getYmax-LoopStart
0;JMP
(Hitbox.getYmax-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress282
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress282)
// ********FILE***: Keyboard
// ****VM***: function Keyboard.init 0
(Keyboard.init)
@0
D=A
@Keyboard.init-LoopCounter
M=D
(Keyboard.init-LoopStart)
@Keyboard.init-LoopCounter
D=M
@Keyboard.init-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Keyboard.init-LoopCounter
M=M-1
@Keyboard.init-LoopStart
0;JMP
(Keyboard.init-LoopExit)
// ****VM***: push constant 24576&AND&
// ****VM***: pop static 0
@24576
D=A
@Keyboard.0
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress283
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress283)
// ****VM***: function Keyboard.keyPressed 0
(Keyboard.keyPressed)
@0
D=A
@Keyboard.keyPressed-LoopCounter
M=D
(Keyboard.keyPressed-LoopStart)
@Keyboard.keyPressed-LoopCounter
D=M
@Keyboard.keyPressed-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Keyboard.keyPressed-LoopCounter
M=M-1
@Keyboard.keyPressed-LoopStart
0;JMP
(Keyboard.keyPressed-LoopExit)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push static 0
@Keyboard.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress284
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress284)
// ********FILE***: Main
// ****VM***: function Main.main 1
(Main.main)
@1
D=A
@Main.main-LoopCounter
M=D
(Main.main-LoopStart)
@Main.main-LoopCounter
D=M
@Main.main-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Main.main-LoopCounter
M=M-1
@Main.main-LoopStart
0;JMP
(Main.main-LoopExit)
// ****VM***: call BreakawayGame.new 0
@ReturnAddress_Call245
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress285
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress285)
@BreakawayGame.new
0;JMP
(ReturnAddress_Call245)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.run 1
@ReturnAddress_Call246
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress286
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress286)
@BreakawayGame.run
0;JMP
(ReturnAddress_Call246)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call BreakawayGame.dispose 1
@ReturnAddress_Call247
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress287
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress287)
@BreakawayGame.dispose
0;JMP
(ReturnAddress_Call247)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress288
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress288)
// ********FILE***: Math
// ****VM***: function Math.init 2
(Math.init)
@2
D=A
@Math.init-LoopCounter
M=D
(Math.init-LoopStart)
@Math.init-LoopCounter
D=M
@Math.init-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Math.init-LoopCounter
M=M-1
@Math.init-LoopStart
0;JMP
(Math.init-LoopExit)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: push constant 1&AND&
// ****VM***: pop local 1
@1
D=A
@LCL
A=M+1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call248
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress289
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress289)
@Array.new
0;JMP
(ReturnAddress_Call248)
// ****VM***: pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
// ****VM***: label Mathinit0
(Mathinit0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE12
D;JLT
@SP
A=M-1
M=0
@LTEND12
0;JMP
(LTTRUE12)
@SP
A=M-1
M=-1
(LTEND12)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathinit1
@SP
AM=M-1
D=M
@Mathinit1
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 1&AND&
// ****VM***: pop temp 0
@LCL
A=M+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto Mathinit0
@Mathinit0
0;JMP
// ****VM***: label Mathinit1
(Mathinit1)
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call249
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress290
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress290)
@Array.new
0;JMP
(ReturnAddress_Call249)
// ****VM***: pop static 1
@SP
AM=M-1
D=M
@Math.1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress291
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress291)
// ****VM***: goto Mathabs3
@Mathabs3
0;JMP
// ****VM***: label Mathabs2
(Mathabs2)
// ****VM***: label Mathabs3
(Mathabs3)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: return
@AsmReturnAddress292
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress292)
// ****VM***: goto Mathabs1
@Mathabs1
0;JMP
// ****VM***: label Mathabs0
(Mathabs0)
// ****VM***: label Mathabs1
(Mathabs1)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress293
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress293)
// ****VM***: function Math.multiply 4
(Math.multiply)
@4
D=A
@Math.multiply-LoopCounter
M=D
(Math.multiply-LoopStart)
@Math.multiply-LoopCounter
D=M
@Math.multiply-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Math.multiply-LoopCounter
M=M-1
@Math.multiply-LoopStart
0;JMP
(Math.multiply-LoopExit)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE13
D;JLT
@SP
A=M-1
M=0
@LTEND13
0;JMP
(LTTRUE13)
@SP
A=M-1
M=-1
(LTEND13)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathmultiply0
@SP
AM=M-1
D=M
@Mathmultiply0
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto Mathmultiply1
@Mathmultiply1
0;JMP
// ****VM***: label Mathmultiply0
(Mathmultiply0)
// ****VM***: label Mathmultiply1
(Mathmultiply1)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE14
D;JLT
@SP
A=M-1
M=0
@LTEND14
0;JMP
(LTTRUE14)
@SP
A=M-1
M=-1
(LTEND14)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathmultiply2
@SP
AM=M-1
D=M
@Mathmultiply2
D;JNE
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto Mathmultiply3
@Mathmultiply3
0;JMP
// ****VM***: label Mathmultiply2
(Mathmultiply2)
// ****VM***: label Mathmultiply3
(Mathmultiply3)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 1
@0
D=A
@LCL
A=M+1
M=D
// ****VM***: push argument 0&AND&
// ****VM***: pop local 2
@ARG
A=M
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push constant 1&AND&
// ****VM***: pop local 3
@1
D=A
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: label Mathmultiply4
(Mathmultiply4)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE11
D;JGT
@SP
A=M-1
M=0
@GTEND11
0;JMP
(GTTRUE11)
@SP
A=M-1
M=-1
(GTEND11)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathmultiply5
@SP
AM=M-1
D=M
@Mathmultiply5
D;JNE
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE14
D;JEQ
@SP
A=M-1
M=0
@EQEND14
0;JMP
(EQTRUE14)
@SP
A=M-1
M=-1
(EQEND14)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathmultiply6
@SP
AM=M-1
D=M
@Mathmultiply6
D;JNE
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: goto Mathmultiply7
@Mathmultiply7
0;JMP
// ****VM***: label Mathmultiply6
(Mathmultiply6)
// ****VM***: label Mathmultiply7
(Mathmultiply7)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: goto Mathmultiply4
@Mathmultiply4
0;JMP
// ****VM***: label Mathmultiply5
(Mathmultiply5)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE15
D;JEQ
@SP
A=M-1
M=0
@EQEND15
0;JMP
(EQTRUE15)
@SP
A=M-1
M=-1
(EQEND15)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathmultiply8
@SP
AM=M-1
D=M
@Mathmultiply8
D;JNE
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: goto Mathmultiply9
@Mathmultiply9
0;JMP
// ****VM***: label Mathmultiply8
(Mathmultiply8)
// ****VM***: label Mathmultiply9
(Mathmultiply9)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress294
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress294)
// ****VM***: function Math.divide 4
(Math.divide)
@4
D=A
@Math.divide-LoopCounter
M=D
(Math.divide-LoopStart)
@Math.divide-LoopCounter
D=M
@Math.divide-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Math.divide-LoopCounter
M=M-1
@Math.divide-LoopStart
0;JMP
(Math.divide-LoopExit)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE16
D;JEQ
@SP
A=M-1
M=0
@EQEND16
0;JMP
(EQTRUE16)
@SP
A=M-1
M=-1
(EQEND16)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide0
@SP
AM=M-1
D=M
@Mathdivide0
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress295
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress295)
// ****VM***: goto Mathdivide1
@Mathdivide1
0;JMP
// ****VM***: label Mathdivide0
(Mathdivide0)
// ****VM***: label Mathdivide1
(Mathdivide1)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE17
D;JEQ
@SP
A=M-1
M=0
@EQEND17
0;JMP
(EQTRUE17)
@SP
A=M-1
M=-1
(EQEND17)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide2
@SP
AM=M-1
D=M
@Mathdivide2
D;JNE
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: return
@AsmReturnAddress296
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress296)
// ****VM***: goto Mathdivide3
@Mathdivide3
0;JMP
// ****VM***: label Mathdivide2
(Mathdivide2)
// ****VM***: label Mathdivide3
(Mathdivide3)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE15
D;JLT
@SP
A=M-1
M=0
@LTEND15
0;JMP
(LTTRUE15)
@SP
A=M-1
M=-1
(LTEND15)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide4
@SP
AM=M-1
D=M
@Mathdivide4
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto Mathdivide5
@Mathdivide5
0;JMP
// ****VM***: label Mathdivide4
(Mathdivide4)
// ****VM***: label Mathdivide5
(Mathdivide5)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE16
D;JLT
@SP
A=M-1
M=0
@LTEND16
0;JMP
(LTTRUE16)
@SP
A=M-1
M=-1
(LTEND16)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide6
@SP
AM=M-1
D=M
@Mathdivide6
D;JNE
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto Mathdivide7
@Mathdivide7
0;JMP
// ****VM***: label Mathdivide6
(Mathdivide6)
// ****VM***: label Mathdivide7
(Mathdivide7)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE17
D;JLT
@SP
A=M-1
M=0
@LTEND17
0;JMP
(LTTRUE17)
@SP
A=M-1
M=-1
(LTEND17)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide8
@SP
AM=M-1
D=M
@Mathdivide8
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress297
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress297)
// ****VM***: goto Mathdivide9
@Mathdivide9
0;JMP
// ****VM***: label Mathdivide8
(Mathdivide8)
// ****VM***: label Mathdivide9
(Mathdivide9)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 2
@0
D=A
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 1
@0
D=A
@LCL
A=M+1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1&AND&
// ****VM***: pop temp 0
@ARG
A=M+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: label Mathdivide10
(Mathdivide10)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE12
D;JGT
@SP
A=M-1
M=0
@GTEND12
0;JMP
(GTTRUE12)
@SP
A=M-1
M=-1
(GTEND12)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE13
D;JGT
@SP
A=M-1
M=0
@GTEND13
0;JMP
(GTTRUE13)
@SP
A=M-1
M=-1
(GTEND13)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide11
@SP
AM=M-1
D=M
@Mathdivide11
D;JNE
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 3&AND&
// ****VM***: pop temp 0
@LCL
D=M
@3
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: goto Mathdivide10
@Mathdivide10
0;JMP
// ****VM***: label Mathdivide11
(Mathdivide11)
// ****VM***: label Mathdivide12
(Mathdivide12)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE18
D;JLT
@SP
A=M-1
M=0
@LTEND18
0;JMP
(LTTRUE18)
@SP
A=M-1
M=-1
(LTEND18)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide13
@SP
AM=M-1
D=M
@Mathdivide13
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE19
D;JLT
@SP
A=M-1
M=0
@LTEND19
0;JMP
(LTTRUE19)
@SP
A=M-1
M=-1
(LTEND19)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide14
@SP
AM=M-1
D=M
@Mathdivide14
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Math.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop argument 0
@SP
AM=M-1
D=M
@ARG
A=M
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: goto Mathdivide15
@Mathdivide15
0;JMP
// ****VM***: label Mathdivide14
(Mathdivide14)
// ****VM***: label Mathdivide15
(Mathdivide15)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: goto Mathdivide12
@Mathdivide12
0;JMP
// ****VM***: label Mathdivide13
(Mathdivide13)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE18
D;JEQ
@SP
A=M-1
M=0
@EQEND18
0;JMP
(EQTRUE18)
@SP
A=M-1
M=-1
(EQEND18)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathdivide16
@SP
AM=M-1
D=M
@Mathdivide16
D;JNE
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: goto Mathdivide17
@Mathdivide17
0;JMP
// ****VM***: label Mathdivide16
(Mathdivide16)
// ****VM***: label Mathdivide17
(Mathdivide17)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress298
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress298)
// ****VM***: function Math.sqrt 5
(Math.sqrt)
@5
D=A
@Math.sqrt-LoopCounter
M=D
(Math.sqrt-LoopStart)
@Math.sqrt-LoopCounter
D=M
@Math.sqrt-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Math.sqrt-LoopCounter
M=M-1
@Math.sqrt-LoopStart
0;JMP
(Math.sqrt-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE20
D;JLT
@SP
A=M-1
M=0
@LTEND20
0;JMP
(LTTRUE20)
@SP
A=M-1
M=-1
(LTEND20)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathsqrt0
@SP
AM=M-1
D=M
@Mathsqrt0
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress299
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress299)
// ****VM***: goto Mathsqrt1
@Mathsqrt1
0;JMP
// ****VM***: label Mathsqrt0
(Mathsqrt0)
// ****VM***: label Mathsqrt1
(Mathsqrt1)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 1
@0
D=A
@LCL
A=M+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 4
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label Mathsqrt2
(Mathsqrt2)
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE21
D;JLT
@SP
A=M-1
M=0
@LTEND21
0;JMP
(LTTRUE21)
@SP
A=M-1
M=-1
(LTEND21)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE19
D;JEQ
@SP
A=M-1
M=0
@EQEND19
0;JMP
(EQTRUE19)
@SP
A=M-1
M=-1
(EQEND19)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathsqrt3
@SP
AM=M-1
D=M
@Mathsqrt3
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push static 0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE14
D;JGT
@SP
A=M-1
M=0
@GTEND14
0;JMP
(GTTRUE14)
@SP
A=M-1
M=-1
(GTEND14)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathsqrt4
@SP
AM=M-1
D=M
@Mathsqrt4
D;JNE
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: goto Mathsqrt5
@Mathsqrt5
0;JMP
// ****VM***: label Mathsqrt4
(Mathsqrt4)
// ****VM***: label Mathsqrt5
(Mathsqrt5)
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto Mathsqrt2
@Mathsqrt2
0;JMP
// ****VM***: label Mathsqrt3
(Mathsqrt3)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: label Mathsqrt6
(Mathsqrt6)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE15
D;JGT
@SP
A=M-1
M=0
@GTEND15
0;JMP
(GTTRUE15)
@SP
A=M-1
M=-1
(GTEND15)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathsqrt7
@SP
AM=M-1
D=M
@Mathsqrt7
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Math.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call250
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress300
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress300)
@Math.multiply
0;JMP
(ReturnAddress_Call250)
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE16
D;JGT
@SP
A=M-1
M=0
@GTEND16
0;JMP
(GTTRUE16)
@SP
A=M-1
M=-1
(GTEND16)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE17
D;JGT
@SP
A=M-1
M=0
@GTEND17
0;JMP
(GTTRUE17)
@SP
A=M-1
M=-1
(GTEND17)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Mathsqrt8
@SP
AM=M-1
D=M
@Mathsqrt8
D;JNE
// ****VM***: push local 2&AND&
// ****VM***: pop local 0
@LCL
A=M+1
A=A+1
D=M
@LCL
A=M
M=D
// ****VM***: goto Mathsqrt9
@Mathsqrt9
0;JMP
// ****VM***: label Mathsqrt8
(Mathsqrt8)
// ****VM***: label Mathsqrt9
(Mathsqrt9)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: goto Mathsqrt6
@Mathsqrt6
0;JMP
// ****VM***: label Mathsqrt7
(Mathsqrt7)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress301
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress301)
// ****VM***: goto Mathmax1
@Mathmax1
0;JMP
// ****VM***: label Mathmax0
(Mathmax0)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress302
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress302)
// ****VM***: label Mathmax1
(Mathmax1)
// ****VM***: goto Mathmin1
@Mathmin1
0;JMP
// ****VM***: label Mathmin0
(Mathmin0)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress303
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress303)
// ****VM***: label Mathmin1
(Mathmin1)
// ********FILE***: Memory
// ****VM***: function Memory.init 2
(Memory.init)
@2
D=A
@Memory.init-LoopCounter
M=D
(Memory.init-LoopStart)
@Memory.init-LoopCounter
D=M
@Memory.init-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Memory.init-LoopCounter
M=M-1
@Memory.init-LoopStart
0;JMP
(Memory.init-LoopExit)
// ****VM***: push constant 0&AND&
// ****VM***: pop static 0
@0
D=A
@Memory.0
M=D
// ****VM***: push constant 2048&AND&
// ****VM***: pop local 0
@2048
D=A
@LCL
A=M
M=D
// ****VM***: push constant 16383&AND&
// ****VM***: pop local 1
@16383
D=A
@LCL
A=M+1
M=D
// ****VM***: push local 0&AND&
// ****VM***: pop static 1
@LCL
A=M
D=M
@Memory.1
M=D
// ****VM***: push static 1&AND&
// ****VM***: pop static 2
@Memory.1
D=M
@Memory.2
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 0&AND&
// ****VM***: pop temp 0
@0
D=A
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress304
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress304)
// ****VM***: function Memory.peek 0
(Memory.peek)
@0
D=A
@Memory.peek-LoopCounter
M=D
(Memory.peek-LoopStart)
@Memory.peek-LoopCounter
D=M
@Memory.peek-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Memory.peek-LoopCounter
M=M-1
@Memory.peek-LoopStart
0;JMP
(Memory.peek-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress305
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress305)
// ****VM***: function Memory.poke 0
(Memory.poke)
@0
D=A
@Memory.poke-LoopCounter
M=D
(Memory.poke-LoopStart)
@Memory.poke-LoopCounter
D=M
@Memory.poke-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Memory.poke-LoopCounter
M=M-1
@Memory.poke-LoopStart
0;JMP
(Memory.poke-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Memory.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1&AND&
// ****VM***: pop temp 0
@ARG
A=M+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress306
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress306)
// ****VM***: function Memory.alloc 1
(Memory.alloc)
@1
D=A
@Memory.alloc-LoopCounter
M=D
(Memory.alloc-LoopStart)
@Memory.alloc-LoopCounter
D=M
@Memory.alloc-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Memory.alloc-LoopCounter
M=M-1
@Memory.alloc-LoopStart
0;JMP
(Memory.alloc-LoopExit)
// ****VM***: push static 1&AND&
// ****VM***: pop static 2
@Memory.1
D=M
@Memory.2
M=D
// ****VM***: label Memoryalloc0
(Memoryalloc0)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE22
D;JLT
@SP
A=M-1
M=0
@LTEND22
0;JMP
(LTTRUE22)
@SP
A=M-1
M=-1
(LTEND22)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Memoryalloc1
@SP
AM=M-1
D=M
@Memoryalloc1
D;JNE
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE20
D;JEQ
@SP
A=M-1
M=0
@EQEND20
0;JMP
(EQTRUE20)
@SP
A=M-1
M=-1
(EQEND20)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Memoryalloc2
@SP
AM=M-1
D=M
@Memoryalloc2
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress307
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress307)
// ****VM***: goto Memoryalloc3
@Memoryalloc3
0;JMP
// ****VM***: label Memoryalloc2
(Memoryalloc2)
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0&AND&
// ****VM***: pop static 2
@THAT
A=M
D=M
@Memory.2
M=D
// ****VM***: label Memoryalloc3
(Memoryalloc3)
// ****VM***: goto Memoryalloc0
@Memoryalloc0
0;JMP
// ****VM***: label Memoryalloc1
(Memoryalloc1)
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE18
D;JGT
@SP
A=M-1
M=0
@GTEND18
0;JMP
(GTTRUE18)
@SP
A=M-1
M=-1
(GTEND18)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Memoryalloc4
@SP
AM=M-1
D=M
@Memoryalloc4
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0&AND&
// ****VM***: pop temp 0
@THAT
A=M
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: goto Memoryalloc5
@Memoryalloc5
0;JMP
// ****VM***: label Memoryalloc4
(Memoryalloc4)
// ****VM***: label Memoryalloc5
(Memoryalloc5)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 0&AND&
// ****VM***: pop temp 0
@0
D=A
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress308
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress308)
// ****VM***: function Memory.deAlloc 0
(Memory.deAlloc)
@0
D=A
@Memory.deAlloc-LoopCounter
M=D
(Memory.deAlloc-LoopStart)
@Memory.deAlloc-LoopCounter
D=M
@Memory.deAlloc-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Memory.deAlloc-LoopCounter
M=M-1
@Memory.deAlloc-LoopStart
0;JMP
(Memory.deAlloc-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop static 2
@SP
AM=M-1
D=M
@Memory.2
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push static 2
@Memory.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress309
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress309)
// ********FILE***: Output
// ****VM***: function Output.init 0
(Output.init)
@0
D=A
@Output.init-LoopCounter
M=D
(Output.init-LoopStart)
@Output.init-LoopCounter
D=M
@Output.init-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.init-LoopCounter
M=M-1
@Output.init-LoopStart
0;JMP
(Output.init-LoopExit)
// ****VM***: call Output.initMap 0
@ReturnAddress_Call251
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress310
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress310)
@Output.initMap
0;JMP
(ReturnAddress_Call251)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop static 1
@0
D=A
@Output.1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop static 2
@0
D=A
@Output.2
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress311
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress311)
// ****VM***: function Output.initMap 1
(Output.initMap)
@1
D=A
@Output.initMap-LoopCounter
M=D
(Output.initMap-LoopStart)
@Output.initMap-LoopCounter
D=M
@Output.initMap-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.initMap-LoopCounter
M=M-1
@Output.initMap-LoopStart
0;JMP
(Output.initMap-LoopExit)
// ****VM***: push constant 127
@127
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call252
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress312
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress312)
@Array.new
0;JMP
(ReturnAddress_Call252)
// ****VM***: pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call253
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress313
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress313)
@Output.create
0;JMP
(ReturnAddress_Call253)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call254
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress314
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress314)
@Output.create
0;JMP
(ReturnAddress_Call254)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call255
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress315
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress315)
@Output.create
0;JMP
(ReturnAddress_Call255)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 34
@34
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 20
@20
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call256
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress316
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress316)
@Output.create
0;JMP
(ReturnAddress_Call256)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call257
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress317
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress317)
@Output.create
0;JMP
(ReturnAddress_Call257)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 36
@36
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call258
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress318
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress318)
@Output.create
0;JMP
(ReturnAddress_Call258)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 37
@37
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call259
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress319
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress319)
@Output.create
0;JMP
(ReturnAddress_Call259)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call260
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress320
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress320)
@Output.create
0;JMP
(ReturnAddress_Call260)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 39
@39
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call261
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress321
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress321)
@Output.create
0;JMP
(ReturnAddress_Call261)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 40
@40
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call262
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress322
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress322)
@Output.create
0;JMP
(ReturnAddress_Call262)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 41
@41
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call263
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress323
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress323)
@Output.create
0;JMP
(ReturnAddress_Call263)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 42
@42
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call264
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress324
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress324)
@Output.create
0;JMP
(ReturnAddress_Call264)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call265
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress325
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress325)
@Output.create
0;JMP
(ReturnAddress_Call265)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 44
@44
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call266
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress326
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress326)
@Output.create
0;JMP
(ReturnAddress_Call266)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call267
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress327
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress327)
@Output.create
0;JMP
(ReturnAddress_Call267)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 46
@46
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call268
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress328
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress328)
@Output.create
0;JMP
(ReturnAddress_Call268)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 47
@47
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call269
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress329
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress329)
@Output.create
0;JMP
(ReturnAddress_Call269)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call270
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress330
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress330)
@Output.create
0;JMP
(ReturnAddress_Call270)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call271
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress331
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress331)
@Output.create
0;JMP
(ReturnAddress_Call271)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 50
@50
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call272
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress332
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress332)
@Output.create
0;JMP
(ReturnAddress_Call272)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call273
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress333
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress333)
@Output.create
0;JMP
(ReturnAddress_Call273)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 52
@52
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 26
@26
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call274
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress334
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress334)
@Output.create
0;JMP
(ReturnAddress_Call274)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 53
@53
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call275
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress335
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress335)
@Output.create
0;JMP
(ReturnAddress_Call275)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call276
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress336
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress336)
@Output.create
0;JMP
(ReturnAddress_Call276)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call277
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress337
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress337)
@Output.create
0;JMP
(ReturnAddress_Call277)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call278
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress338
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress338)
@Output.create
0;JMP
(ReturnAddress_Call278)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 57
@57
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call279
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress339
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress339)
@Output.create
0;JMP
(ReturnAddress_Call279)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 58
@58
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call280
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress340
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress340)
@Output.create
0;JMP
(ReturnAddress_Call280)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call281
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress341
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress341)
@Output.create
0;JMP
(ReturnAddress_Call281)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call282
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress342
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress342)
@Output.create
0;JMP
(ReturnAddress_Call282)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 61
@61
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call283
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress343
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress343)
@Output.create
0;JMP
(ReturnAddress_Call283)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call284
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress344
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress344)
@Output.create
0;JMP
(ReturnAddress_Call284)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 64
@64
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call285
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress345
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress345)
@Output.create
0;JMP
(ReturnAddress_Call285)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call286
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress346
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress346)
@Output.create
0;JMP
(ReturnAddress_Call286)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 65
@65
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call287
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress347
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress347)
@Output.create
0;JMP
(ReturnAddress_Call287)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 66
@66
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call288
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress348
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress348)
@Output.create
0;JMP
(ReturnAddress_Call288)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 67
@67
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call289
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress349
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress349)
@Output.create
0;JMP
(ReturnAddress_Call289)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 68
@68
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call290
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress350
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress350)
@Output.create
0;JMP
(ReturnAddress_Call290)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 69
@69
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call291
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress351
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress351)
@Output.create
0;JMP
(ReturnAddress_Call291)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 70
@70
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call292
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress352
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress352)
@Output.create
0;JMP
(ReturnAddress_Call292)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 71
@71
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 44
@44
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call293
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress353
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress353)
@Output.create
0;JMP
(ReturnAddress_Call293)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 72
@72
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call294
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress354
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress354)
@Output.create
0;JMP
(ReturnAddress_Call294)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 73
@73
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call295
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress355
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress355)
@Output.create
0;JMP
(ReturnAddress_Call295)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 74
@74
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call296
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress356
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress356)
@Output.create
0;JMP
(ReturnAddress_Call296)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 75
@75
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call297
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress357
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress357)
@Output.create
0;JMP
(ReturnAddress_Call297)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 76
@76
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call298
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress358
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress358)
@Output.create
0;JMP
(ReturnAddress_Call298)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 77
@77
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 33
@33
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call299
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress359
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress359)
@Output.create
0;JMP
(ReturnAddress_Call299)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 78
@78
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call300
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress360
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress360)
@Output.create
0;JMP
(ReturnAddress_Call300)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 79
@79
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call301
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress361
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress361)
@Output.create
0;JMP
(ReturnAddress_Call301)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 80
@80
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call302
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress362
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress362)
@Output.create
0;JMP
(ReturnAddress_Call302)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 81
@81
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 59
@59
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call303
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress363
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress363)
@Output.create
0;JMP
(ReturnAddress_Call303)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call304
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress364
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress364)
@Output.create
0;JMP
(ReturnAddress_Call304)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 83
@83
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call305
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress365
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress365)
@Output.create
0;JMP
(ReturnAddress_Call305)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 84
@84
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call306
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress366
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress366)
@Output.create
0;JMP
(ReturnAddress_Call306)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 85
@85
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call307
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress367
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress367)
@Output.create
0;JMP
(ReturnAddress_Call307)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 86
@86
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call308
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress368
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress368)
@Output.create
0;JMP
(ReturnAddress_Call308)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 87
@87
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call309
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress369
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress369)
@Output.create
0;JMP
(ReturnAddress_Call309)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 88
@88
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call310
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress370
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress370)
@Output.create
0;JMP
(ReturnAddress_Call310)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 89
@89
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call311
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress371
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress371)
@Output.create
0;JMP
(ReturnAddress_Call311)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 90
@90
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 49
@49
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 35
@35
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call312
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress372
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress372)
@Output.create
0;JMP
(ReturnAddress_Call312)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 91
@91
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call313
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress373
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress373)
@Output.create
0;JMP
(ReturnAddress_Call313)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 92
@92
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call314
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress374
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress374)
@Output.create
0;JMP
(ReturnAddress_Call314)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 93
@93
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call315
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress375
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress375)
@Output.create
0;JMP
(ReturnAddress_Call315)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 94
@94
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call316
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress376
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress376)
@Output.create
0;JMP
(ReturnAddress_Call316)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 95
@95
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call317
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress377
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress377)
@Output.create
0;JMP
(ReturnAddress_Call317)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 96
@96
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call318
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress378
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress378)
@Output.create
0;JMP
(ReturnAddress_Call318)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 97
@97
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call319
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress379
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress379)
@Output.create
0;JMP
(ReturnAddress_Call319)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 98
@98
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call320
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress380
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress380)
@Output.create
0;JMP
(ReturnAddress_Call320)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 99
@99
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call321
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress381
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress381)
@Output.create
0;JMP
(ReturnAddress_Call321)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 100
@100
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 60
@60
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call322
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress382
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress382)
@Output.create
0;JMP
(ReturnAddress_Call322)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 101
@101
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call323
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress383
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress383)
@Output.create
0;JMP
(ReturnAddress_Call323)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 102
@102
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call324
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress384
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress384)
@Output.create
0;JMP
(ReturnAddress_Call324)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 103
@103
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call325
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress385
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress385)
@Output.create
0;JMP
(ReturnAddress_Call325)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 104
@104
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call326
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress386
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress386)
@Output.create
0;JMP
(ReturnAddress_Call326)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 105
@105
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call327
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress387
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress387)
@Output.create
0;JMP
(ReturnAddress_Call327)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 106
@106
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call328
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress388
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress388)
@Output.create
0;JMP
(ReturnAddress_Call328)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 107
@107
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call329
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress389
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress389)
@Output.create
0;JMP
(ReturnAddress_Call329)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 108
@108
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 14
@14
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call330
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress390
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress390)
@Output.create
0;JMP
(ReturnAddress_Call330)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 109
@109
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 43
@43
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call331
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress391
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress391)
@Output.create
0;JMP
(ReturnAddress_Call331)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 110
@110
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call332
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress392
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress392)
@Output.create
0;JMP
(ReturnAddress_Call332)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 111
@111
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call333
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress393
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress393)
@Output.create
0;JMP
(ReturnAddress_Call333)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 112
@112
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call334
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress394
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress394)
@Output.create
0;JMP
(ReturnAddress_Call334)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 113
@113
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call335
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress395
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress395)
@Output.create
0;JMP
(ReturnAddress_Call335)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 114
@114
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 29
@29
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 55
@55
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call336
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress396
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress396)
@Output.create
0;JMP
(ReturnAddress_Call336)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 115
@115
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call337
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress397
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress397)
@Output.create
0;JMP
(ReturnAddress_Call337)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 116
@116
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 28
@28
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call338
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress398
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress398)
@Output.create
0;JMP
(ReturnAddress_Call338)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 117
@117
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 54
@54
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call339
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress399
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress399)
@Output.create
0;JMP
(ReturnAddress_Call339)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 118
@118
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call340
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress400
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress400)
@Output.create
0;JMP
(ReturnAddress_Call340)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 119
@119
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 18
@18
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call341
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress401
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress401)
@Output.create
0;JMP
(ReturnAddress_Call341)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 120
@120
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 30
@30
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call342
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress402
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress402)
@Output.create
0;JMP
(ReturnAddress_Call342)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 121
@121
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 62
@62
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24
@24
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call343
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress403
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress403)
@Output.create
0;JMP
(ReturnAddress_Call343)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 122
@122
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 27
@27
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 51
@51
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call344
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress404
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress404)
@Output.create
0;JMP
(ReturnAddress_Call344)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 123
@123
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call345
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress405
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress405)
@Output.create
0;JMP
(ReturnAddress_Call345)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 124
@124
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call346
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress406
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress406)
@Output.create
0;JMP
(ReturnAddress_Call346)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 125
@125
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 56
@56
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 12
@12
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call347
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress407
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress407)
@Output.create
0;JMP
(ReturnAddress_Call347)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 126
@126
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 38
@38
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 25
@25
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Output.create 12
@ReturnAddress_Call348
D=A
@R14
M=D
@12
D=A
@R15
M=D
@AsmReturnAddress408
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress408)
@Output.create
0;JMP
(ReturnAddress_Call348)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress409
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress409)
// ****VM***: function Output.create 1
(Output.create)
@1
D=A
@Output.create-LoopCounter
M=D
(Output.create-LoopStart)
@Output.create-LoopCounter
D=M
@Output.create-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.create-LoopCounter
M=M-1
@Output.create-LoopStart
0;JMP
(Output.create-LoopExit)
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call349
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress410
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress410)
@Array.new
0;JMP
(ReturnAddress_Call349)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 0&AND&
// ****VM***: pop temp 0
@LCL
A=M
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1&AND&
// ****VM***: pop temp 0
@ARG
A=M+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 2&AND&
// ****VM***: pop temp 0
@ARG
A=M+1
A=A+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 3&AND&
// ****VM***: pop temp 0
@ARG
D=M
@3
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 4&AND&
// ****VM***: pop temp 0
@ARG
D=M
@4
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 5&AND&
// ****VM***: pop temp 0
@ARG
D=M
@5
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 6&AND&
// ****VM***: pop temp 0
@ARG
D=M
@6
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 7&AND&
// ****VM***: pop temp 0
@ARG
D=M
@7
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 8&AND&
// ****VM***: pop temp 0
@ARG
D=M
@8
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 9&AND&
// ****VM***: pop temp 0
@ARG
D=M
@9
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 9
@9
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 10&AND&
// ****VM***: pop temp 0
@ARG
D=M
@10
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 11&AND&
// ****VM***: pop temp 0
@ARG
D=M
@11
A=D+A
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress411
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress411)
// ****VM***: function Output.getMap 0
(Output.getMap)
@0
D=A
@Output.getMap-LoopCounter
M=D
(Output.getMap-LoopStart)
@Output.getMap-LoopCounter
D=M
@Output.getMap-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.getMap-LoopCounter
M=M-1
@Output.getMap-LoopStart
0;JMP
(Output.getMap-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE23
D;JLT
@SP
A=M-1
M=0
@LTEND23
0;JMP
(LTTRUE23)
@SP
A=M-1
M=-1
(LTEND23)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 126
@126
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE19
D;JGT
@SP
A=M-1
M=0
@GTEND19
0;JMP
(GTTRUE19)
@SP
A=M-1
M=-1
(GTEND19)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputgetMap0
@SP
AM=M-1
D=M
@OutputgetMap0
D;JNE
// ****VM***: push constant 0&AND&
// ****VM***: pop argument 0
@0
D=A
@ARG
A=M
M=D
// ****VM***: goto OutputgetMap1
@OutputgetMap1
0;JMP
// ****VM***: label OutputgetMap0
(OutputgetMap0)
// ****VM***: label OutputgetMap1
(OutputgetMap1)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Output.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress412
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress412)
// ****VM***: function Output.moveCursor 2
(Output.moveCursor)
@2
D=A
@Output.moveCursor-LoopCounter
M=D
(Output.moveCursor-LoopStart)
@Output.moveCursor-LoopCounter
D=M
@Output.moveCursor-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.moveCursor-LoopCounter
M=M-1
@Output.moveCursor-LoopStart
0;JMP
(Output.moveCursor-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE24
D;JLT
@SP
A=M-1
M=0
@LTEND24
0;JMP
(LTTRUE24)
@SP
A=M-1
M=-1
(LTEND24)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE20
D;JGT
@SP
A=M-1
M=0
@GTEND20
0;JMP
(GTTRUE20)
@SP
A=M-1
M=-1
(GTEND20)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputmoveCursor0
@SP
AM=M-1
D=M
@OutputmoveCursor0
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress413
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress413)
// ****VM***: goto OutputmoveCursor1
@OutputmoveCursor1
0;JMP
// ****VM***: label OutputmoveCursor0
(OutputmoveCursor0)
// ****VM***: label OutputmoveCursor1
(OutputmoveCursor1)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE25
D;JLT
@SP
A=M-1
M=0
@LTEND25
0;JMP
(LTTRUE25)
@SP
A=M-1
M=-1
(LTEND25)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE21
D;JGT
@SP
A=M-1
M=0
@GTEND21
0;JMP
(GTTRUE21)
@SP
A=M-1
M=-1
(GTEND21)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputmoveCursor2
@SP
AM=M-1
D=M
@OutputmoveCursor2
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress414
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress414)
// ****VM***: goto OutputmoveCursor3
@OutputmoveCursor3
0;JMP
// ****VM***: label OutputmoveCursor2
(OutputmoveCursor2)
// ****VM***: label OutputmoveCursor3
(OutputmoveCursor3)
// ****VM***: push argument 0&AND&
// ****VM***: pop static 1
@ARG
A=M
D=M
@Output.1
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop static 2
@ARG
A=M+1
D=M
@Output.2
M=D
// ****VM***: push static 2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call350
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress415
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress415)
@Math.multiply
0;JMP
(ReturnAddress_Call350)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push static 1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call351
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress416
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress416)
@Math.multiply
0;JMP
(ReturnAddress_Call351)
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call352
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress417
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress417)
@Screen.setColor
0;JMP
(ReturnAddress_Call352)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call353
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress418
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress418)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call353)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress419
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress419)
// ****VM***: function Output.printChar 8
(Output.printChar)
@8
D=A
@Output.printChar-LoopCounter
M=D
(Output.printChar-LoopStart)
@Output.printChar-LoopCounter
D=M
@Output.printChar-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.printChar-LoopCounter
M=M-1
@Output.printChar-LoopStart
0;JMP
(Output.printChar-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.getMap 1
@ReturnAddress_Call354
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress420
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress420)
@Output.getMap
0;JMP
(ReturnAddress_Call354)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call355
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress421
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress421)
@Screen.setColor
0;JMP
(ReturnAddress_Call355)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push static 2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call356
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress422
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress422)
@Math.multiply
0;JMP
(ReturnAddress_Call356)
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push static 1
@Output.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call357
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress423
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress423)
@Math.multiply
0;JMP
(ReturnAddress_Call357)
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 5
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label OutputprintChar0
(OutputprintChar0)
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 11
@11
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE26
D;JLT
@SP
A=M-1
M=0
@LTEND26
0;JMP
(LTTRUE26)
@SP
A=M-1
M=-1
(LTEND26)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputprintChar1
@SP
AM=M-1
D=M
@OutputprintChar1
D;JNE
// ****VM***: push constant 1&AND&
// ****VM***: pop local 1
@1
D=A
@LCL
A=M+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 4
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE22
D;JGT
@SP
A=M-1
M=0
@GTEND22
0;JMP
(GTTRUE22)
@SP
A=M-1
M=-1
(GTEND22)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputprintChar2
@SP
AM=M-1
D=M
@OutputprintChar2
D;JNE
// ****VM***: label OutputprintChar4
(OutputprintChar4)
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE27
D;JLT
@SP
A=M-1
M=0
@LTEND27
0;JMP
(LTTRUE27)
@SP
A=M-1
M=-1
(LTEND27)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputprintChar5
@SP
AM=M-1
D=M
@OutputprintChar5
D;JNE
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE21
D;JEQ
@SP
A=M-1
M=0
@EQEND21
0;JMP
(EQTRUE21)
@SP
A=M-1
M=-1
(EQEND21)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputprintChar6
@SP
AM=M-1
D=M
@OutputprintChar6
D;JNE
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Screen.drawPixel 2
@ReturnAddress_Call358
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress424
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress424)
@Screen.drawPixel
0;JMP
(ReturnAddress_Call358)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto OutputprintChar7
@OutputprintChar7
0;JMP
// ****VM***: label OutputprintChar6
(OutputprintChar6)
// ****VM***: label OutputprintChar7
(OutputprintChar7)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto OutputprintChar4
@OutputprintChar4
0;JMP
// ****VM***: label OutputprintChar5
(OutputprintChar5)
// ****VM***: goto OutputprintChar3
@OutputprintChar3
0;JMP
// ****VM***: label OutputprintChar2
(OutputprintChar2)
// ****VM***: label OutputprintChar3
(OutputprintChar3)
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: goto OutputprintChar0
@OutputprintChar0
0;JMP
// ****VM***: label OutputprintChar1
(OutputprintChar1)
// ****VM***: push static 1&AND&
// ****VM***: pop local 6
@Output.1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push static 2
@Output.2
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 7
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 63
@63
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE23
D;JGT
@SP
A=M-1
M=0
@GTEND23
0;JMP
(GTTRUE23)
@SP
A=M-1
M=-1
(GTEND23)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputprintChar8
@SP
AM=M-1
D=M
@OutputprintChar8
D;JNE
// ****VM***: push constant 0&AND&
// ****VM***: pop local 7
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 6
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 22
@22
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE24
D;JGT
@SP
A=M-1
M=0
@GTEND24
0;JMP
(GTTRUE24)
@SP
A=M-1
M=-1
(GTEND24)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputprintChar10
@SP
AM=M-1
D=M
@OutputprintChar10
D;JNE
// ****VM***: push constant 0&AND&
// ****VM***: pop local 6
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto OutputprintChar11
@OutputprintChar11
0;JMP
// ****VM***: label OutputprintChar10
(OutputprintChar10)
// ****VM***: label OutputprintChar11
(OutputprintChar11)
// ****VM***: goto OutputprintChar9
@OutputprintChar9
0;JMP
// ****VM***: label OutputprintChar8
(OutputprintChar8)
// ****VM***: label OutputprintChar9
(OutputprintChar9)
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.moveCursor 2
@ReturnAddress_Call359
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress425
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress425)
@Output.moveCursor
0;JMP
(ReturnAddress_Call359)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress426
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress426)
// ****VM***: function Output.printString 2
(Output.printString)
@2
D=A
@Output.printString-LoopCounter
M=D
(Output.printString-LoopStart)
@Output.printString-LoopCounter
D=M
@Output.printString-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.printString-LoopCounter
M=M-1
@Output.printString-LoopStart
0;JMP
(Output.printString-LoopExit)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.length 1
@ReturnAddress_Call360
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress427
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress427)
@String.length
0;JMP
(ReturnAddress_Call360)
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: label OutputprintString0
(OutputprintString0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE28
D;JLT
@SP
A=M-1
M=0
@LTEND28
0;JMP
(LTTRUE28)
@SP
A=M-1
M=-1
(LTEND28)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto OutputprintString1
@SP
AM=M-1
D=M
@OutputprintString1
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.charAt 2
@ReturnAddress_Call361
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress428
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress428)
@String.charAt
0;JMP
(ReturnAddress_Call361)
// ****VM***: call Output.printChar 1
@ReturnAddress_Call362
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress429
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress429)
@Output.printChar
0;JMP
(ReturnAddress_Call362)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto OutputprintString0
@OutputprintString0
0;JMP
// ****VM***: label OutputprintString1
(OutputprintString1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress430
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress430)
// ****VM***: function Output.printInt 1
(Output.printInt)
@1
D=A
@Output.printInt-LoopCounter
M=D
(Output.printInt-LoopStart)
@Output.printInt-LoopCounter
D=M
@Output.printInt-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Output.printInt-LoopCounter
M=M-1
@Output.printInt-LoopStart
0;JMP
(Output.printInt-LoopExit)
// ****VM***: push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.new 1
@ReturnAddress_Call363
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress431
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress431)
@String.new
0;JMP
(ReturnAddress_Call363)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.setInt 2
@ReturnAddress_Call364
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress432
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress432)
@String.setInt
0;JMP
(ReturnAddress_Call364)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Output.printString 1
@ReturnAddress_Call365
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress433
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress433)
@Output.printString
0;JMP
(ReturnAddress_Call365)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.dispose 1
@ReturnAddress_Call366
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress434
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress434)
@String.dispose
0;JMP
(ReturnAddress_Call366)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress435
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress435)
// ********FILE***: Paddle
// ****VM***: function Paddle.new 0
(Paddle.new)
@0
D=A
@Paddle.new-LoopCounter
M=D
(Paddle.new-LoopStart)
@Paddle.new-LoopCounter
D=M
@Paddle.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.new-LoopCounter
M=M-1
@Paddle.new-LoopStart
0;JMP
(Paddle.new-LoopExit)
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call367
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress436
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress436)
@Memory.alloc
0;JMP
(ReturnAddress_Call367)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push argument 0&AND&
// ****VM***: pop this 0
@ARG
A=M
D=M
@THIS
A=M
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop this 1
@ARG
A=M+1
D=M
@THIS
A=M+1
M=D
// ****VM***: push argument 2&AND&
// ****VM***: pop this 4
@ARG
A=M+1
A=A+1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push argument 3&AND&
// ****VM***: pop this 5
@ARG
D=M
@3
A=D+A
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push this 1&AND&
// ****VM***: pop this 3
@THIS
A=M+1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Paddle.draw 1
@ReturnAddress_Call368
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress437
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress437)
@Paddle.draw
0;JMP
(ReturnAddress_Call368)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call369
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress438
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress438)
@Math.divide
0;JMP
(ReturnAddress_Call369)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call370
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress439
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress439)
@Math.divide
0;JMP
(ReturnAddress_Call370)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call371
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress440
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress440)
@Math.divide
0;JMP
(ReturnAddress_Call371)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call372
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress441
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress441)
@Math.divide
0;JMP
(ReturnAddress_Call372)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.new 4
@ReturnAddress_Call373
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress442
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress442)
@Hitbox.new
0;JMP
(ReturnAddress_Call373)
// ****VM***: pop this 6
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress443
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress443)
// ****VM***: function Paddle.dispose 0
(Paddle.dispose)
@0
D=A
@Paddle.dispose-LoopCounter
M=D
(Paddle.dispose-LoopStart)
@Paddle.dispose-LoopCounter
D=M
@Paddle.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.dispose-LoopCounter
M=M-1
@Paddle.dispose-LoopStart
0;JMP
(Paddle.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.dispose 1
@ReturnAddress_Call374
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress444
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress444)
@Hitbox.dispose
0;JMP
(ReturnAddress_Call374)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call375
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress445
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress445)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call375)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress446
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress446)
// ****VM***: function Paddle.draw 0
(Paddle.draw)
@0
D=A
@Paddle.draw-LoopCounter
M=D
(Paddle.draw-LoopStart)
@Paddle.draw-LoopCounter
D=M
@Paddle.draw-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.draw-LoopCounter
M=M-1
@Paddle.draw-LoopStart
0;JMP
(Paddle.draw-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call376
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress447
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress447)
@Screen.setColor
0;JMP
(ReturnAddress_Call376)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call377
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress448
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress448)
@Math.divide
0;JMP
(ReturnAddress_Call377)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call378
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress449
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress449)
@Math.divide
0;JMP
(ReturnAddress_Call378)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call379
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress450
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress450)
@Math.divide
0;JMP
(ReturnAddress_Call379)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call380
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress451
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress451)
@Math.divide
0;JMP
(ReturnAddress_Call380)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call381
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress452
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress452)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call381)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress453
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress453)
// ****VM***: function Paddle.moveLeftSim 0
(Paddle.moveLeftSim)
@0
D=A
@Paddle.moveLeftSim-LoopCounter
M=D
(Paddle.moveLeftSim-LoopStart)
@Paddle.moveLeftSim-LoopCounter
D=M
@Paddle.moveLeftSim-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.moveLeftSim-LoopCounter
M=M-1
@Paddle.moveLeftSim-LoopStart
0;JMP
(Paddle.moveLeftSim-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call382
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress454
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress454)
@Math.divide
0;JMP
(ReturnAddress_Call382)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call383
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress455
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress455)
@Math.divide
0;JMP
(ReturnAddress_Call383)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call384
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress456
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress456)
@Math.divide
0;JMP
(ReturnAddress_Call384)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call385
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress457
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress457)
@Math.divide
0;JMP
(ReturnAddress_Call385)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.update 5
@ReturnAddress_Call386
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress458
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress458)
@Hitbox.update
0;JMP
(ReturnAddress_Call386)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress459
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress459)
// ****VM***: function Paddle.moveRightSim 0
(Paddle.moveRightSim)
@0
D=A
@Paddle.moveRightSim-LoopCounter
M=D
(Paddle.moveRightSim-LoopStart)
@Paddle.moveRightSim-LoopCounter
D=M
@Paddle.moveRightSim-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.moveRightSim-LoopCounter
M=M-1
@Paddle.moveRightSim-LoopStart
0;JMP
(Paddle.moveRightSim-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call387
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress460
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress460)
@Math.divide
0;JMP
(ReturnAddress_Call387)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call388
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress461
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress461)
@Math.divide
0;JMP
(ReturnAddress_Call388)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call389
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress462
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress462)
@Math.divide
0;JMP
(ReturnAddress_Call389)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call390
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress463
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress463)
@Math.divide
0;JMP
(ReturnAddress_Call390)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.update 5
@ReturnAddress_Call391
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress464
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress464)
@Hitbox.update
0;JMP
(ReturnAddress_Call391)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress465
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress465)
// ****VM***: function Paddle.getHitbox 0
(Paddle.getHitbox)
@0
D=A
@Paddle.getHitbox-LoopCounter
M=D
(Paddle.getHitbox-LoopStart)
@Paddle.getHitbox-LoopCounter
D=M
@Paddle.getHitbox-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.getHitbox-LoopCounter
M=M-1
@Paddle.getHitbox-LoopStart
0;JMP
(Paddle.getHitbox-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress466
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress466)
// ****VM***: function Paddle.moveLeft 0
(Paddle.moveLeft)
@0
D=A
@Paddle.moveLeft-LoopCounter
M=D
(Paddle.moveLeft-LoopStart)
@Paddle.moveLeft-LoopCounter
D=M
@Paddle.moveLeft-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.moveLeft-LoopCounter
M=M-1
@Paddle.moveLeft-LoopStart
0;JMP
(Paddle.moveLeft-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call392
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress467
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress467)
@Math.divide
0;JMP
(ReturnAddress_Call392)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call393
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress468
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress468)
@Math.divide
0;JMP
(ReturnAddress_Call393)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call394
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress469
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress469)
@Math.divide
0;JMP
(ReturnAddress_Call394)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call395
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress470
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress470)
@Math.divide
0;JMP
(ReturnAddress_Call395)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.update 5
@ReturnAddress_Call396
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress471
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress471)
@Hitbox.update
0;JMP
(ReturnAddress_Call396)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress472
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress472)
// ****VM***: function Paddle.moveRight 0
(Paddle.moveRight)
@0
D=A
@Paddle.moveRight-LoopCounter
M=D
(Paddle.moveRight-LoopStart)
@Paddle.moveRight-LoopCounter
D=M
@Paddle.moveRight-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Paddle.moveRight-LoopCounter
M=M-1
@Paddle.moveRight-LoopStart
0;JMP
(Paddle.moveRight-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call397
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress473
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress473)
@Math.divide
0;JMP
(ReturnAddress_Call397)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call398
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress474
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress474)
@Math.divide
0;JMP
(ReturnAddress_Call398)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call399
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress475
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress475)
@Math.divide
0;JMP
(ReturnAddress_Call399)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call400
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress476
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress476)
@Math.divide
0;JMP
(ReturnAddress_Call400)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Hitbox.update 5
@ReturnAddress_Call401
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress477
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress477)
@Hitbox.update
0;JMP
(ReturnAddress_Call401)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress478
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress478)
// ********FILE***: PlayArea
// ****VM***: function PlayArea.new 0
(PlayArea.new)
@0
D=A
@PlayArea.new-LoopCounter
M=D
(PlayArea.new-LoopStart)
@PlayArea.new-LoopCounter
D=M
@PlayArea.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@PlayArea.new-LoopCounter
M=M-1
@PlayArea.new-LoopStart
0;JMP
(PlayArea.new-LoopExit)
// ****VM***: push constant 7
@7
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call402
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress479
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress479)
@Memory.alloc
0;JMP
(ReturnAddress_Call402)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push argument 0&AND&
// ****VM***: pop this 0
@ARG
A=M
D=M
@THIS
A=M
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop this 1
@ARG
A=M+1
D=M
@THIS
A=M+1
M=D
// ****VM***: push constant 255
@255
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call403
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress480
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress480)
@Math.divide
0;JMP
(ReturnAddress_Call403)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push constant 256
@256
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call404
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress481
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress481)
@Math.divide
0;JMP
(ReturnAddress_Call404)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 3
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 127
@127
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call405
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress482
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress482)
@Math.divide
0;JMP
(ReturnAddress_Call405)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 4
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 128
@128
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call406
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress483
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress483)
@Math.divide
0;JMP
(ReturnAddress_Call406)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 5
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.new 4
@ReturnAddress_Call407
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress484
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress484)
@Hitbox.new
0;JMP
(ReturnAddress_Call407)
// ****VM***: pop this 6
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call PlayArea.drawBorder 1
@ReturnAddress_Call408
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress485
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress485)
@PlayArea.drawBorder
0;JMP
(ReturnAddress_Call408)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress486
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress486)
// ****VM***: function PlayArea.dispose 0
(PlayArea.dispose)
@0
D=A
@PlayArea.dispose-LoopCounter
M=D
(PlayArea.dispose-LoopStart)
@PlayArea.dispose-LoopCounter
D=M
@PlayArea.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@PlayArea.dispose-LoopCounter
M=M-1
@PlayArea.dispose-LoopStart
0;JMP
(PlayArea.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Hitbox.dispose 1
@ReturnAddress_Call409
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress487
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress487)
@Hitbox.dispose
0;JMP
(ReturnAddress_Call409)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call410
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress488
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress488)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call410)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress489
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress489)
// ****VM***: function PlayArea.getHitbox 0
(PlayArea.getHitbox)
@0
D=A
@PlayArea.getHitbox-LoopCounter
M=D
(PlayArea.getHitbox-LoopStart)
@PlayArea.getHitbox-LoopCounter
D=M
@PlayArea.getHitbox-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@PlayArea.getHitbox-LoopCounter
M=M-1
@PlayArea.getHitbox-LoopStart
0;JMP
(PlayArea.getHitbox-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress490
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress490)
// ****VM***: function PlayArea.drawBorder 0
(PlayArea.drawBorder)
@0
D=A
@PlayArea.drawBorder-LoopCounter
M=D
(PlayArea.drawBorder-LoopStart)
@PlayArea.drawBorder-LoopCounter
D=M
@PlayArea.drawBorder-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@PlayArea.drawBorder-LoopCounter
M=M-1
@PlayArea.drawBorder-LoopStart
0;JMP
(PlayArea.drawBorder-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call411
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress491
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress491)
@Screen.setColor
0;JMP
(ReturnAddress_Call411)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call412
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress492
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress492)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call412)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call413
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress493
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress493)
@Screen.setColor
0;JMP
(ReturnAddress_Call413)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call414
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress494
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress494)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call414)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress495
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress495)
// ****VM***: function PlayArea.clear 0
(PlayArea.clear)
@0
D=A
@PlayArea.clear-LoopCounter
M=D
(PlayArea.clear-LoopStart)
@PlayArea.clear-LoopCounter
D=M
@PlayArea.clear-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@PlayArea.clear-LoopCounter
M=M-1
@PlayArea.clear-LoopStart
0;JMP
(PlayArea.clear-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call415
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress496
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress496)
@Screen.setColor
0;JMP
(ReturnAddress_Call415)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: call Screen.drawRectangle 4
@ReturnAddress_Call416
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress497
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress497)
@Screen.drawRectangle
0;JMP
(ReturnAddress_Call416)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress498
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress498)
// ********FILE***: Screen
// ****VM***: function Screen.init 2
(Screen.init)
@2
D=A
@Screen.init-LoopCounter
M=D
(Screen.init-LoopStart)
@Screen.init-LoopCounter
D=M
@Screen.init-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Screen.init-LoopCounter
M=M-1
@Screen.init-LoopStart
0;JMP
(Screen.init-LoopExit)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: push constant 1&AND&
// ****VM***: pop local 1
@1
D=A
@LCL
A=M+1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call417
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress499
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress499)
@Array.new
0;JMP
(ReturnAddress_Call417)
// ****VM***: pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D
// ****VM***: label Screeninit0
(Screeninit0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE29
D;JLT
@SP
A=M-1
M=0
@LTEND29
0;JMP
(LTTRUE29)
@SP
A=M-1
M=-1
(LTEND29)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Screeninit1
@SP
AM=M-1
D=M
@Screeninit1
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 1&AND&
// ****VM***: pop temp 0
@LCL
A=M+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto Screeninit0
@Screeninit0
0;JMP
// ****VM***: label Screeninit1
(Screeninit1)
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop static 0
@SP
AM=M-1
D=M
@Screen.0
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress500
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress500)
// ****VM***: function Screen.clearScreen 1
(Screen.clearScreen)
@1
D=A
@Screen.clearScreen-LoopCounter
M=D
(Screen.clearScreen-LoopStart)
@Screen.clearScreen-LoopCounter
D=M
@Screen.clearScreen-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Screen.clearScreen-LoopCounter
M=M-1
@Screen.clearScreen-LoopStart
0;JMP
(Screen.clearScreen-LoopExit)
// ****VM***: push constant 16384&AND&
// ****VM***: pop local 0
@16384
D=A
@LCL
A=M
M=D
// ****VM***: label ScreenclearScreen0
(ScreenclearScreen0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 24576
@24576
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE30
D;JLT
@SP
A=M-1
M=0
@LTEND30
0;JMP
(LTTRUE30)
@SP
A=M-1
M=-1
(LTEND30)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreenclearScreen1
@SP
AM=M-1
D=M
@ScreenclearScreen1
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: call Memory.poke 2
@ReturnAddress_Call418
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress501
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress501)
@Memory.poke
0;JMP
(ReturnAddress_Call418)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto ScreenclearScreen0
@ScreenclearScreen0
0;JMP
// ****VM***: label ScreenclearScreen1
(ScreenclearScreen1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress502
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress502)
// ****VM***: function Screen.setColor 0
(Screen.setColor)
@0
D=A
@Screen.setColor-LoopCounter
M=D
(Screen.setColor-LoopStart)
@Screen.setColor-LoopCounter
D=M
@Screen.setColor-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Screen.setColor-LoopCounter
M=M-1
@Screen.setColor-LoopStart
0;JMP
(Screen.setColor-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop static 0
@ARG
A=M
D=M
@Screen.0
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress503
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress503)
// ****VM***: function Screen.drawPixel 2
(Screen.drawPixel)
@2
D=A
@Screen.drawPixel-LoopCounter
M=D
(Screen.drawPixel-LoopStart)
@Screen.drawPixel-LoopCounter
D=M
@Screen.drawPixel-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Screen.drawPixel-LoopCounter
M=M-1
@Screen.drawPixel-LoopStart
0;JMP
(Screen.drawPixel-LoopExit)
// ****VM***: push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call419
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress504
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress504)
@Math.multiply
0;JMP
(ReturnAddress_Call419)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call420
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress505
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress505)
@Math.divide
0;JMP
(ReturnAddress_Call420)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.peek 1
@ReturnAddress_Call421
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress506
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress506)
@Memory.peek
0;JMP
(ReturnAddress_Call421)
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawPixel0
@SP
AM=M-1
D=M
@ScreendrawPixel0
D;JNE
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: goto ScreendrawPixel1
@ScreendrawPixel1
0;JMP
// ****VM***: label ScreendrawPixel0
(ScreendrawPixel0)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: label ScreendrawPixel1
(ScreendrawPixel1)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call422
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress507
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress507)
@Memory.poke
0;JMP
(ReturnAddress_Call422)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress508
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress508)
// ****VM***: function Screen.drawLine 12
(Screen.drawLine)
@12
D=A
@Screen.drawLine-LoopCounter
M=D
(Screen.drawLine-LoopStart)
@Screen.drawLine-LoopCounter
D=M
@Screen.drawLine-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Screen.drawLine-LoopCounter
M=M-1
@Screen.drawLine-LoopStart
0;JMP
(Screen.drawLine-LoopExit)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE25
D;JGT
@SP
A=M-1
M=0
@GTEND25
0;JMP
(GTTRUE25)
@SP
A=M-1
M=-1
(GTEND25)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine0
@SP
AM=M-1
D=M
@ScreendrawLine0
D;JNE
// ****VM***: push argument 0&AND&
// ****VM***: pop local 0
@ARG
A=M
D=M
@LCL
A=M
M=D
// ****VM***: push argument 2&AND&
// ****VM***: pop argument 0
@ARG
A=M+1
A=A+1
D=M
@ARG
A=M
M=D
// ****VM***: push local 0&AND&
// ****VM***: pop argument 2
@LCL
A=M
D=M
@ARG
A=M+1
A=A+1
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop local 0
@ARG
A=M+1
D=M
@LCL
A=M
M=D
// ****VM***: push argument 3&AND&
// ****VM***: pop argument 1
@ARG
D=M
@3
A=D+A
D=M
@ARG
A=M+1
M=D
// ****VM***: push local 0&AND&
// ****VM***: pop argument 3
@LCL
A=M
D=M
@ARG
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine1
@ScreendrawLine1
0;JMP
// ****VM***: label ScreendrawLine0
(ScreendrawLine0)
// ****VM***: label ScreendrawLine1
(ScreendrawLine1)
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE22
D;JEQ
@SP
A=M-1
M=0
@EQEND22
0;JMP
(EQTRUE22)
@SP
A=M-1
M=-1
(EQEND22)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine2
@SP
AM=M-1
D=M
@ScreendrawLine2
D;JNE
// ****VM***: push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call423
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress509
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress509)
@Math.multiply
0;JMP
(ReturnAddress_Call423)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call424
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress510
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress510)
@Math.divide
0;JMP
(ReturnAddress_Call424)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 16384
@16384
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 32
@32
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call425
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress511
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress511)
@Math.multiply
0;JMP
(ReturnAddress_Call425)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call426
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress512
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress512)
@Math.divide
0;JMP
(ReturnAddress_Call426)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: pop local 6
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE23
D;JEQ
@SP
A=M-1
M=0
@EQEND23
0;JMP
(EQTRUE23)
@SP
A=M-1
M=-1
(EQEND23)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine4
@SP
AM=M-1
D=M
@ScreendrawLine4
D;JNE
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE24
D;JEQ
@SP
A=M-1
M=0
@EQEND24
0;JMP
(EQTRUE24)
@SP
A=M-1
M=-1
(EQEND24)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine6
@SP
AM=M-1
D=M
@ScreendrawLine6
D;JNE
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE25
D;JEQ
@SP
A=M-1
M=0
@EQEND25
0;JMP
(EQTRUE25)
@SP
A=M-1
M=-1
(EQEND25)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine8
@SP
AM=M-1
D=M
@ScreendrawLine8
D;JNE
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call427
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress513
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress513)
@Memory.poke
0;JMP
(ReturnAddress_Call427)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress514
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress514)
// ****VM***: goto ScreendrawLine9
@ScreendrawLine9
0;JMP
// ****VM***: label ScreendrawLine8
(ScreendrawLine8)
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 7
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine9
(ScreendrawLine9)
// ****VM***: goto ScreendrawLine7
@ScreendrawLine7
0;JMP
// ****VM***: label ScreendrawLine6
(ScreendrawLine6)
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE26
D;JEQ
@SP
A=M-1
M=0
@EQEND26
0;JMP
(EQTRUE26)
@SP
A=M-1
M=-1
(EQEND26)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine10
@SP
AM=M-1
D=M
@ScreendrawLine10
D;JNE
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop local 7
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine11
@ScreendrawLine11
0;JMP
// ****VM***: label ScreendrawLine10
(ScreendrawLine10)
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: pop local 7
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine11
(ScreendrawLine11)
// ****VM***: label ScreendrawLine7
(ScreendrawLine7)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.peek 1
@ReturnAddress_Call428
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress515
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress515)
@Memory.peek
0;JMP
(ReturnAddress_Call428)
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine12
@SP
AM=M-1
D=M
@ScreendrawLine12
D;JNE
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine13
@ScreendrawLine13
0;JMP
// ****VM***: label ScreendrawLine12
(ScreendrawLine12)
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine13
(ScreendrawLine13)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call429
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress516
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress516)
@Memory.poke
0;JMP
(ReturnAddress_Call429)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto ScreendrawLine5
@ScreendrawLine5
0;JMP
// ****VM***: label ScreendrawLine4
(ScreendrawLine4)
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE27
D;JEQ
@SP
A=M-1
M=0
@EQEND27
0;JMP
(EQTRUE27)
@SP
A=M-1
M=-1
(EQEND27)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine14
@SP
AM=M-1
D=M
@ScreendrawLine14
D;JNE
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call430
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress517
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress517)
@Memory.poke
0;JMP
(ReturnAddress_Call430)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto ScreendrawLine15
@ScreendrawLine15
0;JMP
// ****VM***: label ScreendrawLine14
(ScreendrawLine14)
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop local 7
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.peek 1
@ReturnAddress_Call431
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress518
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress518)
@Memory.peek
0;JMP
(ReturnAddress_Call431)
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine16
@SP
AM=M-1
D=M
@ScreendrawLine16
D;JNE
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine17
@ScreendrawLine17
0;JMP
// ****VM***: label ScreendrawLine16
(ScreendrawLine16)
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine17
(ScreendrawLine17)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call432
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress519
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress519)
@Memory.poke
0;JMP
(ReturnAddress_Call432)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: label ScreendrawLine15
(ScreendrawLine15)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine18
(ScreendrawLine18)
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE31
D;JLT
@SP
A=M-1
M=0
@LTEND31
0;JMP
(LTTRUE31)
@SP
A=M-1
M=-1
(LTEND31)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine19
@SP
AM=M-1
D=M
@ScreendrawLine19
D;JNE
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call433
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress520
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress520)
@Memory.poke
0;JMP
(ReturnAddress_Call433)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine18
@ScreendrawLine18
0;JMP
// ****VM***: label ScreendrawLine19
(ScreendrawLine19)
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE28
D;JEQ
@SP
A=M-1
M=0
@EQEND28
0;JMP
(EQTRUE28)
@SP
A=M-1
M=-1
(EQEND28)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine20
@SP
AM=M-1
D=M
@ScreendrawLine20
D;JNE
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call434
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress521
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress521)
@Memory.poke
0;JMP
(ReturnAddress_Call434)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto ScreendrawLine21
@ScreendrawLine21
0;JMP
// ****VM***: label ScreendrawLine20
(ScreendrawLine20)
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push static 1
@Screen.1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 7
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.peek 1
@ReturnAddress_Call435
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress522
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress522)
@Memory.peek
0;JMP
(ReturnAddress_Call435)
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push static 0
@Screen.0
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine22
@SP
AM=M-1
D=M
@ScreendrawLine22
D;JNE
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine23
@ScreendrawLine23
0;JMP
// ****VM***: label ScreendrawLine22
(ScreendrawLine22)
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 7
@LCL
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: pop local 8
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine23
(ScreendrawLine23)
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 8
@LCL
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.poke 2
@ReturnAddress_Call436
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress523
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress523)
@Memory.poke
0;JMP
(ReturnAddress_Call436)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: label ScreendrawLine21
(ScreendrawLine21)
// ****VM***: label ScreendrawLine5
(ScreendrawLine5)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress524
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress524)
// ****VM***: goto ScreendrawLine3
@ScreendrawLine3
0;JMP
// ****VM***: label ScreendrawLine2
(ScreendrawLine2)
// ****VM***: label ScreendrawLine3
(ScreendrawLine3)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE29
D;JEQ
@SP
A=M-1
M=0
@EQEND29
0;JMP
(EQTRUE29)
@SP
A=M-1
M=-1
(EQEND29)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine24
@SP
AM=M-1
D=M
@ScreendrawLine24
D;JNE
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE32
D;JLT
@SP
A=M-1
M=0
@LTEND32
0;JMP
(LTTRUE32)
@SP
A=M-1
M=-1
(LTEND32)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine26
@SP
AM=M-1
D=M
@ScreendrawLine26
D;JNE
// ****VM***: push argument 1&AND&
// ****VM***: pop local 0
@ARG
A=M+1
D=M
@LCL
A=M
M=D
// ****VM***: push argument 3&AND&
// ****VM***: pop argument 1
@ARG
D=M
@3
A=D+A
D=M
@ARG
A=M+1
M=D
// ****VM***: push local 0&AND&
// ****VM***: pop argument 3
@LCL
A=M
D=M
@ARG
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine27
@ScreendrawLine27
0;JMP
// ****VM***: label ScreendrawLine26
(ScreendrawLine26)
// ****VM***: label ScreendrawLine27
(ScreendrawLine27)
// ****VM***: label ScreendrawLine28
(ScreendrawLine28)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE33
D;JLT
@SP
A=M-1
M=0
@LTEND33
0;JMP
(LTTRUE33)
@SP
A=M-1
M=-1
(LTEND33)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine29
@SP
AM=M-1
D=M
@ScreendrawLine29
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Screen.drawPixel 2
@ReturnAddress_Call437
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress525
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress525)
@Screen.drawPixel
0;JMP
(ReturnAddress_Call437)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: goto ScreendrawLine28
@ScreendrawLine28
0;JMP
// ****VM***: label ScreendrawLine29
(ScreendrawLine29)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress526
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress526)
// ****VM***: goto ScreendrawLine25
@ScreendrawLine25
0;JMP
// ****VM***: label ScreendrawLine24
(ScreendrawLine24)
// ****VM***: label ScreendrawLine25
(ScreendrawLine25)
// ****VM***: push constant 0&AND&
// ****VM***: pop local 9
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 10
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 11
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE26
D;JGT
@SP
A=M-1
M=0
@GTEND26
0;JMP
(GTTRUE26)
@SP
A=M-1
M=-1
(GTEND26)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine30
@SP
AM=M-1
D=M
@ScreendrawLine30
D;JNE
// ****VM***: label ScreendrawLine32
(ScreendrawLine32)
// ****VM***: push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE27
D;JGT
@SP
A=M-1
M=0
@GTEND27
0;JMP
(GTTRUE27)
@SP
A=M-1
M=-1
(GTEND27)
// ****VM***: push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE28
D;JGT
@SP
A=M-1
M=0
@GTEND28
0;JMP
(GTTRUE28)
@SP
A=M-1
M=-1
(GTEND28)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine33
@SP
AM=M-1
D=M
@ScreendrawLine33
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawPixel 2
@ReturnAddress_Call438
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress527
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress527)
@Screen.drawPixel
0;JMP
(ReturnAddress_Call438)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 11
@LCL
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE34
D;JLT
@SP
A=M-1
M=0
@LTEND34
0;JMP
(LTTRUE34)
@SP
A=M-1
M=-1
(LTEND34)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine34
@SP
AM=M-1
D=M
@ScreendrawLine34
D;JNE
// ****VM***: push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 9
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 11
@LCL
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 11
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine35
@ScreendrawLine35
0;JMP
// ****VM***: label ScreendrawLine34
(ScreendrawLine34)
// ****VM***: push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 10
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 11
@LCL
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 11
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine35
(ScreendrawLine35)
// ****VM***: goto ScreendrawLine32
@ScreendrawLine32
0;JMP
// ****VM***: label ScreendrawLine33
(ScreendrawLine33)
// ****VM***: goto ScreendrawLine31
@ScreendrawLine31
0;JMP
// ****VM***: label ScreendrawLine30
(ScreendrawLine30)
// ****VM***: label ScreendrawLine36
(ScreendrawLine36)
// ****VM***: push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE29
D;JGT
@SP
A=M-1
M=0
@GTEND29
0;JMP
(GTTRUE29)
@SP
A=M-1
M=-1
(GTEND29)
// ****VM***: push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE35
D;JLT
@SP
A=M-1
M=0
@LTEND35
0;JMP
(LTTRUE35)
@SP
A=M-1
M=-1
(LTEND35)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine37
@SP
AM=M-1
D=M
@ScreendrawLine37
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawPixel 2
@ReturnAddress_Call439
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress528
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress528)
@Screen.drawPixel
0;JMP
(ReturnAddress_Call439)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 11
@LCL
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE36
D;JLT
@SP
A=M-1
M=0
@LTEND36
0;JMP
(LTTRUE36)
@SP
A=M-1
M=-1
(LTEND36)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawLine38
@SP
AM=M-1
D=M
@ScreendrawLine38
D;JNE
// ****VM***: push local 9
@LCL
D=M
@9
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 9
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 11
@LCL
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 11
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawLine39
@ScreendrawLine39
0;JMP
// ****VM***: label ScreendrawLine38
(ScreendrawLine38)
// ****VM***: push local 10
@LCL
D=M
@10
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 10
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 11
@LCL
D=M
@11
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 11
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: label ScreendrawLine39
(ScreendrawLine39)
// ****VM***: goto ScreendrawLine36
@ScreendrawLine36
0;JMP
// ****VM***: label ScreendrawLine37
(ScreendrawLine37)
// ****VM***: label ScreendrawLine31
(ScreendrawLine31)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress529
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress529)
// ****VM***: function Screen.drawRectangle 0
(Screen.drawRectangle)
@0
D=A
@Screen.drawRectangle-LoopCounter
M=D
(Screen.drawRectangle-LoopStart)
@Screen.drawRectangle-LoopCounter
D=M
@Screen.drawRectangle-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Screen.drawRectangle-LoopCounter
M=M-1
@Screen.drawRectangle-LoopStart
0;JMP
(Screen.drawRectangle-LoopExit)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE30
D;JGT
@SP
A=M-1
M=0
@GTEND30
0;JMP
(GTTRUE30)
@SP
A=M-1
M=-1
(GTEND30)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawRectangle0
@SP
AM=M-1
D=M
@ScreendrawRectangle0
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress530
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress530)
// ****VM***: goto ScreendrawRectangle1
@ScreendrawRectangle1
0;JMP
// ****VM***: label ScreendrawRectangle0
(ScreendrawRectangle0)
// ****VM***: label ScreendrawRectangle1
(ScreendrawRectangle1)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE31
D;JGT
@SP
A=M-1
M=0
@GTEND31
0;JMP
(GTTRUE31)
@SP
A=M-1
M=-1
(GTEND31)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawRectangle2
@SP
AM=M-1
D=M
@ScreendrawRectangle2
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress531
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress531)
// ****VM***: goto ScreendrawRectangle3
@ScreendrawRectangle3
0;JMP
// ****VM***: label ScreendrawRectangle2
(ScreendrawRectangle2)
// ****VM***: label ScreendrawRectangle3
(ScreendrawRectangle3)
// ****VM***: label ScreendrawRectangle4
(ScreendrawRectangle4)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE32
D;JGT
@SP
A=M-1
M=0
@GTEND32
0;JMP
(GTTRUE32)
@SP
A=M-1
M=-1
(GTEND32)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawRectangle5
@SP
AM=M-1
D=M
@ScreendrawRectangle5
D;JNE
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Screen.drawLine 4
@ReturnAddress_Call440
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress532
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress532)
@Screen.drawLine
0;JMP
(ReturnAddress_Call440)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: goto ScreendrawRectangle4
@ScreendrawRectangle4
0;JMP
// ****VM***: label ScreendrawRectangle5
(ScreendrawRectangle5)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress533
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress533)
// ****VM***: function Screen.drawCircle 7
(Screen.drawCircle)
@7
D=A
@Screen.drawCircle-LoopCounter
M=D
(Screen.drawCircle-LoopStart)
@Screen.drawCircle-LoopCounter
D=M
@Screen.drawCircle-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Screen.drawCircle-LoopCounter
M=M-1
@Screen.drawCircle-LoopStart
0;JMP
(Screen.drawCircle-LoopExit)
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 181
@181
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE33
D;JGT
@SP
A=M-1
M=0
@GTEND33
0;JMP
(GTTRUE33)
@SP
A=M-1
M=-1
(GTEND33)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawCircle0
@SP
AM=M-1
D=M
@ScreendrawCircle0
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress534
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress534)
// ****VM***: goto ScreendrawCircle1
@ScreendrawCircle1
0;JMP
// ****VM***: label ScreendrawCircle0
(ScreendrawCircle0)
// ****VM***: label ScreendrawCircle1
(ScreendrawCircle1)
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call441
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress535
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress535)
@Math.multiply
0;JMP
(ReturnAddress_Call441)
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: push argument 2&AND&
// ****VM***: pop local 1
@ARG
A=M+1
A=A+1
D=M
@LCL
A=M+1
M=D
// ****VM***: push local 0&AND&
// ****VM***: pop local 3
@LCL
A=M
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 2
@0
D=A
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 4
@0
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push constant 1&AND&
// ****VM***: pop local 6
@1
D=A
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 181
@181
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE37
D;JLT
@SP
A=M-1
M=0
@LTEND37
0;JMP
(LTTRUE37)
@SP
A=M-1
M=-1
(LTEND37)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawCircle2
@SP
AM=M-1
D=M
@ScreendrawCircle2
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto ScreendrawCircle3
@ScreendrawCircle3
0;JMP
// ****VM***: label ScreendrawCircle2
(ScreendrawCircle2)
// ****VM***: push constant 32767&AND&
// ****VM***: pop local 0
@32767
D=A
@LCL
A=M
M=D
// ****VM***: label ScreendrawCircle3
(ScreendrawCircle3)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Screen.drawLine 4
@ReturnAddress_Call442
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress536
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress536)
@Screen.drawLine
0;JMP
(ReturnAddress_Call442)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: label ScreendrawCircle4
(ScreendrawCircle4)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE34
D;JGT
@SP
A=M-1
M=0
@GTEND34
0;JMP
(GTTRUE34)
@SP
A=M-1
M=-1
(GTEND34)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawCircle5
@SP
AM=M-1
D=M
@ScreendrawCircle5
D;JNE
// ****VM***: label ScreendrawCircle6
(ScreendrawCircle6)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE38
D;JLT
@SP
A=M-1
M=0
@LTEND38
0;JMP
(LTTRUE38)
@SP
A=M-1
M=-1
(LTEND38)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto ScreendrawCircle7
@SP
AM=M-1
D=M
@ScreendrawCircle7
D;JNE
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 3
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
M=D
// ****VM***: push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 5
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawCircle6
@ScreendrawCircle6
0;JMP
// ****VM***: label ScreendrawCircle7
(ScreendrawCircle7)
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: call Screen.drawLine 4
@ReturnAddress_Call443
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress537
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress537)
@Screen.drawLine
0;JMP
(ReturnAddress_Call443)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 0
@ARG
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call Screen.drawLine 4
@ReturnAddress_Call444
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress538
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress538)
@Screen.drawLine
0;JMP
(ReturnAddress_Call444)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 4
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 2
@2
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 6
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// ****VM***: goto ScreendrawCircle4
@ScreendrawCircle4
0;JMP
// ****VM***: label ScreendrawCircle5
(ScreendrawCircle5)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress539
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress539)
// ********FILE***: String
// ****VM***: function String.new 0
(String.new)
@0
D=A
@String.new-LoopCounter
M=D
(String.new-LoopStart)
@String.new-LoopCounter
D=M
@String.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@String.new-LoopCounter
M=M-1
@String.new-LoopStart
0;JMP
(String.new-LoopExit)
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call445
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress540
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress540)
@Memory.alloc
0;JMP
(ReturnAddress_Call445)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push argument 0&AND&
// ****VM***: pop this 0
@ARG
A=M
D=M
@THIS
A=M
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop this 2
@0
D=A
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE35
D;JGT
@SP
A=M-1
M=0
@GTEND35
0;JMP
(GTTRUE35)
@SP
A=M-1
M=-1
(GTEND35)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Stringnew0
@SP
AM=M-1
D=M
@Stringnew0
D;JNE
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call446
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress541
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress541)
@Array.new
0;JMP
(ReturnAddress_Call446)
// ****VM***: pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// ****VM***: goto Stringnew1
@Stringnew1
0;JMP
// ****VM***: label Stringnew0
(Stringnew0)
// ****VM***: label Stringnew1
(Stringnew1)
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress542
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress542)
// ****VM***: function String.dispose 0
(String.dispose)
@0
D=A
@String.dispose-LoopCounter
M=D
(String.dispose-LoopStart)
@String.dispose-LoopCounter
D=M
@String.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@String.dispose-LoopCounter
M=M-1
@String.dispose-LoopStart
0;JMP
(String.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call447
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress543
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress543)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call447)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress544
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress544)
// ****VM***: function String.length 0
(String.length)
@0
D=A
@String.length-LoopCounter
M=D
(String.length-LoopStart)
@String.length-LoopCounter
D=M
@String.length-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@String.length-LoopCounter
M=M-1
@String.length-LoopStart
0;JMP
(String.length-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress545
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress545)
// ****VM***: function String.charAt 0
(String.charAt)
@0
D=A
@String.charAt-LoopCounter
M=D
(String.charAt-LoopStart)
@String.charAt-LoopCounter
D=M
@String.charAt-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@String.charAt-LoopCounter
M=M-1
@String.charAt-LoopStart
0;JMP
(String.charAt-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE39
D;JLT
@SP
A=M-1
M=0
@LTEND39
0;JMP
(LTTRUE39)
@SP
A=M-1
M=-1
(LTEND39)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE36
D;JGT
@SP
A=M-1
M=0
@GTEND36
0;JMP
(GTTRUE36)
@SP
A=M-1
M=-1
(GTEND36)
// ****VM***: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto StringcharAt0
@SP
AM=M-1
D=M
@StringcharAt0
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress546
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress546)
// ****VM***: goto StringcharAt1
@StringcharAt1
0;JMP
// ****VM***: label StringcharAt0
(StringcharAt0)
// ****VM***: label StringcharAt1
(StringcharAt1)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress547
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress547)
// ****VM***: goto StringsetCharAt1
@StringsetCharAt1
0;JMP
// ****VM***: label StringsetCharAt0
(StringsetCharAt0)
// ****VM***: label StringsetCharAt1
(StringsetCharAt1)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 2&AND&
// ****VM***: pop temp 0
@ARG
A=M+1
A=A+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress548
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress548)
// ****VM***: function String.appendChar 0
(String.appendChar)
@0
D=A
@String.appendChar-LoopCounter
M=D
(String.appendChar-LoopStart)
@String.appendChar-LoopCounter
D=M
@String.appendChar-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@String.appendChar-LoopCounter
M=M-1
@String.appendChar-LoopStart
0;JMP
(String.appendChar-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE40
D;JLT
@SP
A=M-1
M=0
@LTEND40
0;JMP
(LTTRUE40)
@SP
A=M-1
M=-1
(LTEND40)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto StringappendChar0
@SP
AM=M-1
D=M
@StringappendChar0
D;JNE
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1&AND&
// ****VM***: pop temp 0
@ARG
A=M+1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 2
@SP
AM=M-1
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: goto StringappendChar1
@StringappendChar1
0;JMP
// ****VM***: label StringappendChar0
(StringappendChar0)
// ****VM***: label StringappendChar1
(StringappendChar1)
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress549
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress549)
// ****VM***: function String.setInt 3
(String.setInt)
@3
D=A
@String.setInt-LoopCounter
M=D
(String.setInt-LoopStart)
@String.setInt-LoopCounter
D=M
@String.setInt-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@String.setInt-LoopCounter
M=M-1
@String.setInt-LoopStart
0;JMP
(String.setInt-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE41
D;JLT
@SP
A=M-1
M=0
@LTEND41
0;JMP
(LTTRUE41)
@SP
A=M-1
M=-1
(LTEND41)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto StringsetInt0
@SP
AM=M-1
D=M
@StringsetInt0
D;JNE
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 32767
@32767
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE30
D;JEQ
@SP
A=M-1
M=0
@EQEND30
0;JMP
(EQTRUE30)
@SP
A=M-1
M=-1
(EQEND30)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto StringsetInt2
@SP
AM=M-1
D=M
@StringsetInt2
D;JNE
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress550
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress550)
// ****VM***: goto StringsetInt3
@StringsetInt3
0;JMP
// ****VM***: label StringsetInt2
(StringsetInt2)
// ****VM***: label StringsetInt3
(StringsetInt3)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto StringsetInt1
@StringsetInt1
0;JMP
// ****VM***: label StringsetInt0
(StringsetInt0)
// ****VM***: label StringsetInt1
(StringsetInt1)
// ****VM***: push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call448
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress551
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress551)
@Array.new
0;JMP
(ReturnAddress_Call448)
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 2
@0
D=A
@LCL
A=M+1
A=A+1
M=D
// ****VM***: label StringsetInt4
(StringsetInt4)
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE37
D;JGT
@SP
A=M-1
M=0
@GTEND37
0;JMP
(GTTRUE37)
@SP
A=M-1
M=-1
(GTEND37)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 5
@5
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE42
D;JLT
@SP
A=M-1
M=0
@LTEND42
0;JMP
(LTTRUE42)
@SP
A=M-1
M=-1
(LTEND42)
// ****VM***: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto StringsetInt5
@SP
AM=M-1
D=M
@StringsetInt5
D;JNE
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call449
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress552
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress552)
@Math.divide
0;JMP
(ReturnAddress_Call449)
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call450
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress553
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress553)
@Math.multiply
0;JMP
(ReturnAddress_Call450)
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 10
@10
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.divide 2
@ReturnAddress_Call451
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress554
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress554)
@Math.divide
0;JMP
(ReturnAddress_Call451)
// ****VM***: pop argument 1
@SP
AM=M-1
D=M
@ARG
A=M+1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: goto StringsetInt4
@StringsetInt4
0;JMP
// ****VM***: label StringsetInt5
(StringsetInt5)
// ****VM***: push constant 0&AND&
// ****VM***: pop this 2
@0
D=A
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto StringsetInt6
@SP
AM=M-1
D=M
@StringsetInt6
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 45
@45
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call String.appendChar 2
@ReturnAddress_Call452
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress555
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress555)
@String.appendChar
0;JMP
(ReturnAddress_Call452)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: goto StringsetInt7
@StringsetInt7
0;JMP
// ****VM***: label StringsetInt6
(StringsetInt6)
// ****VM***: label StringsetInt7
(StringsetInt7)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: label StringsetInt8
(StringsetInt8)
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@GTTRUE38
D;JGT
@SP
A=M-1
M=0
@GTEND38
0;JMP
(GTTRUE38)
@SP
A=M-1
M=-1
(GTEND38)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto StringsetInt9
@SP
AM=M-1
D=M
@StringsetInt9
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0
@THAT
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 48
@48
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: call String.appendChar 2
@ReturnAddress_Call453
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress556
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress556)
@String.appendChar
0;JMP
(ReturnAddress_Call453)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 2
@LCL
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop local 2
@SP
AM=M-1
D=M
@LCL
A=M+1
A=A+1
M=D
// ****VM***: goto StringsetInt8
@StringsetInt8
0;JMP
// ****VM***: label StringsetInt9
(StringsetInt9)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress557
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress557)
// ********FILE***: Sys
// ****VM***: function Sys.init 0
(Sys.init)
@0
D=A
@Sys.init-LoopCounter
M=D
(Sys.init-LoopStart)
@Sys.init-LoopCounter
D=M
@Sys.init-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Sys.init-LoopCounter
M=M-1
@Sys.init-LoopStart
0;JMP
(Sys.init-LoopExit)
// ****VM***: call Memory.init 0
@ReturnAddress_Call454
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress558
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress558)
@Memory.init
0;JMP
(ReturnAddress_Call454)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: call Math.init 0
@ReturnAddress_Call455
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress559
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress559)
@Math.init
0;JMP
(ReturnAddress_Call455)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: call Output.init 0
@ReturnAddress_Call456
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress560
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress560)
@Output.init
0;JMP
(ReturnAddress_Call456)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: call Screen.init 0
@ReturnAddress_Call457
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress561
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress561)
@Screen.init
0;JMP
(ReturnAddress_Call457)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: call Keyboard.init 0
@ReturnAddress_Call458
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress562
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress562)
@Keyboard.init
0;JMP
(ReturnAddress_Call458)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: call Main.main 0
@ReturnAddress_Call459
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress563
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress563)
@Main.main
0;JMP
(ReturnAddress_Call459)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: call Sys.halt 0
@ReturnAddress_Call460
D=A
@R14
M=D
@0
D=A
@R15
M=D
@AsmReturnAddress564
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress564)
@Sys.halt
0;JMP
(ReturnAddress_Call460)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress565
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress565)
// ****VM***: function Sys.halt 0
(Sys.halt)
@0
D=A
@Sys.halt-LoopCounter
M=D
(Sys.halt-LoopStart)
@Sys.halt-LoopCounter
D=M
@Sys.halt-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Sys.halt-LoopCounter
M=M-1
@Sys.halt-LoopStart
0;JMP
(Sys.halt-LoopExit)
// ****VM***: label Syshalt0
(Syshalt0)
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Syshalt1
@SP
AM=M-1
D=M
@Syshalt1
D;JNE
// ****VM***: goto Syshalt0
@Syshalt0
0;JMP
// ****VM***: label Syshalt1
(Syshalt1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress566
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress566)
// ********FILE***: Wall
// ****VM***: function Wall.new 0
(Wall.new)
@0
D=A
@Wall.new-LoopCounter
M=D
(Wall.new-LoopStart)
@Wall.new-LoopCounter
D=M
@Wall.new-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.new-LoopCounter
M=M-1
@Wall.new-LoopStart
0;JMP
(Wall.new-LoopExit)
// ****VM***: push constant 3
@3
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.alloc 1
@ReturnAddress_Call461
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress567
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress567)
@Memory.alloc
0;JMP
(ReturnAddress_Call461)
// ****VM***: pop pointer 0
@SP
AM=M-1
D=M
@R3
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop this 0
@0
D=A
@THIS
A=M
M=D
// ****VM***: push constant 20
@20
D=A
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.new 1
@ReturnAddress_Call462
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress568
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress568)
@Array.new
0;JMP
(ReturnAddress_Call462)
// ****VM***: pop this 1
@SP
AM=M-1
D=M
@THIS
A=M+1
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress569
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress569)
// ****VM***: function Wall.dispose 0
(Wall.dispose)
@0
D=A
@Wall.dispose-LoopCounter
M=D
(Wall.dispose-LoopStart)
@Wall.dispose-LoopCounter
D=M
@Wall.dispose-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.dispose-LoopCounter
M=M-1
@Wall.dispose-LoopStart
0;JMP
(Wall.dispose-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Array.dispose 1
@ReturnAddress_Call463
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress570
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress570)
@Array.dispose
0;JMP
(ReturnAddress_Call463)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Memory.deAlloc 1
@ReturnAddress_Call464
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress571
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress571)
@Memory.deAlloc
0;JMP
(ReturnAddress_Call464)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress572
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress572)
// ****VM***: function Wall.newBrick 0
(Wall.newBrick)
@0
D=A
@Wall.newBrick-LoopCounter
M=D
(Wall.newBrick-LoopStart)
@Wall.newBrick-LoopCounter
D=M
@Wall.newBrick-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.newBrick-LoopCounter
M=M-1
@Wall.newBrick-LoopStart
0;JMP
(Wall.newBrick-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Brick.new 4
@ReturnAddress_Call465
D=A
@R14
M=D
@4
D=A
@R15
M=D
@AsmReturnAddress573
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress573)
@Brick.new
0;JMP
(ReturnAddress_Call465)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress574
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress574)
// ****VM***: function Wall.destroyBrick 1
(Wall.destroyBrick)
@1
D=A
@Wall.destroyBrick-LoopCounter
M=D
(Wall.destroyBrick-LoopStart)
@Wall.destroyBrick-LoopCounter
D=M
@Wall.destroyBrick-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.destroyBrick-LoopCounter
M=M-1
@Wall.destroyBrick-LoopStart
0;JMP
(Wall.destroyBrick-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push argument 1&AND&
// ****VM***: pop local 0
@ARG
A=M+1
D=M
@LCL
A=M
M=D
// ****VM***: label WalldestroyBrick0
(WalldestroyBrick0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE43
D;JLT
@SP
A=M-1
M=0
@LTEND43
0;JMP
(LTTRUE43)
@SP
A=M-1
M=-1
(LTEND43)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto WalldestroyBrick1
@SP
AM=M-1
D=M
@WalldestroyBrick1
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0&AND&
// ****VM***: pop temp 0
@THAT
A=M
D=M
@R5
M=D
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push temp 0&AND&
// ****VM***: pop that 0
@R5
D=M
@THAT
A=M
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto WalldestroyBrick0
@WalldestroyBrick0
0;JMP
// ****VM***: label WalldestroyBrick1
(WalldestroyBrick1)
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// ****VM***: pop this 0
@SP
AM=M-1
D=M
@THIS
A=M
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress575
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress575)
// ****VM***: function Wall.newBrickGroup 2
(Wall.newBrickGroup)
@2
D=A
@Wall.newBrickGroup-LoopCounter
M=D
(Wall.newBrickGroup-LoopStart)
@Wall.newBrickGroup-LoopCounter
D=M
@Wall.newBrickGroup-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.newBrickGroup-LoopCounter
M=M-1
@Wall.newBrickGroup-LoopStart
0;JMP
(Wall.newBrickGroup-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: label WallnewBrickGroup0
(WallnewBrickGroup0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 7
@ARG
D=M
@7
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE44
D;JLT
@SP
A=M-1
M=0
@LTEND44
0;JMP
(LTTRUE44)
@SP
A=M-1
M=-1
(LTEND44)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto WallnewBrickGroup1
@SP
AM=M-1
D=M
@WallnewBrickGroup1
D;JNE
// ****VM***: push constant 0&AND&
// ****VM***: pop local 1
@0
D=A
@LCL
A=M+1
M=D
// ****VM***: label WallnewBrickGroup2
(WallnewBrickGroup2)
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 8
@ARG
D=M
@8
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE45
D;JLT
@SP
A=M-1
M=0
@LTEND45
0;JMP
(LTTRUE45)
@SP
A=M-1
M=-1
(LTEND45)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto WallnewBrickGroup3
@SP
AM=M-1
D=M
@WallnewBrickGroup3
D;JNE
// ****VM***: push pointer 0
@R3
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call466
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress576
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress576)
@Math.multiply
0;JMP
(ReturnAddress_Call466)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 2
@ARG
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Math.multiply 2
@ReturnAddress_Call467
D=A
@R14
M=D
@2
D=A
@R15
M=D
@AsmReturnAddress577
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress577)
@Math.multiply
0;JMP
(ReturnAddress_Call467)
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Wall.newBrick 5
@ReturnAddress_Call468
D=A
@R14
M=D
@5
D=A
@R15
M=D
@AsmReturnAddress578
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress578)
@Wall.newBrick
0;JMP
(ReturnAddress_Call468)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 1
@LCL
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 1
@SP
AM=M-1
D=M
@LCL
A=M+1
M=D
// ****VM***: goto WallnewBrickGroup2
@WallnewBrickGroup2
0;JMP
// ****VM***: label WallnewBrickGroup3
(WallnewBrickGroup3)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto WallnewBrickGroup0
@WallnewBrickGroup0
0;JMP
// ****VM***: label WallnewBrickGroup1
(WallnewBrickGroup1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress579
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress579)
// ****VM***: function Wall.draw 1
(Wall.draw)
@1
D=A
@Wall.draw-LoopCounter
M=D
(Wall.draw-LoopStart)
@Wall.draw-LoopCounter
D=M
@Wall.draw-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.draw-LoopCounter
M=M-1
@Wall.draw-LoopStart
0;JMP
(Wall.draw-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: call Screen.setColor 1
@ReturnAddress_Call469
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress580
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress580)
@Screen.setColor
0;JMP
(ReturnAddress_Call469)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: label Walldraw0
(Walldraw0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE46
D;JLT
@SP
A=M-1
M=0
@LTEND46
0;JMP
(LTTRUE46)
@SP
A=M-1
M=-1
(LTEND46)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto Walldraw1
@SP
AM=M-1
D=M
@Walldraw1
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0&AND&
// ****VM***: pop this 2
@THAT
A=M
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Brick.draw 1
@ReturnAddress_Call470
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress581
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress581)
@Brick.draw
0;JMP
(ReturnAddress_Call470)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto Walldraw0
@Walldraw0
0;JMP
// ****VM***: label Walldraw1
(Walldraw1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress582
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress582)
// ****VM***: function Wall.moveRight 1
(Wall.moveRight)
@1
D=A
@Wall.moveRight-LoopCounter
M=D
(Wall.moveRight-LoopStart)
@Wall.moveRight-LoopCounter
D=M
@Wall.moveRight-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.moveRight-LoopCounter
M=M-1
@Wall.moveRight-LoopStart
0;JMP
(Wall.moveRight-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push constant 0&AND&
// ****VM***: pop local 0
@0
D=A
@LCL
A=M
M=D
// ****VM***: label WallmoveRight0
(WallmoveRight0)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@LTTRUE47
D;JLT
@SP
A=M-1
M=0
@LTEND47
0;JMP
(LTTRUE47)
@SP
A=M-1
M=-1
(LTEND47)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto WallmoveRight1
@SP
AM=M-1
D=M
@WallmoveRight1
D;JNE
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0&AND&
// ****VM***: pop this 2
@THAT
A=M
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Brick.moveRight 1
@ReturnAddress_Call471
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress583
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress583)
@Brick.moveRight
0;JMP
(ReturnAddress_Call471)
// ****VM***: pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto WallmoveRight0
@WallmoveRight0
0;JMP
// ****VM***: label WallmoveRight1
(WallmoveRight1)
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: return
@AsmReturnAddress584
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress584)
// ****VM***: function Wall.getCount 0
(Wall.getCount)
@0
D=A
@Wall.getCount-LoopCounter
M=D
(Wall.getCount-LoopStart)
@Wall.getCount-LoopCounter
D=M
@Wall.getCount-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.getCount-LoopCounter
M=M-1
@Wall.getCount-LoopStart
0;JMP
(Wall.getCount-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress585
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress585)
// ****VM***: function Wall.getHitbox 0
(Wall.getHitbox)
@0
D=A
@Wall.getHitbox-LoopCounter
M=D
(Wall.getHitbox-LoopStart)
@Wall.getHitbox-LoopCounter
D=M
@Wall.getHitbox-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.getHitbox-LoopCounter
M=M-1
@Wall.getHitbox-LoopStart
0;JMP
(Wall.getHitbox-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push argument 1
@ARG
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push this 1
@THIS
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// ****VM***: pop pointer 1
@SP
AM=M-1
D=M
@R3
A=A+1
M=D
// ****VM***: push that 0&AND&
// ****VM***: pop this 2
@THAT
A=M
D=M
@THIS
A=M+1
A=A+1
M=D
// ****VM***: push this 2
@THIS
A=M+1
A=A+1
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: call Brick.getHitbox 1
@ReturnAddress_Call472
D=A
@R14
M=D
@1
D=A
@R15
M=D
@AsmReturnAddress586
D=A
@AsmFunction_CALLSETUP
0;JMP
(AsmReturnAddress586)
@Brick.getHitbox
0;JMP
(ReturnAddress_Call472)
// ****VM***: return
@AsmReturnAddress587
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress587)
// ****VM***: function Wall.isDestroyed 1
(Wall.isDestroyed)
@1
D=A
@Wall.isDestroyed-LoopCounter
M=D
(Wall.isDestroyed-LoopStart)
@Wall.isDestroyed-LoopCounter
D=M
@Wall.isDestroyed-LoopExit
D;JLE
@SP
AM=M+1
A=A-1
M=0
@Wall.isDestroyed-LoopCounter
M=M-1
@Wall.isDestroyed-LoopStart
0;JMP
(Wall.isDestroyed-LoopExit)
// ****VM***: push argument 0&AND&
// ****VM***: pop pointer 0
@ARG
A=M
D=M
@R3
M=D
// ****VM***: push this 0
@THIS
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: push constant 0
@SP
AM=M+1
A=A-1
M=0
// ****VM***: eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@EQTRUE31
D;JEQ
@SP
A=M-1
M=0
@EQEND31
0;JMP
(EQTRUE31)
@SP
A=M-1
M=-1
(EQEND31)
// ****VM***: not
@SP
A=M-1
M=!M
// ****VM***: if-goto WallisDestroyed0
@SP
AM=M-1
D=M
@WallisDestroyed0
D;JNE
// ****VM***: push constant 1
@SP
AM=M+1
A=A-1
M=1
// ****VM***: neg
@SP
A=M-1
M=-M
// ****VM***: pop local 0
@SP
AM=M-1
D=M
@LCL
A=M
M=D
// ****VM***: goto WallisDestroyed1
@WallisDestroyed1
0;JMP
// ****VM***: label WallisDestroyed0
(WallisDestroyed0)
// ****VM***: label WallisDestroyed1
(WallisDestroyed1)
// ****VM***: push local 0
@LCL
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// ****VM***: return
@AsmReturnAddress588
D=A
@AsmFunction_RETURN
0;JMP
(AsmReturnAddress588)
// ********Assembly Functions***
(AsmFunction_CALLSETUP)
@TemporaryStorageAddress
M=D
@R14
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@R15
D=D-M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@TemporaryStorageAddress
A=M
0;JMP
(AsmFunction_RETURN)
@TemporaryStorageAddress
M=D
@LCL
D=M
@FRAME
M=D
@FRAME
D=M
@5
D=D-A
A=D
D=M
@RET
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M
@SP
M=D+1
@FRAME
AM=M-1
D=M
@THAT
M=D
@FRAME
AM=M-1
D=M
@THIS
M=D
@FRAME
AM=M-1
D=M
@ARG
M=D
@FRAME
AM=M-1
D=M
@LCL
M=D
@RET
A=M
0;JMP
@TemporaryStorageAddress
A=M
0;JMP
