/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: chly-huc <chly-huc@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/11 16:01:08 by chly-huc          #+#    #+#             */
/*   Updated: 2021/02/08 16:00:33 by chly-huc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

int ft_write(int c , char *str, int e);
int ft_read(unsigned int fd, const char *str, size_t e);
int ft_strlen(const char *str);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strcpy(const char *s1, const char *s2);
char *ft_strdup(const char *s1);

int main()
{
	char *s1 = "YOLo";
	char *s2;
	int fd;
	char buf[10];
	//fd = open("OK", O_RDONLY);
	//printf("%d\n", ft_read(fd, buf, 5));
	//printf("%s\n", buf);
	//printf("%d\n", read(fd, buf, 5));
	//printf("%s\n", buf);
	//printf("%s\n", strcpy(s2, s1));
	//printf("%s\n", s2);
	//printf("%s\n", ft_strcpy(s2, s1));
	//printf("%s\n",s2);
	//printf("%d\n", ft_strlen(NULL));
	//printf("%d\n", strlen(NULL));
	//ft_write(0, "OUI", 4);
	//write(0, "OUI", 4);
	printf("%d\n", ft_strcmp("zui", "aUI"));
	//s2 = ft_strdup(NULL);
	//s2 = strdup(NULL);
	//printf("%s\n", s2);
}
