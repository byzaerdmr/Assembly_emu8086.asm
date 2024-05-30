;Sum of the number between 1 to 100
MOV BX, 100h
MOV DS, BX

MOV CX, 100d  ; or 64h  
MOV DX, 1     ;100

label:
       
       
 ADD AX, DX   ; AX, CX for memory efficiency!
 INC DX      ;DEC DX

LOOP label  

ret




;Sum of the even number between 1 to 100
MOV BX, 100h
MOV DS, BX

MOV CX, 100d  ; or 64h    

label:
       
       
 ADD AX, CX 
 DEC CX
      

LOOP label  
ret


;Sum of the odd number between 1 to 100
MOV BX, 100h
MOV DS, BX

MOV CX, 100d  ; or 64h  

  label:  
  
  DEC CX
  ADD AX,CX
 
      

LOOP label  
ret



 Write a program that reads value from [0100:1000h] - [0100:1200h] memory range and writes
back to [0300:1000h] - [0300:1200h] memory range. Add 1 to every word before writing back
to memory. You have to use DS: SI addressing for reading and ES: DI addressing for writing.


MOV AX, 0100h 
MOV DS,AX
MOV SI,1000h
             
MOV AX,0300h            
MOV ES,AX
MOV DI,1000h

MOV CX,0100h

dongu:
MOV AX, DS:SI
INC AX
MOV ES:DI,AX
ADD DI,2
ADD SI,2              
LOOP dongu

RET
























