ExitProcess proto
WriteString PROTO
Crlf PROTO
ReadInt64 PROTO

.data
CaseTable BYTE '1'				;Case table kind of like a switch and function combined
		DWORD x_AND_y			;define these 
EntrySize = ($ - CaseTable)		;are these defined as strings? probably
		BYTE '2'
		DWORD x_OR_y
		BYTE '3'
		DWORD NOT_X
		BYTE '4' 
		DWORD x_XOR_Y
		BYTE '5' 
		DWORD Exit
numberOfEntries = ($-CaseTable)/EntrySize


choiceOne BYTE "1) x AND y",0
choiceTwo BYTE "2) x OR y",0
choiceThree BYTE "3) NOT x",0
choiceFour BYTE "4) x XOR y",0
choiceFive BYTE "5) Exit program"
prompt BYTE "Type the number of the operation",0
.code

main proc

	mov rdx,OFFSET choiceOne 
	call WriteString
	call Crlf

	mov rdx,OFFSET choiceTwo 
	call WriteString
	call Crlf

	mov rdx,OFFSET choiceThree 
	call WriteString
	call Crlf

	mov rdx,OFFSET choiceFour 
	call WriteString
	call Crlf

	mov rdx,OFFSET choiceFive 
	call WriteString
	call Crlf

	mov rdx,OFFSET prompt 
	call WriteString
	call ReadInt64
	mov rbx,OFFSET CaseTable
	mov ecx,0

	top:
	call Crlf
		call ReadInt64
		mov rbx, OFFSET CaseTable
		mov rcx,numberOfEntries

	L1:
		cmp al,[rbx]
		call NEAR PTR [rbx+1]	;call doesnt seem to work
		call WriteString
		call Crlf
		jmp L2
		

	L2:


	
   call ExitProcess
main endp
;not working 

x_AND_y proc USES rdx		;1
.data
saysAnd BYTE "x AND y operation: ",0

.code
	mov rdx,OFFSET saysAnd
	call WriteString
	call Crlf

	ret
x_AND_y endp

x_OR_y proc USES rdx		;2
.data 
saysOr BYTE "x OR y operation: ",0

.code
	mov rdx,OFFSET saysOr
	call WriteString
	call Crlf

	ret 
x_OR_y endp 

NOT_x proc USES rdx			;3
.data 
saysNot BYTE "NOT x operation: ",0

.code
	mov rdx,OFFSET saysNot
	call WriteString
	call Crlf

	ret 
NOT_x endp 


x_XOR_y proc USES rdx		;4
.data 
saysXor BYTE "x XOR y calculation: ",0

.code
	mov rdx,OFFSET saysXor
	call WriteString
	call Crlf

	ret 
x_XOR_y endp 

Exit proc USES rdx			;5
.data 
saysExit BYTE "x OR y calculation: ",0

.code
	mov rdx,OFFSET saysExit
	call WriteString
	call Crlf

	ret 
Exit endp 






end