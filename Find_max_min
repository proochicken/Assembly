.model small
.stack 100h
.data
     str db 100 dup('$')
     crlf db 13, 10, '$'
     max db ?
     min db ?

.code
main proc
     mov ax, @data
     mov ds, ax
     
     lea si, str
     mov cx, 0
     
     lap:    
         mov ah, 1
         int 21h    
         cmp al, 13
         je break
         mov [si], al
         
         inc cx
         inc si
         jmp lap
         
     break: 
        mov ah, 9
        lea dx, crlf
        int 21h  
        
        lea si, str  
        mov al, [si]
        mov max, al
        mov min, al
        dec cx
                       
     find:
        inc si
        mov bl, [si]
        cmp bl, max
        jle check_min
        mov max, bl
        
        check_min:
        cmp bl, min
        jge next_loop
        mov min, bl  
        
        next_loop:
        loop find 
        
        mov al, max
 
        mov dl, al
        mov ah, 2   
        int 21h   
                 
        mov ah, 9
        lea dx, crlf
        int 21h         
        
        mov al, min

        mov dl, al
        mov ah, 2   
        int 21h 
        
        
main endp

end main

        
