ASSUME CS:CODE , DS:DATA
DATA SEGMENT
	OPR1 DB 04H
	OPR2 DB 08H
	RESULT DB 01H DUP(?)
DATA ENDS
CODE SEGMENT
START: MOV AX,DATA
	MOV DS,AX
	MOV AL,OPR1
	MOV BL,OPR2
	ADD AL,BL
	MOV SI,OFFSET RESULT
	MOV [SI],AL
	MOV AH,4CH
	INT 21H
CODE ENDS
END START
	

		
	
