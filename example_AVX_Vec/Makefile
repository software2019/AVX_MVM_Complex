#****************************************************************************************************
# Variables to control Makefile operation
CC = gcc #the compiler: icc/gcc for C program
LIBS = -lm #-lefence
CFLAGS = -O3 -g -march=core-avx2 -mtune=core-avx2 # -g compiler flags, Extra flags to give to the C compiler.
INCLUDES = -I /home/mrahman/HiRep/Include # Inclusing suN.h header file from Include directory
#*****************************************************************************************************

all: timer.o avx_complex_vec avx_complex_vec_macro avx_complex_vec_macro_before

avx_complex_vec: avx_complex_vec.c timer.o header.h Makefile # $@ is the name of the file to be made.$@ represents avx_complex_vec
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

avx_complex_vec_macro: avx_complex_vec_macro.c timer.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

avx_complex_vec_macro_before: avx_complex_vec_macro_before.c timer.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

timer.o: timer.c header.h Makefile # $< the name of the related file that caused the action.
	${CC} ${CFLAGS} ${INCLUDES} $< -c

asm: 
	${CC} ${CFLAGS} ${INCLUDES} -S avx_complex_vec_macro.c ${LIBS}

pre: 
	${CC} ${CFLAGS} ${INCLUDES} -E avx_complex_vec_macro.c ${LIBS} > pre.txt

clean: 
	rm -f *.o avx_complex_vec avx_complex_vec_macro avx_complex_vec_macro_before

