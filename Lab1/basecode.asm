.MODEL SMALL
.STACK 100H
.DATA
    ; define data here

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
   ; Your code here
    
    ; Exit program
    MOV AH, 4CH     ; DOS function to exit
    INT 21H         ; Call DOS interrupt
MAIN ENDP
END MAIN