/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/20 23:52:59 by porrapat          #+#    #+#             */
/*   Updated: 2021/10/20 23:53:55 by porrapat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <stdbool.h>
#include <stdio.h>

int		ft_str_is_uppercase(char *str);

int		main(void)
{
	char *str_valid;
	char *str_invalid;

	str_valid = "HELLO";
	str_invalid = "HELLo";
	printf("should be 1: %d\n", ft_str_is_uppercase(str_valid));
	printf("should be 0: %d\n", ft_str_is_uppercase(str_invalid));
}
