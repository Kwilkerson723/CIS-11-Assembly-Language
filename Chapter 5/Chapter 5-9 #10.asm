ExitProcess proto
.data
sum qword 0
n qword 47
.code
main proc
 mov rdi,0
 mov rcx,47
 mov rbx,0
 mov rax,1


 L1:

 mov rdx,rbx
 add rbx,rax
 mov rax,rdx
 mov sum[rdi],rbx

 loop L1



   call ExitProcess
main endp
end