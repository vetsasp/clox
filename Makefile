# The name of the output executable
OUTPUT = lox 

# The compiler to use
CC = gcc

# Compiler flags (optional)
# CFLAGS = -Wall -Wextra -g
# CFLAGS = -g

# pg for profiling with gprof 
CFLAGS = -g -pg

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
