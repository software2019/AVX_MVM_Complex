
#include "header.h"

/**************************************************************************************************
 *   Commands for compiling:
 *   icc avx_complex_vec.c  -o test -O3 -march=core-avx2 -mtune=core-avx2
 *   gcc avx_complex_vec.c timer.c -o test -lm -O3 -g -march=core-avx2 -mtune=core-avx2
 *
 *   There is no -march=generic option because -march indicates the instruction set the compiler can use,
 *   and there is no generic instruction set applicable to all processors. In contrast, -mtune indicates
 *   the processor (or, in this case, collection of processors) for which the code is optimized.
 *   core-avx2 Optimizes code for processors that support Intel® Advanced Vector Extensions 2
 *   (Intel® AVX2), Intel® AVX, SSE4.2, SSE4.1, SSE3, SSE2, SSE, and SSSE3 instructions.
 *
 *   Note: for gcc -lm must be added to be linked in with math library, whereas icc does not need it.
 ***************************************************************************************************/

/* Matrix up multiplied by the vector psi and psi2 and stored the product (vectors) to chi and chi2 */

#define double_MVM_macro(mc, mc2, mu, mp, mp2)       \
  do                                                 \
  {                                                  \
    __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;\
    __m128d chi_3rd, chi2_3rd;                        \
    temp1 = _mm256_load_pd((double *)(mu));           \
    temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);  \
    temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111);  \
    temp2 = _mm256_loadu_pd((double *)(mu) + 6);      \
    temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000);  \
    temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);  \
    temp3 = _mm256_load_pd((double *)(mu) + 12);     \
    temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000);  \
    temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);  \
    temp4 = _mm256_load_pd((double *)(mp));          \
    temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101);  \
    temp5 = _mm256_load_pd((double *)(mp2));         \
    temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101); \
    temp12 = _mm256_mul_pd(temp1, temp9);             \
    temp11 = _mm256_fmaddsub_pd(temp6, temp4, temp12);\
    temp13 = _mm256_mul_pd(temp2, temp9);             \
    temp12 = _mm256_fmaddsub_pd(temp7, temp4, temp13);\
    temp13 = _mm256_permute2f128_pd(temp12, temp11, 2);\
    temp11 = _mm256_permute2f128_pd(temp11, temp11, 1);\
    temp11 = _mm256_blend_pd(temp11, temp12, 12);      \
    temp11 = _mm256_add_pd(temp13, temp11);\
    temp12 = _mm256_loadu_pd((double *)(mu) + 2);\
    temp12 = _mm256_permute2f128_pd(temp12, temp12, 1);\
    temp13 = _mm256_load_pd((double *)(mu) + 8);\
    temp12 = _mm256_blend_pd(temp12, temp13, 12);\
    temp13 = _mm256_loadu_pd((double *)(mp) + 2);\
    temp16 = _mm256_permute2f128_pd(temp13, temp13, 1);\
    temp13 = _mm256_blend_pd(temp16, temp13, 12);\
    temp15 = _mm256_shuffle_pd(temp12, temp12, 0b0000);\
    temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);\
    temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);\
    temp14 = _mm256_mul_pd(temp12, temp14);\
    temp13 = _mm256_fmaddsub_pd(temp15, temp13, temp14);\
    temp11 = _mm256_add_pd(temp11, temp13);\
    temp1 = _mm256_mul_pd(temp1, temp10);\
    temp1 = _mm256_fmaddsub_pd(temp6, temp5, temp1);\
    temp2 = _mm256_mul_pd(temp2, temp10);\
    temp7 = _mm256_fmaddsub_pd(temp7, temp5, temp2);\
    temp13 = _mm256_permute2f128_pd(temp7, temp1, 2);\
    temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);\
    temp1 = _mm256_blend_pd(temp1, temp7, 12);\
    temp1 = _mm256_add_pd(temp13, temp1);\
    temp13 = _mm256_loadu_pd((double *)(mp2) + 2);\
    temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);\
    temp14 = _mm256_blend_pd(temp14, temp13, 12);\
    temp17 = _mm256_shuffle_pd(temp14, temp14, 0b0101);\
    temp12 = _mm256_mul_pd(temp12, temp17);\
    temp12 = _mm256_fmaddsub_pd(temp15, temp14, temp12);\
    temp1 = _mm256_add_pd(temp1, temp12);\
    temp12 = _mm256_mul_pd(temp3, temp9);\
    temp4 = _mm256_fmaddsub_pd(temp8, temp4, temp12);\
    temp3 = _mm256_mul_pd(temp3, temp10);\
    temp3 = _mm256_fmaddsub_pd(temp8, temp5, temp3);\
    temp5 = _mm256_permute2f128_pd(temp3, temp4, 2);\
    temp4 = _mm256_permute2f128_pd(temp4, temp4, 1);\
    temp3 = _mm256_blend_pd(temp4, temp3, 12);\
    temp3 = _mm256_add_pd(temp5, temp3);\
    temp9 = _mm256_loadu_pd((double *)(mu) + 14);\
    temp10 = _mm256_permute2f128_pd(temp9, temp9, 1);\
    temp9 = _mm256_blend_pd(temp10, temp9, 12);\
    temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);\
    temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);\
    temp9 = _mm256_blend_pd(temp16, temp13, 12);\
    temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);\
    temp2 = _mm256_mul_pd(temp12, temp13);\
    temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);\
    temp2 = _mm256_add_pd(temp3, temp7);\
    chi_3rd = _mm256_castpd256_pd128(temp2);\
    chi2_3rd = _mm256_extractf128_pd(temp2, 1);\
    _mm256_storeu_pd((double *)(mc), temp11);\
    _mm_store_pd((double *)(mc) + 4, chi_3rd);\
    _mm256_storeu_pd((double *)(mc2), temp1);\
    _mm_store_pd((double *)(mc2) + 4, chi2_3rd);\
  } while (0)


#define single_MVM_macro(mc, mu, mp)\
  do\
  {\
    __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16;\
    __m128d chi_3rd;\
    temp1 = _mm256_load_pd((double *)(mu));\
    temp2 = _mm256_shuffle_pd(temp1, temp1, 0b0000);\
    temp3 = _mm256_shuffle_pd(temp1, temp1, 0b1111);\
    temp8 = _mm256_loadu_pd((double *)(mu) + 2);\
    temp1 = _mm256_loadu_pd((double *)(mu) + 6);\
    temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0000);\
    temp5 = _mm256_shuffle_pd(temp1, temp1, 0b1111);\
    temp9 = _mm256_load_pd((double *)(mu) + 8);\
    temp1 = _mm256_load_pd((double *)(mu) + 12);\
    temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);\
    temp7 = _mm256_shuffle_pd(temp1, temp1, 0b1111);\
    temp1 = _mm256_load_pd((double *)(mp));\
    temp14 = _mm256_shuffle_pd(temp1, temp1, 0b0101);\
    temp16 = _mm256_loadu_pd((double *)(mp) + 2);\
    temp3 = _mm256_mul_pd(temp3, temp14);\
    temp2 = _mm256_fmaddsub_pd(temp2, temp1, temp3);\
    temp5 = _mm256_mul_pd(temp5, temp14);\
    temp4 = _mm256_fmaddsub_pd(temp4, temp1, temp5);\
    temp3 = _mm256_permute2f128_pd(temp4, temp2, 2);\
    temp2 = _mm256_permute2f128_pd(temp2, temp2, 1);\
    temp2 = _mm256_blend_pd(temp2, temp4, 12);\
    temp2 = _mm256_add_pd(temp3, temp2);\
    temp8 = _mm256_permute2f128_pd(temp8, temp8, 1);\
    temp8 = _mm256_blend_pd(temp8, temp9, 12);\
    temp9 = _mm256_permute2f128_pd(temp16, temp16, 1);\
    temp4 = _mm256_blend_pd(temp9, temp16, 12);\
    temp10 = _mm256_shuffle_pd(temp8, temp8, 0b0000);\
    temp13 = _mm256_shuffle_pd(temp8, temp8, 0b1111);\
    temp15 = _mm256_shuffle_pd(temp4, temp4, 0b0101);\
    temp13 = _mm256_mul_pd(temp13, temp15);\
    temp10 = _mm256_fmaddsub_pd(temp10, temp4, temp13);\
    temp2 = _mm256_add_pd(temp2, temp10);\
    temp7 = _mm256_mul_pd(temp7, temp14);\
    temp6 = _mm256_fmaddsub_pd(temp6, temp1, temp7);\
    temp10 = _mm256_permute2f128_pd(temp6, temp6, 1);\
    temp1 = _mm256_add_pd(temp10, temp6);\
    temp6 = _mm256_loadu_pd((double *)(mu) + 14);\
    temp10 = _mm256_permute2f128_pd(temp6, temp6, 1);\
    temp10 = _mm256_blend_pd(temp10, temp6, 12);\
    temp11 = _mm256_shuffle_pd(temp10, temp10, 0b0000);\
    temp12 = _mm256_shuffle_pd(temp10, temp10, 0b1111);\
    temp12 = _mm256_mul_pd(temp12, temp15);\
    temp11 = _mm256_fmaddsub_pd(temp11, temp4, temp12);\
    temp11 = _mm256_add_pd(temp1, temp11);\
    chi_3rd = _mm256_castpd256_pd128(temp11);\
    _mm256_store_pd((double *)(mc), temp2);\
    _mm_store_pd((double *)(mc) + 4, chi_3rd);\
} while (0)



int main(int argc, char *argv[])
{
 int i, j;
 int n = 5;
 long int in = atoi(argv[1]);
 double res1=0., res2=0., res3=0., res4=0., res5=0., res6=0., res7=0., res8=0., res9=0., res10=0., res11=0., res12=0.;
 double elapsed = 0.0, gflops, mb, gbs, AI;
 long long  int flop, byte;
 long int reps = 10, final_reps;
 
/* ************ timing block A start ************* */
clock_t t1,t2;
struct timeval start, end, etime;
# ifdef _OPENMP
    double wt1,wt2;
# endif
/* ************ timing block A end ************* */

 //----------------set the current thread to core 0 only----------------
cpu_set_t mask;
CPU_ZERO(&mask);
CPU_SET(0,&mask);
if(sched_setaffinity(0,sizeof(mask),&mask) == -1)
    printf("WARNING: Could not set CPU Affinity, continuing...\n");

 suNf *up; 
 suNf_vector *chi, *chi2, *chi3, *chi4, *chi5, *chi6, *psi, *psi2;

 /* allocate memory */
//lprintf("MAIN", 0, "Allocating matrix and vectors\n");
up = amalloc(in*sizeof(suNf), ALIGN);
psi = amalloc(in*sizeof(suNf_vector), ALIGN);
psi2 = amalloc(in*sizeof(suNf_vector), ALIGN);
chi = amalloc(in*sizeof(suNf_vector), ALIGN);
chi2 = amalloc(in*sizeof(suNf_vector), ALIGN);
chi3 = amalloc(in*sizeof(suNf_vector), ALIGN);
chi4 = amalloc(in*sizeof(suNf_vector), ALIGN);
chi5 = amalloc(in*sizeof(suNf_vector), ALIGN);
chi6 = amalloc(in*sizeof(suNf_vector), ALIGN);

/*=========================================================================
      Test:  Performance Test based on loading a long array of structures  
===========================================================================*/

/* Vector Initilisation */
//lprintf("MAIN", 0, "Randomizing matrix and vectors...\n");
for(i=0; i<in; i++)
  {
    for(j=0; j<3; j++)
      {
        (psi+i)->c[j] = my_rand(n);
        (psi2+i)->c[j] = my_rand(n);
      }

    for(j=0; j<9; j++)
      {
        (up+i)->c[j] = my_rand(n);
      }
  }

  /******************************************************* 
        Case 1: AVX double MVM Macro perf measurement 
  *******************************************************/

/* Double_MVM Warmup code */
// for(i=0; i<in; i++)
// { 
//   double_MVM_macro((chi+i), (chi2+i), ((up+i)), ((psi+i)), ((psi2+i)));
//   //single_MVM_macro((chi+i),((up+i)), ((psi+i)));
// }

 /* ************************** timing block B start ***************************** */
/* Benchmarking the double_MVM_macro routine */
  while(elapsed < 2.0)
    {
      gettimeofday(&start, 0);
      for(i=0; i<reps; i++)
        {
          for(j=0; j<in; j++)
            { 
              double_MVM_macro((chi+j), (chi2+j), ((up+j)), ((psi+j)), ((psi2+j)));
            }
        }
      gettimeofday(&end, 0);
      timeval_subtract(&etime, &end, &start);
      elapsed = (etime.tv_sec) + (etime.tv_usec)*1e-6;
      final_reps = reps;
      reps = (int) ((reps*2.1)/elapsed); 
    }
    elapsed/=final_reps;
  /* Data Movement and FLOPs Count */
  flop = in * (9 + 6 + 9 * 3); /* 9 muls, 6 adds, 9 fmaddsub */
  byte = in * (4 * sizeof(suNf_vector) + sizeof(suNf));
  mb = (float) (byte)/1.e6;
  gbs = mb/elapsed/1.e3;
  gflops = (float) (flop)/elapsed/1.e9;
  AI = (float) (flop)/(float)(byte); /* AI = Arithematic Intensity or Opsperbyte */

  printf("%d, %.15g, %.15g, %d, %.15g, %.15g, %.15g, %.15g\n", final_reps, final_reps*elapsed, elapsed, in, mb, gflops, gbs, AI);


/* **************************** timing block B end ********************************* */


/******************************************************* 
        Case 2: HiRep Macro Perf Measurement 
*******************************************************/

/* theta_T_mul Warmup Code */
for(i=0; i<in; i++)
{
  _suNf_theta_T_multiply((*(chi5+i)), *((up+i)), *((psi+i)));
  _suNf_theta_T_multiply((*(chi6+i)), *((up+i)), *((psi2+i)));
}

/* ************ timing block C start ************* */
  gettimeofday(&start, 0);
# ifdef _OPENMP
    wt1=omp_get_wtime();
# endif
  t1=clock();
 for(i=0; i<in; i++)
{
  __asm volatile("# LLVM-MCA-BEGIN _suNf_theta_T_multiply":::"memory");
  _suNf_theta_T_multiply((*(chi5+i)), *((up+i)), *((psi+i)));
  _suNf_theta_T_multiply((*(chi6+i)), *((up+i)), *((psi2+i)));
  __asm volatile("# LLVM-MCA-END":::"memory");
}

  t2=clock();
# ifdef _OPENMP
    wt2=omp_get_wtime();
# endif
  gettimeofday(&end, 0);
  timeval_subtract(&etime, &end, &start);

//     lprintf("THETA_T_MULTIPLY",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
// # ifdef _OPENMP
//     lprintf("THETA_T_MULTIPLY",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
// # endif
//     lprintf("THETA_T_MULTIPLY",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);

/* ************ timing block C end ************* */


/**********************************************************************
  * Output Result Check: double_MVM() == _suNf_theta_T_multiply()
  *********************************************************************/

for (i = 0; i < in; i++)
{
  for(j=0; j<3; j++)
  {
  res1 = _complex_re((chi+i)->c[j]);
  res2 = _complex_im((chi+i)->c[j]); 
  res3 = _complex_re((chi2+i)->c[j]); 
  res4 = _complex_im((chi2+i)->c[j]); 

  res9 =  _complex_re((chi5+i)->c[j]); 
  res10 = _complex_im((chi5+i)->c[j]); 
  res11 = _complex_re((chi6+i)->c[j]); 
  res12 = _complex_im((chi6+i)->c[j]); 

  error((fabs((res1 - res9) / res1) > 1.e-15) || (fabs((res2 - res10) / res2) > 1.e-15), 1, "First Vector in double_MVM_macro and theta_T_multiply", " are not equal ==> Test Failed!");
  error((fabs((res3 - res11) / res3) > 1.e-15) || (fabs((res4 - res12) / res4) > 1.e-15), 1, "Second Vector in double_MVM_macro and theta_T_multiply", " are not equal ==>Test Failed!");

  res1 = .0;
  res2 = .0;
  res3 = .0;
  res4 = .0;

  res9 = .0;
  res10 = .0;
  res11 = .0;
  res12 = .0;
  }
}

/* Free the allocated memory */
  afree(up);
  afree(psi);
  afree(psi2);
  afree(chi);
  afree(chi2);
  afree(chi3);
  afree(chi4);
  afree(chi5);
  afree(chi6);
  
  return 0;
}

/* Matrix up multiplied by the vector psi and psi2 and stored the product (vectors) to chi and chi2 */
void double_MVM_non_macro(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;
 __m128d chi_3rd, chi2_3rd;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first row (2 complexes) of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up);            /* [0][1][2][3]*/
 temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/
 temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/

 /* Loading second row (2 complexes) of 3x3 matrix */
 temp2 = _mm256_loadu_pd((double *)up + 6);       /* [6][7][8][9]*/
 temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real) */
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag imag imag imag)*/

 /* Loading third row (2 complexes) of 3x3 matrix */
 temp3 = _mm256_load_pd((double *)up + 12);       /*[12][13][14][15] */
 temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /*(real real real real) */
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /*(imag imag imag imag)*/

 /* Loading first column (2 complexes of psi vector) and shuffling */
 temp4 = _mm256_load_pd((double *)psi);
 temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101); /*im re im re */

 /* Loading second column (2 complexes of psi2 vector) and shuffling */
 temp5 = _mm256_load_pd((double *)psi2);
 temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101); /*im re im re */

 /*===>End of loading variables: up, psi, psi2<====*/

 /***************************************
  *    Start of MVM Computations: 2x2
  ***************************************/
 /* ===========(Pair 1) start: Matrix 1 ============*/
 /*First row*col computation:2x2*/
 temp12 = _mm256_mul_pd(temp1, temp9); /*(im*im),(im*re),(re*im),(im*re)*/
 temp11 = _mm256_fmaddsub_pd(temp6, temp4, temp12);

 /*Second row*col computation:2x2*/
 temp13 = _mm256_mul_pd(temp2, temp9); /*(im*im),(im*re),(re*im),(im*re)*/
 temp12 = _mm256_fmaddsub_pd(temp7, temp4, temp13);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of temp12 [L1] and temp11 [L2]*/
 temp13 = _mm256_permute2f128_pd(temp12, temp11, 2); /*[L1 L2]*/
 temp11 = _mm256_permute2f128_pd(temp11, temp11, 1); /*swapping L2 and H2 of temp11*/
 /* A vector of high lane of temp11 [H1] and temp12 [H2] */
 temp11 = _mm256_blend_pd(temp11, temp12, 12); /*[H1 H2]*/
 temp11 = _mm256_add_pd(temp13, temp11);       /* L1+H1, L2+H2 */

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 temp12 = _mm256_loadu_pd((double *)up + 2);         /* [2][3][4][5] */
 temp12 = _mm256_permute2f128_pd(temp12, temp12, 1); /* [4][5][2][3] */
 temp13 = _mm256_loadu_pd((double *)up + 8);          /* [8][9][10][11] */
 temp12 = _mm256_blend_pd(temp12, temp13, 12);       /* [H1 H2]:[4][5][10][11] */

 temp13 = _mm256_loadu_pd((double *)psi + 2);
 temp16 = _mm256_permute2f128_pd(temp13, temp13, 1);
 temp13 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/

 temp15 = _mm256_shuffle_pd(temp12, temp12, 0b0000); /* re re re re */
 temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);     /* im im im im */
 temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);     /* im re im re */

 temp14 = _mm256_mul_pd(temp12, temp14);
 temp13 = _mm256_fmaddsub_pd(temp15, temp13, temp14);

 /* Addition: 2x2 results + leftover */
 temp11 = _mm256_add_pd(temp11, temp13);
 /* ===========(Pair 1) End: Matrix 1 ============*/

 /* ===========(Pair 2) Start: Matrix 2 ============*/
 /*First row*col computation:2x2*/
 temp1 = _mm256_mul_pd(temp1, temp10); /*(im*im)(im*re)(re*im)(im*re)*/
 temp1 = _mm256_fmaddsub_pd(temp6, temp5, temp1);

 /*Second row*col computation:2x2*/
 temp2 = _mm256_mul_pd(temp2, temp10); /* (im*im)(im*re)(re*im)(im*re)*/
 temp7 = _mm256_fmaddsub_pd(temp7, temp5, temp2);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of temp7 [L1] and of temp1 [L2] */
 temp13 = _mm256_permute2f128_pd(temp7, temp1, 2); /*[L1 L2]*/
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);  /*swapping L2 and H2 of temp1*/
 /* A vector of high lane of temp1 [H1] and of temp7 [H2] */
 temp1 = _mm256_blend_pd(temp1, temp7, 12); /*[H1 H2]*/
 temp1 = _mm256_add_pd(temp13, temp1);      /* L1+H1, L2+H2 */

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 temp13 = _mm256_loadu_pd((double *)psi2 + 2);
 temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);
 temp14 = _mm256_blend_pd(temp14, temp13, 12); /*[H1 H2]*/

 temp17 = _mm256_shuffle_pd(temp14, temp14, 0b0101); /*im re im re*/
 temp12 = _mm256_mul_pd(temp12, temp17);
 temp12 = _mm256_fmaddsub_pd(temp15, temp14, temp12);

 /* Addition: 2x2 results + leftover */
 temp1 = _mm256_add_pd(temp1, temp12);
 /* ===========(Pair 2) End: Matrix 2 ============*/

 /* ===========(Pair 3) Start: Matrix 1&2 ============*/
 /* ********************************************************
  * Matrix 1: Third row*col computation-first 2 elements
  * ********************************************************/
 temp12 = _mm256_mul_pd(temp3, temp9); /*(im*im)(im*re)(re*im)(im*re)*/
 temp4 = _mm256_fmaddsub_pd(temp8, temp4, temp12);

 /* **********************************************************
  * Matrix 2: Third 3rd row*col computation - first 2 elements
  * **********************************************************/
 temp3 = _mm256_mul_pd(temp3, temp10); /*(im*im)(im*re)(re*im)(im*re)*/
 temp3 = _mm256_fmaddsub_pd(temp8, temp5, temp3);

 /* ==========Shuffling and adding 2 AVX registers of row 3 Matrix 1 & 2 results========== */
 /* A vector of lower lane of temp3 [L1] and temp4 [L2]*/
 temp5 = _mm256_permute2f128_pd(temp3, temp4, 2); /*[L1 L2]*/
 temp4 = _mm256_permute2f128_pd(temp4, temp4, 1); /*swapping L2 and H2 of temp1*/
 /* A vector of high lane of temp4 [H1] and temp3 [H2]*/
 temp3 = _mm256_blend_pd(temp4, temp3, 12); /*[H1 H2]*/
 temp3 = _mm256_add_pd(temp5, temp3);       /* L1+H1, L2+H2 */

 /* =======Leftover element(3rd) row 3 and col ======= */
 temp9 = _mm256_loadu_pd((double *)up + 14);       /*[14],[15],[16],[17] */
 temp10 = _mm256_permute2f128_pd(temp9, temp9, 1); /* H1 becomes L1: [16][17][14][15]  */
 temp9 = _mm256_blend_pd(temp10, temp9, 12);       /*[16][17][16][17]*/
 temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000); /*re re re re*/
 temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111); /*im im im im*/

 temp9 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/
 temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);  /*im re im re */

 temp2 = _mm256_mul_pd(temp12, temp13);
 temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);

 temp2 = _mm256_add_pd(temp3, temp7); /*chi[2] chi2[2]*/

 chi_3rd = _mm256_castpd256_pd128(temp2);    /* chi[2] */
 chi2_3rd = _mm256_extractf128_pd(temp2, 1); /* chi2[2] */

 /* ===========(Pair 3) End: Matrix 1&2 ============*/

 /*Storing Results*/
 _mm256_storeu_pd((double *)(chi), temp11);
 _mm_store_pd((double *)(chi + 4), chi_3rd);

 _mm256_storeu_pd((double *)(chi2), temp1);
 _mm_store_pd((double *)(chi2 + 4), chi2_3rd);
}

