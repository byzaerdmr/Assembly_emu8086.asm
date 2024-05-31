Write a program that compares two 4 byte sized unsigned integers written on 0100:1000h and 0100:1004h 
and if integer that written on 0100:1000h is bigger than integer written on 0100:1004h,
then subtract two numbers, if not, then add two numbers. 
Then copy the result to 0100:1008h. First integer is 4,000,000,000 and second integer is 2,000,000,000.



;4b EE6B 2800
;2b 7735 9400   

MOV [1000h], 2800h
MOV [1002h], 0EE6Bh

MOV AX, [1000h]
MOV BX, [1002h]

MOV [1004h], 9400h
MOV [1006h], 7735h  

MOV CX, [1004h]
MOV DX, [1006h]

CMP BX, DX 

JA greater

    smaller:
    ADD AX, CX
    ADC BX, DX   
    
    MOV [1008h], AX
    MOV [100Ah], BX
    JMP toend 
    
 greater:
 SUB AX, CX
 SBB BX, DX 
   
 MOV [1008h], AX
 MOV [100Ah], BX
 
toend: 
ret

