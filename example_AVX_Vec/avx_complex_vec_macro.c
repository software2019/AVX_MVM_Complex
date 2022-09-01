
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

#define double_MVM(mc, mc2, mu, mp, mp2)            \
 {                                                  \
temp1 = _mm256_loadu_pd((double *)(mu));          \
temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);  \
temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111);  \
temp2 = _mm256_loadu_pd((double *)(mu) + 6);      \
temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000);  \
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);  \
temp3 = _mm256_loadu_pd((double *)(mu) + 12);     \
temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000);  \
temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);  \
temp4 = _mm256_loadu_pd((double *)(mp));          \
temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101);  \
temp5 = _mm256_loadu_pd((double *)(mp2));         \
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
psi_3rd_perm = _mm256_permute2f128_pd(temp13, temp13, 1);\
temp13 = _mm256_blend_pd(psi_3rd_perm, temp13, 12);\
realup0up1 = _mm256_shuffle_pd(temp12, temp12, 0b0000);\
temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);\
temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);\
temp14 = _mm256_mul_pd(temp12, temp14);\
temp13 = _mm256_fmaddsub_pd(realup0up1, temp13, temp14);\
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
psi4 = _mm256_shuffle_pd(temp14, temp14, 0b0101);\
temp12 = _mm256_mul_pd(temp12, psi4);\
temp12 = _mm256_fmaddsub_pd(realup0up1, temp14, temp12);\
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
temp9 = _mm256_blend_pd(psi_3rd_perm, temp13, 12);\
temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);\
temp2 = _mm256_mul_pd(temp12, temp13);\
temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);\
temp2 = _mm256_add_pd(temp3, temp7);\
chi_3rd = _mm256_castpd256_pd128(temp2);\
chi2_3rd = _mm256_extractf128_pd(temp2, 1);\
_mm256_storeu_pd((double *)(mc), temp11);\
_mm_storeu_pd((double *)(mc) + 4, chi_3rd);\
_mm256_storeu_pd((double *)(mc2), temp1);\
_mm_storeu_pd((double *)(mc2) + 4, chi2_3rd);\
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

 suNf_vector chi, chi2, chi3, chi4, psi, psi2, psi_copy, psi2_copy;
 suNf up;

 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, realup0up1, psi_3rd_perm, psi4;
 __m128d chi_3rd, chi2_3rd;


 /*Initialising the variables*/
 my_init(&psi, &psi2, &up, n);
 /******************************************************************************
  * Checking the results are identical: double_MVM() == _suNf_theta_T_multiply()
  ******************************************************************************/

 double_MVM(&chi, &chi2, &up, &psi, &psi2);
 _suNf_theta_T_multiply(chi3, up, psi);
 _suNf_theta_T_multiply(chi4, up, psi2);

 // double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);
 // _suNf_theta_T_inverse_multiply(chi3, (up), psi);
 // _suNf_theta_T_inverse_multiply(chi4, (up), psi2);

 for (i = 0; i < 3; i++)
 {
  res1 = creal(chi.c[i]);
  res2 = cimag(chi.c[i]);

  res3 = creal(chi3.c[i]);
  res4 = cimag(chi3.c[i]);

  res5 = creal(chi2.c[i]);
  res6 = cimag(chi2.c[i]);

  res7 = creal(chi4.c[i]);
  res8 = cimag(chi4.c[i]);

  if ((fabs((res1 - res3) / res1) > 1.e-15) || (fabs((res2 - res4) / res2) > 1.e-15))
  {
   printf("Error! First AVX_MVM and T_multiply are not equal\n");
  }
  else
  {
   printf("First chi passed at element %d\n", i);
  }

  if ((fabs((res5 - res7) / res5) > 1.e-15) || (fabs((res6 - res8) / res6) > 1.e-15))
  {
   printf("Error! Second AVX_MVM and T_multiply are not equal\n");
  }
  else
  {
   printf("Second chi passed at element %d\n", i);
  }
  printf("\n");

  res1 = .0;
  res2 = .0;
  res3 = .0;
  res4 = .0;

  res5 = .0;
  res6 = .0;
  res7 = .0;
  res8 = .0;
 }

 /*****************************************************************
  * Testing Performance: double_MVM() vs _suNf_theta_T_multiply()
  *****************************************************************/

 // psi_copy = psi;
 // psi2_copy = psi2;

 for (i = 0; i < n_warmup; ++i)
 {
  double_MVM(&chi, &chi2, &up, &psi, &psi2);
  double_MVM(&psi, &psi2, &up, &chi, &chi2);

  psi.c[0] *= 0.001;
  psi.c[1] *= 0.001;
  psi.c[2] *= 0.001;

  psi2.c[0] *= 0.001;
  psi2.c[1] *= 0.001;
  psi2.c[2] *= 0.001;
 }

 // psi_copy = psi;
 // psi2_copy = psi2;

 // gettimeofday(&start, 0);
 // for (i = 0; i < n_times; ++i)
 // {
 //  double_MVM(&chi, &chi2, &up, &psi, &psi2);
 //  double_MVM(&psi, &psi2, &up, &chi, &chi2);

 //  // psi.c[0] *= 0.001;
 //  // psi.c[1] *= 0.001;
 //  // psi.c[2] *= 0.001;

 //  // psi2.c[0] *= 0.001;
 //  // psi2.c[1] *= 0.001;
 //  // psi2.c[2] *= 0.001;
 // }
 // gettimeofday(&end, 0);
 // timeval_subtract(&etime, &end, &start);
 // elapsed = etime.tv_sec * 1000. + etime.tv_usec * 0.001;
 // printf("Double_MVM_AVX MACRO Time: [%ld sec %ld usec]\n", etime.tv_sec, etime.tv_usec);

 // psi_copy = psi;
 // psi2_copy = psi2;
 for (i = 0; i < n_warmup; ++i)
 {
  _suNf_theta_T_multiply(chi, up, psi);
  _suNf_theta_T_multiply(chi2, up, psi2);

  _suNf_theta_T_multiply(psi, up, chi);
  _suNf_theta_T_multiply(psi2, up, chi2);

  psi.c[0] *= 0.001;
  psi.c[1] *= 0.001;
  psi.c[2] *= 0.001;

  psi2.c[0] *= 0.001;
  psi2.c[1] *= 0.001;
  psi2.c[2] *= 0.001;
 }

 // psi_copy = psi;
 // psi2_copy = psi2;
 // gettimeofday(&start, 0);
 // for (i = 0; i < n_times; ++i)
 // {
 //  _suNf_theta_T_multiply(chi, up, psi);
 //  _suNf_theta_T_multiply(chi2, up, psi2);

 //  _suNf_theta_T_multiply(psi, up, chi);
 //  _suNf_theta_T_multiply(psi2, up, chi2);

 //  // psi.c[0] *= 0.001;
 //  // psi.c[1] *= 0.001;
 //  // psi.c[2] *= 0.001;

 //  // psi2.c[0] *= 0.001;
 //  // psi2.c[1] *= 0.001;
 //  // psi2.c[2] *= 0.001;
 // }
 // gettimeofday(&end, 0);
 // timeval_subtract(&etime, &end, &start);
 // elapsed = etime.tv_sec * 1000. + etime.tv_usec * 0.001;
 // printf("theta_T_multiply Time: [%ld sec %ld usec]\n", etime.tv_sec, etime.tv_usec);

 return 0;
}
