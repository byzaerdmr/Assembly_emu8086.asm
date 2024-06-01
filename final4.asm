. Write a program that writes your name to the screen. You must use a DB variable. (e.g. name DB "John DOE" )  

LEA BX, myname

MOV AL, [BX]

MOV AH, 0Eh
INT 10h  

MOV CX, 12
label: 

    INC BX 
    MOV AL, [BX]
    INT 10h    
    
LOOP label

RET
myname DB 'Beyza Erdemir'


LEA BX, myname

MOV AL, [BX]

MOV AH, 0Eh
INT 10h  
label: 

    INC BX 
    MOV AL, [BX]
    INT 10h 
    CMP AL, 0   
    
JNE label

RET
myname DB 'Beyza Erdemir',0




Write a program that writes your name to the screen backwards. You must use a DB variable.  (e.g. name DB "John DOE" )  

LEA BX, myname

MOV AL, [BX]

MOV AH, 0Eh
MOV CX, 0

count:
    INC CX
    MOV AL, [BX]
    INC BX
    CMP AL, 0 
JNE count
DEC BX
    
label: 

    MOV AL, [BX]
    INT 10h 
    DEC BX  
    
LOOP label


RET

myname DB 'Beyza Erdemir',0


Write a program that writes a given lowercase string variable to the screen with uppercase characters. (e. g.  name DB "John DOE" --> JOHN DOE) 
LEA BX, myname
MOV AH, 0Eh

label: 

    MOV AL, [BX]  
    CMP AL, 0
    
    JE end 
    CMP AL, 97
    JB write   
    
    CMP AL, 122 
    JA write 
    
    SUB AL, 32
    
    write:
    INT 10h 
    INC BX  
    
JMP label 
end:
MOV AH, 4Ch
INT 21h

RET
myname DB 'Beyza Erdemir',0


Write a program that writes a given uppercase  string variable to the screen with lowercase characters.

LEA BX, myname
MOV AH, 0Eh

label: 
    MOV AL, [BX]  
    CMP AL, 0
    
    JE end 
    CMP AL, 65
    JB write   
    
    CMP AL, 90
    JA write 
    
    ADD AL, 32
    
    write:
    INT 10h 
    INC BX  
    
JMP label 
end:
MOV AH, 4Ch
INT 21h
RET
myname DB 'BeYZa ErdEmir',0
