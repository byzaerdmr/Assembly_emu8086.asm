Write a program that multiply unsigned values 18d and value of 0100:1000h memory address by using shift instructions, and saves the result to the memory address 0100:1002h.

MOV [1000h], 2

MOV AL, [1000h]
MOV BL, AL

SHL AL, 4

SHL BL, 1

ADD AL, BL

MOV [1002h], AL

RET
