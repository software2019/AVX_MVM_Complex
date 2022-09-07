#include <stdio.h>
#include <stdlib.h> //this library allows for malloc to run
#include <sys/time.h>
#include <stdint.h> /* for uint64 definition */
#include <pthread.h>
#include <omp.h>
#include <math.h>
#include <complex.h>
#include <immintrin.h>
#include <limits.h>
#include "suN.h" /* suNf_vector and suNf imported*/
#include "memory.h"
#define _suNf_theta_T_multiply(r, u, s) _suNf_multiply((r), (u), (s))
#define _suNf_theta_T_inverse_multiply(r, u, s) _suNf_inverse_multiply((r), (u), (s))

void single_MVM(suNf_vector *chi, const suNf *up, const suNf_vector *psi);
void double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2);
void single_MVM_inverse(suNf_vector *chi, const suNf *um, const suNf_vector *psi);
void double_MVM_inverse(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2);
void single_MVM_2x2(suNf_vector *chi, const suNf *up, const suNf_vector *psi);
void double_MVM_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2);
void single_MVM_inverse_2x2(suNf_vector *chi, const suNf *um, const suNf_vector *psi);
void double_MVM_inverse_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2);
int timeval_subtract(struct timeval *result, struct timeval *x, struct timeval *y);
double complex my_rand(const int n);
void my_init(suNf_vector *psi, suNf_vector *psi2, suNf *up, const int n);