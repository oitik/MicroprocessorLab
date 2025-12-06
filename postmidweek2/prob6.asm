; Problem 6: Simple Loop using JMP and Conditional Jump
; Objective: Implement a simple counting loop
; Task: Print numbers 1 to 5 using loop with conditional branching

.MODEL SMALL
.STACK 100H

.DATA
    counter DB 1        ; Loop counter
    limit DB 5          ; Loop limit
    newline DB 0DH, 0AH, '$'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
LOOP_START:
    ; Display current counter value
    MOV AH, 02H         ; Display character function
    MOV DL, counter
    ADD DL, 30H         ; Convert to ASCII
    INT 21H
    
    ; Print space
    MOV DL, ' '
    INT 21H
    
    ; Increment counter
    INC counter
    
    ; Check if counter <= limit
    MOV AL, counter
    MOV BL, limit
    CMP AL, BL
    
    ; Continue loop if counter <= limit
    JBE LOOP_START      ; Jump if Below or Equal
    
    ; Print newline after loop
    LEA DX, newline
    MOV AH, 09H
    INT 21H
    
    ; Exit program
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN

; ==================== LEARNING NOTES ====================
; Loop Structure using Branching:
; 1. Initialize counter
; 2. Execute loop body
; 3. Increment/Decrement counter
; 4. Compare with limit
; 5. Conditional jump back to start
;
; JBE (Jump if Below or Equal):
; - Unsigned comparison: <=
; - Checks: CF = 1 OR ZF = 1
; - Perfect for loop conditions
;
; Expected Output: 1 2 3 4 5
;
; Try changing:
; - limit DB 10 → prints 1 to 10
; - counter DB 0 → prints 0 to 5
