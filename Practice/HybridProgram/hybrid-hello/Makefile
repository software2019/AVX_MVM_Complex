ifeq ($(COMP),)
COMP=intel #You can set your compiler here
endif

OPT=-O0
LDFLAGS=-lm

ifeq ($(COMP),gnu)
CC=mpicc
CFLAGS = $(OPT) -fopenmp
endif

ifeq ($(COMP),intel)
CC=mpiicc
CFLAGS = $(OPT) -qopenmp
endif

ifeq ($(COMP),clang)
CC=mpicc
CFLAGS = $(OPT) -fopenmp
endif

all: skeleton

skeleton: skeleton.c
	$(CC) -o $(CFLAGS) -o $@  $< $(LDFLAGS)

clean:
	rm -f *.o skeleton