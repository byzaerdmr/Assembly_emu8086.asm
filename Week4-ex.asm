MOV [1000h], 0C2h      

CMP [1000h], 0C2h
JZ true
JNZ false

true:
    MOV [1100h], 0FFh  
JMP toend 
false:
     MOV [1100h], 0AAh   
                      
 toend:
 ret

