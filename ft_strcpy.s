				global ft_strcpy

ft_strcpy:
			mov		rax, 0
			mov		rcx, 0
			jmp loop
			
loop:
			cmp		BYTE[rsi + rcx], 0
			je		exit
			mov		dl, BYTE[rsi + rcx]
			mov		BYTE[rdi + rcx], dl
			inc rcx
			jmp		loop
exit:
	mov		BYTE[rdi + rcx], 0
	mov		rax, rdi
			ret
