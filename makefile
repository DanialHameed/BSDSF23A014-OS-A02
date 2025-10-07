# Compiler and flags
CC = gcc
CFLAGS = -Wall -g -D_GNU_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Files
SRC = $(SRC_DIR)/ls-v1.3.0.c
OBJ = $(OBJ_DIR)/ls-v1.3.0.o
BIN = $(BIN_DIR)/ls-v1.3.0

# Default target
all: $(BIN)

$(OBJ_DIR) $(BIN_DIR):
	mkdir -p $@

$(OBJ): $(SRC) | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

$(BIN): $(OBJ) | $(BIN_DIR)
	$(CC) $(CFLAGS) $(OBJ) -o $(BIN)

clean:
	rm -f $(OBJ) $(BIN)

run: $(BIN)
	./$(BIN)

