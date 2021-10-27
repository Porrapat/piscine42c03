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
	char			*dst;
	char			*src_start;
	unsigned int	dst_length;
	unsigned int	remaing;

	dst = dest;
	src_start = src;
	remaing = size;
	while (remaing-- != 0 && *dst != '\0')
		dst++;
	dst_length = dst - dest;
	remaing = size - dst_length;
	if (remaing == 0)
		return (dst_length + ft_str_length_fast(src));
	while (*src != '\0')
	{
		if (remaing > 1)
		{
			*dst++ = *src;
			remaing--;
		}
		src++;
	}
	*dst = '\0';
	return (dst_length + (src - src_start));
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
	printf("c  : (%lu) $%s$\n", strlcat(dest, src, 8), dest);
	printf("ft : (%d) $%s$\n", ft_strlcat(dest2, src, 8), dest2);
}
