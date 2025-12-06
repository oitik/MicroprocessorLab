; Problem 5: Conditional Jump - JA (Jump if Above)
; Objective: Demonstrate unsigned comparison using JA
; Task: Check if a value exceeds a threshold (unsigned)

.MODEL SMALL
.STACK 100H

.DATA
    temperature DB 35   ; Current temperature
    threshold DB 30     ; Maximum safe temperature
    
    msg_warning DB 'WARNING: Temperature ABOVE threshold!', 0DH, 0AH, '$'
    msg_safe DB 'Temperature is SAFE!', 0DH, 0AH, '$'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ; Load values
    MOV AL, temperature
    MOV BL, threshold
    
    ; Compare temperature with threshold
    CMP AL, BL
    
    ; Jump if Above (unsigned: AL > BL)
    JA OVER_THRESHOLD
    
    ; Temperature is safe
    LEA DX, msg_safe
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
OVER_THRESHOLD:
    ; Display warning
    LEA DX, msg_warning
    MOV AH, 09H
    INT 21H
    
EXIT:
    ; Exit program
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN

; ==================== LEARNING NOTES ====================
; JA (Jump if Above) - Unsigned comparison:
; - Jumps if first operand > second (unsigned)
; - Checks: CF = 0 AND ZF = 0
; - Used for unsigned numbers (always positive)
;
; JA vs JG:
; - JA: Unsigned (0 to 255 for byte)
; - JG: Signed (-128 to 127 for byte)
;
; Related unsigned jumps:
; - JB  (Jump if Below): unsigned <
; - JAE (Jump if Above or Equal): unsigned >=
; - JBE (Jump if Below or Equal): unsigned <=
;
; Test cases:
; - temp = 35, threshold = 30 → WARNING
; - temp = 25, threshold = 30 → SAFE
