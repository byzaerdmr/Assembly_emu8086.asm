
Write a program that analysis 0100:1000h memory address. 
If value of  0100:1000h is equals to C2h write FFh value to 0100:1100h memory address.
If the value is not equals to C2h then write AAh to 0100:1100h memory address.MOV [1000h], 0C2h      

CMP [1000h], 0C2h
JZ true
JNZ false

true:
    MOV [1100h], 0FFh  
JMP toend 
false:
     MOV [1100h], 0AAh   
                      
 toend:
 ret


There is an array of bytes written on memory beginning from 0100:1000h with an ending byte value of 00h.
Copy this array to memory beginning from 0100:2000h memory address. Use the array predefined below:
;ilk degerler
MOV byte ptr [1000h], 12h
MOV byte ptr [1001h], 34h
MOV byte ptr [1002h], 56h
MOV byte ptr [1003h], 78h
MOV byte ptr [1004h], 9Ah
MOV byte ptr [1005h], 0BCh
MOV byte ptr [1006h], 0DEh
MOV byte ptr [1007h], 0F0h
MOV byte ptr [1008h], 00h   

;program
DIZI EQU 1000h
MOV BX, 1000h
MOV DI, 0000h     

dongu:
MOV AL, DIZI[DI]

CMP AL, 00h
JE bitis

MOV DIZI[BX+DI], AL
INC DI
JMP dongu

bitis:

;isletim sistemine donus
MOV AH, 4Ch
INT 21h
