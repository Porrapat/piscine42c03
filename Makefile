.DEFAULT_GOAL := all
norminette:
	-norminette ./ex00/ft_strcmp.c
	-norminette ./ex01/ft_strncmp.c
	-norminette ./ex02/ft_strcat.c
	-norminette ./ex03/ft_strncat.c
	-norminette ./ex04/ft_strstr.c
	-norminette ./ex05/ft_strlcat.c

compile: norminette
	-gcc ./ex00/ft_strcmp.c test_ex00_ft_strcmp.c -Wall -Werror -Wextra -o test_ex00_ft_strcmp
	-gcc ./ex01/ft_strncmp.c test_ex01_ft_strncmp.c -Wall -Werror -Wextra -o test_ex01_ft_strncmp
	-gcc ./ex02/ft_strcat.c test_ex02_ft_strcat.c -Wall -Werror -Wextra -o test_ex02_ft_strcat
	-gcc ./ex03/ft_strncat.c test_ex03_ft_strncat.c -Wall -Werror -Wextra -o test_ex03_ft_strncat
	-gcc ./ex04/ft_strstr.c test_ex04_ft_strstr.c -Wall -Werror -Wextra -o test_ex04_ft_strstr
	-gcc ./ex05/ft_strlcat.c test_ex05_ft_strlcat.c -Wall -Werror -Wextra -o test_ex05_ft_strlcat

build-sample: compile
	-./test_ex00_ft_strcmp > result_sample_ex00_ft_strcmp.txt
	-./test_ex01_ft_strncmp > result_sample_ex01_ft_strncmp.txt
	-./test_ex02_ft_strcat > result_sample_ex02_ft_strcat.txt
	-./test_ex03_ft_strncat > result_sample_ex03_ft_strncat.txt
	-./test_ex04_ft_strstr > result_sample_ex04_ft_strstr.txt
	-./test_ex05_ft_strlcat > result_sample_ex05_ft_strlcat.txt

run:	compile
	-./test_ex00_ft_strcmp > result_current_ex00_ft_strcmp.txt
	-./test_ex01_ft_strncmp > result_current_ex01_ft_strncmp.txt
	-./test_ex02_ft_strcat > result_current_ex02_ft_strcat.txt
	-./test_ex03_ft_strncat > result_current_ex03_ft_strncat.txt
	-./test_ex04_ft_strstr > result_current_ex04_ft_strstr.txt
	-./test_ex05_ft_strlcat > result_current_ex05_ft_strlcat.txt

all:	norminette	compile run

test:	all
	-diff result_current_ex00_ft_strcmp.txt result_sample_ex00_ft_strcmp.txt
	-diff result_current_ex01_ft_strncmp.txt result_sample_ex01_ft_strncmp.txt
	-diff result_current_ex02_ft_strcat.txt result_sample_ex02_ft_strcat.txt
	-diff result_current_ex03_ft_strncat.txt result_sample_ex03_ft_strncat.txt
	-diff result_current_ex04_ft_strstr.txt result_sample_ex04_ft_strstr.txt
	-diff result_current_ex05_ft_strlcat.txt result_sample_ex05_ft_strlcat.txt

clean:
	-rm -rf */*.out
	-rm -rf result_current_ex*.txt
	-rm test_ex00_ft_strcmp
	-rm test_ex01_ft_strncmp
	-rm test_ex02_ft_strcat
	-rm test_ex03_ft_strncat
	-rm test_ex04_ft_strstr
	-rm test_ex05_ft_strlcat

clean-sample:
	-rm -rf result_sample_ex*.txt

clean-before-push-with-sample: clean
	-git add .
	-git commit -m "Build Sample Complete"
	-git push origin master
