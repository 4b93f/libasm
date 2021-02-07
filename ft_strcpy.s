				global _ft_strcpy

				section .text
_ft_strcpy:
			mov		rax, 0
			mov		rcx, 0
			jmp _loop
			
_loop:
			cmp		BYTE[rsi + rcx], 0
			je		_exit
			mov		dl, BYTE[rsi + rcx]
			mov		BYTE[rdi + rcx], dl
			inc rcx
			jmp		_loop
_exit:
	mov		BYTE[rdi + rcx], 0
	mov		rax, rdi
			ret
