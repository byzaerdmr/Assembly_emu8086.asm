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
























