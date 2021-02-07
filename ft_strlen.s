section .text
	global _ft_strlen

_ft_strlen:
			xor rax, rax
			cmp rdi, 0
			je _exit
			jmp _loop

_loop:
			cmp BYTE [rdi +rax], 0
			je _exit
			inc rax
			jmp _loop
			ret 

_exit:
		ret
		