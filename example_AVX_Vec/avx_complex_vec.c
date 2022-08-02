
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

 //  res1 = .0;
 //  res2 = .0;
 //  res3 = .0;
 //  res4 = .0;

 //  res5 = .0;
 //  res6 = .0;
 //  res7 = .0;
 //  res8 = .0;
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


/***********************************
 *    MVM Inverse Multiply Testing 
 ***********************************/

 //single_MVM_inverse(&chi, &up, &psi);
 double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);

 printf("Double MVM Computation\n");
 printf("chi[0] = %.1fre\n", creal(chi.c[0]));
 printf("chi[0] = %.1fim\n", cimag(chi.c[0]));
 printf("chi[1] = %.1fre\n", creal(chi.c[1]));
 printf("chi[1] = %.1fim\n", cimag(chi.c[1]));
 printf("chi[2] = %.1fre\n", creal(chi.c[2]));
 printf("chi[2] = %.1fim\n\n", cimag(chi.c[2]));

 printf("chi2[0] = %.1fre\n", creal(chi2.c[0]));
 printf("chi2[0] = %.1fim\n", cimag(chi2.c[0]));
 printf("chi2[1] = %.1fre\n", creal(chi2.c[1]));
 printf("chi2[1] = %.1fim\n", cimag(chi2.c[1]));
 printf("chi2[2] = %.1fre\n", creal(chi2.c[2]));
 printf("chi2[2] = %.1fim\n\n", cimag(chi2.c[2]));

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

 __m256d temp1, temp2, temp3, temp4, temp5, temp6,temp7;
 __m128d add_all_1;

 /*===>Start of loading variables: um, psi<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)um); // um[0]um[1] temp1 up0
 /* Loading second set of 3 complexes of 3x3 matrix */
 temp2 = _mm256_load_pd((double *)um + 6); // um[3]um[4] temp2 up1

 /****************************************************************
  * col1: working vector temp3 - lower lane of up0 [L1] and up1 [L2]
  * ***************************************************************/
 temp3 = _mm256_permute2f128_pd(temp2, temp1, 2); //[L1 L2] um[0] um[3]  temp1 up0; temp2 up1; temp3 um0um3
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); // Placing H2 lane in L2 lane  temp1 up0 res1

 /*******************************************************************************
  * col2: working temp1 vector - high lane of temp1 [H1] and temp2 [H2]
  * *****************************************************************************/
 temp1 = _mm256_blend_pd(temp1, temp2, 12); //[H1 H2] um[1] um[4](re im re im) temp1 res1 um1um4; temp2 up1

 /* now cols temp3 and temp1 need to be reshuffled*/
 temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101);         // temp2 um0um3_shuf; temp3 um0um3
 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101);         // temp1 um1um4; temp4 um1um4_shuf

 /* Row: Loading 1st 2 complexes of psi vector and shuffling */
 temp5 = _mm256_load_pd((double *)psi); //temp5 psi0
 /* Need to shuffle like as before */
 temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */      // temp5 psi0; temp6 psi0_real
 temp5 = _mm256_shuffle_pd(temp5, temp5, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */   // temp5 psi0 psi0_imag

 /*===>End of loading variables: up, psi<====*/

 /***************************************
  *    Start of MVM Computations: 2x2
  ***************************************/
 /* ===========(Pair 1) Start============*/
 /*First row*col computation:2x2*/
 temp3 = _mm256_mul_pd(temp6, temp3); /* (re*re),(re*im),(re*re),(re*im) */     // temp3 um0um3 reimprod0; temp6 psi0_real
 temp2 = _mm256_mul_pd(temp5, temp2); /* (im*im),(im*re),(im*im),(im*re) */     // temp2 um0um3_shuf _reimprod0;  // temp5 psi0_imag
 temp2 = _mm256_addsub_pd(temp3, temp2); /*temp2 _reimprod0   addsub_res0 */    // temp3 reimprod0

 /*Second row*col computation:2x2*/
 temp1 = _mm256_mul_pd(temp6, temp1); /* (re*re),(re*im),(re*re),(re*im) */     // temp1 um1um4 reimprod1; temp6 psi0_real
 temp3 = _mm256_mul_pd(temp5, temp4); /* (im*im),(im*re),(im*im),(im*re) */     // temp3 _reimprod1; temp4 um1um4_shuf; // temp5 psi0_imag
 temp1 = _mm256_addsub_pd(temp1, temp3); // temp1 reimprod1 addsub_res1; temp3 _reimprod1

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 temp3 = _mm256_permute2f128_pd(temp1, temp2, 2);                   //[L1 L2] // temp1 addsub_res1; temp2 addsub_res0; temp3 _addsub_res0
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1);                   // Placing H2 lane in L2 lane temp2 addsub_res0 res2
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 temp1 = _mm256_blend_pd(temp2, temp1, 12);              //[H1 H2] // temp1 addsub_res1 _addsub_res1; temp2 res2
 temp1 = _mm256_add_pd(temp3, temp1);                    // Result of 2x2 // temp1 _addsub_res1 add_res1; temp3 _addsub_res0

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 temp3 = _mm256_loadu_pd((double *)psi + 2);                     // temp3 psi_3rd
 temp2 = _mm256_permute2f128_pd(temp3, temp3, 1);                // temp2 psi_3rd_perm;temp3 psi_3rd
 temp2 = _mm256_blend_pd(temp2, temp3, 12); /*[H1 H2] of psi_3rd, 3rd element of row */ // temp2 psi_3rd_perm psi_3rd_duplicate; temp3 psi_3rd

 temp3 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */       // temp2 psi_3rd_duplicate; temp3 psi_3rd_real
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts*/     // temp2 psi_3rd_duplicate psi_3rd_imag

 /* 3rd element of col 1 and 2 */
 temp4 = _mm256_load_pd((double *)um + 12);      // um[6]um[7] temp4 up2
 temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101); // im re im re; temp4 up2; temp7 um2_shuf

 temp4 = _mm256_mul_pd(temp3, temp4);                               // temp3 psi_3rd_real; temp4 up2 reimprod3rd_1
 temp7 = _mm256_mul_pd(temp2, temp7);                               // temp2 psi_3rd_imag; temp7 um2_shuf _reimprod3rd_1
 temp4 = _mm256_addsub_pd(temp4, temp7);                            // Result of 3rd elements of row 1&2 and col; temp4 reimprod3rd_1 addsub_res3rd_1; temp7 _reimprod3rd_1

 /* Additions */
 temp1 = _mm256_add_pd(temp1, temp4); // first 2 rows-col result of matrix-1: chi[0] chi[1] temp1 _addsub_res1 add_res1 add_all_0; temp4 addsub_res3rd_1

 /* ===========(Pair 1) End============*/

 /* =======Third row*col computation 2x2========*/
 /* Row reused from above  */
 /* Loading and shuffling 3rd element of col 1 and 2  */
 temp4 = _mm256_loadu_pd((double *)um + 2);   // um[1]um[2]; temp4 up0_3rd
 temp7 = _mm256_loadu_pd((double *)um + 8);   // um[4]um[5]; temp7 up1_3rd
 temp4 = _mm256_permute2f128_pd(temp4, temp4, 1);            // temp4 up0_3rd up0up1_3rd_perm
 temp4 = _mm256_blend_pd(temp4, temp7, 12); /*[H1 H2] um[2] um[5]: 3rd element of col */   // temp4 up0up1_3rd_perm up0up1_3rd; temp7 up1_3rd
 temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                                          // im re im re; temp4 up0up1_3rd; temp7 up0up1_3rd_shuf

 temp4 = _mm256_mul_pd(temp6, temp4); // temp4 up0up1_3rd reimprod2;temp6 psi0_real

 temp5 = _mm256_mul_pd(temp5, temp7);           // temp5 psi0_imag _reimprod2; temp7 up0up1_3rd_shuf
 temp4 = _mm256_addsub_pd(temp4, temp5);        // temp4 reimprod2 addsub_res2; // temp5 _reimprod2

 temp5 = _mm256_permute2f128_pd(temp4, temp4, 1);        // temp4 addsub_res2; temp5 _addsub_res2
 temp5 = _mm256_add_pd(temp5, temp4);                    // temp4 addsub_res2; temp5 _addsub_res2 add_res2

 /* =========3rd element of 3rd row with 3rd element of col======== */
 /* Loading third set of 3 complexes of 3x3 matrix */
 temp4 = _mm256_loadu_pd((double *)um + 14); // um[7]um[8] temp4 up2_3rd
 temp6 = _mm256_permute2f128_pd(temp4, temp4, 1);                // temp4 up2_3rd; temp6 up2_3rd_perm
 temp4 = _mm256_blend_pd(temp6, temp4, 12);                      // temp4 up2_3rd up2_3rd_duplicate; temp6 up2_3rd_perm
 temp6 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                // temp4 up2_3rd_duplicate; temp6 um2_3rd_shuf

 temp3 = _mm256_mul_pd(temp3, temp4);        // temp3 psi_3rd_real reimprod3;  // temp4 up2_3rd_duplicate
 temp2 = _mm256_mul_pd(temp2, temp6);        // temp2 psi_3rd_imag _reimprod3; temp6 um2_3rd_shuf
 temp2 = _mm256_addsub_pd(temp3, temp2);     // temp2 _reimprod3 addsub_res3;temp3 reimprod3

 temp2 = _mm256_add_pd(temp5, temp2); // temp2 addsub_res3 add_res3; temp5 add_res2

 add_all_1 = _mm256_castpd256_pd128(temp2); // temp2 addsub_res3 add_res3

 /* Storing Results */
 _mm256_store_pd((double *)chi, temp1); // temp1 add_all_0
 _mm_store_pd((double *)chi + 4, add_all_1);
}

void double_MVM_inverse(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;
 __m128d sse_add0, vec0_3rd, vec1_3rd;

 /*===>Start loading variables: um, psi, psi2<===*/
 temp1 = _mm256_load_pd((double *)um); /* loading um[0]um[1]*/ // temp1 up0
 temp2 = _mm256_load_pd((double *)um + 6); /* loading um[3]um[4] */ // temp2 up1

 /********************************************************************
  * col1: working vector um0um3 - lower lane of up0 [L1] and up1 [L2]
  * ******************************************************************/
 temp3 = _mm256_permute2f128_pd(temp2, temp1, 2); //[L1 L2] vec1 = um[0] um[3] temp1 up0; temp2 up1; temp3 um0um3
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); // Placing H2 lane in L2 lane  temp1 up0 res1

 /*******************************************************************
  * col2: working vector temp1 - high lane of temp1 [H1] and up1 [H2]
  * *****************************************************************/
 temp1 = _mm256_blend_pd(temp1, temp2, 12); //[H1 H2] um[1] um[4] temp1 res1 um1um4 temp2 up1

 /* now cols um0um3 and um1um4 need to be reshuffled*/
 temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /* img real img real */// temp2 um0um3_shuf; temp3 um0um3
 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101); /* img real img real */// temp1 um1um4; temp4 um1um4_shuf

 /* Row: Loading 1st 2 complexes of psi vector and shuffling */
 temp5 = _mm256_load_pd((double *)psi); //temp5 psi0
 /* Need to shuffle */
 temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0000); /* Row 1: Shuffle psi0: (real real real real) parts */   // temp5 psi0; temp6 psi0_real
 temp5 = _mm256_shuffle_pd(temp5, temp5, 0b1111); /* Row 2: Shuffle psi0: (imag, imag, imag, imag) parts */// temp5 psi0 psi0_imag

 /* Row: Loading 1st 2 complexes of psi2 vector and shuffling */
 temp7 = _mm256_loadu_pd((double *)psi2); // temp7 psi2_0
 /* Need to shuffle */
 temp8 = _mm256_shuffle_pd(temp7, temp7, 0b0000); /* Row 1: Shuffle psi20: (real real real real) parts */   // temp7 psi2_0; temp8 psi20_real
 temp7 = _mm256_shuffle_pd(temp7, temp7, 0b1111); /* Row 2: Shuffle psi20: (imag, imag, imag, imag) parts */// temp7 psi2_0 psi20_imag

 /*===>End of loading variables: up, psi, psi2<====*/

 /***************************************
  *    Start of MVM Computations: 2x2
  ***************************************/
 /* ===========(Pair 1) start: Matrix 1 ============*/
 /*First row*col computation:2x2*/
 temp9 = _mm256_mul_pd(temp6, temp3); /* (re*re),(re*im),(re*re),(re*im) */ // temp3 um0um3; temp6 psi0_real; temp9 reimprod0
 temp10 = _mm256_mul_pd(temp5, temp2); /* (im*im),(im*re),(im*im),(im*re) */// temp2 um0um3_shuf  // temp5 psi0_imag; temp10 _reimprod0
 temp9 = _mm256_addsub_pd(temp9, temp10); // temp9 reimprod0 addsub_res0; temp10 _reimprod0

 /*Second row*col computation:2x2*/
 temp10 = _mm256_mul_pd(temp6, temp1); /* (re*re),(re*im),(re*re),(re*im) */// temp1 um1um4; temp6 psi0_real; temp10 reimprod1
 temp11 = _mm256_mul_pd(temp5, temp4); /* (im*im),(im*re),(im*im),(im*re) */// temp4 um1um4_shuf // temp5 psi0_imag; temp11 _reimprod1
 temp10 = _mm256_addsub_pd(temp10, temp11); // temp11 _reimprod1 // temp10 reimprod1 addsub_res1

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 temp11 = _mm256_permute2f128_pd(temp10, temp9, 2);//[L1 L2]// temp9 addsub_res0;  // temp10 addsub_res1 // temp11 _addsub_res0
 temp9 = _mm256_permute2f128_pd(temp9, temp9, 1);  //Placing H2 lane in L2 lane; temp9 addsub_res0 res2
 /* A vector of high lane of res2 [H1] and of addsub_res1 [H2] */
 temp9 = _mm256_blend_pd(temp9, temp10, 12);//[H1 H2] temp9 res2 _addsub_res1 // temp10 addsub_res1
 temp9 = _mm256_add_pd(temp11, temp9);// Result of 2x2 temp9 _addsub_res1 add_res1 // temp11 _addsub_res0

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 temp10 = _mm256_loadu_pd((double *)psi + 2);        // psi[1] psi[2]// temp10 psi_3rd
 temp11 = _mm256_permute2f128_pd(temp10, temp10, 1); // psi[2] psi[1]// temp10 psi_3rd// temp11 psi_3rd_perm
 temp10 = _mm256_blend_pd(temp11, temp10, 12); /*[H1 H2] of psi_3rd, 3rd element of row*/ // temp10 psi_3rd psi_3rd_duplicate// temp11 psi_3rd_perm

 temp12 = _mm256_shuffle_pd(temp10, temp10, 0b0000); /* Row 1: Shuffle: (real real real real) parts */    // temp10 psi_3rd_duplicate; temp12 psi_3rd_real
 temp10 = _mm256_shuffle_pd(temp10, temp10, 0b1111); /* Row 2: Shuffle: (imag, imag, imag, imag) parts */ // temp10 psi_3rd_duplicate psi_3rd_imag

 /* 3rd element of col 1 and 2 */
 temp13 = _mm256_load_pd((double *)um + 12); /*um[6]um[7]*/ // temp13 up2
 temp15 = _mm256_shuffle_pd(temp13, temp13, 0b0101);// im re im re// temp13 up2; temp15 um2_shuf

 temp12 = _mm256_mul_pd(temp12, temp13); // temp12 psi_3rd_real reimprod3rd_1// temp13 up2
 temp10 = _mm256_mul_pd(temp10, temp15); // temp10 psi_3rd_imag _reimprod3rd_1 temp15 um2_shuf
 temp10 = _mm256_addsub_pd(temp12, temp10);  // Result of 3rd elements of row 1&2 and col// temp10  _reimprod3rd_1 addsub_res3rd_1  // temp12 reimprod3rd_1

 /*Addition*/
 temp9 = _mm256_add_pd(temp9, temp10); // first 2 rows-col result of matrix-1: chi[0] chi[1] temp9 add_res1 add_all_0 // temp10  addsub_res3rd_1
 /* ===========(Pair 1) End: Matrix 1 ============*/

 /* ===========(Pair 2) Start: Matrix 2 ============*/
 /*First row*col computation:2x2*/
 temp3 = _mm256_mul_pd(temp8, temp3); /* (re*re),(re*im),(re*re),(re*im) */// temp3 um0um3 reimprod3; temp8 psi20_real
 temp2 = _mm256_mul_pd(temp7, temp2); /*(im*im),(im*re),(im*im),(im*re) */ // temp2 um0um3_shuf _reimprod3;  // temp7 psi20_imag
 temp2 = _mm256_addsub_pd(temp3, temp2); // temp2 um0um3_shuf _reimprod3 addsub_res3 temp3 reimprod3

 /*Second row*col computation:2x2*/
 temp1 = _mm256_mul_pd(temp8, temp1); /* (re*re),(re*im),(re*re),(re*im) */ // temp1 um1um4 reimprod4; temp8 psi20_real
 temp3 = _mm256_mul_pd(temp7, temp4); /* (im*im),(im*re),(im*im),(im*re) */ // temp3 _reimprod4 // temp4 um1um4_shuf; // temp7 psi20_imag
 temp1 = _mm256_addsub_pd(temp1, temp3);                                               // temp1 reimprod4 addsub_res4 temp3 _reimprod4

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 2 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 temp3 = _mm256_permute2f128_pd(temp1, temp2, 2); //[L1 L2] temp1 addsub_res4 temp2 addsub_res3 temp3 _addsub_res2
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); // Placing H2 lane in L2 lane temp2 addsub_res3 res3
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 temp1 = _mm256_blend_pd(temp2, temp1, 12);//[H1 H2] temp1 addsub_res4 _addsub_res3 temp2 res3
 temp1 = _mm256_add_pd(temp3, temp1);      // Result of 2x2 temp1 _addsub_res3 add_res2 temp3 _addsub_res2

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 temp2 = _mm256_loadu_pd((double *)psi2 + 2); // psi2[1] psi2[2] temp2 psi2_3rd
 temp3 = _mm256_permute2f128_pd(temp2, temp2, 1); // temp2 psi2_3rd temp3 psi2_3rd_perm
 temp3 = _mm256_blend_pd(temp3, temp2, 12); /*[H1 H2] of psi2_3rd, 3rd element of row */ // temp2 psi2_3rd; temp3 psi2_3rd_perm psi2_3rd_duplicate

 temp4 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /* Row 1: Shuffle: (real real real real) parts */    // temp3 psi2_3rd_duplicate; temp4 psi2_3rd_real
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /* Row 2: Shuffle: (imag, imag, imag, imag) parts */ // temp3 psi2_3rd_duplicate psi2_3rd_imag

 temp4 = _mm256_mul_pd(temp4, temp13); // temp4 psi2_3rd_real reimprod3rd_2// temp13 up2
 temp3 = _mm256_mul_pd(temp3, temp15); // temp3 psi2_3rd_imag _reimprod3rd_2 temp15 um2_shuf
 temp3 = _mm256_addsub_pd(temp4, temp3);   // Result of 3rd elements of row 1&2 and col // temp3  _reimprod3rd_2 addsub_res3rd_2 // temp4 reimprod3rd_2

 /* Additions */
 temp1 = _mm256_add_pd(temp1, temp3); // first 2 rows-col result of matrix-1: chi2[0] chi2[1] temp1 add_res2 add_all_1 // temp3 addsub_res3rd_2

 /* ===========(Pair 2) End: Matrix 2 ============*/

 /* ===========(Pair 3) Start: Matrix 1&2 ============*/
 /* ********************************************************
  * Matrix 1: Third 3rd row*col computation-first 2 elements
  * ********************************************************/
 /* ===> Row: shuffled (psi0_real,psi0_imag) from above is to be reused*/
 /* Loading and shuffling 3rd element of col 1 and 2  */
 temp3 = _mm256_loadu_pd((double *)um + 2);   // um[1]um[2] temp3 up0_3rd
 temp4 = _mm256_loadu_pd((double *)um + 8);   // um[4]um[5] // temp4 up1_3rd
 temp3 = _mm256_permute2f128_pd(temp3, temp3, 1); // temp3 up0_3rd up0up1_3rd_perm
 /* Working register for col */
 temp3 = _mm256_blend_pd(temp3, temp4, 12); /*[H1 H2] um[2] um[5]*/ // temp3 up0up1_3rd_perm up0up1_3rd; temp4 up1_3rd
 temp4 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /* im re im re */ // temp3 up0up1_3rd; temp4 up0up1_3rd_shuf

 temp6 = _mm256_mul_pd(temp6, temp3);   // psi0_real reused // temp3 up0up1_3rd; temp6 psi0_real reimprod5
 temp5 = _mm256_mul_pd(temp5, temp4);   // psi0_imag reused temp4 up0up1_3rd_shuf// temp5 psi0_imag _reimprod5
 temp5 = _mm256_addsub_pd(temp6, temp5);// 3rd element// temp5 _reimprod5 addsub_res5; temp6 reimprod5

 /* **********************************************************
  * Matrix 2: Third 3rd row*col computation - first 2 elements
  * **********************************************************/
 temp3 = _mm256_mul_pd(temp8, temp3);    // psi20_real, up0up1_3rd reused  // temp3 up0up1_3rd reimprod6; temp8 psi20_real
 temp4 = _mm256_mul_pd(temp7, temp4);    // psi20_imag, up0up1_3rd_shuf reused; temp4 up0up1_3rd_shuf _reimprod6; // temp7 psi20_imag
 temp3 = _mm256_addsub_pd(temp3, temp4); // 3rd element // temp3 reimprod6 addsub_res6; temp4 _reimprod6

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 3 Matrix 1 and 2 RESULT========== */
 /* A vector of lower lane of addsub_res6 [L1] and of addsub_res5 [L2] */
 temp4 = _mm256_permute2f128_pd(temp3, temp5, 2);  // [L1 L2] // temp3 addsub_res6; temp4 _addsub_res4 // temp5 addsub_res5
 temp14 = _mm256_permute2f128_pd(temp5, temp5, 1); // Placing H2 lane in L2 lane // temp5 addsub_res5; temp14 res4
 /* A vector of high lane of res4 [H1] and of addsub_res6 [H2] */
 temp3 = _mm256_blend_pd(temp14, temp3, 12); // [H1 H2] // temp3 addsub_res6 _addsub_res5; temp14 res4
 temp3 = _mm256_add_pd(temp4, temp3);        // Result of ROW 3 of matrix 1 & 2 // temp3 _addsub_res5 add_res3; temp4 _addsub_res4

 /* =======Dealing with 3rd element of 3rd row and col of both matrix ======= */
 /* Loading third set of 3 complexes of 3x3 matrix */
 temp2 = _mm256_blend_pd(temp11, temp2, 12); /*[H1 H2] of psi_3rd, 3rd element of col */ // temp2 psi2_3rd psi_psi2_3rd// temp11 psi_3rd_perm
 temp4 = _mm256_shuffle_pd(temp2, temp2, 0b0000); // real real real real // temp2 psi2_3rd psi_psi2_3rd; temp4 psi_psi2_3rd_real
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); // imag imag imag imag // temp2 psi2_3rd psi_psi2_3rd psi_psi2_3rd_imag

 temp5 = _mm256_loadu_pd((double *)um + 14); // um[7]um[8] temp5 up2_3rd
 temp6 = _mm256_permute2f128_pd(temp5, temp5, 1);  // temp5 up2_3rd; temp6 up2_3rd_perm
 temp5 = _mm256_blend_pd(temp6, temp5, 12);        // temp5 up2_3rd up2_3rd_duplicate; temp6 up2_3rd_perm
 temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0101);  // imag real imag real // temp5 up2_3rd_duplicate; temp6 up2_3rd_shuf

 temp5 = _mm256_mul_pd(temp4, temp5);    // temp4 psi_psi2_3rd_real // temp5 up2_3rd_duplicate reimprod7
 temp2 = _mm256_mul_pd(temp2, temp6);    // temp2 psi2_3rd psi_psi2_3rd_imag _reimprod7; temp6 up2_3rd_shuf
 temp2 = _mm256_addsub_pd(temp5, temp2); // temp2 _reimprod7 addsub_res7; temp5 reimprod7

 temp2 = _mm256_add_pd(temp3, temp2); // chi[2] chi2[2] temp2 addsub_res7 add_all_2; // temp3 add_res3

 vec0_3rd = _mm256_castpd256_pd128(temp2);   // First 128-bits chi[2] temp2 add_all_2
 vec1_3rd = _mm256_extractf128_pd(temp2, 1); // Second 128-bits chi2[2] temp2 add_all_2

 /* ===========(Pair 3) End: Matrix 1&2 ============*/
 
 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp9); // temp9 add_all_0
 _mm_store_pd((double *)chi + 4, vec0_3rd);

 _mm256_store_pd((double *)chi2, temp1); // temp1 add_all_1
 _mm_store_pd((double *)chi2 + 4, vec1_3rd);
}
