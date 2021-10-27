/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/20 23:52:59 by porrapat          #+#    #+#             */
/*   Updated: 2021/10/20 23:53:55 by porrapat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <stdio.h>
#include <unistd.h>
#include <string.h>

char	*ft_strcpy(char *dest, char *src);

int	main(void)
{
	char	*src;
	char	dest[22];

	src = "Hello World";
	printf("base   : %s\n", src);
	strcpy(dest, src);
	printf("dest    : %s\n", dest);
	ft_strcpy(dest, src);
	printf("dest ft_cpy : %s\n", dest);
	return (0);
}
