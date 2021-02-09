			global ft_write
			extern __errno_location

ft_write:		
			mov rax, 1
			syscall
			cmp rax, 0
			jl exit
			ret

exit:
			neg rax
			push rax
			pop rdx
			call __errno_location WRT ..plt
			mov [rax], rdx
			mov rax, -1
			ret
