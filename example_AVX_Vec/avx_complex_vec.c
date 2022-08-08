
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
 /******Initialising the variables*****/
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

 //single_MVM(&chi, &up, &psi);
 //double_MVM(&chi, &chi2, &up, &psi, &psi2);

 // printf("Double MVM Computation\n");
 // printf("chi[0] = %.1fre\n", creal(chi.c[0]));
 // printf("chi[0] = %.1fim\n", cimag(chi.c[0]));
 // printf("chi[1] = %.1fre\n", creal(chi.c[1]));
 // printf("chi[1] = %.1fim\n", cimag(chi.c[1]));
 // printf("chi[2] = %.1fre\n", creal(chi.c[2]));
 // printf("chi[2] = %.1fim\n\n", cimag(chi.c[2]));

 // printf("chi2[0] = %.1fre\n", creal(chi2.c[0]));
 // printf("chi2[0] = %.1fim\n", cimag(chi2.c[0]));
 // printf("chi2[1] = %.1fre\n", creal(chi2.c[1]));
 // printf("chi2[1] = %.1fim\n", cimag(chi2.c[1]));
 // printf("chi2[2] = %.1fre\n", creal(chi2.c[2]));
 // printf("chi2[2] = %.1fim\n\n", cimag(chi2.c[2]));

 //single_MVM_inverse(&chi, &up, &psi);
 // double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);

 // printf("Double MVM Inverse Computation\n");
 // printf("chi[0] = %.1fre\n", creal(chi.c[0]));
 // printf("chi[0] = %.1fim\n", cimag(chi.c[0]));
 // printf("chi[1] = %.1fre\n", creal(chi.c[1]));
 // printf("chi[1] = %.1fim\n", cimag(chi.c[1]));
 // printf("chi[2] = %.1fre\n", creal(chi.c[2]));
 // printf("chi[2] = %.1fim\n\n", cimag(chi.c[2]));

 // printf("chi2[0] = %.1fre\n", creal(chi2.c[0]));
 // printf("chi2[0] = %.1fim\n", cimag(chi2.c[0]));
 // printf("chi2[1] = %.1fre\n", creal(chi2.c[1]));
 // printf("chi2[1] = %.1fim\n", cimag(chi2.c[1]));
 // printf("chi2[2] = %.1fre\n", creal(chi2.c[2]));
 // printf("chi2[2] = %.1fim\n\n", cimag(chi2.c[2]));

 single_MVM_2x2(&chi, &up, &psi);
 //double_MVM_2x2(&chi, &chi2, &up, &psi, &psi2);

 //single_MVM_inverse_2x2(&chi, &up, &psi);
 // double_MVM_inverse_2x2(&chi, &chi2, &up, &psi, &psi2);
 printf("Double MVM 2x2 Computation\n");
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

 /*up and psi are loaded from memory to register temp1, temp8, temp9,temp6*/
 /* Loading first row of 3 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up);/* [0],[1],[2],[3] */
 temp2 = _mm256_shuffle_pd(temp1, temp1, 0b0000);/* re re re re */
 temp3 = _mm256_shuffle_pd(temp1, temp1, 0b1111);/* im im im im */
 temp8 = _mm256_loadu_pd((double *)up + 2);/* [2],[3],[4],[5] */

 /* Loading second row of 3 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up + 6);/* [6],[7],[8],[9] */
 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0000);/* re re re re */
 temp5 = _mm256_shuffle_pd(temp1, temp1, 0b1111);/* im im im im */
 temp9 = _mm256_loadu_pd((double *)up + 8);/* [8],[9],[10],[11] */

 /* Loading third row of 2 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up + 12);/* [12],[13],[14],[15] */
 temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);/* re re re re */
 temp7 = _mm256_shuffle_pd(temp1, temp1, 0b1111);/* im im im im */

 /* Loading 3 complexes of psi vector and shuffling */
 temp1 = _mm256_load_pd((double *)psi);
 psi2 = _mm256_shuffle_pd(temp1, temp1, 0b0101);/* im re im re */
 psi_3rd = _mm256_loadu_pd((double *)psi + 2);

 /******* 1st and 2nd row*col Computations*******/
 /* =======First set of computation (Row 1): 2x2========*/
 temp2 = _mm256_mul_pd(temp2, temp1);    
 temp3 = _mm256_mul_pd(temp3, psi2);     
 temp2 = _mm256_addsub_pd(temp2, temp3);

 /* =======Second set of computation (Row 2): 2x2========*/
 temp4 = _mm256_mul_pd(temp4, temp1);   
 temp5 = _mm256_mul_pd(temp5, psi2);     
 temp4 = _mm256_addsub_pd(temp4, temp5);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results(2x2)========== */
 /* A vector of lower lane of temp4 [L1] and temp2 [L2] */
 temp3 = _mm256_permute2f128_pd(temp4, temp2, 2); /*[L1 L2]*/
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); /*swapping L2 and H2 of temp2*/
 /* A vector of high lane of temp2 [H1] and temp4 [H2] */
 temp2 = _mm256_blend_pd(temp2, temp4, 12); /* [H1 H2]*/
 temp2 = _mm256_add_pd(temp3, temp2);/* (L1+H1)(L2+H2) */

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 temp8 = _mm256_permute2f128_pd(temp8, temp8, 1);/* H1 becomes L1 */
 temp8 = _mm256_blend_pd(temp8, temp9, 12); /* Blend L1 of temp8 with H1 of temp9 = (L1 H1)*/

 temp9 = _mm256_permute2f128_pd(psi_3rd, psi_3rd, 1); /* H1 becomes L1 */
 temp4 = _mm256_blend_pd(temp9, psi_3rd, 12); /*3rd element duplicated [H1 H2]*/

 temp10 = _mm256_shuffle_pd(temp8, temp8, 0b0000); /* re re re re */
 temp13 = _mm256_shuffle_pd(temp8, temp8, 0b1111); /* im im im im */
 psi3 = _mm256_shuffle_pd(temp4, temp4, 0b0101);/* im re im re */
 temp10 = _mm256_mul_pd(temp10, temp4);            
 temp13 = _mm256_mul_pd(temp13, psi3);             
 temp10 = _mm256_addsub_pd(temp10, temp13);

 /* Adding 2x2 results to leftover results */
 temp2 = _mm256_add_pd(temp2, temp10);

 /* 3rd row*col computations*/
 temp6 = _mm256_mul_pd(temp6, temp1);              
 temp7 = _mm256_mul_pd(temp7, psi2);               
 temp6 = _mm256_addsub_pd(temp6, temp7);           
 temp10 = _mm256_permute2f128_pd(temp6, temp6, 1); 
 temp1 = _mm256_add_pd(temp10, temp6);

 /* =======Leftover element(3rd) row 3 and col ======= */
 temp6 = _mm256_loadu_pd((double *)up + 14);/*[14],[15],[16],[17] */
 temp10 = _mm256_permute2f128_pd(temp6, temp6, 1);/* H1 becomes L1: [16][17][14][15]  */
 temp10 = _mm256_blend_pd(temp10, temp6, 12);/*[16][17][16][17] */
 temp11 = _mm256_shuffle_pd(temp10, temp10, 0b0000);/* re re re re */
 temp12 = _mm256_shuffle_pd(temp10, temp10, 0b1111);/* im im im im */ 
 temp11 = _mm256_mul_pd(temp11, temp4);            
 temp12 = _mm256_mul_pd(temp12, psi3);              
 temp11 = _mm256_addsub_pd(temp11, temp12);

/* Adding 3rd row*col results to leftover results */
 temp11 = _mm256_add_pd(temp1, temp11);
 chi_3rd = _mm256_castpd256_pd128(temp11); 

 /* Storing Results */
 _mm256_store_pd((double *)chi, temp2);
 _mm_store_pd((double *)chi + 4, chi_3rd);
}

void double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, realup0up1, psi_3rd_perm, psi4;
 __m128d chi_3rd, chi2_3rd;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first row (2 complexes) of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up); /* [0][1][2][3]*/                                       
 temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/
 temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/ 

 /* Loading second row (2 complexes) of 3x3 matrix */
 temp2 = _mm256_load_pd((double *)up + 6); /* [6][7][8][9]*/                                
 temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real) */  
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag imag imag imag)*/

 /* Loading third row (2 complexes) of 3x3 matrix */
 temp3 = _mm256_load_pd((double *)up + 12); /*[12][13][14][15] */                            
 temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /*(real real real real) */
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /*(imag imag imag imag)*/

 /* Loading first column (2 complexes of psi vector) and shuffling */
 temp4 = _mm256_load_pd((double *)psi);      
 temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101);/*im re im re */

 /* Loading second column (2 complexes of psi2 vector) and shuffling */
 temp5 = _mm256_load_pd((double *)psi2);
 temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101);/*im re im re */

 /*===>End of loading variables: up, psi, psi2<====*/

 /***************************************
  *    Start of MVM Computations: 2x2
  ***************************************/
 /* ===========(Pair 1) start: Matrix 1 ============*/
 /*First row*col computation:2x2*/
 temp11 = _mm256_mul_pd(temp6, temp4); /*(re*re),(re*im),(re*re),(re*im)*/ 
 temp12 = _mm256_mul_pd(temp1, temp9); /*(im*im),(im*re),(re*im),(im*re)*/ 
 temp11 = _mm256_addsub_pd(temp11, temp12); 
 
 /*Second row*col computation:2x2*/
 temp12 = _mm256_mul_pd(temp7, temp4); /*(re*re),(re*im),(re*re),(re*im)*/ 
 temp13 = _mm256_mul_pd(temp2, temp9); /*(im*im),(im*re),(re*im),(im*re)*/ 
 temp12 = _mm256_addsub_pd(temp12, temp13);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of temp12 [L1] and temp11 [L2]*/
 temp13 = _mm256_permute2f128_pd(temp12, temp11, 2); /*[L1 L2]*/
 temp11 = _mm256_permute2f128_pd(temp11, temp11, 1); /*swapping L2 and H2 of temp11*/
 /* A vector of high lane of temp11 [H1] and temp12 [H2] */
 temp11 = _mm256_blend_pd(temp11, temp12, 12); /*[H1 H2]*/
 temp11 = _mm256_add_pd(temp13, temp11);/* L1+H1, L2+H2 */       

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 temp12 = _mm256_loadu_pd((double *)up + 2); /* [2][3][4][5] */
 temp12 = _mm256_permute2f128_pd(temp12, temp12, 1); /* [4][5][2][3] */
 temp13 = _mm256_load_pd((double *)up + 8); /* [8][9][10][11] */
 temp12 = _mm256_blend_pd(temp12, temp13, 12); /* [H1 H2]:[4][5][10][11] */  

 temp13 = _mm256_loadu_pd((double *)psi + 2);                                                  
 psi_3rd_perm = _mm256_permute2f128_pd(temp13, temp13, 1);                                    
 temp13 = _mm256_blend_pd(psi_3rd_perm, temp13, 12); /*[H1 H2]*/

 realup0up1 = _mm256_shuffle_pd(temp12, temp12, 0b0000); /* re re re re */
 temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);/* im im im im */
 temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);/* im re im re */
 temp13 = _mm256_mul_pd(realup0up1, temp13);             
 temp14 = _mm256_mul_pd(temp12, temp14);                 
 temp13 = _mm256_addsub_pd(temp13, temp14);

 /* Addition: 2x2 results + leftover */
 temp11 = _mm256_add_pd(temp11, temp13); 
 /* ===========(Pair 1) End: Matrix 1 ============*/

 /* ===========(Pair 2) Start: Matrix 2 ============*/
 /*First row*col computation:2x2*/
 temp6 = _mm256_mul_pd(temp6, temp5); /*(re*re)(re*im)(re*re)(re*im)*/
 temp1 = _mm256_mul_pd(temp1, temp10); /*(im*im)(im*re)(re*im)(im*re)*/ 
 temp1 = _mm256_addsub_pd(temp6, temp1);

 /*Second row*col computation:2x2*/
 temp6 = _mm256_mul_pd(temp7, temp5); /*(re*re)(re*im)(re*re)(re*im)*/  
 temp2 = _mm256_mul_pd(temp2, temp10); /* (im*im)(im*re)(re*im)(im*re)*/ 
 temp7 = _mm256_addsub_pd(temp6, temp2);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of temp7 [L1] and of temp1 [L2] */
 temp13 = _mm256_permute2f128_pd(temp7, temp1, 2); /*[L1 L2]*/
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1*/
 /* A vector of high lane of temp1 [H1] and of temp7 [H2] */
 temp1 = _mm256_blend_pd(temp1, temp7, 12); /*[H1 H2]*/
 temp1 = _mm256_add_pd(temp13, temp1);/* L1+H1, L2+H2 */

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 temp13 = _mm256_loadu_pd((double *)psi2 + 2);                                             
 temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);                                      
 temp14 = _mm256_blend_pd(temp14, temp13, 12); /*[H1 H2]*/ 

 psi4 = _mm256_shuffle_pd(temp14, temp14, 0b0101);/*im re im re*/
 temp14 = _mm256_mul_pd(realup0up1, temp14);       
 temp12 = _mm256_mul_pd(temp12, psi4);             
 temp12 = _mm256_addsub_pd(temp14, temp12);

 /* Addition: 2x2 results + leftover */
 temp1 = _mm256_add_pd(temp1, temp12); 
 /* ===========(Pair 2) End: Matrix 2 ============*/

 /* ===========(Pair 3) Start: Matrix 1&2 ============*/
 /* ********************************************************
  * Matrix 1: Third row*col computation-first 2 elements
  * ********************************************************/
 temp4 = _mm256_mul_pd(temp8, temp4); /*(re*re)(re*im)(re*re)(re*im)*/  
 temp12 = _mm256_mul_pd(temp3, temp9); /*(im*im)(im*re)(re*im)(im*re)*/
 temp4 = _mm256_addsub_pd(temp4, temp12);

 /* **********************************************************
  * Matrix 2: Third 3rd row*col computation - first 2 elements
  * **********************************************************/
 temp5 = _mm256_mul_pd(temp8, temp5); /*(re*re)(re*im)(re*re)(re*im)*/  
 temp3 = _mm256_mul_pd(temp3, temp10); /*(im*im)(im*re)(re*im)(im*re)*/ 
 temp3 = _mm256_addsub_pd(temp5, temp3); 

 /* ==========Shuffling and adding 2 AVX registers of row 3 Matrix 1 & 2 results========== */
 /* A vector of lower lane of temp3 [L1] and temp4 [L2]*/
 temp5 = _mm256_permute2f128_pd(temp3, temp4, 2); /*[L1 L2]*/
 temp4 = _mm256_permute2f128_pd(temp4, temp4, 1); /*swapping L2 and H2 of temp1*/
 /* A vector of high lane of temp4 [H1] and temp3 [H2]*/
 temp3 = _mm256_blend_pd(temp4, temp3, 12); /*[H1 H2]*/
 temp3 = _mm256_add_pd(temp5, temp3); /* L1+H1, L2+H2 */

 /* =======Leftover element(3rd) row 3 and col ======= */
 temp9 = _mm256_loadu_pd((double *)up + 14);/*[14],[15],[16],[17] */
 temp10 = _mm256_permute2f128_pd(temp9, temp9, 1); /* H1 becomes L1: [16][17][14][15]  */
 temp9 = _mm256_blend_pd(temp10, temp9, 12);/*[16][17][16][17]*/
 temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);/*re re re re*/
 temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);/*im im im im*/

 temp9 = _mm256_blend_pd(psi_3rd_perm, temp13, 12); /*[H1 H2]*/ 
 temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);/*im re im re */                                              

 temp6 = _mm256_mul_pd(temp10, temp9);   
 temp2 = _mm256_mul_pd(temp12, temp13);  
 temp7 = _mm256_addsub_pd(temp6, temp2);

 temp2 = _mm256_add_pd(temp3, temp7); /*chi[2] chi2[2]*/ 

 chi_3rd = _mm256_castpd256_pd128(temp2);/* chi[2] */
 chi2_3rd = _mm256_extractf128_pd(temp2, 1);/* chi2[2] */

 /* ===========(Pair 3) End: Matrix 1&2 ============*/

 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp11); 
 _mm_store_pd((double *)chi + 4, chi_3rd);

 _mm256_store_pd((double *)chi2, temp1);
 _mm_store_pd((double *)chi2 + 4, chi2_3rd);
}

void single_MVM_inverse(suNf_vector *chi, const suNf *um, const suNf_vector *psi)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6,temp7;
 __m128d chi_3rd;

 /*===>Start of loading variables: um, psi<===*/
 temp1 = _mm256_load_pd((double *)um);/* loading um[0]um[1]*/
 temp2 = _mm256_load_pd((double *)um + 6); /*loading um[3]um[4]*/

 /****************************************************************
  * col1: working vector temp3 - lower lane of temp2 [L1] and temp1 [L2]
  ****************************************************************/
 temp3 = _mm256_permute2f128_pd(temp2, temp1, 2); /*[L1 L2] um[0] um[3]*/
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1*/

 /*******************************************************************************
  * col2: working temp1 vector - high lane of temp1 [H1] and temp2 [H2]
  ******************************************************************************/
 temp1 = _mm256_blend_pd(temp1, temp2, 12); /*[H1 H2] um[1] um[4]*/

 /* now cols temp3 and temp1 need to be reshuffled*/
 temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101);/* im re im re */
 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101); /* im re im re */

 /* Row: Loading 1st 2 complexes of psi vector and shuffling */
 temp5 = _mm256_load_pd((double *)psi);
 /* Need to shuffle as before */
 temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0000); /* Row 1: real real real real*/  
 temp5 = _mm256_shuffle_pd(temp5, temp5, 0b1111); /* Row 2: imag imag imag imag*/   
 /*===>End of loading variables: up, psi<====*/

 /***************************************
  *    Start of MVM Computations: 2x2
  ***************************************/

 /*First row*col computation:2x2*/
 temp3 = _mm256_mul_pd(temp6, temp3); /*(re*re) (re*im) (re*re) (re*im)*/    
 temp2 = _mm256_mul_pd(temp5, temp2); /*(im*im) (im*re) (im*im) (im*re)*/     
 temp2 = _mm256_addsub_pd(temp3, temp2);  

 /*Second row*col computation:2x2*/
 temp1 = _mm256_mul_pd(temp6, temp1); /*(re*re)(re*im)(re*re)(re*im)*/ 
 temp3 = _mm256_mul_pd(temp5, temp4); /*(im*im)(im*re)(im*im)(im*re)*/
 temp1 = _mm256_addsub_pd(temp1, temp3); 

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results(2x2)========== */
 /* A vector of lower lane of temp1 [L1] and temp2 [L2]*/
 temp3 = _mm256_permute2f128_pd(temp1, temp2, 2);/*[L1 L2]*/
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); /*swapping L2 and H2 of temp1*/
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 temp1 = _mm256_blend_pd(temp2, temp1, 12);/*[H1 H2]*/
 temp1 = _mm256_add_pd(temp3, temp1);/* L1+H1, L2+H2 */

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 temp3 = _mm256_loadu_pd((double *)psi + 2);                     
 temp2 = _mm256_permute2f128_pd(temp3, temp3, 1);                
 temp2 = _mm256_blend_pd(temp2, temp3, 12); /*[H1 H2]*/ 

 temp3 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /* Row 1:(re re re re)*/      
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /* Row 2:(im,im,im,im)*/   

 /* 3rd element of col 1 and 2 */
 temp4 = _mm256_load_pd((double *)um + 12);      
 temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101);/* Col: im re im re*/ 

 temp4 = _mm256_mul_pd(temp3, temp4);                               
 temp7 = _mm256_mul_pd(temp2, temp7);                               
 temp4 = _mm256_addsub_pd(temp4, temp7);

 /* Adding 2x2 results to leftover results */
 temp1 = _mm256_add_pd(temp1, temp4);

 /* 3rd row*col computations: Row reused from above*/

 /* Loading and shuffling 3rd element of col 1 and 2*/
 temp4 = _mm256_loadu_pd((double *)um + 2);/*um[1]um[2]*/
 temp7 = _mm256_loadu_pd((double *)um + 8);/*um[4]um[5]*/
 temp4 = _mm256_permute2f128_pd(temp4, temp4, 1); 
 temp4 = _mm256_blend_pd(temp4, temp7, 12); /*[H1 H2] um[2] um[5]*/    
 temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101);/* im re im re */

 temp4 = _mm256_mul_pd(temp6, temp4); /*(re*re) (re*im) (re*re) (re*im)*/
 temp5 = _mm256_mul_pd(temp5, temp7); /*(im*im)(im*re)(im*im)(im*re)*/
 temp4 = _mm256_addsub_pd(temp4, temp5);

 temp5 = _mm256_permute2f128_pd(temp4, temp4, 1);        
 temp5 = _mm256_add_pd(temp5, temp4);

 /* =======Leftover element(3rd) row 3 and col ======= */
 /* Loading third set of 3 complexes of 3x3 matrix */
 temp4 = _mm256_loadu_pd((double *)um + 14);/*um[7]um[8]*/
 temp6 = _mm256_permute2f128_pd(temp4, temp4, 1);                
 temp4 = _mm256_blend_pd(temp6, temp4, 12);                      
 temp6 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                

 temp3 = _mm256_mul_pd(temp3, temp4);        
 temp2 = _mm256_mul_pd(temp2, temp6);        
 temp2 = _mm256_addsub_pd(temp3, temp2);

 temp2 = _mm256_add_pd(temp5, temp2);    /*chi[2] chi[2]*/
 chi_3rd = _mm256_castpd256_pd128(temp2);/*chi[2]*/

 /* Storing Results */
 _mm256_store_pd((double *)chi, temp1); 
 _mm_store_pd((double *)chi + 4, chi_3rd);
}

void double_MVM_inverse(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;
 __m128d chi_3rd, chi2_3rd;

 /*===>Start loading variables: um, psi, psi2<===*/
 temp1 = _mm256_load_pd((double *)um); /* loading um[0]um[1]*/
 temp2 = _mm256_load_pd((double *)um + 6); /*loading um[3]um[4]*/ 

 /********************************************************************
  * Col1: working vector temp3 - lower lane of temp2 [L1] and temp1 [L2]
  * ******************************************************************/
 temp3 = _mm256_permute2f128_pd(temp2, temp1, 2);/*[L1 L2] um[0] um[3]*/
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1*/

 /*******************************************************************
  * Col2: working vector temp1 - high lane of temp1 [H1] and temp2 [H2]
  * *****************************************************************/
 temp1 = _mm256_blend_pd(temp1, temp2, 12); /*[H1 H2] um[1] um[4]*/

 /* now cols um0um3 and um1um4 need to be reshuffled*/
 temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /*img real img real*/
 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101); /*img real img real*/

 /* Row-Matrix1: Loading 1st 2 complexes of psi vector and shuffling */
 temp5 = _mm256_load_pd((double *)psi);
 /* Need to shuffle */
 temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0000); /*Row 1:(real real real real)*/
 temp5 = _mm256_shuffle_pd(temp5, temp5, 0b1111); /*Row 2:(imag imag imag imag)*/

 /* Row-Matrix2: Loading 1st 2 complexes of psi2 vector and shuffling */
 temp7 = _mm256_loadu_pd((double *)psi2);
 /* Need to shuffle */
 temp8 = _mm256_shuffle_pd(temp7, temp7, 0b0000); /* Row 1: real real real real*/  
 temp7 = _mm256_shuffle_pd(temp7, temp7, 0b1111); /* Row 2: imag imag imag imag*/

 /*===>End of loading variables: up, psi, psi2<====*/

 /***************************************
  *    Start of MVM Computations: 2x2
  ***************************************/
 /* ===========(Pair 1) start: Matrix 1 ============*/
 /*First row*col computation:2x2*/
 temp9 = _mm256_mul_pd(temp6, temp3); /*(re*re),(re*im),(re*re),(re*im)*/ 
 temp10 = _mm256_mul_pd(temp5, temp2); /*(im*im),(im*re),(im*im),(im*re)*/
 temp9 = _mm256_addsub_pd(temp9, temp10);

 /*Second row*col computation:2x2*/
 temp10 = _mm256_mul_pd(temp6, temp1); /*(re*re),(re*im),(re*re),(re*im)*/
 temp11 = _mm256_mul_pd(temp5, temp4); /*(im*im),(im*re),(im*im),(im*re)*/
 temp10 = _mm256_addsub_pd(temp10, temp11);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of temp10 [L1] and temp9 [L2] */
 temp11 = _mm256_permute2f128_pd(temp10, temp9, 2);/*[L1 L2]*/
 temp9 = _mm256_permute2f128_pd(temp9, temp9, 1); /*swapping L2 and H2 of temp1*/
 /* A vector of high lane of temp9 [H1] and temp10 [H2] */
 temp9 = _mm256_blend_pd(temp9, temp10, 12);/*[H1 H2]*/
 temp9 = _mm256_add_pd(temp11, temp9);/* L1+H1, L2+H2 */

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 temp10 = _mm256_loadu_pd((double *)psi + 2);/* psi[1] psi[2]*/
 temp11 = _mm256_permute2f128_pd(temp10, temp10, 1);/* psi[2] psi[1]*/
 temp10 = _mm256_blend_pd(temp11, temp10, 12); /*[H1 H2]*/ 

 temp12 = _mm256_shuffle_pd(temp10, temp10, 0b0000); /* Row 1:(real real real real)*/
 temp10 = _mm256_shuffle_pd(temp10, temp10, 0b1111); /* Row 2:(imag, imag, imag, imag)*/

 /* 3rd element of col 1 and 2 */
 temp13 = _mm256_load_pd((double *)um + 12); /*um[6]um[7]*/
 temp15 = _mm256_shuffle_pd(temp13, temp13, 0b0101);/*im re im re*/

 temp12 = _mm256_mul_pd(temp12, temp13); 
 temp10 = _mm256_mul_pd(temp10, temp15); 
 temp10 = _mm256_addsub_pd(temp12, temp10);

 /* Adding 2x2 results to leftover results */
 temp9 = _mm256_add_pd(temp9, temp10);/* chi[0] chi[1] */

 /* ===========(Pair 1) End: Matrix 1 ============*/

 /* ===========(Pair 2) Start: Matrix 2 ============*/
 /*First row*col computation:2x2*/
 temp3 = _mm256_mul_pd(temp8, temp3); /* (re*re),(re*im),(re*re),(re*im) */
 temp2 = _mm256_mul_pd(temp7, temp2); /*(im*im),(im*re),(im*im),(im*re) */
 temp2 = _mm256_addsub_pd(temp3, temp2);

 /*Second row*col computation:2x2*/
 temp1 = _mm256_mul_pd(temp8, temp1); /* (re*re),(re*im),(re*re),(re*im) */ 
 temp3 = _mm256_mul_pd(temp7, temp4); /* (im*im),(im*re),(im*im),(im*re) */  
 temp1 = _mm256_addsub_pd(temp1, temp3);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of temp1 [L1] and temp2 [L2] */
 temp3 = _mm256_permute2f128_pd(temp1, temp2, 2); /*[L1 L2]*/
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); /*swapping L2 and H2 of temp1*/
 /* A vector of high lane of temp2 [H1] and temp1 [H2] */
 temp1 = _mm256_blend_pd(temp2, temp1, 12);/*[H1 H2]*/
 temp1 = _mm256_add_pd(temp3, temp1);/*Result of 2x2*/

 /* =======Leftover element(3rd) row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 temp2 = _mm256_loadu_pd((double *)psi2 + 2);
 temp3 = _mm256_permute2f128_pd(temp2, temp2, 1); 
 temp3 = _mm256_blend_pd(temp3, temp2, 12); /*[H1 H2]*/

 temp4 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /* Row 1:(real real real real)*/   
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /* Row 2:(imag, imag, imag, imag)*/ 

 temp4 = _mm256_mul_pd(temp4, temp13); 
 temp3 = _mm256_mul_pd(temp3, temp15); 
 temp3 = _mm256_addsub_pd(temp4, temp3);   // Result of leftover

 /* Adding 2x2 results to leftover results */
 temp1 = _mm256_add_pd(temp1, temp3); /* chi2[0] chi2[1] */

 /* ===========(Pair 2) End: Matrix 2 ============*/

 /* ===========(Pair 3) Start: Matrix 1&2 ============*/
 /* ********************************************************
  * Matrix 1: Third row*col computation-first 2 elements
  * ********************************************************/
 /* ===> Row: shuffled (temp6,temp4) from above is to be reused*/
 /* Loading and shuffling 3rd element of col 1 and 2  */
 temp3 = _mm256_loadu_pd((double *)um + 2);/*um[1]um[2]*/ 
 temp4 = _mm256_loadu_pd((double *)um + 8);/*um[4]um[5]*/
 temp3 = _mm256_permute2f128_pd(temp3, temp3, 1);
 /* Working register for col */
 temp3 = _mm256_blend_pd(temp3, temp4, 12); /*[H1 H2] um[2] um[5]*/ 
 temp4 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /* im re im re */

 temp6 = _mm256_mul_pd(temp6, temp3);  
 temp5 = _mm256_mul_pd(temp5, temp4); 
 temp5 = _mm256_addsub_pd(temp6, temp5);/* Result of Matrix 1 */

 /* **********************************************************
  * Matrix 2: Third 3rd row*col computation - first 2 elements
  * **********************************************************/
 temp3 = _mm256_mul_pd(temp8, temp3);    
 temp4 = _mm256_mul_pd(temp7, temp4);
 temp3 = _mm256_addsub_pd(temp3, temp4); /* Result of Matrix 2 */

 /* ==========Shuffling and adding 2 AVX registers of row 3 Matrix 1 & 2 results========== */
 /* A vector of lower lane of temp3 [L1] and temp5 [L2] */
 temp4 = _mm256_permute2f128_pd(temp3, temp5, 2);  /*[L1 L2]*/
 temp14 = _mm256_permute2f128_pd(temp5, temp5, 1);
 /* A vector of high lane of temp14 [H1] and temp3 [H2] */
 temp3 = _mm256_blend_pd(temp14, temp3, 12); /*[H1 H2]*/
 temp3 = _mm256_add_pd(temp4, temp3);/*Result of ROW 3 of matrix 1 & 2 (2x2)*/ 

 /* =======Leftover element(3rd) row 3 and col ======= */
 temp2 = _mm256_blend_pd(temp11, temp2, 12); /*[H1 H2]*/ 
 temp4 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*real real real real */
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*imag imag imag imag */
 
 /* Loading 3rd element of col 3*/
 temp5 = _mm256_loadu_pd((double *)um + 14); /*um[7]um[8]*/
 temp6 = _mm256_permute2f128_pd(temp5, temp5, 1);  
 temp5 = _mm256_blend_pd(temp6, temp5, 12);       
 temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0101);/* im re im re */

 temp5 = _mm256_mul_pd(temp4, temp5); 
 temp2 = _mm256_mul_pd(temp2, temp6); 
 temp2 = _mm256_addsub_pd(temp5, temp2); /* Result of 3rd element */

 temp2 = _mm256_add_pd(temp3, temp2); /*chi[2] chi2[2]*/

 chi_3rd = _mm256_castpd256_pd128(temp2);   /*First 128-bits chi[2]*/
 chi2_3rd = _mm256_extractf128_pd(temp2, 1); /*Second 128-bits chi2[2]*/

 /* ===========(Pair 3) End: Matrix 1&2 ============*/

 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp9); 
 _mm_store_pd((double *)chi + 4, chi_3rd);

 _mm256_store_pd((double *)chi2, temp1); 
 _mm_store_pd((double *)chi2 + 4, chi2_3rd);
}

void single_MVM_2x2(suNf_vector *chi, const suNf *up, const suNf_vector *psi)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8;

 __m128d chi_3rd;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up);         // temp1 up0
 temp5 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /* (real real real real)*/    
 temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /* (imag, imag, imag, imag)*/ 

 /* Loading second set of 3 complexes of 3x3 matrix */
 temp2 = _mm256_load_pd((double *)up + 6);     
 temp6 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real)*/    
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag, imag, imag, imag)*/ 

 /* Loading third set of 3 complexes of 3x3 matrix */
 temp3 = _mm256_load_pd((double *)up + 12);    
 temp7 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /*(real real real real)*/ 
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /*(imag, imag, imag, imag)*/ 

 /* Loading 3 complexes of psi vector and shuffling */
 temp4 = _mm256_load_pd((double *)psi); // temp4 psi0
 temp8 = _mm256_shuffle_pd(temp4, temp4, 0b0101); 
 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /*First row*col computation:2x2*/
 temp5 = _mm256_mul_pd(temp5, temp4); /* (re*re),(re*im),(re*re),(re*im) */     
 temp1 = _mm256_mul_pd(temp1, temp8); /* (im*im),(im*re),(re*im),(im*re) */     
 temp1 = _mm256_addsub_pd(temp5, temp1);                                        

 /*Second row*col computation:2x2*/
 temp5 = _mm256_mul_pd(temp6, temp4); /* (re*re),(re*im),(re*re),(re*im) */     
 temp2 = _mm256_mul_pd(temp2, temp8); /* (im*im),(im*re),(re*im),(im*re) */    
 temp2 = _mm256_addsub_pd(temp5, temp2);                                       

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and addsub_res0 [L2] */
 temp5 = _mm256_permute2f128_pd(temp2, temp1, 2);   //[L1 L2] 
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); // Placing H2 lane in L2 lane 
 /* A vector of high lane of res1 [H1] and addsub_res1 [H2] */
 temp1 = _mm256_blend_pd(temp1, temp2, 12); //[H1 H2] 
 temp1 = _mm256_add_pd(temp5, temp1); // Result of 2x2 

 /*Third row*col computation:2x2*/
 temp2 = _mm256_mul_pd(temp7, temp4); /* (re*re),(re*im),(re*re),(re*im) */  
 temp3 = _mm256_mul_pd(temp3, temp8); /*(im*im),(im*re),(re*im),(im*re) */   
 temp2 = _mm256_addsub_pd(temp2, temp3);                                       

 temp3 = _mm256_permute2f128_pd(temp2, temp2, 1);        
 temp2 = _mm256_add_pd(temp3, temp2);                    
 chi_3rd = _mm256_castpd256_pd128(temp2);                

 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp1); 
 _mm_store_pd((double *)chi + 4, chi_3rd);
}


void double_MVM_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d up0, up1, up2, realup0, realup1, realup2, imagup0, imagup1, imagup2, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod2, _reimprod2, reimprod3, _reimprod3, reimprod4, _reimprod4, reimprod5, _reimprod5, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, addsub_res2, _addsub_res2, addsub_res3, _addsub_res3, addsub_res4, _addsub_res4, addsub_res5, _addsub_res5, psi0, psi0_shuf, psi2_0, psi2_0_shuf, add_res1, add_res2, add_res3, res1, res2, res3;

 __m128d chi_3rd, chi2_3rd;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_load_pd((double *)up);
 up1 = _mm256_load_pd((double *)up + 6);
 up2 = _mm256_load_pd((double *)up + 12);
 /* Loading 3 complexes of psi vector and shuffling */
 psi0 = _mm256_load_pd((double *)psi);
 psi0_shuf = _mm256_shuffle_pd(psi0, psi0, 0b0101);

 psi2_0 = _mm256_load_pd((double *)psi2);      
 psi2_0_shuf = _mm256_shuffle_pd(psi2_0, psi2_0, 0b0101);

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First row*col computation:2x2*/
 realup0 = _mm256_shuffle_pd(up0, up0, 0b0000);/*(real real real real)*/
 imagup0 = _mm256_shuffle_pd(up0, up0, 0b1111);/*(imag, imag, imag, imag)*/
 reimprod0 = _mm256_mul_pd(realup0, psi0);/*(re*re),(re*im),(re*re),(re*im)*/
 _reimprod0 = _mm256_mul_pd(imagup0, psi0_shuf);/*(im*im),(im*re),(re*im),(im*re)*/
 addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0); 

 /*Second row*col computation:2x2*/
 realup1 = _mm256_shuffle_pd(up1, up1, 0b0000);/*(real real real real)*/
 imagup1 = _mm256_shuffle_pd(up1, up1, 0b1111);/*(imag, imag, imag, imag)*/
 reimprod1 = _mm256_mul_pd(realup1, psi0);/*(re*re),(re*im),(re*re),(re*im)*/
 _reimprod1 = _mm256_mul_pd(imagup1, psi0_shuf);/*(im*im),(im*re),(re*im),(im*re)*/
 addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); //[L1 L2]
 res1 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1);         // Placing H2 lane in L2 lane
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res1 = _mm256_blend_pd(res1, addsub_res1, 12); //[H1 H2]
 add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1);  // Result of 2x2 chi[0] chi[1]

 /* =================================(Pair 2) start ============================= */
 /*Fourth set of computation:2x2*/
 reimprod3 = _mm256_mul_pd(realup0, psi2_0);/*(re*re),(re*im),(re*re),(re*im)*/
 _reimprod3 = _mm256_mul_pd(imagup0, psi2_0_shuf);/*(im*im),(im*re),(re*im),(im*re)*/
 addsub_res3 = _mm256_addsub_pd(reimprod3, _reimprod3);

 /*Fifth set of computation:2x2*/
 reimprod4 = _mm256_mul_pd(realup1, psi2_0); /*(re*re),(re*im),(re*re),(re*im) */
 _reimprod4 = _mm256_mul_pd(imagup1, psi2_0_shuf);/*(im*im),(im*re),(re*im),(im*re) */
 addsub_res4 = _mm256_addsub_pd(reimprod4, _reimprod4);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of addsub_res4 [L1] and of addsub_res3 [L2] */
 _addsub_res2 = _mm256_permute2f128_pd(addsub_res4, addsub_res3, 2); // [L1 L2]
 res2 = _mm256_permute2f128_pd(addsub_res3, addsub_res3, 1);         // Placing H2 lane in L2 lane
 /* A vector of high lane of res2 [H1] and of addsub_res4 [H2] */
 _addsub_res3 = _mm256_blend_pd(res2, addsub_res4, 12); // [H1 H2]
 add_res2 = _mm256_add_pd(_addsub_res2, _addsub_res3);  // Result of 2x2 chi2[0] chi2[1]

 /* =================================(Pair 3) Start ============================= */
 /*Third set of computation:2x2*/
 realup2 = _mm256_shuffle_pd(up2, up2, 0b0000);/*(real real real real) parts*/
 imagup2 = _mm256_shuffle_pd(up2, up2, 0b1111);/*(imag, imag, imag, imag) parts */
 reimprod2 = _mm256_mul_pd(realup2, psi0);/*(re*re),(re*im),(re*re),(re*im) */
 _reimprod2 = _mm256_mul_pd(imagup2, psi0_shuf);/*(im*im),(im*re),(re*im),(im*re) */
 addsub_res2 = _mm256_addsub_pd(reimprod2, _reimprod2);

 /*Sixth set of computation:2x2*/
 reimprod5 = _mm256_mul_pd(realup2, psi2_0);/*(re*re),(re*im),(re*re),(re*im) */
 _reimprod5 = _mm256_mul_pd(imagup2, psi2_0_shuf);/*(im*im),(im*re),(re*im),(im*re) */
 addsub_res5 = _mm256_addsub_pd(reimprod5, _reimprod5);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 and 2 (2x2)========== */
 /* A vector of lower lane of addsub_res5 [L1] and of addsub_res2 [L2] */
 _addsub_res4 = _mm256_permute2f128_pd(addsub_res5, addsub_res2, 2); // [L1 L2]
 res3 = _mm256_permute2f128_pd(addsub_res2, addsub_res2, 1);         // Placing H2 lane in L2 lane
 /* A vector of high lane of temp3 [H1] and of addsub_res5 [H2] */
 _addsub_res5 = _mm256_blend_pd(res3, addsub_res5, 12); // [H1 H2]
 add_res3 = _mm256_add_pd(_addsub_res4, _addsub_res5);  // Result of ROW 3 of matrix 1 & 2

 chi_3rd = _mm256_castpd256_pd128(add_res3);     // First 128-bits chi[2]
 chi2_3rd = _mm256_extractf128_pd(add_res3, 1);  // Second 128-bits chi2[2]

 /*Storing Results*/
 _mm256_store_pd((double *)chi, add_res1);
 _mm_store_pd((double *)chi + 4, chi_3rd);

 _mm256_store_pd((double *)chi2, add_res2);
 _mm_store_pd((double *)chi2 + 4, chi2_3rd);
}




void single_MVM_inverse_2x2(suNf_vector *chi, const suNf *um, const suNf_vector *psi)
{
 __m256d up0, up0_3rd, up1, up1_3rd, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod2, _reimprod2, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, addsub_res2, _addsub_res2, psi0, psi0_real, psi0_imag, add_res1, add_res2, up0up1_3rd, res1, res2, um0um3, um1um4, um0um3_shuf, um1um4_shuf, up0up1_3rd_perm, up0up1_3rd_shuf;

 __m128d chi_3rd;

 /*===>Start of loading variables: um, psi<===*/
 up0 = _mm256_load_pd((double *)um);     /* um[0]um[1] */
 up1 = _mm256_load_pd((double *)um + 6); /*um[3]um[4]*/

 /****************************************************************
  * col1: working vector um0um3 of lower lane of up0 [L1] and of up1 [L2]
  * ***************************************************************/
 um0um3 = _mm256_permute2f128_pd(up1, up0, 2); /*[L1 L2] um[0] um[3]*/
 res1 = _mm256_permute2f128_pd(up0, up0, 1); /*swapping L2 and H2 of up0*/

 /*******************************************************************************
  * col2: working vector vector of high lane of temp [H1] and of addsub_res1 [H2]
  * *****************************************************************************/
 um1um4 = _mm256_blend_pd(res1, up1, 12); /*[H1 H2] um[1] um[4]*/

 /* now cols um0um3 and um1um4 need to be reshuffled like psi: img real img real*/
 um0um3_shuf = _mm256_shuffle_pd(um0um3, um0um3, 0b0101); /* im re im re */
 um1um4_shuf = _mm256_shuffle_pd(um1um4, um1um4, 0b0101); /* im re im re */

 /* Row: Loading 3 complexes of psi vector and shuffling */
 psi0 = _mm256_load_pd((double *)psi);
 /* Need to shuffle like up0 and up1 as before */
 psi0_real = _mm256_shuffle_pd(psi0, psi0, 0b0000); /* Row 1:(real real real real)*/
 psi0_imag = _mm256_shuffle_pd(psi0, psi0, 0b1111); /* Row 2:(imag, imag, imag, imag)*/

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First row*col computation:2x2*/
 reimprod0 = _mm256_mul_pd(psi0_real, um0um3); /*(re*re),(re*im),(re*re),(re*im)*/
 _reimprod0 = _mm256_mul_pd(psi0_imag, um0um3_shuf);/*(im*im),(im*re),(im*im),(im*re)*/
 addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0);

 /*Second row*col computation:2x2*/
 reimprod1 = _mm256_mul_pd(psi0_real, um1um4);/*(re*re),(re*im),(re*re),(re*im)*/
 _reimprod1 = _mm256_mul_pd(psi0_imag, um1um4_shuf);/*(im*im),(im*re),(im*im),(im*re)*/
 addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); /*[L1 L2]*/
 res2 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1);/*swapping L2 and H2 of up0*/
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res1 = _mm256_blend_pd(res2, addsub_res1, 12); /*[H1 H2]*/ 
 add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1); /*Result of 2x2 chi[0] chi[1]*/

 /*Third row*col computation:2x2*/
 /* Row reused from above  */
 /* Loading and shuffling 3rd element of col 1 and 2  */
 up0_3rd = _mm256_loadu_pd((double *)um + 2); /*um[1]um[2]*/
 up1_3rd = _mm256_loadu_pd((double *)um + 8); /*um[4]um[5]*/
 up0up1_3rd_perm = _mm256_permute2f128_pd(up0_3rd, up0_3rd, 1);
 up0up1_3rd = _mm256_blend_pd(up0up1_3rd_perm, up1_3rd, 12); /*[H1 H2] um[2] um[5]*/
 up0up1_3rd_shuf = _mm256_shuffle_pd(up0up1_3rd, up0up1_3rd, 0b0101); /* im re im re */

 reimprod2 = _mm256_mul_pd(psi0_real, up0up1_3rd);       /*(re*re) (re*im) (re*re) (re*im)*/
 _reimprod2 = _mm256_mul_pd(psi0_imag, up0up1_3rd_shuf); /*(im*im)(im*re)(im*im)(im*re)*/
 addsub_res2 = _mm256_addsub_pd(reimprod2, _reimprod2);  

 _addsub_res2 = _mm256_permute2f128_pd(addsub_res2, addsub_res2, 1); 
 add_res2 = _mm256_add_pd(_addsub_res2, addsub_res2); 

 chi_3rd = _mm256_castpd256_pd128(add_res2); //3rd row-col result: chi[2]

 /* Storing Results */
 _mm256_store_pd((double *)chi, add_res1);
 _mm_store_pd((double *)chi + 4, chi_3rd);
}

void double_MVM_inverse_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d up0, up0_3rd, up1, up1_3rd, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod3, _reimprod3, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, _addsub_res2, addsub_res3, _addsub_res3, psi0, psi0_real, psi0_imag, add_res1, add_res2, add_res3, up0up1_3rd, res1, res2, res3, res4, um0um3, um1um4, um0um3_shuf, um1um4_shuf, up0up1_3rd_perm, up0up1_3rd_shuf,psi2_0,psi20_real, psi20_imag, reimprod4, _reimprod4, addsub_res4, reimprod5, _reimprod5, addsub_res5, reimprod6, _reimprod6, addsub_res6, _addsub_res4, _addsub_res5;

 __m128d  chi_3rd, chi2_3rd;

 /*===>Start of loading variables: um, psi<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_load_pd((double *)um);/* um[0]um[1] */
 up1 = _mm256_load_pd((double *)um + 6); /*um[3]um[4]*/

 /****************************************************************
  * col1: working vector um0um3 of lower lane of up0 [L1] and up1 [L2]
  * ***************************************************************/
 um0um3 = _mm256_permute2f128_pd(up1, up0, 2); /*[L1 L2] um[0] um[3]*/
 res1 = _mm256_permute2f128_pd(up0, up0, 1);   /*swapping L2 and H2 of up0*/

 /*******************************************************************************
  * col2: working vector um1um4 vector of high lane of temp [H1] and of addsub_res1 [H2]
  * *****************************************************************************/
 um1um4 = _mm256_blend_pd(res1, up1, 12); /*[H1 H2] um[1] um[4]*/

 /* now cols um0um3 and um1um4 need to be reshuffled like psi: img real img real*/
 um0um3_shuf = _mm256_shuffle_pd(um0um3, um0um3, 0b0101); /* im re im re */
 um1um4_shuf = _mm256_shuffle_pd(um1um4, um1um4, 0b0101); /* im re im re */

 /* Row: Loading 3 complexes of psi vector and shuffling */
 psi0 = _mm256_load_pd((double *)psi);
 /* Need to shuffle like up0 and up1 as before */
 psi0_real = _mm256_shuffle_pd(psi0, psi0, 0b0000); /* Row 1:(real real real real)*/
 psi0_imag = _mm256_shuffle_pd(psi0, psi0, 0b1111); /* Row 2:(imag, imag, imag, imag)*/

 /* Row: Loading 3 complexes of psi2 vector and shuffling */
 psi2_0 = _mm256_load_pd((double *)psi2);
 /* Need to shuffle like up0 and up1 as before */
 psi20_real = _mm256_shuffle_pd(psi2_0, psi2_0, 0b0000); /* Row 1:(real real real real)*/
 psi20_imag = _mm256_shuffle_pd(psi2_0, psi2_0, 0b1111); /* Row 2:(imag, imag, imag, imag)*/

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First row*col computation:2x2*/
 reimprod0 = _mm256_mul_pd(psi0_real, um0um3); /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod0 = _mm256_mul_pd(psi0_imag, um0um3_shuf); /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0);

 /*Second row*col computation:2x2*/
 reimprod1 = _mm256_mul_pd(psi0_real, um1um4); /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod1 = _mm256_mul_pd(psi0_imag, um1um4_shuf); /*(im*im),(im*re),(im*im),(im*re) */
 addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); /*[L1 L2]*/
 res2 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1); /*swapping L2 and H2 of up0*/
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res1 = _mm256_blend_pd(res2, addsub_res1, 12); /*[H1 H2]*/
 add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1);  /*Result of 2x2 chi[0] chi[1]*/

 /* =================================(Pair 2) start ============================= */
 /*Fourth set of computation:2x2*/
 reimprod3 = _mm256_mul_pd(psi20_real, um0um3); /*(re*re),(re*im),(re*re),(re*im) */
 _reimprod3 = _mm256_mul_pd(psi20_imag, um0um3_shuf); /*(im*im),(im*re),(im*im),(im*re) */
 addsub_res3 = _mm256_addsub_pd(reimprod3, _reimprod3); 

 /*Fifth set of computation:2x2*/
 reimprod4 = _mm256_mul_pd(psi20_real, um1um4);/*(re*re),(re*im),(re*re),(re*im)*/
 _reimprod4 = _mm256_mul_pd(psi20_imag, um1um4_shuf);/*(im*im),(im*re),(im*im),(im*re)*/
 addsub_res4 = _mm256_addsub_pd(reimprod4, _reimprod4);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res2 = _mm256_permute2f128_pd(addsub_res4, addsub_res3, 2); /*[L1 L2]*/
 res3 = _mm256_permute2f128_pd(addsub_res3, addsub_res3, 1); /*swapping L2 and H2 of up0*/
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res3 = _mm256_blend_pd(res3, addsub_res4, 12); /*[H1 H2]*/
 add_res2 = _mm256_add_pd(_addsub_res2, _addsub_res3);  /*Result of 2x2 chi2[0] chi2[1]*/

 /* =================================(Pair 3) Start ============================= */
 /* ********************************************************
  * Matrix 1: Third set of computation: 3rd row and col: 2x2
  * ********************************************************/
 /* ===> shuffled Row (psi0_real,psi0_imag) reused from above is to be reused:   */
 /* Loading and shuffling 3rd element of col 1 and 2  */
 up0_3rd = _mm256_loadu_pd((double *)um + 2); /*um[1]um[2]*/
 up1_3rd = _mm256_loadu_pd((double *)um + 8); /*um[4]um[5]*/
 up0up1_3rd_perm = _mm256_permute2f128_pd(up0_3rd, up0_3rd, 1);
 /* Working register for col */
 up0up1_3rd = _mm256_blend_pd(up0up1_3rd_perm, up1_3rd, 12);/*[H1 H2] um[2] um[5]*/
 up0up1_3rd_shuf = _mm256_shuffle_pd(up0up1_3rd, up0up1_3rd, 0b0101); /*im re im re*/

 reimprod5 = _mm256_mul_pd(psi0_real, up0up1_3rd);       // psi0_real reused
 _reimprod5 = _mm256_mul_pd(psi0_imag, up0up1_3rd_shuf); // psi0_imag reused
 addsub_res5 = _mm256_addsub_pd(reimprod5, _reimprod5);  // 3rd element

 /* ********************************************************
  * Matrix 2: Sixth set of computation: 3rd row and col: 2x2
  * ********************************************************/
 reimprod6 = _mm256_mul_pd(psi20_real, up0up1_3rd);       // psi20_real, up0up1_3rd reused
 _reimprod6 = _mm256_mul_pd(psi20_imag, up0up1_3rd_shuf); // psi20_imag, up0up1_3rd_shuf reused
 addsub_res6 = _mm256_addsub_pd(reimprod6, _reimprod6);   // 3rd element

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 and 2 (2x2)========== */
 /* A vector of lower lane of addsub_res5 [L1] and of addsub_res2 [L2] */
 _addsub_res4 = _mm256_permute2f128_pd(addsub_res6, addsub_res5, 2); /*[L1 L2]*/
 res4 = _mm256_permute2f128_pd(addsub_res5, addsub_res5, 1);         /*Placing H2 lane in L2 lane*/
 /* A vector of high lane of temp3 [H1] and of addsub_res5 [H2] */
 _addsub_res5 = _mm256_blend_pd(res4, addsub_res6, 12); /*[H1 H2]*/
 add_res3 = _mm256_add_pd(_addsub_res4, _addsub_res5);  // Result of ROW 3 of matrix 1 & 2

 chi_3rd = _mm256_castpd256_pd128(add_res3);     /*First 128-bit = chi[2]*/
 chi2_3rd = _mm256_extractf128_pd(add_res3, 1);  /*Second 128-bit = chi2[2]*/

 /*Storing Results*/
 _mm256_store_pd((double *)chi, add_res1);
 _mm_store_pd((double *)chi + 4, chi_3rd);

 _mm256_store_pd((double *)chi2, add_res2);
 _mm_store_pd((double *)chi2 + 4, chi2_3rd);
}
