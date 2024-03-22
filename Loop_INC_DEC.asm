
   MOV CX, 5
   label1:
   PRINTN 'loop!'
   LOOP label1
   RET



MOV AX, 0000h 
MOV CX, 0064h

dongu: 
ADD AX,CX 
LOOP dongu   

MOV BX, 0100h
MOV DS, BX
MOV [1000h],AX

ret
