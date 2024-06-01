Write a program that reads a word from 0100:0300h memory address and count the 1s (ones) in this value. Then write count to DX.

MOV word ptr[300h], 0F0F0h

MOV AX, [300h]

MOV CX, 16

label:  

    ROL AX, 1  ;rotate left and rotate carry
    JNC jump   ;CF 0 oldugunda 
    INC DX 
    jump:
    LOOP label

ret


Write a program that rotate the word stored at 0100:0300h memory address to left until it will be negative and save the rotation count in CX.
If the last value is bigger than signed value A100h then write AAh to 0100:1000h, if not write BBh to 0100:1000h.
