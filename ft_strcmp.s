			global ft_strcmp

ft_strcmp:	
			mov rax, 0
			jmp loop

loop:
			mov al, BYTE [rdi] 
			mov bl, BYTE [rsi]	
			cmp al, 0		
			je exit		
			cmp bl, 0			
			je exit
			cmp al, bl			
			jne exit			
			inc rdi				
			inc rsi				
			jmp ft_strcmp	
neg:
			mov rax, 1
			ret

pos:
			mov rax, -1
			ret

exit:
			movzx rax, al
			movzx rbx, bl
			sub rax, rbx
			cmp rax, -1
			jnge pos
			jmp neg
			ret
