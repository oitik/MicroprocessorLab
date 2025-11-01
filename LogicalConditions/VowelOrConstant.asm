; Check if character is a vowel

.MODEL SMALL
.STACK 100H
.DATA

    chf DB 'A'
    msg1 DB 'Vowel$'
    msg2 DB 'Consonant$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, chf
    CMP AL, 'A'
    JE IS_VOWEL
    CMP AL, 'E'
    JE IS_VOWEL
    CMP AL, 'I'
    JE IS_VOWEL
    CMP AL, 'O'
    JE IS_VOWEL
    CMP AL, 'U'
    JE IS_VOWEL
    JMP NOT_VOWEL

IS_VOWEL:
    LEA DX, msg1
    MOV AH, 9
    INT 21H
    JMP EXIT

NOT_VOWEL:
    LEA DX, msg2
    MOV AH, 9
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
