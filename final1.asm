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

