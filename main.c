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
	char *buf;

	fd = open("ok", O_RDONLY);
	printf("%d\n", ft_read(fd, buf, 5));
	printf("%s\n", buf);
	//printf("%d\n", ft_strcmp("oui", "OUI"));
	//printf("{%s}\n", ft_strdup(s1));
}
