#****************************************************************************************************
# Variables to control Makefile operation

CC = icc 
CFLAGS = -O2 -qopenmp -march=core-avx2 -mtune=core-avx2  -g 

#CC = gcc 
#CFLAGS = -O3 -fopenmp -march=core-avx2 -mtune=core-avx2  -g

#CC = clang 
#CFLAGS = -O3 -fopenmp -march=core-avx2 -mtune=core-avx2  -g

LIBS = -lm #-lefence
INCLUDES = -I . # Inclusing suN.h header file from Include directory
#*****************************************************************************************************

all: various.o logger.o avx_complex_vec avx2_benchmark avx_complex_vec_align_load avx_complex_vec_align_load_vasilis avx_complex_vec_unalign_load avx_complex_vec_align_loadu avx_complex_vec_unalign_loadu avx2_single_benchmark

avx_complex_vec: avx_complex_vec.c various.o logger.o header.h Makefile # $@ is the name of the file to be made.$@ represents avx_complex_vec
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@

avx2_benchmark: avx2_benchmark.c various.o logger.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@ 

avx2_single_benchmark: avx2_single_benchmark.c various.o logger.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@ 

avx_complex_vec_align_load: avx_complex_vec_align_load.c various.o logger.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@ 

avx_complex_vec_align_loadu: avx_complex_vec_align_loadu.c various.o logger.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@ 

avx_complex_vec_unalign_load: avx_complex_vec_unalign_load.c various.o logger.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@ 

avx_complex_vec_unalign_loadu: avx_complex_vec_unalign_loadu.c various.o logger.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@ 

avx_complex_vec_align_load_vasilis: avx_complex_vec_align_load_vasilis.c various.o logger.o header.h Makefile 
	${CC} ${CFLAGS} ${INCLUDES} various.o logger.o $< ${LIBS}  -o $@ 

logger.o: logger.c header.h Makefile # $< the name of the related file that caused the action.
	${CC} ${CFLAGS} ${INCLUDES} $< -c

various.o: various.c header.h Makefile # $< the name of the related file that caused the action.
	${CC} ${CFLAGS} ${INCLUDES} $< -c

asm: 
	${CC} ${CFLAGS} ${INCLUDES} -S avx_complex_vec.c ${LIBS}

pre: 
	${CC} ${CFLAGS} ${INCLUDES} -E avx_complex_vec_macro.c ${LIBS} 

clean: 
	rm -f *.o avx_complex_vec avx2_benchmark avx_complex_vec_align_load avx_complex_vec_align_load_vasilis avx_complex_vec_unalign_load avx_complex_vec_align_loadu avx_complex_vec_unalign_loadu avx2_single_benchmark

