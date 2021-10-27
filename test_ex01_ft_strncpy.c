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

char	*ft_strncpy(char *dest, char *src, unsigned int n);

int main()
{
    /* Create an example variable capable of holding 50 characters */
    char example[50];

    /* Copy 16 characters into the example variable
     from the string "TechOnTheNet.com knows strncpy" */
    ft_strncpy (example, "TechOnTheNet.com knows ft_strncpy!", 16);

    /* Add the required NULL to terminate the copied string */
    /* strncpy does not do this for you! */
    example[16] = '\0';

    /* Display the contents of the example variable to the screen */
    printf("%s\n", example);

    return 0;
}
