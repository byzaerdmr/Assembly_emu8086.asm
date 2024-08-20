.MODEL SMALL
.STACK 100H
.DATA
PROMPT  DB 'Current System Time is : ', 0Dh, 0Ah, '$'  ; Message to display before the time
TIME    DB '00:00:00', 0Dh, 0Ah, '$'       ; Area to store the time, initially set to 00:00:00 and terminated with a new line character '$'
.CODE
   
     MOV AX, @DATA           ; Move the address of data segment into AX
     MOV DS, AX              ; Move the value of AX into the data segment register
     main_loop:
     
     LEA BX, TIME            ; Load the effective address of TIME into BX
     CALL label              ; Call a subroutine to get hour, minute, and second values
     LEA DX, PROMPT          ; Load the effective address of PROMPT into DX
     MOV AH, 09H             ; Set AH to 09H for displaying a string
     INT 21H                 ; Invoke interrupt 21H to display the PROMPT string
     LEA DX, TIME            ; Load the effective address of TIME into DX
     MOV AH, 09H             ; Set AH to 09H for displaying a string
     INT 21H                 ; Invoke interrupt 21H to display the TIME string
     mov ah, 86h             ; Invoke time delay service
     mov cx, 00Ah            ; Set the millisecond count for the delay (30 * 16 = 480 = 2 seconds)
     int 15h                          ; Invoke interrupt 15H for the delay

     jmp main_loop           ; Jump back to the main loop
                      
     MOV AH, 4CH             ; Set AH to 4CH for the program termination interrupt
     INT 21H                 ; Invoke interrupt 21H to terminate the program
  
label:   
    PUSH AX                  ; Save AX register
    PUSH CX                  ; Save CX register
                         
    MOV AH, 2CH              ; Set AH to 2CH for getting the system time
    INT 21H                  ; Invoke interrupt 21H to get the hour, minute, and second values of the system time
                          
    MOV AL, CH               ; Move the hour value into AL
    CALL CONVERT             ; Call a subroutine to convert the hour value
    MOV [BX], AX             ; Store the converted hour value at the address pointed by BX
                     
    MOV AL, CL               ; Move the minute value into AL
    CALL CONVERT             ; Call a subroutine to convert the minute value
    MOV [BX + 3], AX         ; Store the converted minute value at the address pointed by BX + 3
                                                             
    MOV AL, DH               ; Move the second value into AL
    CALL CONVERT             ; Call a subroutine to convert the second value
    MOV [BX + 6], AX         ; Store the converted second value at the address pointed by BX + 6
                                                                        
    POP CX                   ; Restore CX register
    POP AX                   ; Restore AX register
    RET                      ; Return from the subroutine
     
loop label                   ; Loop for conversion process
   CONVERT PROC              ; Subroutine to perform the conversion process
    PUSH DX                  ; Save DX register
    MOV AH, 0                ; Set AH to 0
    MOV DL, 10               ; Set DL to 10 (used for division)
    DIV DL                   ; Divide AL by DL (10), quotient is in AL, remainder is in AH
    OR AX, 3030H             ; Perform OR operation with 3030H to obtain ASCII codes (basic value for ASCII codes of numbers)
    POP DX                   ; Restore DX register
    RET                      ; Return from the subroutine
