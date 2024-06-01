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
