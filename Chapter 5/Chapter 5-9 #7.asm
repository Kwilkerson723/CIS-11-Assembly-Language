ExitProcess proto
Random64 proto
WriteInt64 PROTO	

.data
sum qword 0
n qword 47
.code
main proc

call Random64
call WriteInt64


   call ExitProcess
main endp
end