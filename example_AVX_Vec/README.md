## Double MVM Computation Results  

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
 psi->c[0] = (1.0 + 4.0 * I);
 psi->c[1] = (2.0 + 5.0 * I);
 psi->c[2] = (3.0 + 6.0 * I);

 psi2->c[0] = (1.0 + 2.0 * I);
 psi2->c[1] = (3.0 + 4.0 * I);
 psi2->c[2] = (2.0 + 1.0 * I);

 /* Matrix (3x3) initialized: 18 doubles */
 up->c[0] = (1.0 + 2.0 * I);
 up->c[1] = (3.0 + 4.0 * I);
 up->c[2] = (5.0 + 6.0 * I);

 up->c[3] = (2.0 + 1.0 * I);
 up->c[4] = (3.0 + 2.0 * I);
 up->c[5] = (1.0 + 3.0 * I);

 up->c[6] = (4.0 + 5.0 * I);
 up->c[7] = (6.0 + 4.0 * I);
 up->c[8] = (5.0 + 6.0 * I);


 // /* Vector initialized: 6 doubles */
 // psi->c[0] = (1.0 + 4.0 * I);
 // psi->c[1] = (2.0 + 5.0 * I);
 // psi->c[2] = (3.0 + 6.0 * I);

 // psi2->c[0] = (1.0 + 2.0 * I);
 // psi2->c[1] = (3.0 + 4.0 * I);
 // psi2->c[2] = (2.0 + 1.0 * I);

 // /* Matrix (3x3) initialized: 18 doubles */
 // up->c[0] = (1.0 + 2.0 * I);
 // up->c[1] = (3.0 + 4.0 * I);
 // up->c[2] = (5.0 + 6.0 * I);

 // up->c[3] = (2.0 + 1.0 * I);
 // up->c[4] = (3.0 + 2.0 * I);
 // up->c[5] = (1.0 + 3.0 * I);

 // up->c[6] = (4.0 + 5.0 * I);
 // up->c[7] = (6.0 + 4.0 * I);
 // up->c[8] = (5.0 + 6.0 * I);
```

## Manually calculating MVM in the case of inverse multiply:   
**(psi * up)**  

```c
chi[0] = (1 + 4i)*(1 + 2i) + (2 + 5i)*(2 + 1i) + (3 + 6i)*(4 + 5i)  
       //= (1 + 4i)*(1 - 2i) + (2 + 5i)*(2 - 1i) + (3 + 6i)*(4 - 5i)        conj() applied
       = (1*1 + 1*2i )
       = (1+8) + (-2+4)i + (4+5) + (-2+10)i + (12+30) + (-15+24)i    
addsub = 9 + 2i +9 + 8i + (42 + 9i)
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
= (real*real + imag*imag) + (real*imag + imag*real) //4 mul, 2 adds
or
= (a + bi) * (c + di)/* Interleaved data layout */ 
= (ac - bd), (ad + bc) //4 mul, 1 add, 1 sub in another words 4 muls 2 adds

chi[0] = (1 + 4i)*(1 + 2i)                          + (2 + 5i)*(2 + 1i) + (3 + 6i)*(4 + 5i) 
       = (1*1)+(4i*2i) + (1*2i) + (4i*1)
       = 1 - 8 + 2i + 4i
       = -7 + 6i


or in our program
        (1 + 4i)*(1 + 2i)   + (2 + 5i)*(2 + 1i)
shuffle = (r, r, r,r) = (1, 1, 2, 2)
shuffle = (i,i,i,i) = (4, 2, 5, 1)*I

      
 
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
 up0 = _mm256_load_pd((double *)um); // um[0]um[1]  4-way 8 bytes
 
 /* Loading second set of 3 complexes of 3x3 matrix */
 up1 = _mm256_load_pd((double *)um + 6); // um[3]um[4] 4-way 8 bytes

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


  printf("um[0] = %.1fre\n", creal(um->c[0]));
  printf("um[1] = %.1fim\n", cimag(um->c[1]));
  printf("um[2] = %.1fre\n", creal(um->c[2]));
  printf("um[3] = %.1fim\n\n", cimag(um->c[3]));

 /*===>Start of loading variables: um, psi<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 up0 = _mm256_load_pd((double *)um); // um[0]um[1]

  printf("temp1[0] = %.1fre\n", temp1[0]);
  printf("temp1[1] = %.1fim\n", temp1[1]);
  printf("temp1[2] = %.1fre\n", temp1[2]);
  printf("temp1[3] = %.1fim\n\n", temp1[3]);

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
 up1 = _mm256_loadu_pd((double *)up + 6);

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
 up1 = _mm256_loadu_pd((double *)um + 6); /*um[3]um[4]*/

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
chi[0] = 18.0re
chi[0] = 10.0im
chi[1] = 35.0re
chi[1] = 19.0im

chi2[0] = 15.0re
chi2[0] = 5.0im
chi2[1] = 28.0re
chi2[1] = 8.0im


/* Inverse mul 2x2 calculation */
// _suNf_theta_T_inverse_multiply(chi, (*um), psi);
 //_suNf_inverse_multiply((chi), ((*um)), (psi));

#define _complex_mul_star(a,b,c) (a)=(b)*conj(c)

  _complex_mul_star(((chi)).c[0],((psi)).c[0],(((*um))).c[0]); 
  _complex_mul_star_assign(((chi)).c[0],((psi)).c[1],(((*um))).c[3]); 

  _complex_mul_star_assign(((chi)).c[0],((psi)).c[2],(((*um))).c[6]); 


  _complex_mul_star(((chi)).c[1],((psi)).c[0],(((*um))).c[1]); 
  _complex_mul_star_assign(((chi)).c[1],((psi)).c[1],(((*um))).c[4]); 

  _complex_mul_star_assign(((chi)).c[1],((psi)).c[2],(((*um))).c[7]);

  _complex_mul_star(((chi)).c[2],((psi)).c[0],(((*um))).c[2]); 
  _complex_mul_star_assign(((chi)).c[2],((psi)).c[1],(((*um))).c[5]); 
  
  _complex_mul_star_assign(((chi)).c[2],((psi)).c[2],(((*um))).c[8]);








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

   //single_MVM_2x2(chi, up, psi);
  // double_MVM_2x2(chi, chi2, up, psi, psi2);
   //single_MVM_inverse_2x2(chi, up, psi);
   //double_MVM_inverse_2x2(chi, chi2, up, psi, psi2);

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


    /* Organised Variables */
void double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
   __m256d up0, up0_3rd, up1, up1_3rd, up2, up2_3rd, realup0, realup1, realup2, realup0up1, realup2_3rd, imagup0, imagup1, imagup2, imagup0up1, imagup2_3rd, reimprod0, _reimprod0, reimprod1, _reimprod1, reimprod2, _reimprod2, reimprod3, _reimprod3, reimprod4, _reimprod4, reimprod5, _reimprod5, reimprod3rd_1, _reimprod3rd_1, reimprod3rd_2, _reimprod3rd_2, addsub_res0, _addsub_res0, addsub_res1, _addsub_res1, addsub_res2, _addsub_res2, addsub_res3, _addsub_res3, addsub_res4, _addsub_res4, addsub_res5, _addsub_res5, addsub_res3rd_1, addsub_res3rd_2, psi0, psi0_shuf, psi2_0, psi2_0_shuf, psi3, psi4, psi_3rd, psi2_3rd, add_res1, add_res2, add_res3, up0up1_3rd, up0_3rd_perm, up2_3rd_perm, psi_3rd_perm, psi2_3rd_256, psi_psi2_3rd, psi_psi2_3rd_shuf, up2_3rd_duplicate, psi_3rd_duplicate, psi2_3rd_duplicate, temp1, temp2, temp3, add_all_0, add_all_1, add_all_2;

   __m128d vec0_3rd, vec1_3rd;

   /*===>Start of loading variables: up, psi, psi2<===*/
   /* Loading first set of 3 complexes of 3x3 matrix */
   up0 = _mm256_loadu_pd((double *)up);
   realup0 = _mm256_shuffle_pd(up0, up0, 0b0000); /* Shuffle up0: (real real real real) parts */
   imagup0 = _mm256_shuffle_pd(up0, up0, 0b1111); /* Shuffle up0: (imag, imag, imag, imag) parts */

   /* Loading second set of 3 complexes of 3x3 matrix */
   up1 = _mm256_loadu_pd((double *)up + 6);
   realup1 = _mm256_shuffle_pd(up1, up1, 0b0000); /* Shuffle up1: (real real real real) parts */
   imagup1 = _mm256_shuffle_pd(up1, up1, 0b1111); /* Shuffle up1: (imag, imag, imag, imag) parts */

   /* Loading third set of 3 complexes of 3x3 matrix */
   up2 = _mm256_loadu_pd((double *)up + 12);
   realup2 = _mm256_shuffle_pd(up2, up2, 0b0000); /* Shuffle up2: (real real real real) parts */
   imagup2 = _mm256_shuffle_pd(up2, up2, 0b1111); /* Shuffle up2: (imag, imag, imag, imag) parts */

   /* Loading 3 complexes of psi vector and suffling */
   psi0 = _mm256_loadu_pd((double *)psi);
   psi0_shuf = _mm256_shuffle_pd(psi0, psi0, 0b0101);

   psi2_0 = _mm256_loadu_pd((double *)psi2);       // from 0-31 bytes
   psi2_0_shuf = _mm256_shuffle_pd(psi2_0, psi2_0, 0b0101);

   /*===>End of loading variables: up, psi, psi2<====*/

   /*========>Start of MVM Computations: 2x2<========*/
   /* =================================(Pair 1) start ============================= */
   /*First set of computation:2x2*/
   reimprod0 = _mm256_mul_pd(realup0, psi0);              /* (re*re),(re*im),(re*re),(re*im) */
   _reimprod0 = _mm256_mul_pd(imagup0, psi0_shuf);        /* (im*im),(im*re),(im*im),(im*re) */
   addsub_res0 = _mm256_addsub_pd(reimprod0, _reimprod0); /*addsub*/

   /*Second set of computation:2x2*/
   reimprod1 = _mm256_mul_pd(realup1, psi0);              /* (re*re),(re*im),(re*re),(re*im) */
   _reimprod1 = _mm256_mul_pd(imagup1, psi0_shuf);        /* (im*im),(im*re),(re*im),(im*re) */
   addsub_res1 = _mm256_addsub_pd(reimprod1, _reimprod1); /*addsub*/

   /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 1 (2x2)========== */
   /* A vector of lower lane of addsub_res1 [L1] and of addsub_res0 [L2] */
   _addsub_res0 = _mm256_permute2f128_pd(addsub_res1, addsub_res0, 2); //[L1 L2]
   temp1 = _mm256_permute2f128_pd(addsub_res0, addsub_res0, 1);        // Placing H2 lane in L2 lane
   /* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
   _addsub_res1 = _mm256_blend_pd(temp1, addsub_res1, 12); //[H1 H2]
   add_res1 = _mm256_add_pd(_addsub_res0, _addsub_res1);   // Result of 2x2

   /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
   up0_3rd = _mm256_loadu_pd((double *)up + 2);
   up0_3rd_perm = _mm256_permute2f128_pd(up0_3rd, up0_3rd, 1);
   up1_3rd = _mm256_loadu_pd((double *)up + 8);
   up0up1_3rd = _mm256_blend_pd(up0_3rd_perm, up1_3rd, 12); /* [H1 H2] of upo_3rd and up1_3rd */

   psi_3rd = _mm256_loadu_pd((double *)psi + 2);
   psi_3rd_perm = _mm256_permute2f128_pd(psi_3rd, psi_3rd, 1);
   psi_3rd_duplicate = _mm256_blend_pd(psi_3rd_perm, psi_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of col */

   realup0up1 = _mm256_shuffle_pd(up0up1_3rd, up0up1_3rd, 0b0000);
   imagup0up1 = _mm256_shuffle_pd(up0up1_3rd, up0up1_3rd, 0b1111);
   psi3 = _mm256_shuffle_pd(psi_3rd_duplicate, psi_3rd_duplicate, 0b0101);
   reimprod3rd_1 = _mm256_mul_pd(realup0up1, psi_3rd_duplicate);
   _reimprod3rd_1 = _mm256_mul_pd(imagup0up1, psi3);
   addsub_res3rd_1 = _mm256_addsub_pd(reimprod3rd_1, _reimprod3rd_1); // Result of 3rd elements of row 1&2 and col

   /* Additions */
   add_all_0 = _mm256_add_pd(add_res1, addsub_res3rd_1); // first 2 rows-col result of matrix-1: chi[0] chi[1]
   /* =================================(Pair 1) end  ============================= */

   /* =================================(Pair 2) start ============================= */
   /*Fourth set of computation:2x2*/
   reimprod3 = _mm256_mul_pd(realup0, psi2_0);            /* (re*re),(re*im),(re*re),(re*im) */
   _reimprod3 = _mm256_mul_pd(imagup0, psi2_0_shuf);      /* (im*im),(im*re),(re*im),(im*re) */
   addsub_res3 = _mm256_addsub_pd(reimprod3, _reimprod3); /*addsub*/

   /*Fifth set of computation:2x2*/
   reimprod4 = _mm256_mul_pd(realup1, psi2_0);            /* (re*re),(re*im),(re*re),(re*im) */
   _reimprod4 = _mm256_mul_pd(imagup1, psi2_0_shuf);      /* (im*im),(im*re),(re*im),(im*re) */
   addsub_res4 = _mm256_addsub_pd(reimprod4, _reimprod4); /*addsub*/

   /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 1 and 2 RESULT Matrix 2 (2x2)========== */
   /* A vector of lower lane of addsub_res4 [L1] and of addsub_res3 [L2] */
   _addsub_res2 = _mm256_permute2f128_pd(addsub_res4, addsub_res3, 2); // [L1 L2]
   temp2 = _mm256_permute2f128_pd(addsub_res3, addsub_res3, 1);        // Placing H2 lane in L2 lane
   /* A vector of high lane of temp2 [H1] and of addsub_res4 [H2] */
   _addsub_res3 = _mm256_blend_pd(temp2, addsub_res4, 12); // [H1 H2]
   add_res2 = _mm256_add_pd(_addsub_res2, _addsub_res3);   // Result of 2x2

   /* =======Dealing with 3rd element of row 1 & 2 and col ======= */
   psi2_3rd = _mm256_loadu_pd((double *)psi2 + 2); // from 32-47 bytes
   psi2_3rd_256 = _mm256_permute2f128_pd(psi2_3rd, psi2_3rd, 1);
   psi2_3rd_duplicate = _mm256_blend_pd(psi2_3rd_256, psi2_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of col */

   psi4 = _mm256_shuffle_pd(psi2_3rd_duplicate, psi2_3rd_duplicate, 0b0101);
   reimprod3rd_2 = _mm256_mul_pd(realup0up1, psi2_3rd_duplicate);
   _reimprod3rd_2 = _mm256_mul_pd(imagup0up1, psi4);
   addsub_res3rd_2 = _mm256_addsub_pd(reimprod3rd_2, _reimprod3rd_2); // Result of 3rd elements of row 1&2 and col

   add_all_1 = _mm256_add_pd(add_res2, addsub_res3rd_2); // first 2 rows-col result of matrix 2: chi2[0] chi2[1]
   /* =================================(Pair 2) End ============================= */

   /* =================================(Pair 3) Start ============================= */
   /*Third set of computation:2x2*/
   reimprod2 = _mm256_mul_pd(realup2, psi0);              /* (re*re),(re*im),(re*re),(re*im) */
   _reimprod2 = _mm256_mul_pd(imagup2, psi0_shuf);        /* (im*im),(im*re),(re*im),(im*re) */
   addsub_res2 = _mm256_addsub_pd(reimprod2, _reimprod2); /*addsub*/

   /*Sixth set of computation:2x2*/
   reimprod5 = _mm256_mul_pd(realup2, psi2_0);            /* (re*re),(re*im),(re*re),(re*im) */
   _reimprod5 = _mm256_mul_pd(imagup2, psi2_0_shuf);      /* (im*im),(im*re),(re*im),(im*re) */
   addsub_res5 = _mm256_addsub_pd(reimprod5, _reimprod5); /*addsub*/

   /* ==========SHUFFLING AND ADDING TWO AVX REGISTERS OF ROW 3 Matrix 1 and 2 RESULT========== */
   /* A vector of lower lane of addsub_res5 [L1] and of addsub_res2 [L2] */
   _addsub_res4 = _mm256_permute2f128_pd(addsub_res5, addsub_res2, 2); // [L1 L2]
   temp3 = _mm256_permute2f128_pd(addsub_res2, addsub_res2, 1);        // Placing H2 lane in L2 lane
   /* A vector of high lane of temp3 [H1] and of addsub_res5 [H2] */
   _addsub_res5 = _mm256_blend_pd(temp3, addsub_res5, 12); // [H1 H2]
   add_res3 = _mm256_add_pd(_addsub_res4, _addsub_res5);   // Result of ROW 3 of matrix 1 & 2

   /* =======Dealing with 3rd element of 3rd row and col of both matrix ======= */
   up2_3rd = _mm256_loadu_pd((double *)up + 14);
   up2_3rd_perm = _mm256_permute2f128_pd(up2_3rd, up2_3rd, 1);
   up2_3rd_duplicate = _mm256_blend_pd(up2_3rd_perm, up2_3rd, 12);
   realup2_3rd = _mm256_shuffle_pd(up2_3rd_duplicate, up2_3rd_duplicate, 0b0000);
   imagup2_3rd = _mm256_shuffle_pd(up2_3rd_duplicate, up2_3rd_duplicate, 0b1111);

   psi_psi2_3rd = _mm256_blend_pd(psi_3rd_perm, psi2_3rd, 12); /*[H1 H2] of psi_3rd, 3rd element of col */
   psi_psi2_3rd_shuf = _mm256_shuffle_pd(psi_psi2_3rd, psi_psi2_3rd, 0b0101);

   reimprod4 = _mm256_mul_pd(realup2_3rd, psi_psi2_3rd);
   _reimprod4 = _mm256_mul_pd(imagup2_3rd, psi_psi2_3rd_shuf);
   addsub_res4 = _mm256_addsub_pd(reimprod4, _reimprod4); // 3rd element of 3rd row and col: result: lanes are identical

   add_all_2 = _mm256_add_pd(add_res3, addsub_res4); // chi[2] chi2[2]

   vec0_3rd = _mm256_castpd256_pd128(add_all_2);   // First 128-bits chi[2]
   vec1_3rd = _mm256_extractf128_pd(add_all_2, 1); // Second 128-bits chi2[2]

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
   _mm256_storeu_pd((double *)chi, add_all_0);
   //_mm_storeu_pd((__m128d *)chi + 2, vec0_3rd);
   _mm_storeu_pd((double *)chi + 4, vec0_3rd);

   _mm256_storeu_pd((double *)chi2, add_all_1);
   _mm_storeu_pd((double *)chi2 + 4, vec1_3rd);
}



```

COMMAND:
valgrind --tool=callgrind --dump-instr=yes --simulate-cache=yes --collect-jumps=yes --collect-atstart=no ./avx_complex_vec_align_load


icc  -O2 -g -march=core-avx2 -mtune=core-avx2 -qopt-report=5 -qopt-report-phase=vec -inline-level=0 -I /home/mrahman/HiRep/Include  timer.o avx_complex_vec_align_load.c -lm   -o avx_complex_vec_align_load 



icc  -O2 -g -march=core-avx2 -mtune=core-avx2 -qopt-report-routine=double_MVM -I /home/mrahman/HiRep/Include  timer.o avx_complex_vec_align_load.c -lm   -o avx_complex_vec_align_load 


gcc  -O3 -g -march=core-avx2 -mtune=core-avx2  -I /Users/msrahman/Documents/HiRep_Repo/HiRep/Include  timer.o avx_complex_vec_align_load.c -lm   -o avx_complex_vec_align_load


  cpp-12  -O2 -g -march=core-avx2 -mtune=core-avx2  timer.o avx_complex_vec_align_load.c -lm   -o avx_complex_vec_align_load

  /opt/intel/oneapi/compiler/2022.1.0


  ```c
  // print memory address
    check_reusages(out, sm);
    if (_fuse_master_for_ip_ix < 32)
    {
    lprintf("REUSAGE TEST", 0, "SM[-0] TID %d at step %d = %u\n", omp_get_thread_num(), _fuse_master_for_ip_ix, sm);
     }

        // check_reusages(out, sp);
    // if (_fuse_master_for_ip_ix < (out->type)->fuse_inner_counter)
    // {
    // lprintf("STEP TEST", 0, "Step %d\n", _fuse_master_for_ip_ix);
    // lprintf("REUSAGE TEST", 0, "SP[+0] TID %d at step %d = %u\n", omp_get_thread_num(), _fuse_master_for_ip_ix, sp);
    //  }
    

//aligned memory address
  suNf_vector psi VEC_ALIGN;
  suNf_vector chi VEC_ALIGN;
  suNf_vector psi2 VEC_ALIGN;
  suNf_vector chi2 VEC_ALIGN;

  // test memory aligned or not
  if (__alignof(psi2) == 32)
  {
    lprintf("ALIGN TEST", 0, "PASSED\n");
  }
  else
  {
    lprintf("ALIGN TEST", 0, "FAILED\n");
  }


printf("chi[0] = %.2fre\n", _complex_re(chi->c[3]));
printf("chi3[0] = %.2fre\n", _complex_re(chi3->c[3]));
printf("chi5[0] = %.2fre\n\n", _complex_re(chi5->c[3]));

printf("chi2[0] = %.2fre\n", _complex_re(chi2->c[3]));
printf("chi4[0] = %.2fre\n", _complex_re(chi4->c[3]));
printf("chi6[0] = %.2fre\n\n", _complex_re(chi6->c[3]));

printf("chi[0] = %.2fim\n", _complex_im(chi->c[3]));
printf("chi3[0] = %.2fim\n", _complex_im(chi3->c[3]));
printf("chi5[0] = %.2fim\n\n", _complex_im(chi5->c[3]));

printf("chi2[0] = %.2fim\n", _complex_im(chi2->c[3]));
printf("chi4[0] = %.2fim\n", _complex_im(chi4->c[3]));
printf("chi6[0] = %.2fim\n", _complex_im(chi6->c[3]));



// memory allocation and aligned
//  up = _mm_malloc(sizeof(suNf), MEM_ALIGN);
//  psi = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  psi2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi5 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi6 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  v1 = _mm_malloc(sizeof(suNf_vector), 16);
//  v2 = _mm_malloc(sizeof(suNf_vector), 16);

  ```




## ****************************************Commands for Compilation************************************  


## How to use spack compiler   

**Compiling Programs Using Spack:** 

**Step 1: Go to your project foder:**   
```bash
 $ /home/mrahman/AVX_MVM_Complex/example_AVX_Vec 
```

**Step 2: Source the spack environment**  
```bash
   $ . ~/spack/share/spack/setup-env.sh 
```

**Step 3: load the required compilers**    
```bash
  $ spack load gcc@12.1.0 arch=linux-centos7-haswell 
  $ spack load llvm@14.0.2 arch=linux-centos7-broadwell
  $ spack load openmpi@4.1.3 
```

When you do not want to use a package in the environment, you can unload such as: $ spack unload mpich %gcc@4.4.7    

**Step 4: Now you are ready to compile the code**    

 
## How to use icc compiler   

- Go to the directory    

- Source Intel OneApi: source /opt/ohpc/pub/oneAPI/setvars.sh     

- Then you are ready to use the compiler 




## Steps to llvm-mca:  

STEP 1: Load clang in the user environment
  $ . ~/spack/share/spack/setup-env.sh 
  $ spack load gcc@12.1.0 arch=linux-centos7-haswell

  $ spack load llvm@14.0.2 arch=linux-centos7-broadwell
  $ spack load mpich@4.0.2 

STEP 2: Generate Assembly Code
 icc avx_complex_vec_align_load.c -O2  -S -o out_llvm.s -march=core-avx2 -mtune=core-avx2 
 gcc avx_complex_vec_align_load.c -O2  -S -o out_llvm.s -march=core-avx2 -mtune=core-avx2 
 clang avx_complex_vec_align_load.c -O2  -S -o out_llvm.s -march=core-avx2 -mtune=core-avx2 

 clang foo.c -O2 -target x86_64-unknown-unknown -mllvm -x86-asm-syntax=intel -S -o - | llvm-mca -mcpu=btver2

 icc avx_complex_vec_align_load.c -O1 -qopenmp -march=core-avx2 -mtune=core-avx2  -g  -I . -S  -lm -o icc_O1.s
 icc avx_complex_vec_align_load.c -O2 -qopenmp -march=core-avx2 -mtune=core-avx2  -g  -I . -S  -lm -o icc_O2.s

 gcc avx_complex_vec_align_load.c -O1 -fopenmp -march=core-avx2 -mtune=core-avx2  -g  -I . -S  -lm -o gcc_O1.s
 gcc avx_complex_vec_align_load.c -O3 -fopenmp -march=core-avx2 -mtune=core-avx2  -g  -I . -S  -lm -o gcc_AVX2_O3.s
 gcc avx_complex_vec_align_load.c -O3 -fopenmp -march=core-avx2 -mtune=core-avx2 -gno-as-locview-support -g  -I . -S  -lm -o gcc_O3.s


 clang avx_complex_vec_align_load.c -O1 -fopenmp -march=core-avx2 -mtune=core-avx2  -g  -I . -S  -lm -o clang_O1.s
 clang avx_complex_vec_align_load.c -O3 -fopenmp -march=core-avx2 -mtune=core-avx2  -g  -I . -S  -lm -o clang_O3.s


STEP 3: Generate llvm-mca Report with Appropriate Flags
llvm-mca -mtriple=x86_64 -mcpu=broadwell -iterations=300 -show-encoding icc_O1.s > icc_O1.txt
llvm-mca -mtriple=x86_64 -mcpu=broadwell -iterations=300 -show-encoding icc_O2.s > icc_O2.txt
llvm-mca -mtriple=x86_64 -mcpu=broadwell -iterations=300 -show-encoding icc_O2_dowhile.s > icc_O2_dowhile.txt

llvm-mca -mtriple=x86_64 -mcpu=broadwell -iterations=300 -show-encoding gcc_O1.s > gcc_O1.txt
llvm-mca -mtriple=x86_64 -mcpu=broadwell -iterations=300 -show-encoding gcc_AVX2_O3.s > gcc_AVX2_O3.txt
llvm-mca -mtriple=x86_64  -mcpu=broadwell -iterations=300 -show-encoding gcc_O3.s > gcc_O3.txt



llvm-mca -mtriple=x86_64 -mcpu=broadwell -iterations=300 -show-encoding clang_O1.s > clang_O1.txt
llvm-mca -mtriple=x86_64 -mcpu=broadwell -iterations=300 -show-encoding clang_O3.s > clang_O3.txt
## ****************************************Commands for Compilation************************************  



```c
//_suNf_theta_T_multiply(chi, (*up), psi);
//_suNf_multiply((chi), ((*up)), (psi));

_complex_mul(((chi)).c[0], (((*up))).c[0], ((psi)).c[0]);
_complex_mul_assign(((chi)).c[0], (((*up))).c[1], ((psi)).c[1]); 
_complex_mul_assign(((chi)).c[0], (((*up))).c[2], ((psi)).c[2]); 

_complex_mul(((chi)).c[1], (((*up))).c[3], ((psi)).c[0]);
_complex_mul_assign(((chi)).c[1], (((*up))).c[4], ((psi)).c[1]);
_complex_mul_assign(((chi)).c[1], (((*up))).c[5], ((psi)).c[2]);

_complex_mul(((chi)).c[2], (((*up))).c[6], ((psi)).c[0]);
_complex_mul_assign(((chi)).c[2], (((*up))).c[7], ((psi)).c[1]);
_complex_mul_assign(((chi)).c[2], (((*up))).c[8], ((psi)).c[2]);



/* Operations Counting */
= (real*real + imag*imag) + (real*imag + imag*real) //4 mul, 3 adds
or
= (a + bi) * (c + di)/* Interleaved data layout */ 
= (ac - bd) + (ad + bc) //4 mul, 2 add, 1 sub



/* Memory Address Printing */
 printf("v1 mem addess = %u\n", (v1+0));
 printf("v1 mem addess = %u\n", (v1+1));
 printf("v1 mem addess = %u\n", (v1+2));

/* initialization */
 //  for(i=0; i<in; i++)
//  {
//     for(j=0; j<3; j++)
//     {
//       (v1+i)->c[j] = my_rand(n);
//       (v2+i)->c[j] = my_rand(n);
//       //printf("v1 = %.2fre\n", _complex_re((v1+i)->c[j]));
//     }

//     for(j=0; j<9; j++)
//     {
//      (v3+i)->c[j] = my_rand(n);
//      //printf("v3 = %.2fre\n", _complex_re((v3+i)->c[j]));
//     }
//  }


/* double AVX MACRO Warmup code */
// for(i=0; i<n_warmup; i++)
// {
//     double_MVM_macro(chi+i, chi2+i, up, psi, psi2);
// }



  /******************************************************* 
      Case 2: AVX double MVM non-Macro perf measurement 
  *******************************************************/

 /* ************ timing block C start ************* */
//   gettimeofday(&start, 0);
// # ifdef _OPENMP
//     wt1=omp_get_wtime();
// # endif
//   t1=clock();

//  for(i=0; i<in; i++)
//  {
    // for(j=0; j<3; j++)
    // {
    //   (psi+i)->c[j] = (v1+i)->c[j];
    //   (psi2+i)->c[j] = (v2+i)->c[j];
    // }

    // for(j=0; j<9; j++)
    // {
    //   (up+i)->c[j] = (v3+i)->c[j];
    // }

  // double_MVM_non_macro((chi3+i), (chi4+i), up, psi, psi2);

//  }

//   t2=clock();
// # ifdef _OPENMP
//     wt2=omp_get_wtime();
// # endif
//   gettimeofday(&end, 0);
//   timeval_subtract(&etime, &end, &start);

//     lprintf("MVM_NON-MACRO",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
// # ifdef _OPENMP
//     lprintf("MVM_NON-MACRO",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
// # endif
//     lprintf("MVM_NON_MACRO",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);

/* ************ timing block C end ************* */

/* HiRep MACRO Warmup code */
//  for(i=0; i<n_warmup; i++)
//  {
//   _suNf_theta_T_multiply((*(chi3+i)), (*up), (*psi));
//   _suNf_theta_T_multiply((*(chi4+i)), (*up), (*psi2));

//  }

 // res5 = _complex_re((chi3+i)->c[i]);
  // res6 = _complex_im((chi3+i)->c[i]); 
  // res7 = _complex_re((chi4+i)->c[i]); 
  // res8 = _complex_im((chi4+i)->c[i]); 

  // error((fabs((res5 - res9) / res5) > 1.e-15) || (fabs((res6 - res10) / res6) > 1.e-15), 1, "First Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==> Test Failed!");
  // error((fabs((res7 - res11) / res7) > 1.e-15) || (fabs((res8 - res12) / res8) > 1.e-15), 1, "Second Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==>Test Failed!");

  // res5 = .0;
  // res6 = .0;
  // res7 = .0;
  // res8 = .0;



 /*****************************************************************
  * Testing Performance: double_MVM() vs _suNf_theta_T_multiply()
  *****************************************************************/

 /* Macro version of new routine */
//  psi_copy = psi;
//  psi2_copy = psi2;

//  for (i = 0; i < n_warmup; ++i)
//  {
//   double_MVM_macro(chi, chi2, up, psi, psi2);
//   double_MVM_macro(psi, psi2, up, chi, chi2);

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }

//  psi_copy = psi;
//  psi2_copy = psi2;

//   gettimeofday(&start, 0);
// # ifdef _OPENMP
//     wt1=omp_get_wtime();
// # endif
//   t1=clock();

//  for (i = 0; i < n_times; ++i)
//  {
//   // CALLGRIND_START_INSTRUMENTATION;
//   // CALLGRIND_TOGGLE_COLLECT;
//   double_MVM_macro(chi, chi2, up, psi, psi2);
//   // CALLGRIND_TOGGLE_COLLECT;
//   // CALLGRIND_STOP_INSTRUMENTATION;
//   double_MVM_macro(psi, psi2, up, chi, chi2);

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }

//   t2=clock();
// # ifdef _OPENMP
//     wt2=omp_get_wtime();
// # endif
//   gettimeofday(&end, 0);
//   timeval_subtract(&etime, &end, &start);

// //     lprintf("MVM_MACRO",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
// // # ifdef _OPENMP
// //     lprintf("MVM_MACRO",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
// // # endif
// //     lprintf("MVM_MACRO",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);


// /* Non-Macro version of new routine */
//  psi_copy = psi;
//  psi2_copy = psi2;
//  for (i = 0; i < n_warmup; ++i)
//  {
//   double_MVM_non_macro(chi, chi2, up, psi, psi2);
//   double_MVM_non_macro(psi, psi2, up, chi, chi2);

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }

//  psi_copy = psi;
//  psi2_copy = psi2;

//   gettimeofday(&start, 0);
// # ifdef _OPENMP
//     wt1=omp_get_wtime();
// # endif
//   t1=clock();

//  for (i = 0; i < n_times; ++i)
//  {
//   // CALLGRIND_START_INSTRUMENTATION;
//   // CALLGRIND_TOGGLE_COLLECT;
//   double_MVM_non_macro(chi, chi2, up, psi, psi2);
//   // CALLGRIND_TOGGLE_COLLECT;
//   // CALLGRIND_STOP_INSTRUMENTATION;
//   double_MVM_non_macro(psi, psi2, up, chi, chi2);

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }

//   t2=clock();
// # ifdef _OPENMP
//     wt2=omp_get_wtime();
// # endif
//   gettimeofday(&end, 0);
//   timeval_subtract(&etime, &end, &start);

// //     lprintf("MVM_NON-MACRO",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
// // # ifdef _OPENMP
// //     lprintf("MVM_NON-MACRO",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
// // # endif
// //     lprintf("MVM_NON_MACRO",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);


// /* HiRep Macro function */
//  psi_copy = psi;
//  psi2_copy = psi2;
//  for (i = 0; i < n_warmup; ++i)
//  {
//   _suNf_theta_T_multiply((*chi), (*up), (*psi));
//   _suNf_theta_T_multiply((*chi2), (*up), (*psi2));

//   _suNf_theta_T_multiply((*psi), (*up), (*chi));
//   _suNf_theta_T_multiply((*psi2), (*up), (*chi2));

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }

//  psi_copy = psi;
//  psi2_copy = psi2;

//   gettimeofday(&start, 0);
// # ifdef _OPENMP
//     wt1=omp_get_wtime();
// # endif
//   t1=clock();

//  for (i = 0; i < n_times; ++i)
//  {
//   // CALLGRIND_START_INSTRUMENTATION;
//   // CALLGRIND_TOGGLE_COLLECT;
//   _suNf_theta_T_multiply((*chi), (*up), (*psi));
//   _suNf_theta_T_multiply((*chi2), (*up), (*psi2));
//   // CALLGRIND_TOGGLE_COLLECT;
//   // CALLGRIND_STOP_INSTRUMENTATION;

//   _suNf_theta_T_multiply((*psi), (*up), (*chi));
//   _suNf_theta_T_multiply((*psi2), (*up), (*chi2));

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }

//   t2=clock();
// # ifdef _OPENMP
//     wt2=omp_get_wtime();
// # endif
//   gettimeofday(&end, 0);
//   timeval_subtract(&etime, &end, &start);

//     lprintf("THETA_T_MULTIPLY",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
// # ifdef _OPENMP
//     lprintf("THETA_T_MULTIPLY",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
// # endif
//     lprintf("THETA_T_MULTIPLY",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);
 


 //  afree(v1);
//  afree(v2);
//  afree(v3);

//  free(chi);
//  free(chi2);
//  free(chi3);
//  free(chi4);
//  free(chi5);
//  free(chi6);

//  _mm_free(up);
//  _mm_free(psi);
//  _mm_free(psi2);
//  _mm_free(chi);
//  _mm_free(chi2);
//  _mm_free(chi3);
//  _mm_free(chi4);
//  _mm_free(chi5);
//  _mm_free(chi6);
//  free(v1);
//  free(v2);
//  free(v3);



  // v1 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
  // v2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
  // v3 =_mm_malloc(sizeof(suNf), MEM_ALIGN);
  // up = _mm_malloc(sizeof(suNf), MEM_ALIGN);
  // psi = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
  // psi2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
  // chi = _mm_malloc(in*sizeof(suNf_vector), MEM_ALIGN);
  // chi2 = _mm_malloc(in*sizeof(suNf_vector), MEM_ALIGN);
  // chi3 = _mm_malloc(in*sizeof(suNf_vector), MEM_ALIGN);
  // chi4 = _mm_malloc(in*sizeof(suNf_vector), MEM_ALIGN);
  // chi5 = _mm_malloc(in*sizeof(suNf_vector), MEM_ALIGN);
  // chi6 = _mm_malloc(in*sizeof(suNf_vector), MEM_ALIGN);


/* Benchmark code */
  //   t1=clock();
  //   for(j=0; j<in; j++)
  //     { 
  //       double_MVM_macro((chi+j), (chi2+j), ((up+j)), ((psi+j)), ((psi2+j)));
  //     }
  //   t2=clock();
  //   elapsed = ((t2-t1)/1000000.0);

  //   printf("elapsed1  %f\n", elapsed);

  // if(elapsed<2.)
  //   {
  //     reps = (int)(2.0/elapsed) + 1;

  //     t1=clock();
  //     for(j=0; j<in; j++)
  //       { 
  //         double_MVM_macro((chi+j), (chi2+j), ((up+j)), ((psi+j)), ((psi2+j)));
  //       }
  //     t2=clock();

  //     elapsed = ((t2-t1)/1000000.0);
  //   }
  // printf("elapsed2  %f\n",elapsed);


/* Compiler Explorer */
clang 14.00
-O3 std=c99 -ffast-math -mtune=broadwell -march=broadwell -ffp-contract=on

66, 2.120000, 1000000, -133.342209, -0.767585, -0.062897, 12.203792
66, 2.13000011444092, 1000000, -133.342208862305, -0.763981461524963, -0.0626019760966301, 12.2037916183472
90, 090, 000, 000

subsequent threads
10, 8.448278, 0.8448278, 20000000, 6720, 0.994285462670618, 7.95428370136494, 0.125



non-subsequent threads
10, 8.376527, 0.8376527, 20000000, 6720, 1.00280223534169, 8.0224178827335, 0.125


res1 0 = -0.16
res2 0 = 0.76
res3 0 = 0.04
res4 0 = 0.68
res9 0 = -0.16
res10 0 = 0.76
res11 0 = 0.04
res12 0 = 0.68

res1 0 = -0.48
res2 0 = 1.28
res3 0 = 0.20
res4 0 = 0.76
res9 0 = -0.48
res10 0 = 1.28
res11 0 = 0.20
res12 0 = 0.76

res1 0 = -0.80
res2 0 = 0.52
res3 0 = -0.16
res4 0 = 0.44
res9 0 = -0.80
res10 0 = 0.52
res11 0 = -0.16
res12 0 = 0.44

res1 1 = -0.12
res2 1 = 1.76
res3 1 = 0.00
res4 1 = 1.84
res9 1 = -0.12
res10 1 = 1.76
res11 1 = 0.00
res12 1 = 1.84

res1 1 = -0.44
res2 1 = 0.48
res3 1 = -0.48
res4 1 = 0.36
res9 1 = -0.44
res10 1 = 0.48
res11 1 = -0.48
res12 1 = 0.36

res1 1 = -0.20
res2 1 = 0.84
res3 1 = -0.00
res4 1 = 0.72
res9 1 = -0.20
res10 1 = 0.84
res11 1 = -0.00
res12 1 = 0.72

 0.0000000000000000266453525910038
 0.000000000000000000000000000001
 0.000000000000000000000000000005

```
file path:
/Users/msrahman/Downloads/soc1Presentation.xlsx
/Users/msrahman/Downloads/soc1_2_Presentation.xlsx
/Users/msrahman/Downloads/soc1_Thrd1_Presentation.xlsx

## Jupyter Note book code: soc 1 FLOPS Comparison

```py
 In []:
import pandas as pd
import numpy as np
import chart_studio.plotly as py
import cufflinks as cf
import seaborn as sns
import plotly.express as px
%matplotlib inline
from plotly.offline import download_plotlyjs, init_notebook_mode, plot, iplot
init_notebook_mode(connected=True)
cf.go_offline()

In[]:
df = pd.read_excel("/Users/msrahman/Downloads/soc1Presentation.xlsx",0)
df.head()
df.iplot()

In[]:
import plotly.graph_objects as go
import pandas as pd
import plotly.express as px
df = pd.read_excel("/Users/msrahman/Downloads/soc1Presentation.xlsx",0)
#px.line(df, x='MB', y='AVX_GF_PT2', labels={'x': 'MB', 'y': 'FLOPS'})

#px.line(df, x='MB', y=['AVX_GF_PT2','AVX_GF_NPT2','theta_T_GF_PT2', 'theta_T_GF_NPT2','AVX_GF_PT4','AVX_GF_NPT4',
#                      'theta_T_GF_PT4', 'theta_T_GF_NPT4', 'AVX_GF_PT8', 'AVX_GF_NPT8', 'theta_T_GF_PT8', 'theta_T_GF_NPT8',
#                      'AVX_GF_PT16', 'AVX_GF_NPT16', 'theta_T_GF_PT16', 'theta_T_GF_NPT16'], 
#        labels={'x': 'MB', 'y': 'FLOPS'}, title='FLOPS Comparison: Socket1 double_MVM vs theta_T_mul')


fig = go.Figure()
fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_PT2, mode='lines', name='AVX_PT2'))
fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_NPT2, mode='lines+markers', name='AVX_NPT2'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_PT2, mode='lines', name='thetaT_PT2'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_NPT2, mode='lines+markers', name='thetaT_NPT2'))

fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_PT4, mode='lines', name='AVX_PT4'))
fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_NPT4, mode='lines+markers', name='AVX_NPT4'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_PT4, mode='lines', name='thetaT_PT4'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_NPT4, mode='lines+markers', name='thetaT_NPT4'))

fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_PT8, mode='lines', name='AVX_PT8'))
fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_NPT8, mode='lines+markers', name='AVX_NPT8'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_PT8, mode='lines', name='thetaT_PT8'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_NPT8, mode='lines+markers', name='thetaT_NPT8'))

fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_PT16, mode='lines', name='AVX_PT16'))
fig.add_trace(go.Scatter(x=df.MB, y=df.AVX_GF_NPT16, mode='lines+markers', name='AVX_NPT16'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_PT16, mode='lines', name='thetaT_PT16'))
fig.add_trace(go.Scatter(x=df.MB, y=df.theta_T_GF_NPT16, mode='lines+markers', name='thetaT_NPT16'))

fig.update_layout(title='FLOPS Comparison: double_MVM vs theta_T_multiply',
                 xaxis_title='MB', yaxis_title='FLOPS')


#first group by omp 1
grouped = df.groupby(df.omp)
df_new = grouped.get_group(1)
df_new

# sort data
df = df.sort_values(by="Dirc_Data_Mov")
df.sort_values(by=['Fused_KB'], inplace=True)

```



```bash
mpirun -n 12 –N nprocs_per_node –d $OMP_NUM_THREADS ./speed_test_diracoperator 
mpirun -ppn 2 -np 4 –env I_MPI_PIN_DOMAIN socket env KMP_AFFINITY scatter ./speed_test_diracoperator 

 git config --global user.email "shidureh@yahoo.co.uk"
  git config --global user.name "Shidur Rahman"
  export PATH="${PATH}:/opt/anaconda3/lib/python3.9/site-packages/graphviz"
  Requirement already satisfied: graphviZ in /opt/anaconda3/lib/python3.9/site-packages (0.20.1)
  export PATH=$HOME/bin:/usr/local/bin:/opt/anaconda3/lib/python3.9/site-packages/graphviz:$PATH
  source ./.bash_profile
```

#SBATCH --ntasks=4
#SBATCH --ntasks-per-node=2

omp_thrd,Gauge_group,MPI_size,GLB_T,GLB_X,GLB_Y,GLB_Z,LOC_T,LOC_X,LOC_Y,LOC_Z,algb_kernel,geom_type,RLXD,SITE_FLOP,SITE_BYTE,Dirc_Data_Mov,Dphi-Reps,Dphi_KB,Dphi_msec,Dphi_GFLOPS,Dphi_BAND,Fused_Reps,Fused_KB,Fused_msec,Fused_GFLOPS,Fused_BAND,Job_Output



avx header:





```bash
source /opt/ohpc/pub/oneAPI/setvars.sh

export I_MPI_DEBUG=5 
export OMP_DISPLAY_AFFINITY=TRUE 
unset MPI_DSM_OFF 
export MPI_DSM_VERBOSE=1 
export MPI_SHARED_VERBOSE=1 
export MPI_MEMMAP_VERBOSE=1 


export  OMP_PROC_BIND=close # How I am going to bind omp threads on to those places 
export  OMP_PLACES=cores    # Where I am going to place omp threads on the hardware, here is to cores


 sbatch –-array=1-2171 job_2.mpi  
 sbatch –-array=1-2302 job_4.mpi 


 scp mrahman@foseres.fost.plymouth.ac.uk:/home/mrahman/HiRep/TestProgram/DiracOperator/run_speedtest.sh /Users/msrahman/Documents

# Submitting Array Jobs 
sbatch --array=1-1000 job_2_1.mpi
sbatch --array=1-1000 job_2_2.mpi
sbatch --array=1-943 job_2_3.mpi


sbatch --array=1-1000 job_4_1.mpi
sbatch --array=1-1000 job_4_2.mpi
sbatch --array=1-1000 job_4_3.mpi
sbatch --array=1-30 job_4_4.mpi


HiRep Cuda Branch:
TestProgram > Benchmark

Compile: ../../make/nj
Mkflags.init
Include > Core > TestProgram
.run_test.sh

./run_tests.sh "Utils" -cflags "-Wall -Wshadow -O1  -march=core-avx2 -mtune=core-avx2" -n 2 -r FUND -mpi -mpicc mpicc -cc gcc -avx
./run_tests.sh "Utils" -cflags "-Wall -Wshadow -O1  -march=core-avx2 -mtune=core-avx2" -n 3 -r FUND -mpi -mpicc /opt/local/bin/mpicc-mpich-gcc12 -cc /opt/local/bin/gcc-mp-12 -avx


```

git clone -b HiRep-CUDA --single-branch https://github.com/claudiopica/HiRep.git

```py
# Creating columns
df_n2_drp["N_Nodes"] = 2
df_n4_drp["N_Nodes"] = 4
df_n2_drp['NPX'] = (df_n2_drp.GLB_X/df_n2_drp.LOC_X)
df_n2_drp['NPY'] = (df_n2_drp.GLB_Y/df_n2_drp.LOC_Y)
df_n2_drp['NPZ'] = (df_n2_drp.GLB_Z/df_n2_drp.LOC_Z)
df_n2_drp['NPT'] = (df_n2_drp.GLB_T/df_n2_drp.LOC_T)
df_n2_drp["Total_proc"] = df_n2_drp["omp_thrd"]* df_n2_drp.MPI_size
df_n2_drp.columns


df2_summary = df_n2_drp.groupby(['omp_thrd','NPT','NPX', 'NPY', 'NPZ', 'MPI_size',"Total_proc"]).size().reset_index(name = 'size')

df2_summary[(df2_summary.NPX==2.0)&(df2_summary.NPY==1.0)&(df2_summary.NPZ==1.0) & (df2_summary.Total_proc==64)]
df2_summary[(df2_summary.NPX==2.0)&(df2_summary.NPY==2.0)&(df2_summary.NPZ==1.0) & (df2_summary.Total_proc==64)]

df2_summary[(df2_summary.NPX==2.0)&(df2_summary.NPY==2.0)&(df2_summary.NPZ==2.0) & (df2_summary.Total_proc==64)]



# Creating differnt data frames
df_32mpi_2omp = df_n2_drp[(df_n2_drp.omp_thrd == 2) & (df_n2_drp.GLB_T/df_n2_drp.LOC_T == 32) & (df_n2_drp.GLB_X/df_n2_drp.LOC_X == 1) & (df_n2_drp.GLB_Y/df_n2_drp.LOC_Y ==1)& (df_n2_drp.GLB_Z/df_n2_drp.LOC_Z == 1)]
df_16mpi_4omp = df_n2_drp[(df_n2_drp.omp_thrd == 4) & (df_n2_drp.GLB_T/df_n2_drp.LOC_T == 16) & (df_n2_drp.GLB_X/df_n2_drp.LOC_X == 1) & (df_n2_drp.GLB_Y/df_n2_drp.LOC_Y ==1)& (df_n2_drp.GLB_Z/df_n2_drp.LOC_Z == 1)]
df_8mp_8omp = df_n2_drp[(df_n2_drp.omp_thrd == 8) & (df_n2_drp.GLB_T/df_n2_drp.LOC_T == 8) & (df_n2_drp.GLB_X/df_n2_drp.LOC_X == 1) & (df_n2_drp.GLB_Y/df_n2_drp.LOC_Y ==1)& (df_n2_drp.GLB_Z/df_n2_drp.LOC_Z ==1)]
df_4mpi_16omp = df_n2_drp[(df_n2_drp.omp_thrd == 16) & (df_n2_drp.GLB_T/df_n2_drp.LOC_T == 4) & (df_n2_drp.GLB_X/df_n2_drp.LOC_X == 1) & (df_n2_drp.GLB_Y/df_n2_drp.LOC_Y ==1)& (df_n2_drp.GLB_Z/df_n2_drp.LOC_Z == 1)]
df_2mpi_32omp = df_n2_drp[(df_n2_drp.omp_thrd == 32) & (df_n2_drp.GLB_T/df_n2_drp.LOC_T == 2) & (df_n2_drp.GLB_X/df_n2_drp.LOC_X == 1) & (df_n2_drp.GLB_Y/df_n2_drp.LOC_Y ==1)& (df_n2_drp.GLB_Z/df_n2_drp.LOC_Z == 1)]

fig = go.Figure() 

fig.add_trace(go.Scatter(x=(df_32mpi_2omp.Dirc_Data_Mov*(df_32mpi_2omp.MPI_size/2)), 
                         y=(df_32mpi_2omp.Fused_GFLOPS*(df_32mpi_2omp.MPI_size/2)), 
                         mode='lines', 
                         name='Fused_32mpi_2omp',
                         line=dict(color='chartreuse',dash='dot',width=3)))
fig.add_trace(go.Scatter(x=(df_32mpi_2omp.Dirc_Data_Mov*(df_32mpi_2omp.MPI_size/2)), 
                         y=(df_32mpi_2omp.Dphi_GFLOPS*(df_32mpi_2omp.MPI_size/2)), 
                         mode='lines', 
                         name='Dphi_32mpi_2omp',
                         line=dict(color='black',dash='dot',width=3)))

fig.add_trace(go.Scatter(x=(df_16mpi_4omp.Dirc_Data_Mov*(df_16mpi_4omp.MPI_size/2)), 
                         y=(df_16mpi_4omp.Fused_GFLOPS*(df_16mpi_4omp.MPI_size/2)), 
                         mode='lines+markers', 
                         name='Fused_16mpi_4omp',
                         line=dict(color='coral',width=3)))
fig.add_trace(go.Scatter(x=(df_16mpi_4omp.Dirc_Data_Mov*(df_16mpi_4omp.MPI_size/2)), 
                         y=(df_16mpi_4omp.Dphi_GFLOPS*(df_16mpi_4omp.MPI_size/2)), 
                         mode='lines+markers', 
                         name='Dphi_16mpi_4omp',
                         line=dict(color='cornflowerblue',width=3)))

fig.add_trace(go.Scatter(x=(df_8mp_8omp.Dirc_Data_Mov*(df_8mp_8omp.MPI_size/2)), 
                         y=(df_8mp_8omp.Fused_GFLOPS*(df_8mp_8omp.MPI_size/2)),
                         mode='lines', 
                         name='Fused_8mpi_8omp',
                         line=dict(color='green', dash='longdashdot',width=3)))
fig.add_trace(go.Scatter(x=(df_8mp_8omp.Dirc_Data_Mov*(df_8mp_8omp.MPI_size/2)), 
                         y=(df_8mp_8omp.Dphi_GFLOPS*(df_8mp_8omp.MPI_size/2)), 
                         mode='lines', 
                         name='Dphi_8mpi_8omp',
                         line=dict(color='crimson', dash='longdashdot',width=3)))

fig.add_trace(go.Scatter(x=(df_4mpi_16omp.Dirc_Data_Mov*(df_4mpi_16omp.MPI_size/2)), 
                         y=(df_4mpi_16omp.Fused_GFLOPS*(df_4mpi_16omp.MPI_size/2)), 
                         mode='lines', 
                         name='Fused_4mpi_16omp',
                         line=dict(color='cyan', dash='longdash',width=3)))
fig.add_trace(go.Scatter(x=(df_4mpi_16omp.Dirc_Data_Mov*(df_4mpi_16omp.MPI_size/2)), 
                         y=(df_4mpi_16omp.Dphi_GFLOPS*(df_4mpi_16omp.MPI_size/2)), 
                         mode='lines', 
                         name='Dphi_4mpi_16omp',
                         line=dict(color='darkblue', dash='longdash',width=3)))

fig.add_trace(go.Scatter(x=(df_2mpi_32omp.Dirc_Data_Mov*(df_2mpi_32omp.MPI_size/2)), 
                         y=(df_2mpi_32omp.Fused_GFLOPS*(df_2mpi_32omp.MPI_size/2)), 
                         mode='lines', 
                         name='Fused_2mpi_32omp',
                         line=dict(color='darkcyan',width=3)))
fig.add_trace(go.Scatter(x=(df_2mpi_32omp.Dirc_Data_Mov*(df_2mpi_32omp.MPI_size/2)), 
                         y=(df_2mpi_32omp.Dphi_GFLOPS*(df_2mpi_32omp.MPI_size/2)), 
                         mode='lines', 
                         name='Dphi_2mpi_32omp',
                         line=dict(color='fuchsia',width=3)))


fig.update_layout(title='"Dphi_fused vs Dphi" GFlops Measurement (1 Node out of 2): on Different Computational Resources',
                  xaxis_title='Dirc_Data_Mov', yaxis_title='GFLOPs/Node')  




```