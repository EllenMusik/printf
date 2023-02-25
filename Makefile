# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esteiner <esteiner@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/26 23:23:15 by esteiner          #+#    #+#              #
#    Updated: 2023/01/27 12:17:46 by esteiner         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CFLAGS = -Wall -Werror -Wextra
SRCFILES = ft_printf.c ft_helpprintf.c

OBJFILES = $(SRCFILES:.c=.o)


all: $(NAME)

$(NAME): $(OBJFILES)
	ar -rcs $(NAME) $(OBJFILES)

$(OBJFILES):
	cc $(CFLAGS) -c $(SRCFILES)

clean:
	rm -f $(OBJFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re