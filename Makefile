# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: albrusso <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/07 14:16:03 by albrusso          #+#    #+#              #
#    Updated: 2024/10/01 12:50:51 by albrusso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
#                                  CONFIG                                      #
################################################################################

NAME	=	libft.a
CC		=	gcc
CFLAGS	=	-Wall -Wall -Wextra
OBJ_DIR	=	.obj
SIZE	=	30

################################################################################
#                                  COLORS                                      #
################################################################################

RED		=	\033[1;31m
YELLOW	=	\033[1;33m
BLUE	=	\033[1;34m
GREEN	=	\033[1;32m
WHITE	=	\033[1;37m
DEFAULT	=	\033[0m

################################################################################
#                                   FILES                                      #
################################################################################
SRC		=	ft_isalnum.c         \
			ft_isprint.c         \
			ft_memcmp.c          \
			ft_putchar_fd.c      \
			ft_split.c           \
			ft_strlcat.c         \
			ft_strncmp.c         \
			ft_substr.c          \
			ft_atoi.c            \
			ft_isalpha.c         \
			ft_itoa.c            \
			ft_memcpy.c          \
			ft_putendl_fd.c      \
			ft_strchr.c          \
			ft_strlcpy.c         \
			ft_strnstr.c         \
			ft_tolower.c         \
			ft_bzero.c           \
			ft_isascii.c         \
			ft_memmove.c         \
			ft_putnbr_fd.c       \
			ft_strdup.c          \
			ft_strlen.c          \
			ft_strrchr.c         \
			ft_toupper.c         \
			ft_calloc.c          \
			ft_isdigit.c         \
			ft_memchr.c          \
			ft_memset.c          \
			ft_putstr_fd.c       \
			ft_strjoin.c         \
			ft_strmapi.c         \
			ft_strtrim.c         \
			ft_striteri.c        \
			ft_lstadd_back.c     \
			ft_lstadd_front.c    \
			ft_lstclear.c        \
			ft_lstdelone.c       \
			ft_lstiter.c         \
			ft_lstlast.c         \
			ft_lstnew.c          \
			ft_lstsize.c

OBJ	=	$(addprefix $(OBJ_DIR)/, $(SRC:.c=.o))

################################################################################
#                                   MAKE                                       #
################################################################################

all:	$(NAME)
$(NAME): $(OBJ)
	@ar rcs $@ $^

$(OBJ_DIR)/%.o: %.c | $(OBJ_DIR)
	@printf "$(WHITE)%s$(BLUE)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Compiling... " "$<" "[OK]"
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)/

clean:
	@for file in $(OBJ); do \
		printf "$(WHITE)%s$(YELLOW)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Removing...  " "$$file" "[OK]"; \
	done
	@rm -f $(OBJ)
	@rm -rf $(OBJ_DIR)

fclean: clean
	@printf "$(WHITE)%s$(RED)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Removing...  " "$(NAME)" "[OK]"
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
