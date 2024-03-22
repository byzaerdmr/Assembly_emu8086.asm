 include 'emu8086.inc'
   ORG 100h   
   
   MOV AL, 5
   JMP label1    ; jump over 2 lines! 
     
   PRINT 'Not Jumped!'
   MOV AL, 0
   label1:
   PRINT 'Got Here!'
   RET



; jmp using for endless loop
MOV AL, 5
MOV CL, 7 

label:

INC AL
DEC CL

JMP label
ret


; JE  >> ZF=1
 MOV AL, 5
 MOV CL, 7
 
 label:
 INC AL
 DEC CL
 
 JE label:        
  ret



 ; JNE >> ZF=0 
 MOV AL, 5
 MOV CL, 7
 
 label:
 INC AL
 DEC CL
 
 JNE label:
  ret



;JA CF=0 and ZF=0    
MOV AL, 5
MOV CL, 7

label:

INC AL
DEC CL

JA label
ret



;CMP !result is not stored anywhere!   
MOV AL, 5
MOV BL, 5

label:

ADD CL, 1
ADD CL, 1
CMP CL, 10   ; CL-10  ;

JE theend

Jmp label

theend:
ret
