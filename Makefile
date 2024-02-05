TARGET = my_ngram
SRC = main.c
OBJ = $(SRC:.c=.o)
CFLAGS = -Wall -Wextra -Werror

all: $(TARGET)

$(TARGET): $(OBJ)
    gcc $(CFLAGS) -o $(TARGET) $(OBJ)

%.o: %.c
    gcc $(CFLAGS) -c $< -o $@

clean:
    rm -f $(OBJ)

fclean: clean
    rm -f $(TARGET)

re: fclean all



