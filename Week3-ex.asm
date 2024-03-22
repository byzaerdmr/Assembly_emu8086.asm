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






MOV BX, 100h
MOV DS, BX
MOV BX, 300h
MOV ES, BX   
              
MOV SI, 1000h
MOV DI, 1000h             
              

MOV  CX, 100h  ;255


label: 

MOV AX, DS:[SI] 
INC AX                ;ADD AX,1
MOV ES:[DI],AX  

INC SI
INC SI

ADD DI,2



LOOP label  

ret
























