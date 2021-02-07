# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chly-huc <chly-huc@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/11 16:28:13 by chly-huc          #+#    #+#              #
#    Updated: 2021/02/07 15:59:17 by chly-huc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS   = 	ft_strdup.s ft_strlen.s ft_strcpy.s ft_write.s ft_read.s ft_strcmp.s \

			
HEADERS =	libasm.h
NAME = 		libasm.a
OBJS = 		${SRCS:.s=.o}
CC = cc -c


%.o : %.s
		@nasm -f macho64 $< -o $@

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
