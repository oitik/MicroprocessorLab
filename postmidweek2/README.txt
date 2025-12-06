===============================================
Post-Mid Week 2: Branching Operations in Assembly Language
===============================================

Title: Branching Operations in Assembly Language

Objective: 
Understand and implement unconditional and conditional branching instructions 
to control program flow in Assembly Language.

Tools: VS Code / emu8086

===============================================
TASKS COVERED:
===============================================

I. Study different jump instructions (JMP, JE, JNE, JA, JB, etc.)
II. Implement unconditional and conditional branching using simple examples
III. Write programs that use branching based on input or condition results

===============================================
PROBLEM SET:
===============================================

prob1.asm - Unconditional Jump (JMP)
   - Demonstrates basic program flow control
   - Shows how to skip code sections
   - Uses JMP to transfer control unconditionally

prob2.asm - Conditional Jump: JE (Jump if Equal)
   - Compares two numbers
   - Uses JE to jump when values are equal
   - Implements if-else logic

prob3.asm - Conditional Jump: JNE (Jump if Not Equal)
   - Password validation example
   - Uses JNE for access control
   - Demonstrates error checking

prob4.asm - Conditional Jump: JG (Jump if Greater) - Signed
   - Finds larger of two numbers
   - Uses JG for signed comparison
   - Shows multiple conditional paths

prob5.asm - Conditional Jump: JA (Jump if Above) - Unsigned
   - Temperature threshold checker
   - Uses JA for unsigned comparison
   - Demonstrates practical application

prob6.asm - Simple Loop using Branching
   - Implements counting loop
   - Uses JBE (Jump if Below or Equal)
   - Shows loop structure with conditional jump

prob7.asm - Multiple Conditions: Menu System
   - Implements multi-way branching
   - Sequential condition checking
   - Demonstrates default case handling

prob8.asm - Positive/Negative/Zero Classification
   - Uses multiple conditional jumps
   - Classifies signed numbers
   - Shows decision tree implementation

===============================================
JUMP INSTRUCTIONS REFERENCE:
===============================================

UNCONDITIONAL JUMP:
-------------------
JMP label - Always jumps to label

CONDITIONAL JUMPS (after CMP):
------------------------------
Equal/Not Equal:
  JE  / JZ   - Jump if Equal / Zero
  JNE / JNZ  - Jump if Not Equal / Not Zero

Signed Comparisons (-128 to 127):
  JG  / JNLE - Jump if Greater
  JGE / JNL  - Jump if Greater or Equal
  JL  / JNGE - Jump if Less
  JLE / JNG  - Jump if Less or Equal

Unsigned Comparisons (0 to 255):
  JA  / JNBE - Jump if Above
  JAE / JNB  - Jump if Above or Equal
  JB  / JNAE - Jump if Below
  JBE / JNA  - Jump if Below or Equal

===============================================
KEY CONCEPTS:
===============================================

1. CMP Instruction:
   - Syntax: CMP destination, source
   - Performs: destination - source (doesn't store)
   - Sets flags: ZF, SF, CF, OF, PF

2. Flags Used by Jump Instructions:
   - ZF (Zero Flag): Set when result = 0
   - SF (Sign Flag): Set when result is negative
   - CF (Carry Flag): Set on unsigned overflow
   - OF (Overflow Flag): Set on signed overflow

3. Program Flow:
   - Sequential execution (default)
   - Jump changes flow to labeled instruction
   - Use JMP to skip alternative paths
   - Labels mark jump destinations

4. Comparison Strategy:
   - Use signed jumps (JG, JL) for signed numbers
   - Use unsigned jumps (JA, JB) for unsigned numbers
   - Always use CMP before conditional jumps
   - Order conditions from most to least likely

===============================================
HOW TO RUN:
===============================================

1. Open any .asm file in emu8086
2. Click "Emulate" or press F5
3. Click "Run" or press F9
4. Observe the output
5. Check flags in the debugger

Step-by-Step Debugging:
- Press F7 to execute one instruction at a time
- Watch register values and flags change
- Observe which jumps are taken

To Modify and Test:
- Change variable values at the top of programs
- Observe different execution paths
- Test edge cases (0, negative, maximum values)

===============================================
PRACTICE EXERCISES:
===============================================

1. Write a program to find the smallest of three numbers
2. Create a grade calculator (A, B, C, D, F based on marks)
3. Implement a simple calculator with +, -, *, / options
4. Write a program to check if a number is in a range (10-20)
5. Create a voting eligibility checker (age >= 18)
6. Implement a character classifier (digit, letter, special)
7. Write a program with nested conditions
8. Create a number guessing game with multiple attempts

===============================================
COMMON PATTERNS:
===============================================

Pattern 1: IF-ELSE
    CMP value1, value2
    JE TRUE_CASE
    ; FALSE case code
    JMP END
TRUE_CASE:
    ; TRUE case code
END:

Pattern 2: Multiple IF-ELSE IF
    CMP value, option1
    JE CASE1
    CMP value, option2
    JE CASE2
    ; DEFAULT case
    JMP END
CASE1:
    ; code
    JMP END
CASE2:
    ; code
END:

Pattern 3: LOOP
LOOP_START:
    ; loop body
    INC counter
    CMP counter, limit
    JBE LOOP_START

===============================================
DEBUGGING TIPS:
===============================================

1. Use single-step execution to trace jumps
2. Watch flag values after CMP
3. Verify which branch is taken
4. Check label spelling (case-sensitive)
5. Ensure JMP is used to skip alternatives
6. Test with boundary values
7. Verify signed vs unsigned jumps

===============================================
