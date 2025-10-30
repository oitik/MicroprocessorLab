.MODEL SMALL
.STACK 100h
.DATA
    msg1 db 'ASCII Characters Demo:', 0DH, 0AH, '$'
    newline db 0DH, 0AH, '$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Display title
    MOV AH, 9
    LEA DX, msg1
    INT 21h

    ; Print !
    MOV DL, 61h         ; ! character
    MOV AH, 2
    INT 21h   

    MOV DL, 62h         ; 'b' character (ASCII 98)
    MOV AH, 2
    INT 21h

  
    ; Exit program
    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN