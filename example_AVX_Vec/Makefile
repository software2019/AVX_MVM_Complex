# *****************************************************
# Variables to control Makefile operation
CC = gcc # the compiler: gcc for C program
LIBS = -lm
CFLAGS = -O3 -march=core-avx2 -mtune=core-avx2 # compiler flags Extra flags to give to the C compiler.
INCLUDES = -I "/home/mrahman/Include" # Inclusing suN.h header file from Include directory
# ****************************************************

all: timer.o avx_complex_vec

avx_complex_vec: avx_complex_vec.c timer.o header.h # $@ is the name of the file to be made.$@ represents avx_complex_vec
	${CC} ${LIBS} ${CFLAGS} timer.o $< -o $@ 

timer.o: timer.c header.h # $< the name of the related file that caused the action.
	${CC} ${LIBS} ${CFLAGS} $< -c

clean: 
	rm -f *.o avx_complex_vec

