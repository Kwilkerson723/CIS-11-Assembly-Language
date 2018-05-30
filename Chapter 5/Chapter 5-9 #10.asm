ExitProcess proto
WriteInt64 proto
Crlf proto
.data
sum qword 0
n qword 47

.code
main proc
	mov rdi,1
	mov rcx,47
	mov rbx,0
	mov rax,0
L1:
	mov rdx,rbx
	add rbx,rdi
	mov rdi,rdx
	mov rax,rbx
	call WriteInt64
 call Crlf
loop L1


   call ExitProcess
main endp
end
