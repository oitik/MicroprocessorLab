; Problem 7: Multiple Conditions - Menu System
; Objective: Implement branching based on user choice
; Task: Simple menu with different operations

.MODEL SMALL
.STACK 100H

.DATA
    choice DB 2         ; User choice (1, 2, or 3) - change to test
    
    msg_menu DB 'Menu: 1=Add, 2=Subtract, 3=Multiply', 0DH, 0AH, '$'
    msg_add DB 'Operation: ADDITION', 0DH, 0AH, '$'
    msg_sub DB 'Operation: SUBTRACTION', 0DH, 0AH, '$'
    msg_mul DB 'Operation: MULTIPLICATION', 0DH, 0AH, '$'
    msg_invalid DB 'Invalid choice!', 0DH, 0AH, '$'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display menu
    LEA DX, msg_menu
    MOV AH, 09H
    INT 21H
    
    ; Load choice
    MOV AL, choice
    
    ; Check choice 1
    CMP AL, 1
    JE OPTION_ADD
    
    ; Check choice 2
    CMP AL, 2
    JE OPTION_SUB
    
    ; Check choice 3
    CMP AL, 3
    JE OPTION_MUL
    
    ; Invalid choice
    LEA DX, msg_invalid
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
OPTION_ADD:
    LEA DX, msg_add
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
OPTION_SUB:
    LEA DX, msg_sub
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
OPTION_MUL:
    LEA DX, msg_mul
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
EXIT:
    ; Exit program
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN

; ==================== LEARNING NOTES ====================
; Multiple Condition Branching:
; - Similar to if-else if-else structure
; - Each condition is checked sequentially
; - JMP used to skip remaining conditions
; - Default case handles invalid input
;
; Pattern:
; CMP value, option1
; JE label1
; CMP value, option2
; JE label2
; ... (default case)
;
; Test with:
; - choice = 1 → ADDITION
; - choice = 2 → SUBTRACTION
; - choice = 3 → MULTIPLICATION
; - choice = 5 → Invalid
