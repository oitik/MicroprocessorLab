; Problem 1: AND - Bitwise AND Operation

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'AND Operation Demo: $'
    newline DB 0DH,0AH,'$'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ;take an input 
    MOV AH, 01H
    INT 21H
    AND AL, 0FH     ; Mask higher nibble to get number (0-9)
    
    ; ;print newline
    ; LEA DX, newline
    ; MOV AH, 09H 
    ; INT 21H


    ; Display result
    OR AL, 30H    ; Convert to lowercase letter
    MOV DL, AL
    MOV AH, 02H
    INT 21H
    
    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN


; 0011 0000
30H?
