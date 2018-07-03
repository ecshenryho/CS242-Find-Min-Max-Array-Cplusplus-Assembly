.686
.model flat

.code

_min PROC ;named _test because C automatically prepends an underscode, it is needed to interoperate
	push ebp
	mov ebp,esp ;stack pointer to ebp
	
	mov ebx,[ebp+8] ; address of first array element
	mov ecx,[ebp+12]; give the size of the array, it a number
	mov ebp,0
	mov edx,0
	mov eax,[ebx+edx];set eax to first value in array

loopMe:
	cmp ebp,ecx
	je allDone; jump to alldone below

	cmp eax,[ebx+edx];compare eax with first value in array
	jl next;if less than move to next element
	mov eax,[ebx+edx];if not less than copy smaller one into eax
next:
	add edx,4
	add ebp,1
	jmp loopMe

allDone:
	
	pop ebp
	ret 
	
_min ENDP

END