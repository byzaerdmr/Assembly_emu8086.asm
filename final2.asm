MOV DI, 75h
MOV AX, 17h

STOSW
INC AX
STOSW 
INC AX
STOSW

RET



MOV BX, 200h
MOV ES, BX

MOV DI, 73h
MOV SI, 73h
MOV AL, 16h

STOSW
INC AX
STOSW

MOV BX, 200h
MOV DS, BX

LODSB
LODSB
LODSB

RET



Write a program that stores value of BCDEh between 0100:0300h and 0100:03FFh memory addresses.
MOV AX, 100h
MOV ES, AX
MOV DI, 300h

MOV AX, 0BCDEh
MOV CX, 80h
REP STOSW

ret



Write a program that reads values between 0100:0300h and 0100:03FFh, subtracts 1234h from these values and writes results back to the same addresses.

MOV AX, 100h
MOV DS, AX
MOV SI, 300h
MOV DI, 300h
MOV CX, 80h

label:
LODSW 
SUB AX, 1234h
STOSW
LOOP label 

ret                     

