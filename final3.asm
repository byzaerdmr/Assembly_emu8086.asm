Write a program that multiply signed values FEh (‐2d) and 10h (16d) and saves the result to the memory address 0100:0400h.


MOV AL, 0FEh
MOV BL, 10h

IMUL BL

MOV [400h], AX

ret


Write a program to divide unsigned value ABh (171d)) by 0Ah (10d).  Then save the quotient to the memory address 0100:0500h, and remainder to the memory address 0100:0502h.

MOV AX, 0ABh
MOV BL, 0Ah

DIV BL

MOV [500h], AL
MOV [502h], AH

ret
