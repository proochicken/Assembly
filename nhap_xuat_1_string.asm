.model small
.stack 100H
.data
    CRLF DB 13, 10, '$'
    tbao1 DB 'string: $'
    tbao2 DB 'string vua nhap: $'
    string DB 100 dup('$')
.code
Main Proc
    MOV AX, @data
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, tbao1
    INT 21H
    
    MOV AH, 10
    LEA DX, string
    INT 21H
    
    MOV AH, 9
    LEA DX, CRLF
    INT 21H
    LEA DX, tbao2
    INT 21H
    
    LEA DX, string + 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
Main endp
END Main