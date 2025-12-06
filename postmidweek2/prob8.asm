; Problem 8: Positive, Negative, or Zero Check
; Objective: Use conditional jumps to classify a number
; Task: Determine if a signed number is positive, negative, or zero

.MODEL SMALL
.STACK 100H

.DATA
    number DB -5        ; Test with different values
    
    msg_positive DB 'Number is POSITIVE', 0DH, 0AH, '$'
    msg_negative DB 'Number is NEGATIVE', 0DH, 0AH, '$'
    msg_zero DB 'Number is ZERO', 0DH, 0AH, '$'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ; Load number
    MOV AL, number
    
    ; Check if zero
    CMP AL, 0
    JE IS_ZERO          ; Jump if Equal to zero
    
    ; Check if positive (greater than 0)
    JG IS_POSITIVE      ; Jump if Greater than zero
    
    ; If we reach here, it's negative
    LEA DX, msg_negative
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
IS_POSITIVE:
    LEA DX, msg_positive
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
IS_ZERO:
    LEA DX, msg_zero
    MOV AH, 09H
    INT 21H
    
EXIT:
    ; Exit program
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN

; ==================== LEARNING NOTES ====================
; Classifying Numbers:
; - Use CMP with 0 to determine sign
; - JE: checks for zero
; - JG: checks for positive (signed)
; - If neither, it's negative
;
; Sign Flag (SF):
; - Set when result is negative
; - JG checks SF = OF (positive result)
;
; Test cases:
; - number = 5  → POSITIVE
; - number = -5 → NEGATIVE
; - number = 0  → ZERO
;
; For signed bytes: range -128 to 127
