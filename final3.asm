Write a program that multiply signed values FEh (‐2d) and 10h (16d) and saves the result to the memory address 0100:0400h.


MOV AL, 0FEh
MOV BL, 10h

IMUL BL

MOV [400h], AX

ret

