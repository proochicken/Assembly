;Viết chương trình hợp ngữ Assembly cho phép nhập 1 chuỗi ký tự, in
;ra màn hình chuỗi ký tự đó theo dạng viết hoa và viết thường.


.model small
.stack 100h
.data
     str db 100 dup('$')
     crlf db 13, 10, '$'
     
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
        inc si
        inc cx
        jmp lap
        
     break:
        mov ah, 9
        lea dx, crlf
        int 21h
         
        push cx
      
     lea si, str   
     lower:        
        cmp [si], 'A'
        jl continue
        cmp [si], 'Z'
        jg continue
        add [si], 32
        
        continue:
            mov ah, 2 
            mov dl, [si]
            int 21h
            inc si
            
            loop lower  
      
      mov ah, 9
      lea dx, crlf
      int 21h
       
      pop cx
      lea si, str      
      upper:
        cmp [si], 'a'
        jl nhay
        cmp [si], 'z'
        jg nhay
        sub [si], 32
        
        nhay:
            mov ah, 2
            mov dl, [si] 
            int 21h
            inc si
            
            loop upper
      
      mov ah, 4ch
      int 21h
main endp
end main
