# Makefile for ls clone
CFLAGS = -Wall -g
SRC = src/ls-v1.1.0.c
OBJ = obj/ls-v1.1.0.o
BIN = bin/ls


all: $(BIN)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(BIN)

clean:
	rm -f $(OBJ) $(BIN)

run:
	./$(BIN)
