.DEFAULT_GOAL := all
norminette:
	-norminette ./ex00/ft_strcpy.c
	-norminette ./ex01/ft_strncpy.c
	-norminette ./ex02/ft_str_is_alpha.c
	-norminette ./ex03/ft_str_is_numeric.c
	-norminette ./ex04/ft_str_is_lowercase.c
	-norminette ./ex05/ft_str_is_uppercase.c
	-norminette ./ex06/ft_str_is_printable.c
	-norminette ./ex07/ft_strupcase.c
	-norminette ./ex08/ft_strlowcase.c
	-norminette ./ex09/ft_strcapitalize.c
	-norminette ./ex10/ft_strlcpy.c
	-norminette ./ex11/ft_putstr_non_printable.c
	-norminette ./ex12/ft_print_memory.c

compile: norminette
	-gcc ./ex00/ft_strcpy.c test_ex00_ft_strcpy.c -Wall -Werror -Wextra -o test_ex00_ft_strcpy
	-gcc ./ex01/ft_strncpy.c test_ex01_ft_strncpy.c -Wall -Werror -Wextra -o test_ex01_ft_strncpy
	-gcc ./ex02/ft_str_is_alpha.c test_ex02_ft_str_is_alpha.c -Wall -Werror -Wextra -o test_ex02_ft_str_is_alpha
	-gcc ./ex03/ft_str_is_numeric.c test_ex03_ft_str_is_numeric.c -Wall -Werror -Wextra -o test_ex03_ft_str_is_numeric
	-gcc ./ex04/ft_str_is_lowercase.c test_ex04_ft_str_is_lowercase.c -Wall -Werror -Wextra -o test_ex04_ft_str_is_lowercase
	-gcc ./ex05/ft_str_is_uppercase.c test_ex05_ft_str_is_uppercase.c -Wall -Werror -Wextra -o test_ex05_ft_str_is_uppercase
	-gcc ./ex06/ft_str_is_printable.c test_ex06_ft_str_is_printable.c -Wall -Werror -Wextra -o test_ex06_ft_str_is_printable
	-gcc ./ex07/ft_strupcase.c test_ex07_ft_strupcase.c -Wall -Werror -Wextra -o test_ex07_ft_strupcase
	-gcc ./ex08/ft_strlowcase.c test_ex08_ft_strlowcase.c -Wall -Werror -Wextra -o test_ex08_ft_strlowcase
	-gcc ./ex09/ft_strcapitalize.c test_ex09_ft_strcapitalize.c -Wall -Werror -Wextra -o test_ex09_ft_strcapitalize
	-gcc ./ex10/ft_strlcpy.c test_ex10_ft_strlcpy.c -Wall -Werror -Wextra -o test_ex10_ft_strlcpy
	-gcc ./ex11/ft_putstr_non_printable.c test_ex11_ft_putstr_non_printable.c -Wall -Werror -Wextra -o test_ex11_ft_putstr_non_printable
	-gcc ./ex12/ft_print_memory.c test_ex12_ft_print_memory.c -o test_ex12_ft_print_memory -w

build-sample: compile
	-./test_ex00_ft_strcpy > result_sample_ex00_ft_strcpy.txt
	-./test_ex01_ft_strncpy > result_sample_ex01_ft_strncpy.txt
	-./test_ex02_ft_str_is_alpha > result_sample_ex02_ft_str_is_alpha.txt
	-./test_ex03_ft_str_is_numeric > result_sample_ex03_ft_str_is_numeric.txt
	-./test_ex04_ft_str_is_lowercase > result_sample_ex04_ft_str_is_lowercase.txt
	-./test_ex05_ft_str_is_uppercase > result_sample_ex05_ft_str_is_uppercase.txt
	-./test_ex06_ft_str_is_printable > result_sample_ex06_ft_str_is_printable.txt
	-./test_ex07_ft_strupcase > result_sample_ex07_ft_strupcase.txt
	-./test_ex08_ft_strlowcase > result_sample_ex08_ft_strlowcase.txt
	-./test_ex09_ft_strcapitalize > result_sample_ex09_ft_strcapitalize.txt
	-./test_ex10_ft_strlcpy > result_sample_ex10_ft_strlcpy.txt
	-./test_ex11_ft_putstr_non_printable > result_sample_ex11_ft_putstr_non_printable.txt
	-./test_ex12_ft_print_memory > result_sample_ex12_ft_print_memory.txt

run:	compile
	-./test_ex00_ft_strcpy > result_current_ex00_ft_strcpy.txt
	-./test_ex01_ft_strncpy > result_current_ex01_ft_strncpy.txt
	-./test_ex02_ft_str_is_alpha > result_current_ex02_ft_str_is_alpha.txt
	-./test_ex03_ft_str_is_numeric > result_current_ex03_ft_str_is_numeric.txt
	-./test_ex04_ft_str_is_lowercase > result_current_ex04_ft_str_is_lowercase.txt
	-./test_ex05_ft_str_is_uppercase > result_current_ex05_ft_str_is_uppercase.txt
	-./test_ex06_ft_str_is_printable > result_current_ex06_ft_str_is_printable.txt
	-./test_ex07_ft_strupcase > result_current_ex07_ft_strupcase.txt
	-./test_ex08_ft_strlowcase > result_current_ex08_ft_strlowcase.txt
	-./test_ex09_ft_strcapitalize > result_current_ex09_ft_strcapitalize.txt
	-./test_ex10_ft_strlcpy > result_current_ex10_ft_strlcpy.txt
	-./test_ex11_ft_putstr_non_printable > result_current_ex11_ft_putstr_non_printable.txt
	-./test_ex12_ft_print_memory > result_current_ex12_ft_print_memory.txt

all:	norminette	compile run

test:	all
	-diff result_current_ex00_ft_strcpy.txt result_sample_ex00_ft_strcpy.txt
	-diff result_current_ex01_ft_strncpy.txt result_sample_ex01_ft_strncpy.txt
	-diff result_current_ex02_ft_str_is_alpha.txt result_sample_ex02_ft_str_is_alpha.txt
	-diff result_current_ex03_ft_str_is_numeric.txt result_sample_ex03_ft_str_is_numeric.txt
	-diff result_current_ex04_ft_str_is_lowercase.txt result_sample_ex04_ft_str_is_lowercase.txt
	-diff result_current_ex05_ft_str_is_uppercase.txt result_sample_ex05_ft_str_is_uppercase.txt
	-diff result_current_ex06_ft_str_is_printable.txt result_sample_ex06_ft_str_is_printable.txt
	-diff result_current_ex07_ft_strupcase.txt result_sample_ex07_ft_strupcase.txt
	-diff result_current_ex08_ft_strlowcase.txt result_sample_ex08_ft_strlowcase.txt
	-diff result_current_ex09_ft_strcapitalize.txt result_sample_ex09_ft_strcapitalize.txt
	-diff result_current_ex10_ft_strlcpy.txt result_sample_ex10_ft_strlcpy.txt
	-diff result_current_ex11_ft_putstr_non_printable.txt result_sample_ex11_ft_putstr_non_printable.txt
# -diff result_current_ex12_ft_print_memory.txt result_sample_ex12_ft_print_memory.txt

clean:
	-rm -rf */*.out
	-rm -rf result_current_ex*.txt
	-rm test_ex00_ft_strcpy
	-rm test_ex01_ft_strncpy
	-rm test_ex02_ft_str_is_alpha
	-rm test_ex03_ft_str_is_numeric
	-rm test_ex04_ft_str_is_lowercase
	-rm test_ex05_ft_str_is_uppercase
	-rm test_ex06_ft_str_is_printable
	-rm test_ex07_ft_strupcase
	-rm test_ex08_ft_strlowcase
	-rm test_ex09_ft_strcapitalize
	-rm test_ex10_ft_strlcpy
	-rm test_ex11_ft_putstr_non_printable
	-rm test_ex12_ft_print_memory

clean-sample:
	-rm -rf result_sample_ex*.txt

clean-before-push-with-sample: clean
	-git add .
	-git commit -m "Build Sample Complete"
	-git push origin master
