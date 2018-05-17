
ExitProcess proto
.data
sum qword 0
source BYTE "This is the source string",0
target BYTE SIZEOF source DUP('#')
.code
main proc
   mov rdi,0			;esi is the index register
   mov rcx,SIZEOF source	;loop counter
   mov rbx,0
L1:
	mov al,source[rdi]
	inc rbx
	mov  target[rbx],al
	inc rdi


loop L1


   call ExitProcess
main endp
end
