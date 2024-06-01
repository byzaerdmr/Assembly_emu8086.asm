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
