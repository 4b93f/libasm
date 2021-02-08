				global _ft_read
				extern ___error
				extern __errno_location

_ft_read:		mov rax, 0x2000003
				syscall
				jc _error
				ret

_error:
				push rax
				pop rdx
				call ___errno_location
				mov rdx, [rax]
				mov rax, -1
				ret