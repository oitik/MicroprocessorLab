; Problem 1: Unconditional Jump (JMP) - Simple Program Flow
; Objective: Demonstrate unconditional branching using JMP instruction
; Task: Print 'A', then jump to print 'C', skipping 'B'

.MODEL SMALL
.STACK 100H

.DATA
    msg1 DB 'First: A', 0DH, 0AH, '$'
    msg2 DB 'Second: B (This will be skipped)', 0DH, 0AH, '$'
    msg3 DB 'Third: C', 0DH, 0AH, '$'
    msg4 DB 'Fourth: D', 0DH, 0AH, '$'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ; Print first message
    LEA DX, msg1
    MOV AH, 09H
    INT 21H
    
    ; Unconditional jump - skip msg2
    JMP SKIP_B          ; Jump directly to SKIP_B label
    
    ; This code will be skipped
    LEA DX, msg2
    MOV AH, 09H
    INT 21H
    
SKIP_B:
    ; Print third message
    LEA DX, msg3
    MOV AH, 09H
    INT 21H
    
    ; Print fourth message
    LEA DX, msg4
    MOV AH, 09H
    INT 21H
    
    ; Exit program
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN

; ==================== LEARNING NOTES ====================
; JMP (Unconditional Jump):
; - Transfers control to a specified label unconditionally
; - Does NOT check any flags or conditions
; - Syntax: JMP label
; - Use cases:
;   * Skip code sections
;   * Create loops
;   * Implement program flow control
;   * Exit from nested conditions
;
; Expected Output:
; First: A
; Third: C
; Fourth: D
; (Notice "Second: B" is NOT printed)
