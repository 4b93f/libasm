# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chly-huc <chly-huc@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/11 16:28:13 by chly-huc          #+#    #+#              #
#    Updated: 2021/02/09 19:42:06 by chly-huc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS   = 	srcs/ft_strdup.s srcs/ft_strlen.s srcs/ft_strcpy.s srcs/ft_write.s srcs/ft_read.s srcs/ft_strcmp.s \

			
HEADERS =	libasm.h
NAME = 		libasm.a
OBJS = 		${SRCS:.s=.o}
CC = cc -c


%.o : %.s
		@nasm -f elf64 $< -o $@

${NAME}: 	${OBJS}
			@ar rcs ${NAME} ${OBJS}

all:		${NAME}

clean:	
			@rm -f ${OBJS} ${OBJ}

fclean:		clean
			@rm -f ${NAME} ${OBJ}

clarify:	clean

re:			fclean all

.PHONY : fclean all re clean
