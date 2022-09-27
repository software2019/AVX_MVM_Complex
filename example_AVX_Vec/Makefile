#****************************************************************************************************
# Variables to control Makefile operation
CC = icc #the compiler: icc/gcc for C program
LIBS = -lm #-lefence
CFLAGS = -O2 -march=core-avx2 -mtune=core-avx2  # -g -march=haswell -mtune=haswell -xcore-avx2 -mtune=native compiler flags, Extra flags to give to the C compiler.
INCLUDES = -I . # Inclusing suN.h header file from Include directory
#*****************************************************************************************************

all: timer.o avx_complex_vec avx_complex_vec_align_load avx_complex_vec_align_load_vasilis avx_complex_vec_unalign_load avx_complex_vec_align_loadu avx_complex_vec_unalign_loadu

avx_complex_vec: avx_complex_vec.c timer.o header.h Makefile # $@ is the name of the file to be made.$@ represents avx_complex_vec
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

avx_complex_vec_align_load: avx_complex_vec_align_load.c timer.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

avx_complex_vec_align_loadu: avx_complex_vec_align_loadu.c timer.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

avx_complex_vec_unalign_load: avx_complex_vec_unalign_load.c timer.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

avx_complex_vec_unalign_loadu: avx_complex_vec_unalign_loadu.c timer.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

avx_complex_vec_align_load_vasilis: avx_complex_vec_align_load_vasilis.c timer.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} timer.o $< ${LIBS}  -o $@ 

timer.o: timer.c header.h Makefile # $< the name of the related file that caused the action.
	${CC} ${CFLAGS} ${INCLUDES} $< -c

asm: 
	${CC} ${CFLAGS} ${INCLUDES} -S avx_complex_vec_align_load.c ${LIBS}

pre: 
	${CC} ${CFLAGS} ${INCLUDES} -E avx_complex_vec_macro.c ${LIBS} 

clean: 
	rm -f *.o avx_complex_vec avx_complex_vec_align_load avx_complex_vec_align_load_vasilis avx_complex_vec_unalign_load avx_complex_vec_align_loadu avx_complex_vec_unalign_loadu

