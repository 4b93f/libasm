				global ft_strdup
				extern ft_strlen
				extern ft_strcpy
				extern malloc

ft_strdup:
		xor rcx, rcx	

loop:
		call ft_strlen
		mov rcx, rax
 		push rdi
		mov rdi, rcx
		call malloc
		cmp rax, 0
		je error
		mov rdi, rax
		pop rsi
		call ft_strcpy

exit:
		mov rax, rdi
		ret

error:
		mov rax, 0
		ret
 
