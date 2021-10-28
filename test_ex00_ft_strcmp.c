/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/26 23:52:59 by porrapat          #+#    #+#             */
/*   Updated: 2021/10/26 23:53:55 by porrapat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int	ft_strcmp(char *s1, char *s2);

int	main(void)
{
	char *str1;
	char *str2;

	str1 = "Hello";
	str2 = "Helloo";
	printf("c  : %d\n", strcmp(str1, str2));
	printf("ft : %d\n", ft_strcmp(str1, str2));

	char *str3;
	char *str4;

	str3 = "Helloo";
	str4 = "Helloo";
	printf("c  : %d\n", strcmp(str3, str4));
	printf("ft : %d\n", ft_strcmp(str3, str4));

	char *str5;
	char *str6;

	str5 = "Hellooo";
	str6 = "Helloo";
	printf("c  : %d\n", strcmp(str5, str6));
	printf("ft : %d\n", ft_strcmp(str5, str6));
}
