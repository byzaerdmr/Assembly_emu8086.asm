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
