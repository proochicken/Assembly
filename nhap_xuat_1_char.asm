.model small
.stack 100h
.data                     
    CRLF DB 13, 10, '$'
    tb1 DB 'Nhap $'
    tb2 DB 'Char vua nhap: $' 
    Char DB ?
.code
Main Proc
    MOV AX, @data
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, tb1
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV Char, AL
    
    MOV AH, 9
    LEA DX, CRLF
    INT 21H
    LEA DX, tb2
    INT 21H
    
    MOV AH, 2
    MOV DL, Char
    INT 21H   
    
    MOV AH, 4CH
    INT 21H
Main endp
END Main