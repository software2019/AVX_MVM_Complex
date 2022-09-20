
#include "header.h"

// double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2);
// double_MVM(&chi, &chi2, &up, &psi, &psi2);
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

#define double_MVM(mc, mc2, mu, mp, mp2)                    \
 {                                                          \
  temp1 = _mm256_loadu_pd((double *)(mu));                   \
  temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);          \
  temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111);          \
  temp2 = _mm256_loadu_pd((double *)(mu) + 6);              \
  temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000);          \
  temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);          \
  temp3 = _mm256_loadu_pd((double *)(mu) + 12);              \
  temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000);          \
  temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);          \
  temp4 = _mm256_loadu_pd((double *)(mp));                   \
  temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101);          \
  temp5 = _mm256_loadu_pd((double *)(mp2));                  \
  temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101);         \
  temp12 = _mm256_mul_pd(temp1, temp9);                     \
  temp11 = _mm256_fmaddsub_pd(temp6, temp4, temp12);        \
  temp13 = _mm256_mul_pd(temp2, temp9);                     \
  temp12 = _mm256_fmaddsub_pd(temp7, temp4, temp13);        \
  temp13 = _mm256_permute2f128_pd(temp12, temp11, 2);       \
  temp11 = _mm256_permute2f128_pd(temp11, temp11, 1);       \
  temp11 = _mm256_blend_pd(temp11, temp12, 12);             \
  temp11 = _mm256_add_pd(temp13, temp11);                   \
  temp12 = _mm256_loadu_pd((double *)(mu) + 2);             \
  temp12 = _mm256_permute2f128_pd(temp12, temp12, 1);       \
  temp13 = _mm256_loadu_pd((double *)(mu) + 8);              \
  temp12 = _mm256_blend_pd(temp12, temp13, 12);             \
  temp13 = _mm256_loadu_pd((double *)(mp) + 2);             \
  psi_3rd_perm = _mm256_permute2f128_pd(temp13, temp13, 1); \
  temp13 = _mm256_blend_pd(psi_3rd_perm, temp13, 12);       \
  realup0up1 = _mm256_shuffle_pd(temp12, temp12, 0b0000);   \
  temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);       \
  temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);       \
  temp14 = _mm256_mul_pd(temp12, temp14);                   \
  temp13 = _mm256_fmaddsub_pd(realup0up1, temp13, temp14);  \
  temp11 = _mm256_add_pd(temp11, temp13);                   \
  temp1 = _mm256_mul_pd(temp1, temp10);                     \
  temp1 = _mm256_fmaddsub_pd(temp6, temp5, temp1);          \
  temp2 = _mm256_mul_pd(temp2, temp10);                     \
  temp7 = _mm256_fmaddsub_pd(temp7, temp5, temp2);          \
  temp13 = _mm256_permute2f128_pd(temp7, temp1, 2);         \
  temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);          \
  temp1 = _mm256_blend_pd(temp1, temp7, 12);                \
  temp1 = _mm256_add_pd(temp13, temp1);                     \
  temp13 = _mm256_loadu_pd((double *)(mp2) + 2);            \
  temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);       \
  temp14 = _mm256_blend_pd(temp14, temp13, 12);             \
  psi4 = _mm256_shuffle_pd(temp14, temp14, 0b0101);         \
  temp12 = _mm256_mul_pd(temp12, psi4);                     \
  temp12 = _mm256_fmaddsub_pd(realup0up1, temp14, temp12);  \
  temp1 = _mm256_add_pd(temp1, temp12);                     \
  temp12 = _mm256_mul_pd(temp3, temp9);                     \
  temp4 = _mm256_fmaddsub_pd(temp8, temp4, temp12);         \
  temp3 = _mm256_mul_pd(temp3, temp10);                     \
  temp3 = _mm256_fmaddsub_pd(temp8, temp5, temp3);          \
  temp5 = _mm256_permute2f128_pd(temp3, temp4, 2);          \
  temp4 = _mm256_permute2f128_pd(temp4, temp4, 1);          \
  temp3 = _mm256_blend_pd(temp4, temp3, 12);                \
  temp3 = _mm256_add_pd(temp5, temp3);                      \
  temp9 = _mm256_loadu_pd((double *)(mu) + 14);             \
  temp10 = _mm256_permute2f128_pd(temp9, temp9, 1);         \
  temp9 = _mm256_blend_pd(temp10, temp9, 12);               \
  temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);         \
  temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);         \
  temp9 = _mm256_blend_pd(psi_3rd_perm, temp13, 12);        \
  temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);         \
  temp2 = _mm256_mul_pd(temp12, temp13);                    \
  temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);         \
  temp2 = _mm256_add_pd(temp3, temp7);                      \
  chi_3rd = _mm256_castpd256_pd128(temp2);                  \
  chi2_3rd = _mm256_extractf128_pd(temp2, 1);               \
  _mm256_storeu_pd((double *)(mc), temp11);                  \
  _mm_storeu_pd((double *)(mc) + 4, chi_3rd);                \
  _mm256_storeu_pd((double *)(mc2), temp1);                  \
  _mm_storeu_pd((double *)(mc2) + 4, chi2_3rd);              \
 }

int main()
{
 int i;
 int n = 5;
 double res1, res2, res3, res4, res5, res6, res7, res8;
 float elapsed, gflops;
 int n_times = 1;
 int n_warmup = 0;
 struct timeval start, end, etime;

 printf("ALIGN = %d\n", ALIGN);
 printf("MEM_ALIGN = %d\n", MEM_ALIGN);
 // suNf_vector chi, chi2, chi3, chi4, psi, psi2, psi_copy, psi2_copy;
 // suNf up;

 suNf_vector *chi, *chi2, chi3, chi4, *psi, *psi2, *psi_copy, *psi2_copy;
 suNf *up;

 up = amalloc(sizeof(suNf), ALIGN);
 psi = amalloc(sizeof(suNf_vector), ALIGN);
 psi2 = amalloc(sizeof(suNf_vector), ALIGN);
 chi = amalloc(sizeof(suNf_vector), ALIGN);
 chi2 = amalloc(sizeof(suNf_vector), ALIGN);

//  up = _mm_malloc(sizeof(suNf), MEM_ALIGN);
//  psi = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  psi2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);

 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, realup0up1, psi_3rd_perm, psi4;
 __m128d chi_3rd, chi2_3rd;

 /*Initialising the variables*/
 my_init(psi, psi2, up, n);

 /******************************************************************************
  * Checking the results are identical: double_MVM() == _suNf_theta_T_multiply()
  ******************************************************************************/

//  double_MVM(chi, chi2, up, psi, psi2);
//  _suNf_theta_T_multiply(chi3, (*up), (*psi));
//  _suNf_theta_T_multiply(chi4, (*up), (*psi2));

//  for (i = 0; i < 3; i++)
//  {
//   res1 = creal(chi->c[i]);
//   res2 = cimag(chi->c[i]);

//   res3 = creal(chi3.c[i]);
//   res4 = cimag(chi3.c[i]);

//   res5 = creal(chi2->c[i]);
//   res6 = cimag(chi2->c[i]);

//   res7 = creal(chi4.c[i]);
//   res8 = cimag(chi4.c[i]);

//   if ((fabs((res1 - res3) / res1) > 1.e-15) || (fabs((res2 - res4) / res2) > 1.e-15))
//   {
//    printf("Error! First AVX_MVM and T_multiply are not equal\n");
//   }
//   else
//   {
//    printf("First chi passed at element %d\n", i);
//   }

//   if ((fabs((res5 - res7) / res5) > 1.e-15) || (fabs((res6 - res8) / res6) > 1.e-15))
//   {
//    printf("Error! Second AVX_MVM and T_multiply are not equal\n");
//   }
//   else
//   {
//    printf("Second chi passed at element %d\n", i);
//   }
//   printf("\n");

//   res1 = .0;
//   res2 = .0;
//   res3 = .0;
//   res4 = .0;

//   res5 = .0;
//   res6 = .0;
//   res7 = .0;
//   res8 = .0;
//  }

 /*****************************************************************
  * Testing Performance: double_MVM() vs _suNf_theta_T_multiply()
  *****************************************************************/

 psi_copy = psi;
 psi2_copy = psi2;

 for (i = 0; i < n_warmup; ++i)
 {
  double_MVM(chi, chi2, up, psi, psi2);
  double_MVM(psi, psi2, up, chi, chi2);

  psi->c[0] *= 0.001;
  psi->c[1] *= 0.001;
  psi->c[2] *= 0.001;

  psi2->c[0] *= 0.001;
  psi2->c[1] *= 0.001;
  psi2->c[2] *= 0.001;
 }

 psi_copy = psi;
 psi2_copy = psi2;

 gettimeofday(&start, 0);
 for (i = 0; i < n_times; ++i)
 {

  CALLGRIND_START_INSTRUMENTATION;
  CALLGRIND_TOGGLE_COLLECT;
  double_MVM(chi, chi2, up, psi, psi2);
  CALLGRIND_TOGGLE_COLLECT;
  CALLGRIND_STOP_INSTRUMENTATION;

  double_MVM(psi, psi2, up, chi, chi2);

  psi->c[0] *= 0.001;
  psi->c[1] *= 0.001;
  psi->c[2] *= 0.001;

  psi2->c[0] *= 0.001;
  psi2->c[1] *= 0.001;
  psi2->c[2] *= 0.001;
 }
 gettimeofday(&end, 0);
 timeval_subtract(&etime, &end, &start);
 elapsed = etime.tv_sec * 1000. + etime.tv_usec * 0.001;
 printf("Double_MVM_AVX aligned_loadu Time: [%ld sec %ld usec]\n", etime.tv_sec, etime.tv_usec);

 psi_copy = psi;
 psi2_copy = psi2;
 for (i = 0; i < n_warmup; ++i)
 {
  _suNf_theta_T_multiply((*chi), (*up), (*psi));
  _suNf_theta_T_multiply((*chi2), (*up), (*psi2));

  _suNf_theta_T_multiply((*psi), (*up), (*chi));
  _suNf_theta_T_multiply((*psi2), (*up), (*chi2));

  psi->c[0] *= 0.001;
  psi->c[1] *= 0.001;
  psi->c[2] *= 0.001;

  psi2->c[0] *= 0.001;
  psi2->c[1] *= 0.001;
  psi2->c[2] *= 0.001;
 }

 psi_copy = psi;
 psi2_copy = psi2;

//  gettimeofday(&start, 0);
//  for (i = 0; i < n_times; ++i)
//  {

//   CALLGRIND_START_INSTRUMENTATION;
//   CALLGRIND_TOGGLE_COLLECT;
//   _suNf_theta_T_multiply((*chi), (*up), (*psi));
//   _suNf_theta_T_multiply((*chi2), (*up), (*psi2));
//   CALLGRIND_TOGGLE_COLLECT;
//   CALLGRIND_STOP_INSTRUMENTATION;
  
//   _suNf_theta_T_multiply((*psi), (*up), (*chi));
//   _suNf_theta_T_multiply((*psi2), (*up), (*chi2));

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }
//  gettimeofday(&end, 0);
//  timeval_subtract(&etime, &end, &start);
//  elapsed = etime.tv_sec * 1000. + etime.tv_usec * 0.001;
//  printf("theta_T_multiply aligned_loadu Time: [%ld sec %ld usec]\n", etime.tv_sec, etime.tv_usec);

 afree(up);
 afree(psi);
 afree(psi2);
 afree(chi);
 afree(chi2);

//  _mm_free(up);
//  _mm_free(psi);
//  _mm_free(psi2);
//  _mm_free(chi);
//  _mm_free(chi2);

 return 0;
}

/* Matrix up multiplied by the vector psi and psi2 and stored the product (vectors) to chi and chi2 */

// void double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
// {
//  __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, realup0up1, psi_3rd_perm, psi4;
//  __m128d chi_3rd, chi2_3rd;

//  /*===>Start of loading variables: up, psi, psi2<===*/
//  /* Loading first row (2 complexes) of 3x3 matrix */
//  temp1 = _mm256_loadu_pd((double *)up);            /* [0][1][2][3]*/
//  temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/
//  temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/

//  /* Loading second row (2 complexes) of 3x3 matrix */
//  temp2 = _mm256_loadu_pd((double *)up + 6);       /* [6][7][8][9]*/
//  temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real) */
//  temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag imag imag imag)*/

//  /* Loading third row (2 complexes) of 3x3 matrix */
//  temp3 = _mm256_loadu_pd((double *)up + 12);       /*[12][13][14][15] */
//  temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /*(real real real real) */
//  temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /*(imag imag imag imag)*/

//  /* Loading first column (2 complexes of psi vector) and shuffling */
//  temp4 = _mm256_loadu_pd((double *)psi);
//  temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101); /*im re im re */

//  /* Loading second column (2 complexes of psi2 vector) and shuffling */
//  temp5 = _mm256_loadu_pd((double *)psi2);
//  temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101); /*im re im re */

//  /*===>End of loading variables: up, psi, psi2<====*/

//  /***************************************
//   *    Start of MVM Computations: 2x2
//   ***************************************/
//  /* ===========(Pair 1) start: Matrix 1 ============*/
//  /*First row*col computation:2x2*/
//  temp12 = _mm256_mul_pd(temp1, temp9); /*(im*im),(im*re),(re*im),(im*re)*/
//  temp11 = _mm256_fmaddsub_pd(temp6, temp4, temp12);

//  /*Second row*col computation:2x2*/
//  temp13 = _mm256_mul_pd(temp2, temp9); /*(im*im),(im*re),(re*im),(im*re)*/
//  temp12 = _mm256_fmaddsub_pd(temp7, temp4, temp13);

//  /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
//  /* A vector of lower lane of temp12 [L1] and temp11 [L2]*/
//  temp13 = _mm256_permute2f128_pd(temp12, temp11, 2); /*[L1 L2]*/
//  temp11 = _mm256_permute2f128_pd(temp11, temp11, 1); /*swapping L2 and H2 of temp11*/
//  /* A vector of high lane of temp11 [H1] and temp12 [H2] */
//  temp11 = _mm256_blend_pd(temp11, temp12, 12); /*[H1 H2]*/
//  temp11 = _mm256_add_pd(temp13, temp11);       /* L1+H1, L2+H2 */

//  /* =======Leftover element(3rd) row 1 & 2 and col ======= */
//  temp12 = _mm256_loadu_pd((double *)up + 2);         /* [2][3][4][5] */
//  temp12 = _mm256_permute2f128_pd(temp12, temp12, 1); /* [4][5][2][3] */
//  temp13 = _mm256_loadu_pd((double *)up + 8);          /* [8][9][10][11] */
//  temp12 = _mm256_blend_pd(temp12, temp13, 12);       /* [H1 H2]:[4][5][10][11] */

//  temp13 = _mm256_loadu_pd((double *)psi + 2);
//  psi_3rd_perm = _mm256_permute2f128_pd(temp13, temp13, 1);
//  temp13 = _mm256_blend_pd(psi_3rd_perm, temp13, 12); /*[H1 H2]*/

//  realup0up1 = _mm256_shuffle_pd(temp12, temp12, 0b0000); /* re re re re */
//  temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);     /* im im im im */
//  temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);     /* im re im re */

//  temp14 = _mm256_mul_pd(temp12, temp14);
//  temp13 = _mm256_fmaddsub_pd(realup0up1, temp13, temp14);

//  /* Addition: 2x2 results + leftover */
//  temp11 = _mm256_add_pd(temp11, temp13);
//  /* ===========(Pair 1) End: Matrix 1 ============*/

//  /* ===========(Pair 2) Start: Matrix 2 ============*/
//  /*First row*col computation:2x2*/
//  temp1 = _mm256_mul_pd(temp1, temp10); /*(im*im)(im*re)(re*im)(im*re)*/
//  temp1 = _mm256_fmaddsub_pd(temp6, temp5, temp1);

//  /*Second row*col computation:2x2*/
//  temp2 = _mm256_mul_pd(temp2, temp10); /* (im*im)(im*re)(re*im)(im*re)*/
//  temp7 = _mm256_fmaddsub_pd(temp7, temp5, temp2);

//  /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
//  /* A vector of lower lane of temp7 [L1] and of temp1 [L2] */
//  temp13 = _mm256_permute2f128_pd(temp7, temp1, 2); /*[L1 L2]*/
//  temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);  /*swapping L2 and H2 of temp1*/
//  /* A vector of high lane of temp1 [H1] and of temp7 [H2] */
//  temp1 = _mm256_blend_pd(temp1, temp7, 12); /*[H1 H2]*/
//  temp1 = _mm256_add_pd(temp13, temp1);      /* L1+H1, L2+H2 */

//  /* =======Leftover element(3rd) row 1 & 2 and col ======= */
//  temp13 = _mm256_loadu_pd((double *)psi2 + 2);
//  temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);
//  temp14 = _mm256_blend_pd(temp14, temp13, 12); /*[H1 H2]*/

//  psi4 = _mm256_shuffle_pd(temp14, temp14, 0b0101); /*im re im re*/
//  temp12 = _mm256_mul_pd(temp12, psi4);
//  temp12 = _mm256_fmaddsub_pd(realup0up1, temp14, temp12);

//  /* Addition: 2x2 results + leftover */
//  temp1 = _mm256_add_pd(temp1, temp12);
//  /* ===========(Pair 2) End: Matrix 2 ============*/

//  /* ===========(Pair 3) Start: Matrix 1&2 ============*/
//  /* ********************************************************
//   * Matrix 1: Third row*col computation-first 2 elements
//   * ********************************************************/
//  temp12 = _mm256_mul_pd(temp3, temp9); /*(im*im)(im*re)(re*im)(im*re)*/
//  temp4 = _mm256_fmaddsub_pd(temp8, temp4, temp12);

//  /* **********************************************************
//   * Matrix 2: Third 3rd row*col computation - first 2 elements
//   * **********************************************************/
//  temp3 = _mm256_mul_pd(temp3, temp10); /*(im*im)(im*re)(re*im)(im*re)*/
//  temp3 = _mm256_fmaddsub_pd(temp8, temp5, temp3);

//  /* ==========Shuffling and adding 2 AVX registers of row 3 Matrix 1 & 2 results========== */
//  /* A vector of lower lane of temp3 [L1] and temp4 [L2]*/
//  temp5 = _mm256_permute2f128_pd(temp3, temp4, 2); /*[L1 L2]*/
//  temp4 = _mm256_permute2f128_pd(temp4, temp4, 1); /*swapping L2 and H2 of temp1*/
//  /* A vector of high lane of temp4 [H1] and temp3 [H2]*/
//  temp3 = _mm256_blend_pd(temp4, temp3, 12); /*[H1 H2]*/
//  temp3 = _mm256_add_pd(temp5, temp3);       /* L1+H1, L2+H2 */

//  /* =======Leftover element(3rd) row 3 and col ======= */
//  temp9 = _mm256_loadu_pd((double *)up + 14);       /*[14],[15],[16],[17] */
//  temp10 = _mm256_permute2f128_pd(temp9, temp9, 1); /* H1 becomes L1: [16][17][14][15]  */
//  temp9 = _mm256_blend_pd(temp10, temp9, 12);       /*[16][17][16][17]*/
//  temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000); /*re re re re*/
//  temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111); /*im im im im*/

//  temp9 = _mm256_blend_pd(psi_3rd_perm, temp13, 12); /*[H1 H2]*/
//  temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);  /*im re im re */

//  temp2 = _mm256_mul_pd(temp12, temp13);
//  temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);

//  temp2 = _mm256_add_pd(temp3, temp7); /*chi[2] chi2[2]*/

//  chi_3rd = _mm256_castpd256_pd128(temp2);    /* chi[2] */
//  chi2_3rd = _mm256_extractf128_pd(temp2, 1); /* chi2[2] */

//  /* ===========(Pair 3) End: Matrix 1&2 ============*/

//  /*Storing Results*/
//  _mm256_storeu_pd((double *)chi, temp11);
//  _mm_storeu_pd((double *)chi + 4, chi_3rd);

//  _mm256_storeu_pd((double *)chi2, temp1);
//  _mm_storeu_pd((double *)chi2 + 4, chi2_3rd);
// }

/* Memory allocation and aligned */
struct addr_t
{
 char *addr;
 char *true_addr;
 struct addr_t *next;
};

static struct addr_t *first = NULL;

void *amalloc(size_t size, int p)
{
 int shift;
 char *true_addr, *addr;
 unsigned long mask;
 struct addr_t *new;

 if ((size <= 0) || (p < 0))
  return (NULL);

 shift = 1 << p;
 mask = (unsigned long)(shift - 1);

 true_addr = (char *)malloc(size + shift);
 new = (struct addr_t *)malloc(sizeof(*first));

 if ((true_addr == NULL) || (new == NULL))
 {
  free(true_addr);
  free(new);
  return (NULL);
 }

 addr = (char *)(((unsigned long)(true_addr + shift)) & (~mask));
 (*new).addr = addr;
 (*new).true_addr = true_addr;
 (*new).next = first;
 first = new;

#ifdef AMALLOC_MEASURE
 insert((void *)addr, size);
#endif

 return ((void *)(addr));
}

void afree(void *addr)
{
 struct addr_t *p, *q;

#ifdef AMALLOC_MEASURE
 remove(addr);
#endif

 q = NULL;

 for (p = first; p != NULL; p = (*p).next)
 {
  if ((*p).addr == addr)
  {
   if (q != NULL)
    (*q).next = (*p).next;
   else
    first = (*p).next;

   free((*p).true_addr);
   free(p);
   return;
  }

  q = p;
 }
}
