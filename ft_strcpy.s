				global _ft_strcpy

				section .text
_ft_strcpy:
			jmp _loop
			
_loop:
				cmp rsi, 0
				je _exit
				cmp rdi, 0
				je _exit
				mov cl, BYTE [rsi]
				cmp cl, 0

				je _exit
				mov BYTE [rdi], cl
				inc rdi
				inc rsi
				jmp _loop
_exit:
	mov rax, rdi
	ret
