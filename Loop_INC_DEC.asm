include 'emu8086.inc'

   ORG 100h
   MOV CX, 5
label1:
   PRINTN 'loop!'
   LOOP label1
   RET
