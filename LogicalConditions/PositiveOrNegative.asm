; Check if number is positive or negative

.MODEL SMALL
.STACK 100H
.DATA
    num DB -5
    msgP DB 'Positive number$'
    msgN DB 'Negative number$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, num
    CMP AL, 0
    JS NEGATIVE          ; Jump if Sign flag = 1 (negative)

POSITIVE:
    LEA DX, msgP
    MOV AH, 9
    INT 21H
    JMP EXIT

NEGATIVE:
    LEA DX, msgN
    MOV AH, 9
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
