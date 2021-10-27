/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/26 23:52:59 by porrapat          #+#    #+#             */
/*   Updated: 2021/10/26 23:53:55 by porrapat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

unsigned int	ft_str_length_fast(char *dest)
{
	unsigned int	count;

	count = 0;
	while (dest[count] != '\0')
		count++;
	return (count);
}

unsigned int	ft_strlcat(char *dest, char *src, unsigned int size)
{
	unsigned int	length_dest;
	unsigned int	length_src;
	unsigned int	index;

	length_dest = ft_str_length_fast(dest);
	length_src = ft_str_length_fast(src);
	if (length_dest >= size)
		return (length_src + size);
	if (size == 0)
		return (length_src);
	index = 0;
	while (src[index] != '\0' && index < (size - 1 - length_dest))
	{
		dest[length_dest + index] = src[index];
		index++;
	}
	return (length_dest + length_src);
}

int				main(void)
{
	char	*str_base;
	char	dest[100];
	char	dest2[100];
	char	*src;
	int		index;

	str_base = "Hello";
	src = " World";
	index = 0;
	while (index < 6)
	{
		dest[index] = str_base[index];
		dest2[index] = str_base[index];
		index++;
	}
	printf("c  : (%lu) $%s$\n", strlcat(dest, src, 0), dest);
	printf("ft : (%d) $%s$\n", ft_strlcat(dest2, src, 0), dest2);
}
