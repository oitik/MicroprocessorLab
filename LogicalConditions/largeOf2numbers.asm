; Find larger of two numbers

.MODEL SMALL
.STACK 100H
.DATA
    num1 DB 5
    num2 DB 9
    msg1 DB 'Num1 is larger$'
    msg2 DB 'Num2 is larger$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, num1
    MOV BL, num2
    CMP AL, BL
    JG NUM1_LARGE       ; Jump if AL > BL

NUM2_LARGE:
    LEA DX, msg2
    MOV AH, 9
    INT 21H
    JMP EXIT

NUM1_LARGE:
    LEA DX, msg1
    MOV AH, 9
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
