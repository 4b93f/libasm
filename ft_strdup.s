				global ft_strdup
				extern ft_strlen
				extern ft_strcpy
				extern malloc
				extern __errno_location	

ft_strdup:
		xor rcx, rcx	

loop:
		call ft_strlen
		mov rcx, rax
 		push rdi
		mov rdi, rcx
		call malloc
		cmp rax, 0
		je exit
		mov rdi, rax
		pop rsi
		call ft_strcpy

exit:
		call __errno_location WRT ..plt
		mov rax, rdi
		ret
 
