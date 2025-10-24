# 🧠 MicroprocessorLab
**Assembly Language Programming (8086 / .asm Codes)**  

This repository contains simple and structured **8086 Assembly Language programs** for learning and practicing **microprocessor fundamentals** — covering data movement, arithmetic operations, loops, strings, and system calls using `INT 21h`.  
Each code is designed for **educational purposes**, helping students understand how low-level instructions interact with CPU registers and memory.

---

## ⚙️ How to Run Assembly Code in VS Code
Follow these simple steps to run `.asm` files in **Visual Studio Code**:

1. **OPEN VS CODE**  
   Launch Visual Studio Code on your computer.

2. **INSTALL EXTENSION**  
   - Open Extensions (`Ctrl + Shift + X` / `Cmd + Shift + X`)  
   - Search for **“MASM/TASM”**  
   - Install the extension  

3. **CREATE ASM FILE**  
   - Create a new file with `.asm` extension (e.g., `hello.asm`)  
   - Write your assembly code in the file  

4. **RUN THE CODE**  
   - Right-click anywhere in your `.asm` file  
   - Select **“Run ASM code”**  
   - The DOSBox emulator will open and execute your program  

**NOTES:**  
- The extension uses **DOSBox** to emulate 8086 execution  
- Ensure your code follows standard **8086 assembly syntax**  
- Program output appears in the emulator window  

---

### 🧩 Example Program Structure

```asm
.MODEL SMALL
.STACK 100H
.DATA
    ; your data here
.CODE
MAIN PROC
    ; your code here
    MOV AH, 4CH    ; exit program
    INT 21H
MAIN ENDP
END MAIN
