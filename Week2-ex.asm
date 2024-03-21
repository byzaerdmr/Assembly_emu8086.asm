;ex1
MOV AX, 100h 
MOV DS, AX
                 
MOV [1000h], 34h
MOV [2000h], 34h     

RET


;ex2

MOV CL, 11h
MOV DL, 22h

MOV AL, CL
MOV CL, DL
MOV DL, AL

RET


;ex3
                 
MOV AX, 100h
MOV DS, AX
                 
MOV [500h], 98h
MOV [501h], 52h 

ADD DL, [500h] 
ADD DL, [501h] 

MOV [502h], DL
RET
