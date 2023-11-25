ifeq ($(COMP),)
COMP=clang #you can set your compiler here
endif

OPT=-O0
LDFLAGS=-lm

ifeq ($(COMP),gnu)
CC=gcc
CFLAGS = $(OPT) -fopenmp
endif

ifeq ($(COMP),intel)
CC=icc
CFLAGS = $(OPT) -qopenmp
endif

ifeq ($(COMP),clang)
CC=clang
CFLAGS = $(OPT) -fopenmp
endif

all: hello

hello: hello.c
	$(CC) -o $(CFLAGS) -o $@  $< $(LDFLAGS)

clean:
	rm -f *.o hello