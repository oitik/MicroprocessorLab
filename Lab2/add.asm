.MODEL SMALL
.STACK 100h
.DATA
    newline db 0Dh,0Ah,'$'
    num1 db 5
    num2 db 3
    sum db ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, num1
    ADD AL, num2
    MOV sum, AL

    MOV AH, 9
    LEA DX, newline
    INT 21h

    MOV DL, sum
    ADD DL, 30h       ; convert to ASCII
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN


