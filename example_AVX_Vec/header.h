#include <stdio.h>
#include <stdlib.h> //this library allows for malloc to run
#include <sys/time.h>
#include <stdint.h> /* for uint64 definition */
#include <pthread.h>
//#include <omp.h>
#include <math.h>
#include <complex.h>
#include <immintrin.h>
#include <limits.h>

typedef struct
{
 double complex c[3];
} suNf_vector;

typedef struct
{
 double complex c[9];
} suNf;

void single_MVM(suNf_vector *chi, const suNf *up, const suNf_vector *psi);
void double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2);
int timeval_subtract(struct timeval *result, struct timeval *x, struct timeval *y);