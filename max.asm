.686
.model flat

.code

_max PROC ;named _test because C automatically prepends an underscode, it is needed to interoperate
	push ebp
	mov ebp,esp ;stack pointer to ebp
	
	mov ebx,[ebp+8] ; address of first array element
	mov ecx,[ebp+12]; give the size of the array, it a number
	mov ebp,0
	mov edx,0
	mov eax,0

loopMe:
	cmp ebp,ecx
	je allDone; jump to alldone below

	cmp eax,[ebx+edx];compare eax to first element in array
	jg next;if eax greater then move to next element to compare
	mov eax,[ebx+edx];if not greater, copy a larger value into eax
next:
	add edx,4
	add ebp,1
	jmp loopMe

allDone:
	
	pop ebp
	ret 
	
_max ENDP

END