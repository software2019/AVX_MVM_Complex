## Double MVM Computation Results   

```c
chi[0] = -42.0re
chi[0] = 77.0im
chi[1] = -21.0re
chi[1] = 43.0im
chi[2] = -45.0re
chi[2] = 107.0im

chi2[0] = -6.0re
chi2[0] = 45.0im
chi2[1] = 0.0re
chi2[1] = 30.0im
chi2[2] = 0.0re
chi2[2] = 66.0im

```

vectors/cols = um[0]um[1]um[2]  ||  um[3]um[4]um[5] || um[6]um[7]um[8]     

## Single  MVM inverse Computation 
```c  
chi[0]  =  psi[0]  *  um[0]   
           psi[1]  *  um[3]   
           psi[2]  *  um[6]   


chi[1]  =  psi[0]  *  um[1]    
           psi[1]  *  um[4]    
           psi[2]  *  um[7]    


chi[2]  =  psi[0]  *  um[2]    
           psi[1]  *  um[5]    
           psi[2]  *  um[8]    
```  

**Need to reshuffle and get following vectors:**    
```c
vec1 = um[0] um[3] = (1.0 + 2.0 * I) (2.0 + 1.0 * I)  
vec2 = um[1] um[4] = (3.0 + 4.0 * I) (3.0 + 2.0 * I)   
vec3 = um[2] um[5] (up0_3rd up1_3rd) (5.0 + 6.0 * I)(1.0 + 3.0 * I)   


um0um3[0] = 1.0re  
um0um3[1] = 2.0im   
um0um3[2] = 2.0re  
um0um3[3] = 1.0im  

um1um4[0] = 3.0re   
um1um4[1] = 4.0im   
um1um4[2] = 3.0re  
um1um4[3] = 2.0im   

/* after reshuffle for imag and real alternate:*/
um0um3_shuf[0] = 2.0re  
um0um3_shuf[1] = 1.0im  
um0um3_shuf[2] = 1.0re  
um0um3_shuf[3] = 2.0im  

um1um4_shuf[0] = 4.0re   
um1um4_shuf[1] = 3.0im  
um1um4_shuf[2] = 2.0re  
um1um4_shuf[3] = 3.0im  


Column after shuffling:  
psi0_shuf1[0] = 1.0re    
psi0_shuf1[1] = 1.0im  
psi0_shuf1[2] = 2.0re  
psi0_shuf1[3] = 2.0im  

psi0_shuf2[0] = 4.0re  
psi0_shuf2[1] = 4.0im  
psi0_shuf2[2] = 5.0re  
psi0_shuf2[3] = 5.0im    


**Outputs/Results**   
chi[0] = -26.0re 
chi[0] = 57.0im 
chi[1] = -23.0re 
chi[1] = 83.0im 
chi[2] = -53.0re 
chi[2] = 85.0im  
```

## Double  MVM inverse Computation  
```c
chi[0]  =  psi[0]  *  um[0]   
           psi[1]  *  um[3]     
           psi[2]  *  um[6]     

chi[1]  =  psi[0]  *  um[1]    
           psi[1]  *  um[4]    
           psi[2]  *  um[7]    

chi[2]  =  psi[0]  *  um[2]    
           psi[1]  *  um[5]    
           psi[2]  *  um[8] 


chi2[0]  = psi2[0]  *  um[0]         
           psi2[1]  *  um[3]        
           psi2[2]  *  um[6]        

chi2[1]  = psi2[0]  *  um[1]        
           psi2[1]  *  um[4]        
           psi2[2]  *  um[7]      

chi2[2]  = psi2[0]  *  um[2]      
           psi2[1]  *  um[5]      
           psi2[2]  *  um[8]  
```

 **Vector initialized: 6 doubles**  
 ```c
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
```

## Manually calculating MVM in the case of inverse multiply:   
**(psi * up)**  

```c
chi[0] = (1 + 4i)*(1 + 2i) + (2 + 5i)*(2 + 1i) + (3 + 6i)*(4 + 5i)  
       //= (1 + 4i)*(1 - 2i) + (2 + 5i)*(2 - 1i) + (3 + 6i)*(4 - 5i)        conj() applied
       = (1+8) + (-2+4)i + (4+5) + (-2+10)i + (12+30) + (-15+24)i    
addsub = 9 + 2i +9 + 8i + 42 + 9i
addsub2= (18+10i) + (42+9i)
       = (60 + 19i)

chi[1] = (1 + 4i) * (3 + 4i) + (2 + 5i) * (3 + 2i) + (3 + 6i) * (6 + 4i)
       = (1 + 4i) * (3 - 4i) + (2 + 5i) * (3 - 2i) + (3 + 6i) * (6 - 4i)      conj() applied
       = (3 + 16) + (-4 + 12)i + (6 + 10) + (-4 + 15)i + (18 + 24) + (-12 + 36)i
addsub = (19 + 8i) + (16 + 11i) + (42 + 24i)
addsub2= (35 + 19i) + (42 + 24i) 
       = (77 + 43i)   

chi[2] = (1 + 4i) * (5+6i) + (2 + 5i) * (1+3i) + (3 + 6i) * (5+6i) 
       = (1 + 4i) * (5-6i) + (2 + 5i) * (1-3i) + (3 + 6i) * (5-6i)   conj() applied
       = (5+24) + (-6+20)i + (2+15) + (-6+5)i + (15+36) + (-18+30)i
addsub = (29+14i) + (17 - 1i) + (51 + 12i)
addsub2= (46 + 13i) + (51 + 12i)
       = (97 + 25i)



chi2[0] = (1 + 2I) * (1 + 2I) + (3 + 4I)*(2 + 1I) + (2 + 1I)*(4 + 5I)
        = (1 + 2I) * (1 - 2I) + (3 + 4I)*(2 - 1I) + (2 + 1I)*(4 - 5I)     
        = (1 + 4) + (-2 + 2)i + (6 + 4) + (-3 + 8)i + (8 + 5) + (-10 + 4)i
        = (5 + 0i) + (10 + 5i) + (13 - 6i) 
        = (15 + 5i) + (13 - 6i)
        = (28 - 1i)

chi2[1] = (1 + 2I) * (3 + 4I) + (3 + 4I)*(3 + 2I) + (2 + 1I)*(6 + 4I)
        = (1 + 2I) * (3 - 4I) + (3 + 4I)*(3 - 2I) + (2 + 1I)*(6 - 4I)               conj() applied
        = (3 + 8) + (-4 + 6)i + (9 + 8) + (-6 + 12)i + (12 + 4) + (-8 + 6)i
        = (11 + 2i) + (17 + 6i) + (16 - 2i) 
        = (28 + 8i) + (16 - 2i) 
        = (44 + 6i)

chi2[2] = (1 + 2I) * (5 + 6I) + (3 + 4I)*(1 + 3I) + (2 + 1I)*(5 + 6I)
        = (1 + 2I) * (5 - 6I) + (3 + 4I)*(1 - 3I) + (2 + 1I)*(5 - 6I) conj() applied       
        = (5+12) + (-6+10)i + (3+12) + (-9+4)i + (10+6) + (-12+5)i
addsub  = (17 + 4i) + (15 - 5i) + (16 -7i) 
addsub2 = (32 -1i) + (16 - 7i)
        = (48 - 8i)


/* Operations Counting */
= (real*real + imag*imag) + (real*imag + imag*real) //4 mul, 3 adds
or
= (a + bi) * (c + di)/* Interleaved data layout */ 
= (ac - bd) + (ad + bc) //4 mul, 2 add, 1 sub

chi[0] = (1 + 4i)*(1 + 2i)                          + (2 + 5i)*(2 + 1i) + (3 + 6i)*(4 + 5i) 
       = (1*1)+(4i*2i) + (1*2i) + (4i*1)
       = 1 - 8 + 2i + 4i
       = -7 + 6i
 
/*Results:Double inverse MVM Computation*/
chi[0] = 60.0re
chi[0] = 19.0im
chi[1] = 77.0re
chi[1] = 43.0im
chi[2] = 97.0re
chi[2] = 25.0im

chi2[0] = 28.0re
chi2[0] = -1.0im
chi2[1] = 44.0re
chi2[1] = 6.0im
chi2[2] = 48.0re
chi2[2] = -8.0im

```  

## single_MVM_AVX_Multiply Code:  

```c
void single_MVM_inverse(suNf_vector *chi, const suNf *um, const suNf_vector *psi)
{
 __m256d up0, up0_3rd, up1, up1_3rd, up2, up2_3rd, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod2, _reimprod2, reimprod3, _reimprod3, reimprod3rd_1, _reimprod3rd_1, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, addsub_res2, _addsub_res2, addsub_res3, _addsub_res3, addsub_res3rd_1, psi0, psi0_real, psi0_imag, psi_3rd, add_res1, add_res2, add_res3, up0up1_3rd,  up2_3rd_perm, psi_3rd_perm, up2_3rd_duplicate, psi_3rd_duplicate, res1, res2, add_all_0, um0um3, um1um4, um0um3_shuf, um1um4_shuf, psi_3rd_real, psi_3rd_imag, um2_shuf, up0up1_3rd_perm, up0up1_3rd_shuf, um2_3rd_shuf;

 __m128d add_all_1;

 /*===>Start of loading variables: um, psi<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_load_pd((double *)um); // um[0]um[1]
 
 /* Loading second set of 3 complexes of 3x3 matrix */
 up1 = _mm256_load_pd((double *)um + 6); // um[3]um[4]

 /****************************************************************
  * col1: working vector um0um3 of lower lane of up0 [L1] and of up1 [L2]
  * ***************************************************************/
 um0um3 = _mm256_permute2f128_pd(up1, up0, 2);      //[L1 L2] vec1 = um[0] um[3] (1.0 + 2.0 * I) (2.0 + 1.0 * I)
 res1 = _mm256_permute2f128_pd(up0, up0, 1);        // Placing H2 lane in L2 lane

 /*******************************************************************************
  * col2: working vector vector of high lane of temp [H1] and of addsub_res1 [H2]
  * *****************************************************************************/
 um1um4 = _mm256_blend_pd(res1, up1, 12); //[H1 H2] um[1] um[4](re im re im) = (3.0 + 4.0 * I) (3.0 + 2.0 * I)

 /* now cols um0um3 and um1um4 need to be reshuffled like psi: img real img real*/
 um0um3_shuf = _mm256_shuffle_pd(um0um3, um0um3, 0b0101); //(2.0 + 1.0 * I) (1.0 + 2.0 * I)
 um1um4_shuf = _mm256_shuffle_pd(um1um4, um1um4, 0b0101); //(4.0 + 3.0 * I) (2.0 + 3.0 * I)

 /* Loading third set of 3 complexes of 3x3 matrix */
 up2_3rd = _mm256_loadu_pd((double *)um + 14); // um[7]um[8]

 /* Row: Loading 3 complexes of psi vector and shuffling */
 psi0 = _mm256_load_pd((double *)psi);
/* Need to shuffle like up0 and up1 as before */
 psi0_real = _mm256_shuffle_pd(psi0, psi0, 0b0000);   /* Row 1: Shuffle up0: (real real real real) parts */
 psi0_imag = _mm256_shuffle_pd(psi0, psi0, 0b1111);   /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */

 psi_3rd = _mm256_loadu_pd((double *)psi + 2);
 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First set of computation:2x2*/
 reimprod0 = _mm256_mul_pd(psi0_real, um0um3);         /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod0 = _mm256_mul_pd(psi0_imag, um0um3_shuf);   /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0); /*addsub*/

 /*Second set of computation:2x2*/
 reimprod1 = _mm256_mul_pd(psi0_real, um1um4);         /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod1 = _mm256_mul_pd(psi0_imag, um1um4_shuf);   /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1); /*addsub*/

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); //[L1 L2]
 res2 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1);        // Placing H2 lane in L2 lane
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res1 = _mm256_blend_pd(res2, addsub_res1, 12);  //[H1 H2]
 add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1);   // Result of 2x2

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 psi_3rd_perm = _mm256_permute2f128_pd(psi_3rd, psi_3rd, 1);
 psi_3rd_duplicate = _mm256_blend_pd(psi_3rd_perm, psi_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of row */

 psi_3rd_real = _mm256_shuffle_pd(psi_3rd_duplicate, psi_3rd_duplicate, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */
 psi_3rd_imag = _mm256_shuffle_pd(psi_3rd_duplicate, psi_3rd_duplicate, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */

/* 3rd element of col 1 and 2 */
 up2 = _mm256_load_pd((double *)um + 12);       // um[6]um[7](4.0 + 5.0 * I)(6.0 + 4.0 * I)
 um2_shuf = _mm256_shuffle_pd(up2, up2, 0b0101); //(5.0 * I + 4.0) (4.0 * I + 6.0) im re im re

 reimprod3rd_1 = _mm256_mul_pd(psi_3rd_real, up2);
 _reimprod3rd_1 = _mm256_mul_pd(psi_3rd_imag, um2_shuf);
 addsub_res3rd_1 = _mm256_addsub_pd(reimprod3rd_1, _reimprod3rd_1); // Result of 3rd elements of row 1&2 and col

 /* Additions */
 add_all_0 = _mm256_add_pd(add_res1, addsub_res3rd_1); // first 2 rows-col result of matrix-1: chi[0] chi[1]
 printf("add_all_0[0] = %.1fre\n", add_all_0[0]);
 printf("add_all_0[1] = %.1fim\n", add_all_0[1]);
 printf("add_all_0[2] = %.1fre\n", add_all_0[2]);
 printf("add_all_0[3] = %.1fim\n", add_all_0[3]);
 /* =================================(Pair 1) end  ============================= */

 /* =======Third set of computation: 3rd row and col: 2x2========*/
 /* Row reused from above  */
 /* Loading and shuffling 3rd element of col 1 and 2  */
 up0_3rd = _mm256_loadu_pd((double *)um + 2); // um[1]um[2]
 up1_3rd = _mm256_loadu_pd((double *)um + 8); // um[4]um[5]
 up0up1_3rd_perm = _mm256_permute2f128_pd(up0_3rd, up0_3rd, 1);
 up0up1_3rd = _mm256_blend_pd(up0up1_3rd_perm, up1_3rd, 12); /*[H1 H2] um[2] um[5]: (5.0 + 6.0 * I)(1.0 + 3.0 * I) 3rd element of col */
 up0up1_3rd_shuf = _mm256_shuffle_pd(up0up1_3rd, up0up1_3rd, 0b0101); //(6.0 * I + 5.0) (3.0 * I + 1.0) im re im re

 reimprod2 = _mm256_mul_pd(psi0_real, up0up1_3rd); // psi_3rd_duplicate reused   temp11 realup2_3rd  reimprod4
 _reimprod2 = _mm256_mul_pd(psi0_imag, up0up1_3rd_shuf); // psi3 reused  //temp12 imagup2_3rd _reimprod4
 addsub_res2 = _mm256_addsub_pd(reimprod2, _reimprod2);  // 3rd element of 3rd row and col: result: lanes are identical  temp11

 _addsub_res2 = _mm256_permute2f128_pd(addsub_res2, addsub_res2, 1); // temp6 addsub_res2  temp10 _addsub_res2
 add_res2 = _mm256_add_pd(_addsub_res2, addsub_res2);// 3rd row 2x2 result: low and high lanes are identical  // temp6 addsub_res2  temp1 add_res2

 /* =========3rd element of 3rd row with 3rd element of col======== */
 up2_3rd = _mm256_loadu_pd((double *)um + 14); // um[7]um[8]
 up2_3rd_perm = _mm256_permute2f128_pd(up2_3rd, up2_3rd, 1); // temp10 up2_3rd_perm
 up2_3rd_duplicate = _mm256_blend_pd(up2_3rd_perm, up2_3rd, 12); // temp10 up2_3rd_perm up2_3rd_duplicate
 um2_3rd_shuf = _mm256_shuffle_pd(up2_3rd_duplicate, up2_3rd_duplicate, 0b0101); //(5.0 * I + 4.0) (4.0 * I + 6.0) im re im re

 reimprod3 = _mm256_mul_pd(psi_3rd_real, up2_3rd_duplicate); // psi_3rd_duplicate reused   temp11 realup2_3rd  reimprod4
 _reimprod3 = _mm256_mul_pd(psi_3rd_imag, um2_3rd_shuf);     // psi3 reused  //temp12 imagup2_3rd _reimprod4
 addsub_res3 = _mm256_addsub_pd(reimprod3, _reimprod3);   // 3rd element of 3rd row and col: result: lanes are identical  temp11

 add_res3 = _mm256_add_pd(add_res2, addsub_res3);

 add_all_1 = _mm256_castpd256_pd128(add_res3); // 3rd row-col result: chi[2] //temp11 add_res3
 printf("add_all_1[0] = %.1fre\n", add_all_1[0]);
 printf("add_all_1[1] = %.1fim\n\n", add_all_1[1]);

 /* Storing Results */
 _mm256_store_pd((double *)chi, add_all_0);
 _mm_store_pd((double *)chi + 4, add_all_1);
}
```   


## Double_MVM_AVX_Multiply Code:   

```c
void double_MVM_inverse(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2)
{

 __m256d up0, up0_3rd, up1, up1_3rd, up2, up2_3rd, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod2, _reimprod2, reimprod3, _reimprod3, reimprod3rd_1, _reimprod3rd_1, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, addsub_res2, _addsub_res2, addsub_res3, _addsub_res3, addsub_res3rd_1, psi0, psi0_real, psi0_imag, psi_3rd, add_res1, add_res2, add_res3, up0up1_3rd, up2_3rd_perm, psi_3rd_perm, up2_3rd_duplicate, psi_3rd_duplicate, res1, res2, res3, res4, add_all_0, add_all_1, um0um3, um1um4, um0um3_shuf, um1um4_shuf, psi_3rd_real, psi_3rd_imag, um2_shuf, up0up1_3rd_perm, up0up1_3rd_shuf, um2_3rd_shuf, psi2_0, psi2_3rd, psi20_real, psi20_imag, reimprod4, _reimprod4, addsub_res4, psi2_3rd_perm, psi2_3rd_duplicate, psi2_3rd_real, psi2_3rd_imag, reimprod3rd_2, _reimprod3rd_2, addsub_res3rd_2, reimprod5, _reimprod5, addsub_res5, reimprod6, _reimprod6, addsub_res6, _addsub_res4, _addsub_res5, psi_psi2_3rd, psi_psi2_3rd_real, psi_psi2_3rd_imag, up2_3rd_shuf, reimprod7, _reimprod7, addsub_res7, add_all_2;

 __m128d sse_add0, vec0_3rd, vec1_3rd;

 /*===>Start of loading variables: um, psi<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_load_pd((double *)um); // um[0]um[1]

 /* Loading second set of 3 complexes of 3x3 matrix */
 up1 = _mm256_load_pd((double *)um + 6); // um[3]um[4]

 /****************************************************************
  * col1: working vector um0um3 of lower lane of up0 [L1] and of up1 [L2]
  * ***************************************************************/
 um0um3 = _mm256_permute2f128_pd(up1, up0, 2); //[L1 L2] vec1 = um[0] um[3] (1.0 + 2.0 * I) (2.0 + 1.0 * I)
 res1 = _mm256_permute2f128_pd(up0, up0, 1);   // Placing H2 lane in L2 lane

 /*******************************************************************************
  * col2: working vector um1um4 vector of high lane of temp [H1] and of addsub_res1 [H2]
  * *****************************************************************************/
 um1um4 = _mm256_blend_pd(res1, up1, 12); //[H1 H2] um[1] um[4](re im re im) = (3.0 + 4.0 * I) (3.0 + 2.0 * I)

 /* now cols um0um3 and um1um4 need to be reshuffled like psi: img real img real*/
 um0um3_shuf = _mm256_shuffle_pd(um0um3, um0um3, 0b0101); //(2.0 + 1.0 * I) (1.0 + 2.0 * I)
 um1um4_shuf = _mm256_shuffle_pd(um1um4, um1um4, 0b0101); //(4.0 + 3.0 * I) (2.0 + 3.0 * I)

 /* Row: Loading 3 complexes of psi vector and shuffling */
 psi0 = _mm256_load_pd((double *)psi);
 /* Need to shuffle like up0 and up1 as before */
 psi0_real = _mm256_shuffle_pd(psi0, psi0, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */
 psi0_imag = _mm256_shuffle_pd(psi0, psi0, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */

 /* Row: Loading 3 complexes of psi2 vector and shuffling */
 psi2_0 = _mm256_loadu_pd((double *)psi2);       // from 0-31 bytes
 /* Need to shuffle like up0 and up1 as before */
 psi20_real = _mm256_shuffle_pd(psi2_0, psi2_0, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */
 psi20_imag = _mm256_shuffle_pd(psi2_0, psi2_0, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */
 
 //psi2_0_shuf = _mm256_shuffle_pd(psi2_0, psi2_0, 0b0101);
 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First set of computation:2x2*/
 reimprod0 = _mm256_mul_pd(psi0_real, um0um3);          /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod0 = _mm256_mul_pd(psi0_imag, um0um3_shuf);    /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0); /*addsub*/

 /*Second set of computation:2x2*/
 reimprod1 = _mm256_mul_pd(psi0_real, um1um4);          /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod1 = _mm256_mul_pd(psi0_imag, um1um4_shuf);    /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1); /*addsub*/

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); //[L1 L2]
 res2 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1);         // Placing H2 lane in L2 lane
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res1 = _mm256_blend_pd(res2, addsub_res1, 12); //[H1 H2]
 add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1);  // Result of 2x2

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 psi_3rd = _mm256_loadu_pd((double *)psi + 2);//psi[1] psi[2]
 psi_3rd_perm = _mm256_permute2f128_pd(psi_3rd, psi_3rd, 1);//psi[2] psi[1]
 psi_3rd_duplicate = _mm256_blend_pd(psi_3rd_perm, psi_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of row */

 psi_3rd_real = _mm256_shuffle_pd(psi_3rd_duplicate, psi_3rd_duplicate, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */
 psi_3rd_imag = _mm256_shuffle_pd(psi_3rd_duplicate, psi_3rd_duplicate, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */

 /* 3rd element of col 1 and 2 */
 up2 = _mm256_load_pd((double *)um + 12);        // um[6]um[7](4.0 + 5.0 * I)(6.0 + 4.0 * I)
 um2_shuf = _mm256_shuffle_pd(up2, up2, 0b0101); //(5.0 * I + 4.0) (4.0 * I + 6.0) im re im re

 reimprod3rd_1 = _mm256_mul_pd(psi_3rd_real, up2);
 _reimprod3rd_1 = _mm256_mul_pd(psi_3rd_imag, um2_shuf);
 addsub_res3rd_1 = _mm256_addsub_pd(reimprod3rd_1, _reimprod3rd_1); // Result of 3rd elements of row 1&2 and col

 /* Additions */
 add_all_0 = _mm256_add_pd(add_res1, addsub_res3rd_1); // first 2 rows-col result of matrix-1: chi[0] chi[1]
 // printf("add_all_0[0] = %.1fre\n", add_all_0[0]);
 // printf("add_all_0[1] = %.1fim\n", add_all_0[1]);
 // printf("add_all_0[2] = %.1fre\n", add_all_0[2]);
 // printf("add_all_0[3] = %.1fim\n\n", add_all_0[3]);
 /* =================================(Pair 1) end  ============================= */
 /* =================================(Pair 2) start ============================= */
 /*Fourth set of computation:2x2*/
 reimprod3 = _mm256_mul_pd(psi20_real, um0um3);         /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod3 = _mm256_mul_pd(psi20_imag, um0um3_shuf);   /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res3 = _mm256_addsub_pd(reimprod3, _reimprod3); /*addsub*/
 // printf("addsub_res3[0] = %.1fre\n", addsub_res3[0]);
 // printf("addsub_res3[1] = %.1fim\n", addsub_res3[1]);
 // printf("addsub_res3[2] = %.1fre\n", addsub_res3[2]);
 // printf("addsub_res3[3] = %.1fim\n\n", addsub_res3[3]);

 /*Fifth set of computation:2x2*/
 reimprod4 = _mm256_mul_pd(psi20_real, um1um4);         /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod4 = _mm256_mul_pd(psi20_imag, um1um4_shuf);   /* (im*im),(im*re),(im*im),(im*re) */
 addsub_res4 = _mm256_addsub_pd(reimprod4, _reimprod4); /*addsub*/
 // printf("addsub_res4[0] = %.1fre\n", addsub_res4[0]);
 // printf("addsub_res4[1] = %.1fim\n", addsub_res4[1]);
 // printf("addsub_res4[2] = %.1fre\n", addsub_res4[2]);
 // printf("addsub_res4[3] = %.1fim\n\n", addsub_res4[3]);

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
 _addsub_res2 = _mm256_permute2f128_pd(addsub_res4, addsub_res3, 2); //[L1 L2]
 res3 = _mm256_permute2f128_pd(addsub_res3, addsub_res3, 1);         // Placing H2 lane in L2 lane
 /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
 _addsub_res3 = _mm256_blend_pd(res3, addsub_res4, 12); //[H1 H2]
 add_res2 = _mm256_add_pd(_addsub_res2, _addsub_res3);  // Result of 2x2

 // printf("add_res2[0] = %.1fre\n", add_res2[0]);
 // printf("add_res2[1] = %.1fim\n", add_res2[1]);
 // printf("add_res2[2] = %.1fre\n", add_res2[2]);
 // printf("add_res2[3] = %.1fim\n\n", add_res2[3]);

 /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
 /* 3rd element of row 1 and 2  */
 psi2_3rd = _mm256_loadu_pd((double *)psi2 + 2); // psi2[1] psi2[2]
 psi2_3rd_perm = _mm256_permute2f128_pd(psi2_3rd, psi2_3rd, 1);
 psi2_3rd_duplicate = _mm256_blend_pd(psi2_3rd_perm, psi2_3rd, 12); /*[H1 H2] of psi2_3rd, 3rd element of row */

 psi2_3rd_real = _mm256_shuffle_pd(psi2_3rd_duplicate, psi2_3rd_duplicate, 0b0000); /* Row 1: Shuffle up0: (real real real real) parts */
 psi2_3rd_imag = _mm256_shuffle_pd(psi2_3rd_duplicate, psi2_3rd_duplicate, 0b1111); /* Row 2: Shuffle up0: (imag, imag, imag, imag) parts */

 /* 3rd element of col 1 and 2 */
 //up2 = _mm256_load_pd((double *)um + 12);        // um[6]um[7](4.0 + 5.0 * I)(6.0 + 4.0 * I)
 //um2_shuf = _mm256_shuffle_pd(up2, up2, 0b0101); //(5.0 * I + 4.0) (4.0 * I + 6.0) im re im re

 reimprod3rd_2 = _mm256_mul_pd(psi2_3rd_real, up2);
 _reimprod3rd_2 = _mm256_mul_pd(psi2_3rd_imag, um2_shuf);
 addsub_res3rd_2 = _mm256_addsub_pd(reimprod3rd_2, _reimprod3rd_2); // Result of 3rd elements of row 1&2 and col

 /* Additions */
 add_all_1 = _mm256_add_pd(add_res2, addsub_res3rd_2); // first 2 rows-col result of matrix-1: chi2[0] chi2[1]
 // printf("add_all_1[0] = %.1fre\n", add_all_1[0]);
 // printf("add_all_1[1] = %.1fim\n", add_all_1[1]);
 // printf("add_all_1[2] = %.1fre\n", add_all_1[2]);
 // printf("add_all_1[3] = %.1fim\n\n", add_all_1[3]);
 /* =================================(Pair 2) End ============================= */

 /* =================================(Pair 3) Start ============================= */
 /* ********************************************************
  * Matrix 1: Third set of computation: 3rd row and col: 2x2
  * ********************************************************/
 /* ===> shuffled Row (psi0_real,psi0_imag) reused from above is to be reused:   */
 /* Loading and shuffling 3rd element of col 1 and 2  */
 up0_3rd = _mm256_loadu_pd((double *)um + 2); // um[1]um[2]
 up1_3rd = _mm256_loadu_pd((double *)um + 8); // um[4]um[5]
 up0up1_3rd_perm = _mm256_permute2f128_pd(up0_3rd, up0_3rd, 1);
 /* Working register for col */
 up0up1_3rd = _mm256_blend_pd(up0up1_3rd_perm, up1_3rd, 12); /*[H1 H2] um[2] um[5]: first 2 elements of 3rd col */
 up0up1_3rd_shuf = _mm256_shuffle_pd(up0up1_3rd, up0up1_3rd, 0b0101); //(6.0 * I + 5.0) (3.0 * I + 1.0) im re im re

 reimprod5 = _mm256_mul_pd(psi0_real, up0up1_3rd);       // psi0_real reused
 _reimprod5 = _mm256_mul_pd(psi0_imag, up0up1_3rd_shuf); // psi0_imag reused 
 addsub_res5 = _mm256_addsub_pd(reimprod5, _reimprod5);  // 3rd element 
 // printf("addsub_res5[0] = %.1fre\n", addsub_res5[0]);
 // printf("addsub_res5[1] = %.1fim\n", addsub_res5[1]);
 // printf("addsub_res5[2] = %.1fre\n", addsub_res5[2]);
 // printf("addsub_res5[3] = %.1fim\n\n", addsub_res5[3]);

 /* ********************************************************
  * Matrix 2: Sixth set of computation: 3rd row and col: 2x2
  * ********************************************************/
 reimprod6 = _mm256_mul_pd(psi20_real, up0up1_3rd);       // psi20_real, up0up1_3rd reused
 _reimprod6 = _mm256_mul_pd(psi20_imag, up0up1_3rd_shuf); // psi20_imag, up0up1_3rd_shuf reused
 addsub_res6 = _mm256_addsub_pd(reimprod6, _reimprod6);   // 3rd element
 // printf("addsub_res6[0] = %.1fre\n", addsub_res6[0]);
 // printf("addsub_res6[1] = %.1fim\n", addsub_res6[1]);
 // printf("addsub_res6[2] = %.1fre\n", addsub_res6[2]);
 // printf("addsub_res6[3] = %.1fim\n\n", addsub_res6[3]);

 /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 3 Matrix 1 and 2 RESULT========== */
 /* A vector of lower lane of addsub_res5 [L1] and of addsub_res2 [L2] */
 _addsub_res4 = _mm256_permute2f128_pd(addsub_res6, addsub_res5, 2); // [L1 L2]
 res4 = _mm256_permute2f128_pd(addsub_res5, addsub_res5, 1);         // Placing H2 lane in L2 lane
 /* A vector of high lane of temp3 [H1] and of addsub_res5 [H2] */
 _addsub_res5 = _mm256_blend_pd(res4, addsub_res6, 12); // [H1 H2]
 add_res3 = _mm256_add_pd(_addsub_res4, _addsub_res5);  // Result of ROW 3 of matrix 1 & 2

 // printf("add_res3[0] = %.1fre\n", add_res3[0]);
 // printf("add_res3[1] = %.1fim\n", add_res3[1]);
 // printf("add_res3[2] = %.1fre\n", add_res3[2]);
 // printf("add_res3[3] = %.1fim\n\n", add_res3[3]);

 /* =======Dealing with 3rd element of 3rd row and col of both matrix ======= */
 /* Loading third set of 3 complexes of 3x3 matrix */
 psi_psi2_3rd = _mm256_blend_pd(psi_3rd_perm, psi2_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of col */
 psi_psi2_3rd_real = _mm256_shuffle_pd(psi_psi2_3rd, psi_psi2_3rd, 0b0000);          // real real real real
 psi_psi2_3rd_imag = _mm256_shuffle_pd(psi_psi2_3rd, psi_psi2_3rd, 0b1111);          // imag imag imag imag

 up2_3rd = _mm256_loadu_pd((double *)um + 14); // um[7]um[8]
 up2_3rd_perm = _mm256_permute2f128_pd(up2_3rd, up2_3rd, 1);
 up2_3rd_duplicate = _mm256_blend_pd(up2_3rd_perm, up2_3rd, 12);
 up2_3rd_shuf = _mm256_shuffle_pd(up2_3rd_duplicate, up2_3rd_duplicate, 0b0101); //imag real imag real

 reimprod7 = _mm256_mul_pd(psi_psi2_3rd_real, up2_3rd_duplicate);
 _reimprod7 = _mm256_mul_pd(psi_psi2_3rd_imag, up2_3rd_shuf);
 addsub_res7 = _mm256_addsub_pd(reimprod7, _reimprod7); // 3rd element of 3rd row and col: result: lanes are identical

 add_all_2 = _mm256_add_pd(add_res3, addsub_res7); // chi[2] chi2[2]

 vec0_3rd = _mm256_castpd256_pd128(add_all_2);   // First 128-bits chi[2]
 vec1_3rd = _mm256_extractf128_pd(add_all_2, 1); // Second 128-bits chi2[2]

 printf("add_all_0[0] = %.1fre\n", add_all_0[0]);
 printf("add_all_0[1] = %.1fim\n", add_all_0[1]);
 printf("add_all_0[2] = %.1fre\n", add_all_0[2]);
 printf("add_all_0[3] = %.1fim\n", add_all_0[3]);
 printf("vec0_3rd[0] = %.1fre\n", vec0_3rd[0]);
 printf("vec0_3rd[1] = %.1fim\n\n", vec0_3rd[1]);

 printf("add_all_1[0] = %.1fre\n", add_all_1[0]);
 printf("add_all_1[1] = %.1fim\n", add_all_1[1]);
 printf("add_all_1[2] = %.1fre\n", add_all_1[2]);
 printf("add_all_1[3] = %.1fim\n", add_all_1[3]);
 printf("vec1_3rd[2] = %.1fre\n", vec1_3rd[0]);
 printf("vec1_3rd[3] = %.1fim\n\n", vec1_3rd[1]);

 /*Storing Results*/
 _mm256_store_pd((double *)chi, add_all_0);
 _mm_store_pd((double *)chi + 4, vec0_3rd);

 _mm256_store_pd((double *)chi2, add_all_1);
 _mm_store_pd((double *)chi2 + 4, vec1_3rd);
}

void single_MVM_2x2(suNf_vector *chi, const suNf *up, const suNf_vector *psi)
{
 __m256d up0, up1, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod2, _reimprod2, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, addsub_res2, _addsub_res2, psi0,   add_res1, add_res2, res1, psi0_shuf, realup0, imagup0, realup1, imagup1, realup2, imagup2;

//  __m128d chi_3rd;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_loadu_pd((double *)up);
 realup0 = _mm256_shuffle_pd(up0, up0, 0b0000); /* (real real real real)*/
 imagup0 = _mm256_shuffle_pd(up0, up0, 0b1111); /* (imag, imag, imag, imag)*/

 /* Loading second set of 3 complexes of 3x3 matrix */
 up1 = _mm256_loadu_pd((double *)up + 6);
 realup1 = _mm256_shuffle_pd(up1, up1, 0b0000); /*(real real real real)*/
 imagup1 = _mm256_shuffle_pd(up1, up1, 0b1111); /*(imag, imag, imag, imag)*/

 /* Loading third set of 3 complexes of 3x3 matrix */
//  up2 = _mm256_loadu_pd((double *)up + 12);
//  realup2 = _mm256_shuffle_pd(up2, up2, 0b0000); /*(real real real real)*/
//  imagup2 = _mm256_shuffle_pd(up2, up2, 0b1111); /*(imag, imag, imag, imag)*/

 /* Loading 3 complexes of psi vector and shuffling */
 psi0 = _mm256_loadu_pd((double *)psi);
 psi0_shuf = _mm256_shuffle_pd(psi0, psi0, 0b0101);

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /*First row*col computation:2x2*/
 reimprod0 = _mm256_mul_pd(realup0, psi0); /* (re*re),(re*im),(re*re),(re*im) */
 _reimprod0 = _mm256_mul_pd(imagup0, psi0_shuf);/* (im*im),(im*re),(re*im),(im*re) */
 addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0); 

 /*Second row*col computation:2x2*/
 reimprod1 = _mm256_mul_pd(realup1, psi0);/* (re*re),(re*im),(re*re),(re*im) */
 _reimprod1 = _mm256_mul_pd(imagup1, psi0_shuf);/* (im*im),(im*re),(re*im),(im*re) */
 addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1); 

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and addsub_res0 [L2] */
 _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); //[L1 L2]
 res1 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1);         // Placing H2 lane in L2 lane
 /* A vector of high lane of res1 [H1] and addsub_res1 [H2] */
 _addsub_res1 = _mm256_blend_pd(res1, addsub_res1, 12); //[H1 H2]
 add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1);  //Result of 2x2

 /*Third row*col computation:2x2*/
//  reimprod2 = _mm256_mul_pd(realup2, psi0); /* (re*re),(re*im),(re*re),(re*im) */
//  _reimprod2 = _mm256_mul_pd(imagup2, psi0_shuf); /*(im*im),(im*re),(re*im),(im*re) */
//  addsub_res2 = _mm256_addsub_pd(reimprod2, _reimprod2);

//  _addsub_res2 = _mm256_permute2f128_pd(addsub_res2, addsub_res2, 1);
//  add_res2 = _mm256_add_pd(_addsub_res2, addsub_res2);
//  chi_3rd = _mm256_castpd256_pd128(add_res2);

 // printf("add_res1[0] = %.1fre\n", add_res1[0]);
 // printf("add_res1[1] = %.1fim\n", add_res1[1]);
 // printf("add_res1[2] = %.1fre\n", add_res1[2]);
 // printf("add_res1[3] = %.1fim\n", add_res1[3]);
 // printf("add_all_1[0] = %.1fim\n", add_all_1[0]);
 // printf("add_all_1[1] = %.1fim\n\n", add_all_1[1]);

 /*Storing Results*/
 _mm256_store_pd((double *)chi, add_res1);
//  _mm_storeu_pd((double *)chi + 4, chi_3rd);
}


void double_MVM_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d up0, up1, realup0, realup1, imagup0, imagup1, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod3, _reimprod3, reimprod4, _reimprod4, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, _addsub_res2, addsub_res3, _addsub_res3, addsub_res4, psi0, psi0_shuf, psi2_0, psi2_0_shuf, add_res1, add_res2, res1, res2;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_load_pd((double *)up);
 up1 = _mm256_load_pd((double *)up + 6);

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

 /*Storing Results*/
 _mm256_store_pd((double *)chi, add_res1);
 _mm256_store_pd((double *)chi2, add_res2);
 
}



void single_MVM_inverse_2x2(suNf_vector *chi, const suNf *um, const suNf_vector *psi)
{
 __m256d up0, up1, reimprod0, _reimprod0, reimprod1, _reimprod1, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, psi0, psi0_real, psi0_imag, add_res1, res1, res2, um0um3, um1um4, um0um3_shuf, um1um4_shuf;

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

 /* Storing Results */
 _mm256_store_pd((double *)chi, add_res1);
}

void double_MVM_inverse_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d up0, up1, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod3, _reimprod3, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, _addsub_res2, addsub_res3, _addsub_res3, psi0, psi0_real, psi0_imag, add_res1, add_res2, res1, res2, res3, um0um3, um1um4, um0um3_shuf, um1um4_shuf, psi2_0, psi20_real, psi20_imag, reimprod4, _reimprod4, addsub_res4;

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

 /*Storing Results*/
 _mm256_store_pd((double *)chi, add_res1);
 _mm256_store_pd((double *)chi2, add_res2);
}


//Double MVM 2x2 Computation output
chi[0] = -21.0re
chi[0] = 29.0im
chi[1] = -6.0re
chi[1] = 28.0im

chi2[0] = -10.0re
chi2[0] = 28.0im
chi2[1] = 1.0re
chi2[1] = 23.0im

//Double MVM-inverse 2x2 Computation output
chi[0] = -8.0re
chi[0] = 18.0im
chi[1] = -17.0re
chi[1] = 35.0im

chi2[0] = -1.0re
chi2[0] = 15.0im
chi2[1] = -4.0re
chi2[1] = 28.0im



  /*Initialising the variables*/
  my_init(&psi, &psi2, &up, n);
  printf("psi[0] = %.1fre\n", creal(psi.c[0]));
  printf("psi[0] = %.1fim\n", cimag(psi.c[0]));
  printf("psi[1] = %.1fre\n", creal(psi.c[1]));
  printf("psi[1] = %.1fim\n", cimag(psi.c[1]));
  printf("psi[2] = %.1fre\n", creal(psi.c[2]));
  printf("psi[2] = %.1fim\n\n", cimag(psi.c[2]));

  printf("psi2[0] = %.1fre\n", creal(psi2.c[0]));
  printf("psi2[0] = %.1fim\n", cimag(psi2.c[0]));
  printf("psi2[1] = %.1fre\n", creal(psi2.c[1]));
  printf("psi2[1] = %.1fim\n", cimag(psi2.c[1]));
  printf("psi2[2] = %.1fre\n", creal(psi2.c[2]));
  printf("psi2[2] = %.1fim\n\n", cimag(psi2.c[2]));

  printf("up[0] = %.1fre\n", creal(up.c[0]));
  printf("up[0] = %.1fim\n", cimag(up.c[0]));
  printf("up[1] = %.1fre\n", creal(up.c[1]));
  printf("up[1] = %.1fim\n", cimag(up.c[1]));
  printf("up[2] = %.1fre\n", creal(up.c[2]));
  printf("up[2] = %.1fim\n", cimag(up.c[2]));
  printf("up[3] = %.1fre\n", creal(up.c[3]));
  printf("up[3] = %.1fim\n", cimag(up.c[3]));
  printf("up[4] = %.1fre\n", creal(up.c[4]));
  printf("up[4] = %.1fim\n", cimag(up.c[4]));
  printf("up[5] = %.1fre\n", creal(up.c[5]));
  printf("up[5] = %.1fim\n", cimag(up.c[5]));
  printf("up[6] = %.1fre\n", creal(up.c[6]));
  printf("up[6] = %.1fim\n", cimag(up.c[6]));
  printf("up[7] = %.1fre\n", creal(up.c[7]));
  printf("up[7] = %.1fim\n", cimag(up.c[7]));
  printf("up[8] = %.1fre\n", creal(up.c[8]));
  printf("up[8] = %.1fim\n\n", cimag(up.c[8]));

// suNf_vector psi_copy, psi2_copy;
// psi_copy = psi;
// psi2_copy = psi2;

/******************************************************************************
 * Checking the results are identical: double_MVM() == _suNf_theta_T_multiply()
 ******************************************************************************/

    //double_MVM(&chi, &chi2, &up, &psi, &psi2);
    // _DOUBLE_MMV(chi, chi2, up, psi, psi2);
    // _suNf_theta_T_multiply(chi3, up, psi);
    // _suNf_theta_T_multiply(chi4, up, psi2);

      // double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);
      // _suNf_theta_T_inverse_multiply(chi3, (up), psi);
      // _suNf_theta_T_inverse_multiply(chi4, (up), psi2);

  // for (i = 0; i < 3; i++)
  // {
  //   res1 = creal(chi.c[i]);
  //   res2 = cimag(chi.c[i]);

  //   res3 = creal(chi3.c[i]);
  //   res4 = cimag(chi3.c[i]);

  //   res5 = creal(chi2.c[i]);
  //   res6 = cimag(chi2.c[i]);

  //   res7 = creal(chi4.c[i]);
  //   res8 = cimag(chi4.c[i]);

  //   if ((fabs((res1 - res3) / res1) > 1.e-15) || (fabs((res2 - res4) / res2) > 1.e-15))
  //   {
  //     printf("Error! First AVX_MVM and T_multiply are not equal\n");
  //   }
  //   else
  //   {
  //     printf("First chi passed at element %d\n", i);
  //   }

  //   if ((fabs((res5 - res7) / res5) > 1.e-15) || (fabs((res6 - res8) / res6) > 1.e-15))
  //   {
  //     printf("Error! Second AVX_MVM and T_multiply are not equal\n");
  //   }
  //   else
  //   {
  //     printf("Second chi passed at element %d\n", i);
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
  // }

  /* *********************************Test Code End****************************** */


/*********************************
   *      All Routines Printing
   *********************************/
  // single_MVM(&chi, &up, &psi);
  // double_MVM(&chi, &chi2, &up, &psi, &psi2);

  //_DOUBLE_MMV(chi, chi2, up, psi, psi2);
  // _suNf_theta_T_multiply(chi, up, psi);
  // _suNf_theta_T_multiply(chi2, up, psi2);

  // single_MVM_inverse(&chi, &up, &psi);
  // double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);

  // single_MVM_2x2(&chi, &up, &psi);
  // double_MVM_2x2(&chi, &chi2, &up, &psi, &psi2);
  // single_MVM_inverse_2x2(&chi, &up, &psi);
  // double_MVM_inverse_2x2(&chi, &chi2, &up, &psi, &psi2);

  // double_MVM(&chi, &chi2, &up, &psi, &psi2);
  // _suNf_theta_T_multiply(chi3, (up), psi);
  // _suNf_theta_T_multiply(chi4, (up), psi2);

  // double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);
  // _suNf_theta_T_inverse_multiply(chi3, (up), psi);
  // _suNf_theta_T_inverse_multiply(chi4, (up), psi2);

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

  // printf("Double _suNf_theta_T_inverse_multiply\n");
  // printf("chi3[0] = %.1fre\n", creal(chi3.c[0]));
  // printf("chi3[0] = %.1fim\n", cimag(chi3.c[0]));
  // printf("chi3[1] = %.1fre\n", creal(chi3.c[1]));
  // printf("chi3[1] = %.1fim\n", cimag(chi3.c[1]));
  // printf("chi3[2] = %.1fre\n", creal(chi3.c[2]));
  // printf("chi3[2] = %.1fim\n\n", cimag(chi3.c[2]));

  // printf("chi4[0] = %.1fre\n", creal(chi4.c[0]));
  // printf("chi4[0] = %.1fim\n", cimag(chi4.c[0]));
  // printf("chi4[1] = %.1fre\n", creal(chi4.c[1]));
  // printf("chi4[1] = %.1fim\n", cimag(chi4.c[1]));
  // printf("chi4[2] = %.1fre\n", creal(chi4.c[2]));
  // printf("chi4[2] = %.1fim\n\n", cimag(chi4.c[2]));

  /***********************************
   *    MVM Inverse Multiply Testing
   ***********************************/
    // _DOUBLE_MMV(chi, chi2, up, psi, psi2);
    // _DOUBLE_MMV(psi, psi2, up, chi, chi2);

    // single_MVM(&chi, &up, &psi);
    // single_MVM(&psi, &up, &chi);

    // double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);
    // double_MVM_inverse(&psi, &psi2, &up, &chi, &chi2);




      // _DOUBLE_MMV(chi, chi2, up, psi, psi2);
    // _DOUBLE_MMV(psi, psi2, up, chi, chi2);

    // single_MVM(&chi, &up, &psi);
    // single_MVM(&psi, &up, &chi);

    // double_MVM_inverse(&chi, &chi2, &up, &psi, &psi2);
    // double_MVM_inverse(&psi, &psi2, &up, &chi, &chi2);





      // _suNf_theta_T_inverse_multiply(chi, up, psi);
    // _suNf_theta_T_inverse_multiply(chi2, up, psi2);

    // _suNf_theta_T_inverse_multiply(psi, up, chi);
    // _suNf_theta_T_inverse_multiply(psi2, up, chi2);

      // _suNf_theta_T_inverse_multiply(chi, (up), psi);
    // _suNf_theta_T_inverse_multiply(chi2, (up), psi2);

    // _suNf_theta_T_inverse_multiply(psi, (up), chi);
    // _suNf_theta_T_inverse_multiply(psi2, (up), chi2);


```




