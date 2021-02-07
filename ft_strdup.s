				global _ft_strdup
				
				extern _ft_strlen
				
				extern _ft_strcpy
				
				extern _malloc
				
				section .text

_ft_strdup:
		xor rcx, rcx	


_loop:
		cmp rdi, 0
		je _exit

		call _ft_strlen
		mov rcx, rax
 
 		push rdi
		mov rdi, rcx
		call _malloc
		mov rdi, rax
		pop rsi
		call _ft_strcpy

_exit:
		ret
