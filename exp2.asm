ASSUME CS:CODE,DS: DATA
DATA SEGMENT
NUMLIST DB 52H,23H
COUNT EQU 1000
RESULT DW 01H DUP(?)
DATA ENDS	
CODE SEGMENT 
ORG 200H
START: MOV AX, DATA
	MOV DS,AX
	MOVE CX,COUNT
	XOR AX,AX
	XOR BX,BX
	MOV SI,OFFSET NUMLIST
AGAIN:	MOV BL,[SI]
	ADD AX,BX
	INC SI
	DEC CX
	JNZ AGAIN
	
	MOV DI,OFFSET RESULT
	MOV [DI],AX
	MOV AH,4CH
	INT 21H
	CODE ENDS
END START	
