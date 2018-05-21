ExitProcess proto
WriteString PROTO
Crlf PROTO
ReadInt64 PROTO

.data
array1 BYTE 1,2,3,4,5,6

.code
main proc
	mov rdi,0 
	mov rcx,3
	mov rbx,0

L1:
	mov al, array1[rdi]
	inc rdi
	mov bl, array1[rdi]
	mov array1[rdi],al
	dec rdi
	mov array1[rdi],bl
	inc rdi
	inc rdi
loop L1

   call ExitProcess
main endp
end
