# The name of the output executable
OUTPUT = test

# The compiler to use
CC = gcc

# Compiler flags (optional)
# CFLAGS = -Wall -Wextra -g
CFLAGS = -g

# Source files (all .c files in the current directory)
SRCS = $(wildcard *.c)

# Object files (replace .c with .o)
OBJS = $(SRCS:.c=.o)

# The default target
all: clean $(OUTPUT)

# Rule to build the executable
$(OUTPUT): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Rule to clean up previous builds
clean:
	rm -f $(OUTPUT) $(OBJS)
