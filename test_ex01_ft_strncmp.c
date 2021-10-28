/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/20 23:52:59 by porrapat          #+#    #+#             */
/*   Updated: 2021/10/20 23:53:55 by porrapat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <unistd.h>
#include <stdio.h>
#include <string.h>

#include <stdio.h>
#include <string.h>

int	ft_strncmp(char *s1, char *s2, unsigned int n);

int	main(void)
{
	char *str1;
	char *str2;

	str1 = "Helo";
	str2 = "Helloo";
	printf("c  : %d\n", strncmp(str1, str2, 3));
	printf("ft : %d\n", ft_strncmp(str1, str2, 3));


    char *str3;
	char *str4;

	str3 = "";
	str4 = "dsa";

	printf("c  : %d\n", strncmp(str3, str4, 3));
	printf("ft : %d\n", ft_strncmp(str3, str4, 3));

    char *str5;
	char *str6;

	str5 = "Helo";
	str6 = "Helloo";
	printf("c  : %d\n", strncmp(str5, str6, 6));
	printf("ft : %d\n", ft_strncmp(str5, str6, 6));
}
