Write a program that multiply unsigned values 18d and value of 0100:1000h memory address by using shift instructions, and saves the result to the memory address 0100:1002h.

MOV [1000h], 2

MOV AL, [1000h]
MOV BL, AL

SHL AL, 4

SHL BL, 1

ADD AL, BL

MOV [1002h], AL
RET



Write a program that divide signed value of 0100:3000h memory address by 4d using shift instructions, and saves the result to the memory address 0100:3000h.

MOV [3000h], 20

SAR [3000h], 2  ;diveded by 4

RET


Write a program that shift the value of 0100:1400h memory address to the right, until the value of 12th bit will be 0.
MOV word ptr[1400h], 1111100111100000b
MOV CX,              0000100000000000b 

MOV AX, [1400h]  

loop:

    SHR AX, 1
    TEST AX, CX
    JZ toend
    
JMP loop
toend:
ret
