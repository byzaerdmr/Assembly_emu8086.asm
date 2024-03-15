MOV AX, 13d           ; REG, immediate 

MOV [1000h], AX       ; memory, REG  
                                    
MOV AX, BX            ; REG, REG     

MOV [1000h], 4h       ; memory, immediate  

MOV DX, [1000H]       ; REG, memory
                                       
                                       
MOV DS, [1000h]       ; SREG, memory  

MOV [1000h], DS       ; memory, SREG 

MOV AX, DS            ; REG, SREG  

MOV DS, AX            ; SREG, REG






MOV [1000h], 1   ; memory, immediate address [1000h] consist of 1;
 ADD AX, [1000h]  ; REG, memory  AX=AX+1
 ADD AX, [1000h]
 ADD AX, [1000h]   
 
 ADD AX, AX       ; REG, REG  
    
 ADD [1000h], 3h  ; memory immediate
 
 ADD AX, 4h       ; REG,immediate
 
 ret
