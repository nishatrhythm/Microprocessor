.MODEL SMALL
.STACK 100H

.DATA
    num1 DW 5678H     ; First number (you can change the value)
    num2 DW 1234H     ; Second number (you can change the value)
    result DW ?       ; Variable to store the result

.CODE
    MAIN PROC
        MOV AX, @DATA    ; Initialize data segment
        MOV DS, AX

        ; Subtract the numbers
        MOV AX, num1     ; Move the first number into AX
        SUB AX, num2     ; Subtract the second number from AX
        MOV result, AX   ; Store the result in 'result' variable

        ; Display the result
        MOV AX, 4C00H    ; Exit program code
        INT 21H          ; Call DOS interrupt

    MAIN ENDP
END MAIN
