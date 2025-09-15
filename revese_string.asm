.model small
.stack 100H
.data
    CRLF db 13, 10, '$'
    tb1 db 'Nhap chuoi: $'
    tb2 db 'Nguoc cua chuoi: $'
    string db 255 dup ('$')
.code
Main Proc
    MOV AX, @data
    MOV DS, AX
    
    MOV AH, 09H
    LEA DX, tb1
    INT 21H
    
    MOV AH, 0AH
    LEA DX, string
    INT 21H
    
    MOV AH, 09H
    LEA DX, CRLF
    INT 21H
    LEA DX, tb2
    INT 21H
    
    XOR CX, CX
    XOR BX, BX
    XOR DX, DX
    MOV CL, [string + 1]
    LEA SI, string + 2
    LAP:
        PUSH [SI]
        INC SI
        LOOP LAP
    MOV CL, [string + 1]
    LAP2:
        POP DX
        MOV AH, 2
        INT 21H
        LOOP LAP2
        
    MOV AH, 4CH
    INT 21H
Main endp
END