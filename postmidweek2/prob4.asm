; Problem 4: Conditional Jump - JG (Jump if Greater)
; Objective: Find the larger of two numbers using JG
; Task: Compare two numbers and display which is larger

.MODEL SMALL
.STACK 100H

.DATA
    num1 DB 8
    num2 DB 3
    
    msg_first DB 'First number is GREATER!', 0DH, 0AH, '$'
    msg_second DB 'Second number is GREATER!', 0DH, 0AH, '$'
    msg_equal DB 'Both numbers are EQUAL!', 0DH, 0AH, '$'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ; Load numbers
    MOV AL, num1
    MOV BL, num2
    
    ; Compare num1 with num2
    CMP AL, BL
    
    ; Check if equal first
    JE NUMBERS_EQUAL
    
    ; Check if first is greater
    JG FIRST_GREATER    ; Jump if AL > BL (signed)
    
    ; If we reach here, second is greater
    LEA DX, msg_second
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
FIRST_GREATER:
    LEA DX, msg_first
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
NUMBERS_EQUAL:
    LEA DX, msg_equal
    MOV AH, 09H
    INT 21H
    
EXIT:
    ; Exit program
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN

; ==================== LEARNING NOTES ====================
; JG (Jump if Greater) - Signed comparison:
; - Jumps if first operand > second operand
; - Checks: ZF = 0 AND SF = OF
; - Used for signed numbers
;
; Related instructions:
; - JL  (Jump if Less): first < second
; - JGE (Jump if Greater or Equal): first >= second
; - JLE (Jump if Less or Equal): first <= second
;
; For unsigned comparison, use:
; - JA  (Jump if Above)
; - JB  (Jump if Below)
