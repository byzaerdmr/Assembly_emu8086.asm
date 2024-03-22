; 3b B2D0 5E00
; 1b 3B9A CA00


MOV word ptr [1000h], 5E00h
MOV word ptr [1002h], 0B2D0h

;1b 3B9A CA00
MOV word ptr [1004h], 0CA00h
MOV word ptr [1006h], 3B9Ah

MOV AX, [1000h]
ADD AX, [1004h]   ;AX + 1004
MOV BX, [1002h]
ADC BX, [1006h]  ;BX +1006 + CF      

MOV [1008h], AX
MOV [100Ah], BX   

ret                
