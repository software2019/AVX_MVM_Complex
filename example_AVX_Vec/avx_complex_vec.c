
#include "header.h"


/**************************************************************************************************
 *   Commands for compile:
 *   gcc avx_complex_vec.c -o test1 -lm -O3
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

int main()
{
 int i;
 double res1, res2, res3, res4, res5, res6, res7, res8;
 float elapsed, gflops;
 int n_times = 1;
 int n_warmup = 0;
 struct timeval start, end, etime;

 suNf_vector chi, chi2, chi3, chi4, psi, psi2; //__attribute__((aligned(64)));
 suNf up;
 /******Iniatilized the variables*****/
 /* Vector initialized: 6 doubles */
 // psi.c[0] = (0.1 + 0.2 * I);
 // psi.c[1] = (0.3 + 0.4 * I);
 // psi.c[2] = (0.5 + 0.6 * I);

 // psi2.c[0] = (0.2 + 0.1 * I);
 // psi2.c[1] = (0.8 + 0.7 * I);
 // psi2.c[2] = (0.4 + 0.5 * I);


 /* Matrix (3x3) initialized: 18 doubles */
 // up.c[0] = (0.1 + 0.2 * I);
 // up.c[1] = (0.3 + 0.4 * I);
 // up.c[2] = (0.5 + 0.6 * I);

 // up.c[3] = (0.2 + 0.1 * I);
 // up.c[4] = (0.3 + 0.2 * I);
 // up.c[5] = (0.1 + 0.3 * I);

 // up.c[6] = (0.4 + 0.5 * I);
 // up.c[7] = (0.6 + 0.4 * I);
 // up.c[8] = (0.5 + 0.6 * I);

 /* Vector initialized: 6 doubles */
 psi.c[0] = (1.0 + 4.0 * I);
 psi.c[1] = (2.0 + 5.0 * I);
 psi.c[2] = (3.0 + 6.0 * I);

 psi2.c[0] = (1.0 + 2.0 * I);
 psi2.c[1] = (3.0 + 4.0 * I);
 psi2.c[2] = (2.0 + 1.0 * I);

 /* Matrix (3x3) initialized: 18 doubles */
 up.c[0] = (1.0 + 2.0 * I);
 up.c[1] = (3.0 + 4.0 * I);
 up.c[2] = (5.0 + 6.0 * I);

 up.c[3] = (2.0 + 1.0 * I);
 up.c[4] = (3.0 + 2.0 * I);
 up.c[5] = (1.0 + 3.0 * I);

 up.c[6] = (4.0 + 5.0 * I);
 up.c[7] = (6.0 + 4.0 * I);
 up.c[8] = (5.0 + 6.0 * I);

 /* ****************************************************************************
  * Checking the results are identical: double_MVM() == _suNf_theta_T_multiply()
  ******************************************************************************/

 // double_MVM(&chi, &chi2, &up, &psi, &psi2);

 // _suNf_theta_T_multiply(chi3, (up), psi);
 // _suNf_theta_T_multiply(chi4, (up), psi2);

 // for (i = 0; i < 3; i++)
 // {
 //  res1 = .0;
 //  res2 = .0;
 //  res3 = .0;
 //  res4 = .0;

 //  res5 = .0;
 //  res6 = .0;
 //  res7 = .0;
 //  res8 = .0;

 //  res1 = creal(chi.c[i]);
 //  res2 = cimag(chi.c[i]);
 //  res3 = creal(chi3.c[i]);
 //  res4 = cimag(chi3.c[i]);

 //  res5 = creal(chi2.c[i]);
 //  res6 = cimag(chi2.c[i]);
 //  res7 = creal(chi4.c[i]);
 //  res8 = cimag(chi4.c[i]);

 //  if (((res1 - res3 / res1) > 1.e-15) || ((res2 - res4 / res2) > 1.e-15))
 //  {
 //    printf("Error! First AVX_MVM and T_multiply are not equal\n");
 //  }
 //  else
 //  {
 //    printf("First chi passed at element \n", i);
 //  }

 //  if (((res5 - res6 / res5) > 1.e-15) || ((res7 - res8 / res7) > 1.e-15))
 //  {
 //    printf("Error! Second AVX_MVM and T_multiply are not equal\n");
 //  }
 //  else
 //  {
 //    printf("Second chi passed at element \n", i);
 //  }

 // }

 /* *********************************Test Code End****************************** */

 /* AVX Implementation */
 // single_MVM(&chi, &up, &psi);
 // printf("Single MVM Computation\n");
 // printf("chi[0] = %.1fre\n", creal(chi.c[0]));
 // printf("chi[0] = %.1fim\n", cimag(chi.c[0]));
 // printf("chi[1] = %.1fre\n", creal(chi.c[1]));
 // printf("chi[1] = %.1fim\n", cimag(chi.c[1]));
 // printf("chi[2] = %.1fre\n", creal(chi.c[2]));
 // printf("chi[2] = %.1fim\n\n", cimag(chi.c[2]));

 /* ***************************************************************
  * Testing Performance: double_MVM() vs _suNf_theta_T_multiply()
  *****************************************************************/
 //for (i = 0; i < n_warmup; ++i)
 //{
 // double_MVM(&chi, &chi2, &up, &psi, &psi2);
  //double_MVM(&psi, &psi2, &up, &chi, &chi2);
  // psi.c[0] /= 100;
  // psi.c[1] /= 100;
  // psi.c[2] /= 100;

  // psi2.c[0] /= 100;
  // psi2.c[1] /= 100;
  // psi2.c[2] /= 100;
 //}

 // gettimeofday(&start, 0);
 // for (i = 0; i < n_times; ++i)
 // {
 //  double_MVM(&chi, &chi2, &up, &psi, &psi2);
  // double_MVM(&psi, &psi2, &up, &chi, &chi2);

  // psi.c[0]/=100;
  // psi.c[1]/=100;
  // psi.c[2]/=100;

  // psi2.c[0]/=100;
  // psi2.c[1]/=100;
  // psi2.c[2]/=100;
 //}
 // gettimeofday(&end, 0);
 // timeval_subtract(&etime, &end, &start);
 // elapsed = etime.tv_sec * 1000. + etime.tv_usec * 0.001;
 // printf("Double_MVM_AVX Time: [%ld sec %ld usec]\n", etime.tv_sec, etime.tv_usec);

 // for (i = 0; i < n_warmup; ++i)
 // {
 //  _suNf_theta_T_multiply(chi, (up), psi);
 //  _suNf_theta_T_multiply(chi2, (up), psi2);

 //  _suNf_theta_T_multiply(psi, (up), chi);
 //  _suNf_theta_T_multiply(psi2, (up), chi2);
 //  psi.c[0]/=100;
 //  psi.c[1]/=100;
 //  psi.c[2]/=100;

 //  psi2.c[0]/=100;
 //  psi2.c[1]/=100;
 //  psi2.c[2]/=100;
 // }

 // gettimeofday(&start, 0);
 // for (i = 0; i < n_times; ++i)
 // {
 //  _suNf_theta_T_multiply(chi, (up), psi);
 //  _suNf_theta_T_multiply(chi2, (up), psi2);

 //  _suNf_theta_T_multiply(psi, (up), chi);
 //  _suNf_theta_T_multiply(psi2, (up), chi2);
 //  psi.c[0]/=100;
 //  psi.c[1]/=100;
 //  psi.c[2]/=100;

 //  psi2.c[0]/=100;
 //  psi2.c[1]/=100;
 //  psi2.c[2]/=100;
 // }
 // gettimeofday(&end, 0);
 // timeval_subtract(&etime, &end, &start);
 // elapsed = etime.tv_sec * 1000. + etime.tv_usec * 0.001;
 // printf("theta_T_multiply Time: [%ld sec %ld usec]\n", etime.tv_sec, etime.tv_usec);

 single_MVM_inverse(&chi, &up, &psi);
 printf("Double MVM Computation\n");
 printf("chi[0] = %.1fre\n", creal(chi.c[0]));
 printf("chi[0] = %.1fim\n", cimag(chi.c[0]));
 printf("chi[1] = %.1fre\n", creal(chi.c[1]));
 printf("chi[1] = %.1fim\n", cimag(chi.c[1]));
 printf("chi[2] = %.1fre\n", creal(chi.c[2]));
 printf("chi[2] = %.1fim\n\n", cimag(chi.c[2]));

 // printf("chi2[0] = %.1fre\n", creal(chi2.c[0]));
 // printf("chi2[0] = %.1fim\n", cimag(chi2.c[0]));
 // printf("chi2[1] = %.1fre\n", creal(chi2.c[1]));
 // printf("chi2[1] = %.1fim\n", cimag(chi2.c[1]));
 // printf("chi2[2] = %.1fre\n", creal(chi2.c[2]));
 // printf("chi2[2] = %.1fim\n\n", cimag(chi2.c[2]));

 return 0;
 }

// FMA on 4 complex doubles each from up and psi, storing the result in chi.
void single_MVM(suNf_vector *chi, const suNf *up, const suNf_vector *psi)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, psi2, psi3, psi_3rd;
 __m128d chi_3rd;

 /*up and psi are loaded from memory to register up0 and psi0*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up);
 temp2 = _mm256_shuffle_pd(temp1, temp1, 0b0000); // temp2 realup0
 temp3 = _mm256_shuffle_pd(temp1, temp1, 0b1111); // temp3 imagup0

 temp8 = _mm256_loadu_pd((double *)up + 2); // temp8 up0_3rd

 /* Loading second set of 3 complexes of 3x3 matrix */
 temp1 = _mm256_loadu_pd((double *)up + 6);
 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0000); // temp4 realup1
 temp5 = _mm256_shuffle_pd(temp1, temp1, 0b1111); // temp5 imagup1

 temp9 = _mm256_load_pd((double *)up + 8); // temp9 up1_3rd

 /* Loading third set of 3 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up + 12);
 temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); // temp6 realup2
 temp7 = _mm256_shuffle_pd(temp1, temp1, 0b1111); // temp7 imagup2

 /* Loading 3 complexes of psi vector and suffling */
 temp1 = _mm256_load_pd((double *)psi); // temp1
 psi2 = _mm256_shuffle_pd(temp1, temp1, 0b0101);
 psi_3rd = _mm256_loadu_pd((double *)psi + 2);

 /******* Computations*******/
 /* =======First set of computation (Row 1): 2x2========*/
 temp2 = _mm256_mul_pd(temp2, temp1);    // temp2 reimprod0
 temp3 = _mm256_mul_pd(temp3, psi2);     // temp3 imagup0  _reimprod0
 temp2 = _mm256_addsub_pd(temp2, temp3); // temp2  addsub_res0 temp3 _reimprod0

 /* =======Second set of computation (Row 2): 2x2========*/
 temp4 = _mm256_mul_pd(temp4, temp1);    // temp4 realup1   reimprod1
 temp5 = _mm256_mul_pd(temp5, psi2);     // temp5 imagup1 _reimprod1
 temp4 = _mm256_addsub_pd(temp4, temp5); // temp4 reimprod1  addsub_res1  temp5 _reimprod1

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT(2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 temp3 = _mm256_permute2f128_pd(temp4, temp2, 2); // [L1 L2]  // temp4 addsub_res1  temp3 _addsub_res0
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); // Placing H2 lane in L2 lane  temp2 res1
 /* A vector of high lane of res1 [H1] and of addsub_res1 [H2] */
 temp2 = _mm256_blend_pd(temp2, temp4, 12); // [H1 H2]  temp4 addsub_res1 temp2 res1
 temp2 = _mm256_add_pd(temp3, temp2);       // Result of 2x2  temp2 res1  temp3 _addsub_res0

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 temp8 = _mm256_permute2f128_pd(temp8, temp8, 1);                                                                             // temp8 up0_3rd up0_3rd_perm
 temp8 = _mm256_blend_pd(temp8, temp9, 12); /* Need higher lane [H1 H2] of upo_3rd and up1_3rd as AVX load from 2nd element*/ // temp8 up0_3rd_perm up0up1_3rd | temp9 up1_3rd

 temp9 = _mm256_permute2f128_pd(psi_3rd, psi_3rd, 1);                                     // temp9 psi_3rd_perm
 temp4 = _mm256_blend_pd(temp9, psi_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of col */ // temp9 psi_3rd_perm  temp4 psi_3rd_duplicate

 temp10 = _mm256_shuffle_pd(temp8, temp8, 0b0000); // temp8 up0up1_3rd  temp10 realup0up1
 temp13 = _mm256_shuffle_pd(temp8, temp8, 0b1111); // temp8 up0up1_3rd  // temp13 imagup0up1
 psi3 = _mm256_shuffle_pd(temp4, temp4, 0b0101);   // temp10 psi_3rd_duplicate
 temp10 = _mm256_mul_pd(temp10, temp4);            // temp10 psi_3rd_duplicate  reimprod3   temp10 realup0up1 reimprod3
 temp13 = _mm256_mul_pd(temp13, psi3);             // temp13 imagup0up1  _reimprod3
 temp10 = _mm256_addsub_pd(temp10, temp13);        // Result of 3rd elements of row 1&2 and col  // temp10  reimprod3  addsub_res3  temp13   _reimprod3

 /* Additions */
 temp2 = _mm256_add_pd(temp2, temp10); // first 2 rows-col result: chi[0] chi[1]  // temp10  addsub_res3  temp2 res1
 // printf("add_all_0[0] = %.1fre\n", creal(add_all_0[0]));
 // printf("add_all_0[1] = %.1fim\n", creal(add_all_0[1]));
 // printf("add_all_0[2] = %.1fre\n", creal(add_all_0[2]));
 // printf("add_all_0[3] = %.1fim\n", creal(add_all_0[3]));

 /* =======Third set of computation: 3rd row and col: 2x2========*/
 temp6 = _mm256_mul_pd(temp6, temp1);              // temp6 realup2  reimprod2
 temp7 = _mm256_mul_pd(temp7, psi2);               // temp7 imagup2 _reimprod2
 temp6 = _mm256_addsub_pd(temp6, temp7);           // temp6  reimprod2 addsub_res2  temp7 _reimprod2
 temp10 = _mm256_permute2f128_pd(temp6, temp6, 1); // temp6 addsub_res2  temp10 _addsub_res2
 temp1 = _mm256_add_pd(temp10, temp6);             // 3rd row 2x2 result: low and high lanes are identical  // temp6 addsub_res2  temp1 add_res2

 /* =========3rd element of 3rd row with 3rd element of col======== */
 temp6 = _mm256_loadu_pd((double *)up + 14);
 temp10 = _mm256_permute2f128_pd(temp6, temp6, 1);   // temp10 up2_3rd_perm
 temp10 = _mm256_blend_pd(temp10, temp6, 12);        // temp10 up2_3rd_perm up2_3rd_duplicate
 temp11 = _mm256_shuffle_pd(temp10, temp10, 0b0000); // temp10 up2_3rd_duplicate  temp11 realup2_3rd
 temp12 = _mm256_shuffle_pd(temp10, temp10, 0b1111); // temp10 up2_3rd_duplicate   temp12 imagup2_3rd
 temp11 = _mm256_mul_pd(temp11, temp4);              // psi_3rd_duplicate reused   temp11 realup2_3rd  reimprod4
 temp12 = _mm256_mul_pd(temp12, psi3);               // psi3 reused  //temp12 imagup2_3rd _reimprod4
 temp11 = _mm256_addsub_pd(temp11, temp12);          // 3rd element of 3rd row and col: result: lanes are identical  temp11 reimprod4 addsub_res4

 temp11 = _mm256_add_pd(temp1, temp11);    // 2X2 3rd row-col result + 3rd row-col 3rd element result: lanes are identical   temp11 addsub_res4 add_res3
 chi_3rd = _mm256_castpd256_pd128(temp11); // 3rd row-col result: chi[2] //temp11 add_res3
 // printf("add_all_1[0] = %.1fre\n", creal(add_all_1[0]));
 // printf("add_all_1[1] = %.1fre\n\n", creal(add_all_1[1]));

 /* Storing Results */
 _mm256_storeu_pd((double *)chi, temp2);
 _mm_storeu_pd((double *)chi + 4, chi_3rd);
}

void double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, realup0up1, psi_3rd_perm, psi4;
 __m128d vec0_3rd, vec1_3rd;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first row (2 complexes) of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up);                                                              // temp1 up0
 temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /* Shuffle up0: (real real real real) parts */    // temp1 up0  temp6 realup0
 temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /* Shuffle up0: (imag, imag, imag, imag) parts */ // temp1 up0 imagup0

 /* Loading second row (2 complexes) of 3x3 matrix */
 temp2 = _mm256_loadu_pd((double *)up + 6);                                                         // temp2 up1
 temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /* Shuffle up1: (real real real real) parts */    // temp2 up1  temp7 realup1
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /* Shuffle up1: (imag, imag, imag, imag) parts */ // temp2 up1 imagup1

 /* Loading third row (2 complexes) of 3x3 matrix */
 temp3 = _mm256_load_pd((double *)up + 12);                                                         // temp3 up2
 temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /* Shuffle up2: (real real real real) parts */    // temp3 up2  temp8 realup2
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /* Shuffle up2: (imag, imag, imag, imag) parts */ // temp3 up2  imagup2

 /* Loading first column (2 complexes of psi vector) and suffling */
 temp4 = _mm256_load_pd((double *)psi);           // temp4 psi0
 temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101); // temp4 psi0  temp9 psi0_shuf

 /* Loading second column (2 complexes of psi2 vector) and suffling */
 temp5 = _mm256_load_pd((double *)psi2);           // from 0-31 bytes  // temp5 psi2_0
 temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101); // temp5 psi2_0  temp10 psi2_0_shuf

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First set of computation:2x2*/
 temp11 = _mm256_mul_pd(temp6, temp4); /* (re*re),(re*im),(re*re),(re*im) */ // temp4 psi0  temp6 realup0  temp11 reimprod0
 temp12 = _mm256_mul_pd(temp1, temp9); /* (im*im),(im*re),(re*im),(im*re) */ // temp1 imagup0  temp9 psi0_shuf temp12 _reimprod0
 temp11 = _mm256_addsub_pd(temp11, temp12); /*addsub*/                       // temp11 reimprod0  addsub_res0 temp12 _reimprod0

 /*Second set of computation:2x2*/
 temp12 = _mm256_mul_pd(temp7, temp4); /* (re*re),(re*im),(re*re),(re*im) */ // temp4 psi0  temp7 realup1 temp12 reimprod1
 temp13 = _mm256_mul_pd(temp2, temp9); /* (im*im),(im*re),(re*im),(im*re) */ // temp2 imagup1 temp9 psi0_shuf  temp13 _reimprod1
 temp12 = _mm256_addsub_pd(temp12, temp13); /*addsub*/                       // temp12 reimprod1  addsub_res1  temp13 _reimprod1

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 temp13 = _mm256_permute2f128_pd(temp12, temp11, 2); //[L1 L2]//temp11 addsub_res0 temp12 addsub_res1 temp13 _addsub_res0
 temp11 = _mm256_permute2f128_pd(temp11, temp11, 1); // Placing H2 lane in L2 lane  //temp11 addsub_res0 res1
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 temp11 = _mm256_blend_pd(temp11, temp12, 12); //[H1 H2]//temp11 res1 _addsub_res1  temp12 addsub_res1
 temp11 = _mm256_add_pd(temp13, temp11);       // Result of 2x2 temp11 _addsub_res1  add_res1  temp13 _addsub_res0

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 temp12 = _mm256_loadu_pd((double *)up + 2);                                        // temp12 up0_3rd
 temp12 = _mm256_permute2f128_pd(temp12, temp12, 1);                                // temp12 up0_3rd  up0_3rd_perm
 temp13 = _mm256_load_pd((double *)up + 8);                                         // temp13 up1_3rd
 temp12 = _mm256_blend_pd(temp12, temp13, 12); /* [H1 H2] of upo_3rd and up1_3rd */ // temp12  up0_3rd_perm up0up1_3rd   // temp13 up1_3rd

 temp13 = _mm256_loadu_pd((double *)psi + 2);                                                    // temp13 psi_3rd
 psi_3rd_perm = _mm256_permute2f128_pd(temp13, temp13, 1);                                       // temp13 psi_3rd
 temp13 = _mm256_blend_pd(psi_3rd_perm, temp13, 12); /*[H1 H2] of psi_3rd, 3rd element of col */ // temp13 psi_3rd psi_3rd_duplicate

 realup0up1 = _mm256_shuffle_pd(temp12, temp12, 0b0000); // temp12  up0up1_3rd
 temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);     // temp12  up0up1_3rd imagup0up1
 temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);     // temp13 psi_3rd_duplicate temp14 psi3
 temp13 = _mm256_mul_pd(realup0up1, temp13);             // temp13 psi_3rd_duplicate  reimprod3rd_1
 temp14 = _mm256_mul_pd(temp12, temp14);                 // temp12  imagup0up1 temp14 psi3 _reimprod3rd_1
 temp13 = _mm256_addsub_pd(temp13, temp14);              // Result of 3rd elements of row 1&2 and col  temp13 reimprod3rd_1 addsub_res3rd_1 temp14 _reimprod3rd_1

 /* Additions */
 temp11 = _mm256_add_pd(temp11, temp13); // first 2 rows-col result of matrix-1: chi[0] chi[1] temp11 add_res1 add_all_0 temp13 addsub_res3rd_1
 /* =================================(Pair 1) end  ============================= */

 /* =================================(Pair 2) start ============================= */
 /*Fourth set of computation:2x2*/
 temp6 = _mm256_mul_pd(temp6, temp5); /* (re*re),(re*im),(re*re),(re*im) */  // temp5 psi2_0  temp6 realup0 reimprod3
 temp1 = _mm256_mul_pd(temp1, temp10); /* (im*im),(im*re),(re*im),(im*re) */ // temp1 imagup0 _reimprod3   temp10 psi2_0_shuf
 temp1 = _mm256_addsub_pd(temp6, temp1); /*addsub*/                          // temp1  _reimprod3 addsub_res3  temp6  reimprod3

 /*Fifth set of computation:2x2*/
 temp6 = _mm256_mul_pd(temp7, temp5); /* (re*re),(re*im),(re*re),(re*im) */  // temp5 psi2_0  temp6 reimprod4  temp7 realup1
 temp2 = _mm256_mul_pd(temp2, temp10); /* (im*im),(im*re),(re*im),(im*re) */ // temp2 imagup1 _reimprod4  temp10 psi2_0_shuf
 temp7 = _mm256_addsub_pd(temp6, temp2); /*addsub*/                          // temp2 _reimprod4  temp6 reimprod4  temp7 addsub_res4

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 2 (2x2)========== */
 /* A vector of lower lane of temp7 [L1] and of temp1 [L2] */
 temp13 = _mm256_permute2f128_pd(temp7, temp1, 2); // [L1 L2]  temp1 addsub_res3  temp7 addsub_res4  temp13 _addsub_res2
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);  // Placing H2 lane in L2 lane  temp1 addsub_res3  res2
 /* A vector of high lane of temp1 [H1] and of temp7 [H2] */
 temp1 = _mm256_blend_pd(temp1, temp7, 12); // [H1 H2]  temp1 res2  _addsub_res3  temp7 addsub_res4
 temp1 = _mm256_add_pd(temp13, temp1);      // Result of 2x2  temp1 _addsub_res3  add_res2 temp13 _addsub_res2

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 temp13 = _mm256_loadu_pd((double *)psi2 + 2);                                             // from 32-47 bytes temp13 psi2_3rd
 temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);                                       // temp14 psi2_3rd_256 // temp13 psi2_3rd
 temp14 = _mm256_blend_pd(temp14, temp13, 12); /*[H1 H2] of psi_3rd, 3rd element of col */ // temp13 psi2_3rd temp14 psi2_3rd_256 psi2_3rd_duplicate

 psi4 = _mm256_shuffle_pd(temp14, temp14, 0b0101); // temp14 psi2_3rd_duplicate
 temp14 = _mm256_mul_pd(realup0up1, temp14);       // temp14 reimprod3rd_2
 temp12 = _mm256_mul_pd(temp12, psi4);             // temp12 imagup0up1 _reimprod3rd_2
 temp12 = _mm256_addsub_pd(temp14, temp12);        // Result of 3rd elements of row 1&2 and col //temp12 _reimprod3rd_2 addsub_res3rd_2 // temp14 reimprod3rd_2

 /* Additions */
 temp1 = _mm256_add_pd(temp1, temp12); // first 2 rows-col result of matrix 2: chi2[0] chi2[1] temp1 add_res2  add_all_1  temp12 addsub_res3rd_2
 /* =================================(Pair 2) End ============================= */

 /* =================================(Pair 3) Start ============================= */
 /*Third set of computation:2x2*/
 temp4 = _mm256_mul_pd(temp8, temp4); /* (re*re),(re*im),(re*re),(re*im) */  // temp4 reimprod2  temp8 realup2
 temp12 = _mm256_mul_pd(temp3, temp9); /* (im*im),(im*re),(re*im),(im*re) */ // temp3 up2  imagup2  temp9 psi0_shuf temp12 _reimprod2
 temp4 = _mm256_addsub_pd(temp4, temp12); /*addsub*/                         // temp4 reimprod2  addsub_res2  temp12 _reimprod2

 /*Sixth set of computation:2x2*/
 temp5 = _mm256_mul_pd(temp8, temp5); /* (re*re),(re*im),(re*re),(re*im) */  // temp5 psi2_0  reimprod5  temp8 realup2
 temp3 = _mm256_mul_pd(temp3, temp10); /* (im*im),(im*re),(re*im),(im*re) */ // temp3   imagup2  _reimprod5  temp10 psi2_0_shuf
 temp3 = _mm256_addsub_pd(temp5, temp3); /*addsub*/                          // temp3   _reimprod5  addsub_res5  // temp5 reimprod5

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 3 Matrix 1 and 2 RESULT========== */
 /* A vector of lower lane of addsub_res5 [L1] and of addsub_res2 [L2] */
 temp5 = _mm256_permute2f128_pd(temp3, temp4, 2); // [L1 L2] // temp3  addsub_res5  // temp4 addsub_res2 res3 temp5 _addsub_res4
 temp4 = _mm256_permute2f128_pd(temp4, temp4, 1); // Placing H2 lane in L2 lane  // temp4 addsub_res2
 /* A vector of high lane of res3 [H1] and of addsub_res5 [H2] */
 temp3 = _mm256_blend_pd(temp4, temp3, 12); // [H1 H2] // temp3  addsub_res5  _addsub_res5
 temp3 = _mm256_add_pd(temp5, temp3);       // Result of ROW 3 of matrix 1 & 2  temp3 _addsub_res5  add_res3  temp5 _addsub_res4

 /* =======Dealing with 3rd element of 3rd row and col of both matrix ======= */
 temp9 = _mm256_loadu_pd((double *)up + 14);       // temp9 up2_3rd
 temp10 = _mm256_permute2f128_pd(temp9, temp9, 1); // temp9 up2_3rd  temp10 up2_3rd_perm
 temp9 = _mm256_blend_pd(temp10, temp9, 12);       // temp9 up2_3rd  up2_3rd_duplicate   temp10 up2_3rd_perm
 temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000); // temp9 up2_3rd_duplicate  temp10 realup2_3rd
 temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111); // temp9 up2_3rd_duplicate temp12 imagup2_3rd

 temp9 = _mm256_blend_pd(psi_3rd_perm, temp13, 12); /*[H1 H2] of psi_3rd, 3rd element of col */ // temp9 psi_psi2_3rd  // temp13 psi2_3rd
 temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);                                              // temp9 psi_psi2_3rd  temp13 psi_psi2_3rd_shuf

 temp6 = _mm256_mul_pd(temp10, temp9);   // temp6 reimprod4 // temp9 psi_psi2_3rd  temp10 realup2_3rd
 temp2 = _mm256_mul_pd(temp12, temp13);  // temp2 _reimprod4  temp12 imagup2_3rd  temp13 psi_psi2_3rd_shuf
 temp7 = _mm256_addsub_pd(temp6, temp2); // 3rd element of 3rd row and col: result: lanes are identical ||temp2 _reimprod4 || temp6 reimprod4 temp7 addsub_res4

 temp2 = _mm256_add_pd(temp3, temp7); // chi[2] chi2[2] temp2 add_all_2 temp3 add_res3  temp7 addsub_res4

 vec0_3rd = _mm256_castpd256_pd128(temp2);   // First 128-bits chi[2]  temp2 add_all_2
 vec1_3rd = _mm256_extractf128_pd(temp2, 1); // Second 128-bits chi2[2]  temp2 add_all_2

 /* =================================(Pair 3) End ============================= */

 // printf("add_all_0[0] = %.1fre\n", creal(add_all_0[0]));
 // printf("add_all_0[1] = %.1fim\n", creal(add_all_0[1]));
 // printf("add_all_0[2] = %.1fre\n", creal(add_all_0[2]));
 // printf("add_all_0[3] = %.1fim\n", creal(add_all_0[3]));
 // printf("vec0_3rd[0] = %.1fre\n", creal(vec0_3rd[0]));
 // printf("vec0_3rd[1] = %.1fre\n\n", creal(vec0_3rd[1]));

 // printf("add_all_1[0] = %.1fre\n", creal(add_all_1[0]));
 // printf("add_all_1[1] = %.1fim\n", creal(add_all_1[1]));
 // printf("add_all_1[2] = %.1fre\n", creal(add_all_1[2]));
 // printf("add_all_1[3] = %.1fim\n", creal(add_all_1[3]));
 // printf("vec1_3rd[0] = %.1fre\n", creal(vec1_3rd[0]));
 // printf("vec1_3rd[1] = %.1fim\n\n", creal(vec1_3rd[1]));

 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp11); // temp11
 //_mm_storeu_pd((__m128d *)chi + 2, vec0_3rd);
 _mm_store_pd((double *)chi + 4, vec0_3rd);

 _mm256_store_pd((double *)chi2, temp1); // temp1 add_all_1
 _mm_store_pd((double *)chi2 + 4, vec1_3rd);
}

void single_MVM_inverse(suNf_vector *chi, const suNf *um, const suNf_vector *psi)
{

 __m256d up0, up0_3rd, up1, up1_3rd, up2, up2_3rd, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod2, _reimprod2, reimprod3, _reimprod3, reimprod3rd_1, _reimprod3rd_1, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, addsub_res2, _addsub_res2, addsub_res3, _addsub_res3, addsub_res3rd_1, psi0, psi0_real, psi0_imag, psi_3rd, add_res1, add_res2, add_res3, up0up1_3rd,  up2_3rd_perm, psi_3rd_perm, up2_3rd_duplicate, psi_3rd_duplicate, res1, res2, add_all_0, um0um3, um1um4, um0um3_shuf, um1um4_shuf, psi_3rd_real, psi_3rd_imag, um2_shuf, up0up1_3rd_perm, up0up1_3rd_shuf, um2_3rd_shuf;

 __m128d add_all_1;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_loadu_pd((double *)um); // um[0]um[1]
 

 /* Loading second set of 3 complexes of 3x3 matrix */
 up1 = _mm256_loadu_pd((double *)um + 6); // um[3]um[4]

 /* Vectors needed: reshuffle
  *  vec1 = um[0] um[3]
  *  vec2 = um[1] um[4]
  *  vec3 = um[2] um[5] (up0_3rd up1_3rd)
  */

 /****************************************************************
 * col1: working vector of lower lane of up0 [L1] and of up1 [L2] 
 * ***************************************************************/
 um0um3 = _mm256_permute2f128_pd(up1, up0, 2);      //[L1 L2] vec1 = um[0] um[3] (1.0 + 2.0 * I) (2.0 + 1.0 * I)
 res1 = _mm256_permute2f128_pd(up0, up0, 1);        // Placing H2 lane in L2 lane

 /*******************************************************************************
  * col2: working vector vector of high lane of temp [H1] and of addsub_res1 [H2]
  * *****************************************************************************/
 um1um4 = _mm256_blend_pd(res1, up1, 12); //[H1 H2] um[1] um[4](re im re im) = (3.0 + 4.0 * I) (3.0 + 2.0 * I)

 // printf("um0um3[0] = %.1fre\n", um0um3[0]);
 // printf("um0um3[1] = %.1fim\n", um0um3[1]);
 // printf("um0um3[2] = %.1fre\n", um0um3[2]);
 // printf("um0um3[3] = %.1fim\n\n", um0um3[3]);

 // printf("um1um4[0] = %.1fre\n", um1um4[0]);
 // printf("um1um4[1] = %.1fim\n", um1um4[1]);
 // printf("um1um4[2] = %.1fre\n", um1um4[2]);
 // printf("um1um4[3] = %.1fim\n\n", um1um4[3]);

 /* now cols um0um3 and um1um4 need to be reshuffled like psi: img real img real*/
 um0um3_shuf = _mm256_shuffle_pd(um0um3, um0um3, 0b0101); //(2.0 + 1.0 * I) (1.0 + 2.0 * I)
 um1um4_shuf = _mm256_shuffle_pd(um1um4, um1um4, 0b0101); //(4.0 + 3.0 * I) (2.0 + 3.0 * I)

 // printf("um0um3_shuf[0] = %.1fre\n", um0um3_shuf[0]);
 // printf("um0um3_shuf[1] = %.1fim\n", um0um3_shuf[1]);
 // printf("um0um3_shuf[2] = %.1fre\n", um0um3_shuf[2]);
 // printf("um0um3_shuf[3] = %.1fim\n\n", um0um3_shuf[3]);

 // printf("um1um4_shuf[0] = %.1fre\n", um1um4_shuf[0]);
 // printf("um1um4_shuf[1] = %.1fim\n", um1um4_shuf[1]);
 // printf("um1um4_shuf[2] = %.1fre\n", um1um4_shuf[2]);
 // printf("um1um4_shuf[3] = %.1fim\n\n", um1um4_shuf[3]);

 /* Loading third set of 3 complexes of 3x3 matrix */
 up2_3rd = _mm256_loadu_pd((double *)um + 14); // um[7]um[8]


/* Vectors needed: reshuffle 
 * 
 * 3rd computation 
 *  vec4 = um[6] um[7]  is already loaded
 *  vec5 = um[8] um[8] needs reshuffle
 */

 /* Row: Loading 3 complexes of psi vector and shuffling */
 psi0 = _mm256_loadu_pd((double *)psi);
/* Need to shuffle like up0 and up1 as before */
 psi0_real = _mm256_shuffle_pd(psi0, psi0, 0b0000);   /* Row 1: Shuffle up0: (real real real real) parts */
 psi0_imag = _mm256_shuffle_pd(psi0, psi0, 0b1111);   /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */

 psi_3rd = _mm256_loadu_pd((double *)psi + 2);
 // psi0_shuf = _mm256_shuffle_pd(psi0, psi0, 0b0101);

 // printf("psi0_shuf1[0] = %.1fre\n", psi0_shuf1[0]);
 // printf("psi0_shuf1[1] = %.1fim\n", psi0_shuf1[1]);
 // printf("psi0_shuf1[2] = %.1fre\n", psi0_shuf1[2]);
 // printf("psi0_shuf1[3] = %.1fim\n\n", psi0_shuf1[3]);

 // printf("psi0_shuf2[0] = %.1fre\n", psi0_shuf2[0]);
 // printf("psi0_shuf2[1] = %.1fim\n", psi0_shuf2[1]);
 // printf("psi0_shuf2[2] = %.1fre\n", psi0_shuf2[2]);
 // printf("psi0_shuf2[3] = %.1fim\n\n", psi0_shuf2[3]);

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */

 /*First set of computation:2x2*/
 reimprod0 = _mm256_mul_pd(psi0_real, um0um3);         /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod0 = _mm256_mul_pd(psi0_imag, um0um3_shuf);   /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0); /*addsub*/

// printf("addsub_res0[0] = %.1fre\n", addsub_res0[0]);
// printf("addsub_res0[1] = %.1fim\n", addsub_res0[1]);
// printf("addsub_res0[2] = %.1fre\n", addsub_res0[2]);
// printf("addsub_res0[3] = %.1fim\n\n", addsub_res0[3]);

 /*Second set of computation:2x2*/
 reimprod1 = _mm256_mul_pd(psi0_real, um1um4);         /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod1 = _mm256_mul_pd(psi0_imag, um1um4_shuf);   /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1); /*addsub*/

 // printf("addsub_res1[0] = %.1fre\n", addsub_res1[0]);
 // printf("addsub_res1[1] = %.1fim\n", addsub_res1[1]);
 // printf("addsub_res1[2] = %.1fre\n", addsub_res1[2]);
 // printf("addsub_res1[3] = %.1fim\n\n", addsub_res1[3]);

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); //[L1 L2]
 res2 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1);        // Placing H2 lane in L2 lane
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res1 = _mm256_blend_pd(res2, addsub_res1, 12);  //[H1 H2]
 add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1);   // Result of 2x2

 // printf("add_res1[0] = %.1fre\n", add_res1[0]);
 // printf("add_res1[1] = %.1fim\n", add_res1[1]);
 // printf("add_res1[2] = %.1fre\n", add_res1[2]);
 // printf("add_res1[3] = %.1fim\n\n", add_res1[3]);

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 psi_3rd_perm = _mm256_permute2f128_pd(psi_3rd, psi_3rd, 1);
 psi_3rd_duplicate = _mm256_blend_pd(psi_3rd_perm, psi_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of row */

 psi_3rd_real = _mm256_shuffle_pd(psi_3rd_duplicate, psi_3rd_duplicate, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */
 psi_3rd_imag = _mm256_shuffle_pd(psi_3rd_duplicate, psi_3rd_duplicate, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */

/* 3rd element of col 1 and 2 */
 up2 = _mm256_loadu_pd((double *)um + 12);       // um[6]um[7](4.0 + 5.0 * I)(6.0 + 4.0 * I)
 um2_shuf = _mm256_shuffle_pd(up2, up2, 0b0101); //(5.0 * I + 4.0) (4.0 * I + 6.0) im re im re

 reimprod3rd_1 = _mm256_mul_pd(psi_3rd_real, up2);
 _reimprod3rd_1 = _mm256_mul_pd(psi_3rd_imag, um2_shuf);
 addsub_res3rd_1 = _mm256_addsub_pd(reimprod3rd_1, _reimprod3rd_1); // Result of 3rd elements of row 1&2 and col

 /* Additions */
 add_all_0 = _mm256_add_pd(add_res1, addsub_res3rd_1); // first 2 rows-col result of matrix-1: chi[0] chi[1]
 printf("add_all_0[0] = %.1fre\n", add_all_0[0]);
 printf("add_all_0[1] = %.1fim\n", add_all_0[1]);
 printf("add_all_0[2] = %.1fre\n", add_all_0[2]);
 printf("add_all_0[3] = %.1fim\n\n", add_all_0[3]);
 /* =================================(Pair 1) end  ============================= */

 /* =======Third set of computation: 3rd row and col: 2x2========*/
 /* Row reused from above  */
 /* vec3 = um[2] um[5] (up0_3rd up1_3rd) */
 /* Loading and shuffling 3rd element of col 1 and 2  */
 up0_3rd = _mm256_loadu_pd((double *)um + 2); // um[1]um[2]
 up1_3rd = _mm256_loadu_pd((double *)um + 8); // um[4]um[5]
 up0up1_3rd_perm = _mm256_permute2f128_pd(up0_3rd, up0_3rd, 1);
 up0up1_3rd = _mm256_blend_pd(up0up1_3rd_perm, up1_3rd, 12); /*[H1 H2] um[2] um[5]: (5.0 + 6.0 * I)(1.0 + 3.0 * I) 3rd element of col */
 up0up1_3rd_shuf = _mm256_shuffle_pd(up0up1_3rd, up0up1_3rd, 0b0101); //(6.0 * I + 5.0) (3.0 * I + 1.0) im re im re

 // printf("up0up1_3rd_shuf[0] = %.1fre\n", up0up1_3rd_shuf[0]);
 // printf("up0up1_3rd_shuf[1] = %.1fim\n", up0up1_3rd_shuf[1]);
 // printf("up0up1_3rd_shuf[2] = %.1fre\n", up0up1_3rd_shuf[2]);
 // printf("up0up1_3rd_shuf[3] = %.1fim\n\n", up0up1_3rd_shuf[3]);

 reimprod2 = _mm256_mul_pd(psi0_real, up0up1_3rd); // psi_3rd_duplicate reused   temp11 realup2_3rd  reimprod4
 _reimprod2 = _mm256_mul_pd(psi0_imag, up0up1_3rd_shuf); // psi3 reused  //temp12 imagup2_3rd _reimprod4
 addsub_res2 = _mm256_addsub_pd(reimprod2, _reimprod2);  // 3rd element of 3rd row and col: result: lanes are identical  temp11

 // printf("addsub_res2[0] = %.1fre\n", addsub_res2[0]);
 // printf("addsub_res2[1] = %.1fim\n", addsub_res2[1]);
 // printf("addsub_res2[2] = %.1fre\n", addsub_res2[2]);
 // printf("addsub_res2[3] = %.1fim\n\n", addsub_res2[3]);

 _addsub_res2 = _mm256_permute2f128_pd(addsub_res2, addsub_res2, 1); // temp6 addsub_res2  temp10 _addsub_res2
 add_res2 = _mm256_add_pd(_addsub_res2, addsub_res2);// 3rd row 2x2 result: low and high lanes are identical  // temp6 addsub_res2  temp1 add_res2

 // printf("add_res2[0] = %.1fre\n", add_res2[0]);
 // printf("add_res2[1] = %.1fim\n", add_res2[1]);
 // printf("add_res2[2] = %.1fre\n", add_res2[2]);
 // printf("add_res2[3] = %.1fim\n\n", add_res2[3]);

 /* =========3rd element of 3rd row with 3rd element of col======== */
 up2_3rd = _mm256_loadu_pd((double *)um + 14); // um[7]um[8]
 up2_3rd_perm = _mm256_permute2f128_pd(up2_3rd, up2_3rd, 1); // temp10 up2_3rd_perm
 up2_3rd_duplicate = _mm256_blend_pd(up2_3rd_perm, up2_3rd, 12); // temp10 up2_3rd_perm up2_3rd_duplicate
 um2_3rd_shuf = _mm256_shuffle_pd(up2_3rd_duplicate, up2_3rd_duplicate, 0b0101); //(5.0 * I + 4.0) (4.0 * I + 6.0) im re im re

 reimprod3 = _mm256_mul_pd(psi_3rd_real, up2_3rd_duplicate); // psi_3rd_duplicate reused   temp11 realup2_3rd  reimprod4
 _reimprod3 = _mm256_mul_pd(psi_3rd_imag, um2_3rd_shuf);     // psi3 reused  //temp12 imagup2_3rd _reimprod4
 addsub_res3 = _mm256_addsub_pd(reimprod3, _reimprod3);   // 3rd element of 3rd row and col: result: lanes are identical  temp11

 // printf("addsub_res3[0] = %.1fre\n", addsub_res3[0]);
 // printf("addsub_res3[1] = %.1fim\n", addsub_res3[1]);
 // printf("addsub_res3[2] = %.1fre\n", addsub_res3[2]);
 // printf("addsub_res3[3] = %.1fim\n\n", addsub_res3[3]);

 add_res3 = _mm256_add_pd(add_res2, addsub_res3);

 // printf("add_res3[0] = %.1fre\n", add_res3[0]);
 // printf("add_res3[1] = %.1fim\n", add_res3[1]);
 // printf("add_res3[2] = %.1fre\n", add_res3[2]);
 // printf("add_res3[3] = %.1fim\n\n", add_res3[3]);
 add_all_1 = _mm256_castpd256_pd128(add_res3); // 3rd row-col result: chi[2] //temp11 add_res3
 printf("add_all_1[0] = %.1fre\n", add_all_1[0]);
 printf("add_all_1[1] = %.1fim\n", add_all_1[1]);

 /* Storing Results */
 _mm256_storeu_pd((double *)chi, add_all_0);
 _mm_storeu_pd((double *)chi + 4, add_all_1);
}
