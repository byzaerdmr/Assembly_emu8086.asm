MOV AX, 13d           ; REG, immediate 

MOV [1000h], AX       ; memory, REG  
                                    
MOV AX, BX            ; REG, REG     

MOV [1000h], 4h       ; memory, immediate  

MOV DX, [1000H]       ; REG, memory
                                       
                                       
MOV DS, [1000h]       ; SREG, memory  

MOV [1000h], DS       ; memory, SREG 

MOV AX, DS            ; REG, SREG  

MOV DS, AX            ; SREG, REG

