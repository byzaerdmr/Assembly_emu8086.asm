MOV AL, var1
MOV BX, var2

INC BX
INC AX

AB73 EQU 1000h

LEA AX, AB73[BX]

RET

var1 DB ,17h, 1, 4, 1111b, 'a'
var2 DW 1234h, 0ABh, 0cccch
