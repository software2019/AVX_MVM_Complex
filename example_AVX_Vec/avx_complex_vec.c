
#include "header.h"

// double_MVM(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2);
// double_MVM(&chi, &chi2, &up, &psi, &psi2);
/**************************************************************************************************
 *   Commands for compiling:
 *   icc avx_complex_vec.c  -o test -O3 -march=core-avx2 -mtune=core-avx2
 *   gcc avx_complex_vec.c timer.c -I /home/mrahman/HiRep/Include -o test -lm -O3 -g -march=core-avx2 -mtune=core-avx2
 *
 *   There is no -march=generic option because -march indicates the instruction set the compiler can use,
 *   and there is no generic instruction set applicable to all processors. In contrast, -mtune indicates
 *   the processor (or, in this case, collection of processors) for which the code is optimized.
 *   core-avx2 Optimizes code for processors that support Intel® Advanced Vector Extensions 2
 *   (Intel® AVX2), Intel® AVX, SSE4.2, SSE4.1, SSE3, SSE2, SSE, and SSSE3 instructions.
 *
 *   Note: for gcc -lm must be added to be linked in with math library, whereas icc does not need it.
 ***************************************************************************************************/

#define _suNf_single_MVM_2x2(mc, mu, mp)           \
do                                                 \
{                                                  \
__m256d temp1, temp2, temp3, temp4, temp5, temp6;  \
temp1 = _mm256_load_pd((double *)(mu));            \
temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0000);   \
temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111);   \
temp2 = _mm256_loadu_pd((double *)(mu) + 4);       \
temp5 = _mm256_shuffle_pd(temp2, temp2, 0b0000);   \
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);   \
temp3 = _mm256_load_pd((double *)(mp));            \
temp6 = _mm256_shuffle_pd(temp3, temp3, 0b0101);   \
temp1 = _mm256_mul_pd(temp1, temp6);               \
temp1 = _mm256_fmaddsub_pd(temp4, temp3, temp1);   \
temp2 = _mm256_mul_pd(temp2, temp6);               \
temp2 = _mm256_fmaddsub_pd(temp5, temp3, temp2);   \
temp4 = _mm256_permute2f128_pd(temp2, temp1, 2);   \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);   \
temp1 = _mm256_blend_pd(temp1, temp2, 12);         \
temp1 = _mm256_add_pd(temp4, temp1);               \
_mm256_store_pd((double *)(mc), temp1);            \
} while(0)



#define _suNf_double_MVM_2x2(mc, mc2, mu, mp, mp2)                     \
do                                                                     \
{                                                                      \
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9; \
temp1 = _mm256_load_pd((double *)(mu));                                \
temp2 = _mm256_loadu_pd((double *)(mu) + 4);                           \
temp3 = _mm256_load_pd((double *)(mp));                                \
temp5 = _mm256_shuffle_pd(temp3, temp3, 0b0101);                       \
temp4 = _mm256_load_pd((double *)(mp2));                               \
temp6 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                       \
temp7 = _mm256_shuffle_pd(temp1, temp1, 0b0000);                       \
temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111);                       \
temp9 = _mm256_mul_pd(temp1, temp5);                                   \
temp8 = _mm256_fmaddsub_pd(temp7, temp3, temp9);                       \
temp9 = _mm256_shuffle_pd(temp2, temp2, 0b0000);                       \
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);                       \
temp5 = _mm256_mul_pd(temp2, temp5);                                   \
temp3 = _mm256_fmaddsub_pd(temp9, temp3, temp5);                       \
temp5 = _mm256_permute2f128_pd(temp3, temp8, 2);                       \
temp8 = _mm256_permute2f128_pd(temp8, temp8, 1);                       \
temp3 = _mm256_blend_pd(temp8, temp3, 12);                             \
temp3 = _mm256_add_pd(temp5, temp3);                                   \
temp1 = _mm256_mul_pd(temp1, temp6);                                   \
temp1 = _mm256_fmaddsub_pd(temp7, temp4, temp1);                       \
temp2 = _mm256_mul_pd(temp2, temp6);                                   \
temp2 = _mm256_fmaddsub_pd(temp9, temp4, temp2);                       \
temp4 = _mm256_permute2f128_pd(temp2, temp1, 2);                       \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                       \
temp1 = _mm256_blend_pd(temp1, temp2, 12);                             \
temp1 = _mm256_add_pd(temp4, temp1);                                   \
_mm256_store_pd((double *)(mc), temp3);                                \
_mm256_store_pd((double *)(mc2), temp1);                               \
} while(0)



#define _suNf_single_MVM_inverse_2x2(mc, mu, mp)                  \
do                                                                \
{                                                                 \
__m256d temp1, temp2, temp3, temp4, temp5, temp6;                 \
const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);    \
temp1 = _mm256_load_pd((double *)(mu));                           \
temp1 = _mm256_mul_pd(temp1, simd_mask);                          \
temp2 = _mm256_loadu_pd((double *)(mu) + 4);                      \
temp2 = _mm256_mul_pd(temp2, simd_mask);                          \
temp4 = _mm256_permute2f128_pd(temp2, temp1, 2);                  \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                  \
temp1 = _mm256_blend_pd(temp1, temp2, 12);                        \
temp2 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                  \
temp5 = _mm256_shuffle_pd(temp1, temp1, 0b0101);                  \
temp3 = _mm256_load_pd((double *)(mp));                           \
temp6 = _mm256_shuffle_pd(temp3, temp3, 0b0000);                  \
temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);                  \
temp2 = _mm256_mul_pd(temp3, temp2);                              \
temp2 = _mm256_fmaddsub_pd(temp6, temp4, temp2);                  \
temp3 = _mm256_mul_pd(temp3, temp5);                              \
temp1 = _mm256_fmaddsub_pd(temp6, temp1, temp3);                  \
temp3 = _mm256_permute2f128_pd(temp1, temp2, 2);                  \
temp2 = _mm256_permute2f128_pd(temp2, temp2, 1);                  \
temp1 = _mm256_blend_pd(temp2, temp1, 12);                        \
temp1 = _mm256_add_pd(temp3, temp1);                              \
_mm256_store_pd((double *)(mc), temp1);                           \
} while(0)




#define _suNf_double_MVM_inverse_2x2(mc, mc2, mu, mp, mp2)                             \
do                                                                                     \
{                                                                                      \
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11; \
const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);                         \
temp1 = _mm256_load_pd((double *)(mu));                                                \
temp1 = _mm256_mul_pd(temp1, simd_mask);                                               \
temp2 = _mm256_loadu_pd((double *)(mu) + 4);                                           \
temp2 = _mm256_mul_pd(temp2, simd_mask);                                               \
temp4 = _mm256_permute2f128_pd(temp2, temp1, 2);                                       \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                                       \
temp1 = _mm256_blend_pd(temp1, temp2, 12);                                             \
temp2 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                                       \
temp5 = _mm256_shuffle_pd(temp1, temp1, 0b0101);                                       \
temp3 = _mm256_load_pd((double *)(mp));                                                \
temp6 = _mm256_shuffle_pd(temp3, temp3, 0b0000);                                       \
temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);                                       \
temp7 = _mm256_load_pd((double *)(mp2));                                               \
temp8 = _mm256_shuffle_pd(temp7, temp7, 0b0000);                                       \
temp7 = _mm256_shuffle_pd(temp7, temp7, 0b1111);                                       \
temp9 = _mm256_mul_pd(temp6, temp4);                                                   \
temp10 = _mm256_mul_pd(temp3, temp2);                                                  \
temp9 = _mm256_addsub_pd(temp9, temp10);                                               \
temp6 = _mm256_mul_pd(temp6, temp1);                                                   \
temp3 = _mm256_mul_pd(temp3, temp5);                                                   \
temp3 = _mm256_addsub_pd(temp6, temp3);                                                \
temp6 = _mm256_permute2f128_pd(temp3, temp9, 2);                                       \
temp11 = _mm256_permute2f128_pd(temp9, temp9, 1);                                      \
temp3 = _mm256_blend_pd(temp11, temp3, 12);                                            \
temp3 = _mm256_add_pd(temp6, temp3);                                                   \
temp4 = _mm256_mul_pd(temp8, temp4);                                                   \
temp2 = _mm256_mul_pd(temp7, temp2);                                                   \
temp2 = _mm256_addsub_pd(temp4, temp2);                                                \
temp1 = _mm256_mul_pd(temp8, temp1);                                                   \
temp4 = _mm256_mul_pd(temp7, temp5);                                                   \
temp1 = _mm256_addsub_pd(temp1, temp4);                                                \
temp4 = _mm256_permute2f128_pd(temp1, temp2, 2);                                       \
temp2 = _mm256_permute2f128_pd(temp2, temp2, 1);                                       \
temp1 = _mm256_blend_pd(temp2, temp1, 12);                                             \
temp2 = _mm256_add_pd(temp4, temp1);                                                   \
_mm256_store_pd((double *)(mc), temp3);                                                \
_mm256_store_pd((double *)(mc2), temp2);                                               \
} while(0)


#define _suNf_single_MVM(mc, mu, mp)                                                                                         \
do                                                                                                                           \
{                                                                                                                            \
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, psi2, psi3, psi_3rd;  \
__m128d chi_3rd;                                                                                                             \
temp1 = _mm256_load_pd((double *)(mu));                                                                                      \
temp2 = _mm256_shuffle_pd(temp1, temp1, 0b0000);                                                                             \
temp3 = _mm256_shuffle_pd(temp1, temp1, 0b1111);                                                                             \
temp8 = _mm256_loadu_pd((double *)(mu) + 2);                                                                                 \
temp1 = _mm256_loadu_pd((double *)(mu) + 6);                                                                                 \
temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0000);                                                                             \
temp5 = _mm256_shuffle_pd(temp1, temp1, 0b1111);                                                                             \
temp9 = _mm256_load_pd((double *)(mu) + 8);                                                                                  \
temp1 = _mm256_load_pd((double *)(mu) + 12);                                                                                 \
temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);                                                                             \
temp7 = _mm256_shuffle_pd(temp1, temp1, 0b1111);                                                                             \
temp1 = _mm256_load_pd((double *)(mp));                                                                                      \
psi2 = _mm256_shuffle_pd(temp1, temp1, 0b0101);                                                                              \
psi_3rd = _mm256_loadu_pd((double *)(mp) + 2);                                                                               \
temp3 = _mm256_mul_pd(temp3, psi2);                                                                                          \
temp2 = _mm256_fmaddsub_pd(temp2, temp1, temp3);                                                                             \
temp5 = _mm256_mul_pd(temp5, psi2);                                                                                          \
temp4 = _mm256_fmaddsub_pd(temp4, temp1, temp5);                                                                             \
temp3 = _mm256_permute2f128_pd(temp4, temp2, 2);                                                                             \
temp2 = _mm256_permute2f128_pd(temp2, temp2, 1);                                                                             \
temp2 = _mm256_blend_pd(temp2, temp4, 12);                                                                                   \
temp2 = _mm256_add_pd(temp3, temp2);                                                                                         \
temp8 = _mm256_permute2f128_pd(temp8, temp8, 1);                                                                             \
temp8 = _mm256_blend_pd(temp8, temp9, 12);                                                                                   \
temp9 = _mm256_permute2f128_pd(psi_3rd, psi_3rd, 1);                                                                         \
temp4 = _mm256_blend_pd(temp9, psi_3rd, 12);                                                                                 \
temp10 = _mm256_shuffle_pd(temp8, temp8, 0b0000);                                                                            \
temp13 = _mm256_shuffle_pd(temp8, temp8, 0b1111);                                                                            \
psi3 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                                                                              \
temp13 = _mm256_mul_pd(temp13, psi3);                                                                                        \
temp10 = _mm256_fmaddsub_pd(temp10, temp4, temp13);                                                                          \
temp2 = _mm256_add_pd(temp2, temp10);                                                                                        \
temp7 = _mm256_mul_pd(temp7, psi2);                                                                                          \
temp6 = _mm256_fmaddsub_pd(temp6, temp1, temp7);                                                                             \
temp10 = _mm256_permute2f128_pd(temp6, temp6, 1);                                                                            \
temp1 = _mm256_add_pd(temp10, temp6);                                                                                        \
temp6 = _mm256_loadu_pd((double *)(mu) + 14);                                                                                \
temp10 = _mm256_permute2f128_pd(temp6, temp6, 1);                                                                            \
temp10 = _mm256_blend_pd(temp10, temp6, 12);                                                                                 \
temp11 = _mm256_shuffle_pd(temp10, temp10, 0b0000);                                                                          \
temp12 = _mm256_shuffle_pd(temp10, temp10, 0b1111);                                                                          \
temp12 = _mm256_mul_pd(temp12, psi3);                                                                                        \
temp11 = _mm256_fmaddsub_pd(temp11, temp4, temp12);                                                                          \
temp11 = _mm256_add_pd(temp1, temp11);                                                                                       \
chi_3rd = _mm256_castpd256_pd128(temp11);                                                                                    \
_mm256_store_pd((double *)(mc), temp2);                                                                                      \
_mm_store_pd((double *)(mc) + 4, chi_3rd);                                                                                   \
}while (0)


#define _suNf_single_MVM_inverse(mc, mu, mp)                      \
do                                                                \
{                                                                 \
__m256d temp1, temp2, temp3, temp4, temp5, temp6,temp7;           \
const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);    \
__m128d chi_3rd;                                                  \
temp1 = _mm256_loadu_pd((double *)(mu));                          \
temp1 = _mm256_mul_pd(temp1, simd_mask);                          \
temp2 = _mm256_loadu_pd((double *)(mu) + 6);                      \
temp2 = _mm256_mul_pd(temp2, simd_mask);                          \
temp3 = _mm256_permute2f128_pd(temp2, temp1, 2);                  \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                  \
temp1 = _mm256_blend_pd(temp1, temp2, 12);                        \
temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101);                  \
temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101);                  \
temp5 = _mm256_loadu_pd((double *)(mp));                          \
temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0000);                  \
temp5 = _mm256_shuffle_pd(temp5, temp5, 0b1111);                  \
temp2 = _mm256_mul_pd(temp5, temp2);                              \
temp2 = _mm256_fmaddsub_pd(temp6, temp3, temp2);                  \
temp3 = _mm256_mul_pd(temp5, temp4);                              \
temp1 = _mm256_fmaddsub_pd(temp6, temp1, temp3);                  \
temp3 = _mm256_permute2f128_pd(temp1, temp2, 2);                  \
temp2 = _mm256_permute2f128_pd(temp2, temp2, 1);                  \
temp1 = _mm256_blend_pd(temp2, temp1, 12);                        \
temp1 = _mm256_add_pd(temp3, temp1);                              \
temp3 = _mm256_loadu_pd((double *)(mp) + 2);                      \
temp2 = _mm256_permute2f128_pd(temp3, temp3, 1);                  \
temp2 = _mm256_blend_pd(temp2, temp3, 12);                        \
temp3 = _mm256_shuffle_pd(temp2, temp2, 0b0000);                  \
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);                  \
temp4 = _mm256_loadu_pd((double *)(mu) + 12);                     \
temp4 = _mm256_mul_pd(temp4, simd_mask);                          \
temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                  \
temp7 = _mm256_mul_pd(temp2, temp7);                              \
temp4 = _mm256_fmaddsub_pd(temp3, temp4, temp7);                  \
temp1 = _mm256_add_pd(temp1, temp4);                              \
temp4 = _mm256_loadu_pd((double *)(mu) + 2);                      \
temp4 = _mm256_mul_pd(temp4, simd_mask);                          \
temp7 = _mm256_loadu_pd((double *)(mu) + 8);                      \
temp7 = _mm256_mul_pd(temp7, simd_mask);                          \
temp4 = _mm256_permute2f128_pd(temp4, temp4, 1);                  \
temp4 = _mm256_blend_pd(temp4, temp7, 12);                        \
temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                  \
temp5 = _mm256_mul_pd(temp5, temp7);                              \
temp4 = _mm256_fmaddsub_pd(temp6, temp4, temp5);                  \
temp5 = _mm256_permute2f128_pd(temp4, temp4, 1);                  \
temp5 = _mm256_add_pd(temp5, temp4);                              \
temp4 = _mm256_loadu_pd((double *)(mu) + 14);                     \
temp4 = _mm256_mul_pd(temp4, simd_mask);                          \
temp6 = _mm256_permute2f128_pd(temp4, temp4, 1);                  \
temp4 = _mm256_blend_pd(temp6, temp4, 12);                        \
temp6 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                  \
temp2 = _mm256_mul_pd(temp2, temp6);                              \
temp2 = _mm256_fmaddsub_pd(temp3, temp4, temp2);                  \
temp2 = _mm256_add_pd(temp5, temp2);                              \
chi_3rd = _mm256_castpd256_pd128(temp2);                          \
_mm256_store_pd((double *)(mc), temp1);                           \
_mm_store_pd((double *)(mc) + 4, chi_3rd);                        \
} while(0)



#define _suNf_double_multiply(mc, mc2, mu, mp, mp2)                                                                                     \
do                                                                                                                                      \
{                                                                                                                                       \
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;  \
__m128d chi_3rd, chi2_3rd;                                                                                                              \
temp1 = _mm256_load_pd((double *)((mu)));                                                                                               \
temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);                                                                                        \
temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111);                                                                                        \
temp2 = _mm256_loadu_pd((double *)((mu)) + 6);                                                                                          \
temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000);                                                                                        \
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);                                                                                        \
temp3 = _mm256_load_pd((double *)((mu)) + 12);                                                                                          \
temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000);                                                                                        \
temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);                                                                                        \
temp4 = _mm256_load_pd((double *)(mp));                                                                                                 \
temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                                                                                        \
temp5 = _mm256_load_pd((double *)(mp2));                                                                                                \
temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101);                                                                                       \
temp12 = _mm256_mul_pd(temp1, temp9);                                                                                                   \
temp11 = _mm256_fmaddsub_pd(temp6, temp4, temp12);                                                                                      \
temp13 = _mm256_mul_pd(temp2, temp9);                                                                                                   \
temp12 = _mm256_fmaddsub_pd(temp7, temp4, temp13);                                                                                      \
temp13 = _mm256_permute2f128_pd(temp12, temp11, 2);                                                                                     \
temp11 = _mm256_permute2f128_pd(temp11, temp11, 1);                                                                                     \
temp11 = _mm256_blend_pd(temp11, temp12, 12);                                                                                           \
temp11 = _mm256_add_pd(temp13, temp11);                                                                                                 \
temp12 = _mm256_loadu_pd((double *)((mu)) + 2);                                                                                         \
temp12 = _mm256_permute2f128_pd(temp12, temp12, 1);                                                                                     \
temp13 = _mm256_load_pd((double *)((mu)) + 8);                                                                                          \
temp12 = _mm256_blend_pd(temp12, temp13, 12);                                                                                           \
temp13 = _mm256_loadu_pd((double *)(mp) + 2);                                                                                           \
temp16 = _mm256_permute2f128_pd(temp13, temp13, 1);                                                                                     \
temp13 = _mm256_blend_pd(temp16, temp13, 12);                                                                                           \
temp15 = _mm256_shuffle_pd(temp12, temp12, 0b0000);                                                                                     \
temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);                                                                                     \
temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);                                                                                     \
temp14 = _mm256_mul_pd(temp12, temp14);                                                                                                 \
temp13 = _mm256_fmaddsub_pd(temp15, temp13, temp14);                                                                                    \
temp11 = _mm256_add_pd(temp11, temp13);                                                                                                 \
temp1 = _mm256_mul_pd(temp1, temp10);                                                                                                   \
temp1 = _mm256_fmaddsub_pd(temp6, temp5, temp1);                                                                                        \
temp2 = _mm256_mul_pd(temp2, temp10);                                                                                                   \
temp7 = _mm256_fmaddsub_pd(temp7, temp5, temp2);                                                                                        \
temp13 = _mm256_permute2f128_pd(temp7, temp1, 2);                                                                                       \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                                                                                        \
temp1 = _mm256_blend_pd(temp1, temp7, 12);                                                                                              \
temp1 = _mm256_add_pd(temp13, temp1);                                                                                                   \
temp13 = _mm256_loadu_pd((double *)(mp2) + 2);                                                                                          \
temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);                                                                                     \
temp14 = _mm256_blend_pd(temp14, temp13, 12);                                                                                           \
temp17 = _mm256_shuffle_pd(temp14, temp14, 0b0101);                                                                                     \
temp12 = _mm256_mul_pd(temp12, temp17);                                                                                                 \
temp12 = _mm256_fmaddsub_pd(temp15, temp14, temp12);                                                                                    \
temp1 = _mm256_add_pd(temp1, temp12);                                                                                                   \
temp12 = _mm256_mul_pd(temp3, temp9);                                                                                                   \
temp4 = _mm256_fmaddsub_pd(temp8, temp4, temp12);                                                                                       \
temp3 = _mm256_mul_pd(temp3, temp10);                                                                                                   \
temp3 = _mm256_fmaddsub_pd(temp8, temp5, temp3);                                                                                        \
temp5 = _mm256_permute2f128_pd(temp3, temp4, 2);                                                                                        \
temp4 = _mm256_permute2f128_pd(temp4, temp4, 1);                                                                                        \
temp3 = _mm256_blend_pd(temp4, temp3, 12);                                                                                              \
temp3 = _mm256_add_pd(temp5, temp3);                                                                                                    \
temp9 = _mm256_loadu_pd((double *)((mu)) + 14);                                                                                         \
temp10 = _mm256_permute2f128_pd(temp9, temp9, 1);                                                                                       \
temp9 = _mm256_blend_pd(temp10, temp9, 12);                                                                                             \
temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);                                                                                       \
temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);                                                                                       \
temp9 = _mm256_blend_pd(temp16, temp13, 12);                                                                                            \
temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);                                                                                       \
temp2 = _mm256_mul_pd(temp12, temp13);                                                                                                  \
temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);                                                                                       \
temp2 = _mm256_add_pd(temp3, temp7);                                                                                                    \
chi_3rd = _mm256_castpd256_pd128(temp2);                                                                                                \
chi2_3rd = _mm256_extractf128_pd(temp2, 1);                                                                                             \
_mm256_store_pd((double *)(mc), temp11);                                                                                                \
_mm_store_pd((double *)(mc) + 4, chi_3rd);                                                                                              \
_mm256_store_pd((double *)(mc2), temp1);                                                                                                \
_mm_store_pd((double *)(mc2) + 4, chi2_3rd);                                                                                            \
} while (0)

#define _suNf_double_multiply_stream(mc, mc2, mu, mp, mp2)                                                                                     \
do                                                                                                                                      \
{                                                                                                                                       \
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;  \
__m128d chi_3rd, chi2_3rd;                                                                                                              \
temp1 = _mm256_load_pd((double *)((mu)));                                                                                               \
temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);                                                                                        \
temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111);                                                                                        \
temp2 = _mm256_loadu_pd((double *)((mu)) + 6);                                                                                          \
temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000);                                                                                        \
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);                                                                                        \
temp3 = _mm256_load_pd((double *)((mu)) + 12);                                                                                          \
temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000);                                                                                        \
temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);                                                                                        \
temp4 = _mm256_load_pd((double *)(mp));                                                                                                 \
temp9 = _mm256_shuffle_pd(temp4, temp4, 0b0101);                                                                                        \
temp5 = _mm256_load_pd((double *)(mp2));                                                                                                \
temp10 = _mm256_shuffle_pd(temp5, temp5, 0b0101);                                                                                       \
temp12 = _mm256_mul_pd(temp1, temp9);                                                                                                   \
temp11 = _mm256_fmaddsub_pd(temp6, temp4, temp12);                                                                                      \
temp13 = _mm256_mul_pd(temp2, temp9);                                                                                                   \
temp12 = _mm256_fmaddsub_pd(temp7, temp4, temp13);                                                                                      \
temp13 = _mm256_permute2f128_pd(temp12, temp11, 2);                                                                                     \
temp11 = _mm256_permute2f128_pd(temp11, temp11, 1);                                                                                     \
temp11 = _mm256_blend_pd(temp11, temp12, 12);                                                                                           \
temp11 = _mm256_add_pd(temp13, temp11);                                                                                                 \
temp12 = _mm256_loadu_pd((double *)((mu)) + 2);                                                                                         \
temp12 = _mm256_permute2f128_pd(temp12, temp12, 1);                                                                                     \
temp13 = _mm256_load_pd((double *)((mu)) + 8);                                                                                          \
temp12 = _mm256_blend_pd(temp12, temp13, 12);                                                                                           \
temp13 = _mm256_loadu_pd((double *)(mp) + 2);                                                                                           \
temp16 = _mm256_permute2f128_pd(temp13, temp13, 1);                                                                                     \
temp13 = _mm256_blend_pd(temp16, temp13, 12);                                                                                           \
temp15 = _mm256_shuffle_pd(temp12, temp12, 0b0000);                                                                                     \
temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);                                                                                     \
temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);                                                                                     \
temp14 = _mm256_mul_pd(temp12, temp14);                                                                                                 \
temp13 = _mm256_fmaddsub_pd(temp15, temp13, temp14);                                                                                    \
temp11 = _mm256_add_pd(temp11, temp13);                                                                                                 \
temp1 = _mm256_mul_pd(temp1, temp10);                                                                                                   \
temp1 = _mm256_fmaddsub_pd(temp6, temp5, temp1);                                                                                        \
temp2 = _mm256_mul_pd(temp2, temp10);                                                                                                   \
temp7 = _mm256_fmaddsub_pd(temp7, temp5, temp2);                                                                                        \
temp13 = _mm256_permute2f128_pd(temp7, temp1, 2);                                                                                       \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                                                                                        \
temp1 = _mm256_blend_pd(temp1, temp7, 12);                                                                                              \
temp1 = _mm256_add_pd(temp13, temp1);                                                                                                   \
temp13 = _mm256_loadu_pd((double *)(mp2) + 2);                                                                                          \
temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);                                                                                     \
temp14 = _mm256_blend_pd(temp14, temp13, 12);                                                                                           \
temp17 = _mm256_shuffle_pd(temp14, temp14, 0b0101);                                                                                     \
temp12 = _mm256_mul_pd(temp12, temp17);                                                                                                 \
temp12 = _mm256_fmaddsub_pd(temp15, temp14, temp12);                                                                                    \
temp1 = _mm256_add_pd(temp1, temp12);                                                                                                   \
temp12 = _mm256_mul_pd(temp3, temp9);                                                                                                   \
temp4 = _mm256_fmaddsub_pd(temp8, temp4, temp12);                                                                                       \
temp3 = _mm256_mul_pd(temp3, temp10);                                                                                                   \
temp3 = _mm256_fmaddsub_pd(temp8, temp5, temp3);                                                                                        \
temp5 = _mm256_permute2f128_pd(temp3, temp4, 2);                                                                                        \
temp4 = _mm256_permute2f128_pd(temp4, temp4, 1);                                                                                        \
temp3 = _mm256_blend_pd(temp4, temp3, 12);                                                                                              \
temp3 = _mm256_add_pd(temp5, temp3);                                                                                                    \
temp9 = _mm256_loadu_pd((double *)((mu)) + 14);                                                                                         \
temp10 = _mm256_permute2f128_pd(temp9, temp9, 1);                                                                                       \
temp9 = _mm256_blend_pd(temp10, temp9, 12);                                                                                             \
temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);                                                                                       \
temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);                                                                                       \
temp9 = _mm256_blend_pd(temp16, temp13, 12);                                                                                            \
temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);                                                                                       \
temp2 = _mm256_mul_pd(temp12, temp13);                                                                                                  \
temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);                                                                                       \
temp2 = _mm256_add_pd(temp3, temp7);                                                                                                    \
chi_3rd = _mm256_castpd256_pd128(temp2);                                                                                                \
chi2_3rd = _mm256_extractf128_pd(temp2, 1);                                                                                             \
_mm256_stream_pd((double *)(mc), temp11);                                                                                                \
_mm_stream_pd((double *)(mc) + 4, chi_3rd);                                                                                              \
_mm256_stream_pd((double *)(mc2), temp1);                                                                                                \
_mm_stream_pd((double *)(mc2) + 4, chi2_3rd);                                                                                            \
} while (0)


#define _suNf_double_inverse_multiply(mc, mc2, mu, mp, mp2)                                                                             \
do                                                                                                                                      \
{                                                                                                                                       \
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;  \
__m128d chi_3rd, chi2_3rd;                                                                                                              \
const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);                                                                          \
temp1 = _mm256_load_pd((double *)(mu));                                                                                                 \
temp1 = _mm256_mul_pd(temp1, simd_mask);                                                                                                \
temp2 = _mm256_loadu_pd((double *)(mu) + 6);                                                                                            \
temp2 = _mm256_mul_pd(temp2, simd_mask);                                                                                                \
temp3 = _mm256_permute2f128_pd(temp2, temp1, 2);                                                                                        \
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                                                                                        \
temp1 = _mm256_blend_pd(temp1, temp2, 12);                                                                                              \
temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101);                                                                                        \
temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101);                                                                                        \
temp5 = _mm256_load_pd((double *)(mp));                                                                                                 \
temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0000);                                                                                        \
temp5 = _mm256_shuffle_pd(temp5, temp5, 0b1111);                                                                                        \
temp7 = _mm256_load_pd((double *)(mp2));                                                                                                \
temp8 = _mm256_shuffle_pd(temp7, temp7, 0b0000);                                                                                        \
temp7 = _mm256_shuffle_pd(temp7, temp7, 0b1111);                                                                                        \
temp10 = _mm256_mul_pd(temp5, temp2);                                                                                                   \
temp9 = _mm256_fmaddsub_pd(temp6, temp3, temp10);                                                                                       \
temp11 = _mm256_mul_pd(temp5, temp4);                                                                                                   \
temp10 = _mm256_fmaddsub_pd(temp6, temp1, temp11);                                                                                      \
temp11 = _mm256_permute2f128_pd(temp10, temp9, 2);                                                                                      \
temp9 = _mm256_permute2f128_pd(temp9, temp9, 1);                                                                                        \
temp9 = _mm256_blend_pd(temp9, temp10, 12);                                                                                             \
temp9 = _mm256_add_pd(temp11, temp9);                                                                                                   \
temp10 = _mm256_loadu_pd((double *)(mp) + 2);                                                                                           \
temp11 = _mm256_permute2f128_pd(temp10, temp10, 1);                                                                                     \
temp10 = _mm256_blend_pd(temp11, temp10, 12);                                                                                           \
temp12 = _mm256_shuffle_pd(temp10, temp10, 0b0000);                                                                                     \
temp10 = _mm256_shuffle_pd(temp10, temp10, 0b1111);                                                                                     \
temp13 = _mm256_load_pd((double *)(mu) + 12);                                                                                           \
temp13 = _mm256_mul_pd(temp13, simd_mask);                                                                                              \
temp15 = _mm256_shuffle_pd(temp13, temp13, 0b0101);                                                                                     \
temp10 = _mm256_mul_pd(temp10, temp15);                                                                                                 \
temp10 = _mm256_fmaddsub_pd(temp12, temp13, temp10);                                                                                    \
temp9 = _mm256_add_pd(temp9, temp10);                                                                                                   \
temp2 = _mm256_mul_pd(temp7, temp2);                                                                                                    \
temp2 = _mm256_fmaddsub_pd(temp8, temp3, temp2);                                                                                        \
temp3 = _mm256_mul_pd(temp7, temp4);                                                                                                    \
temp1 = _mm256_fmaddsub_pd(temp8, temp1, temp3);                                                                                        \
temp3 = _mm256_permute2f128_pd(temp1, temp2, 2);                                                                                        \
temp2 = _mm256_permute2f128_pd(temp2, temp2, 1);                                                                                        \
temp1 = _mm256_blend_pd(temp2, temp1, 12);                                                                                              \
temp1 = _mm256_add_pd(temp3, temp1);                                                                                                    \
temp2 = _mm256_loadu_pd((double *)(mp2) + 2);                                                                                           \
temp3 = _mm256_permute2f128_pd(temp2, temp2, 1);                                                                                        \
temp3 = _mm256_blend_pd(temp3, temp2, 12);                                                                                              \
temp4 = _mm256_shuffle_pd(temp3, temp3, 0b0000);                                                                                        \
temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111);                                                                                        \
temp3 = _mm256_mul_pd(temp3, temp15);                                                                                                   \
temp3 = _mm256_fmaddsub_pd(temp4, temp13, temp3);                                                                                       \
temp1 = _mm256_add_pd(temp1, temp3);                                                                                                    \
temp3 = _mm256_loadu_pd((double *)(mu) + 2);                                                                                            \
temp3 = _mm256_mul_pd(temp3, simd_mask);                                                                                                \
temp4 = _mm256_load_pd((double *)(mu) + 8);                                                                                             \
temp4 = _mm256_mul_pd(temp4, simd_mask);                                                                                                \
temp3 = _mm256_permute2f128_pd(temp3, temp3, 1);                                                                                        \
temp3 = _mm256_blend_pd(temp3, temp4, 12);                                                                                              \
temp4 = _mm256_shuffle_pd(temp3, temp3, 0b0101);                                                                                        \
temp5 = _mm256_mul_pd(temp5, temp4);                                                                                                    \
temp5 = _mm256_fmaddsub_pd(temp6, temp3, temp5);                                                                                        \
temp4 = _mm256_mul_pd(temp7, temp4);                                                                                                    \
temp3 = _mm256_fmaddsub_pd(temp8, temp3, temp4);                                                                                        \
temp4 = _mm256_permute2f128_pd(temp3, temp5, 2);                                                                                        \
temp14 = _mm256_permute2f128_pd(temp5, temp5, 1);                                                                                       \
temp3 = _mm256_blend_pd(temp14, temp3, 12);                                                                                             \
temp3 = _mm256_add_pd(temp4, temp3);                                                                                                    \
temp2 = _mm256_blend_pd(temp11, temp2, 12);                                                                                             \
temp4 = _mm256_shuffle_pd(temp2, temp2, 0b0000);                                                                                        \
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111);                                                                                        \
temp5 = _mm256_loadu_pd((double *)(mu) + 14);                                                                                           \
temp5 = _mm256_mul_pd(temp5, simd_mask);                                                                                                \
temp6 = _mm256_permute2f128_pd(temp5, temp5, 1);                                                                                        \
temp5 = _mm256_blend_pd(temp6, temp5, 12);                                                                                              \
temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0101);                                                                                        \
temp2 = _mm256_mul_pd(temp2, temp6);                                                                                                    \
temp2 = _mm256_fmaddsub_pd(temp4, temp5, temp2);                                                                                        \
temp2 = _mm256_add_pd(temp3, temp2);                                                                                                    \
chi_3rd = _mm256_castpd256_pd128(temp2);                                                                                                \
chi2_3rd = _mm256_extractf128_pd(temp2, 1);                                                                                             \
 _mm256_store_pd((double *)(mc), temp9);                                                                                                \
 _mm_storeu_pd((double *)(mc) + 4, chi_3rd);                                                                                            \
 _mm256_store_pd((double *)(mc2), temp1);                                                                                               \
 _mm_storeu_pd((double *)(mc2) + 4, chi2_3rd);                                                                                          \
} while (0)





 static __m256d simd_mask; 

int main()
{

// #ifdef __GNUC__ //GCC
//   lprintf("GCC",0,"gcc compiler active" );
// #endif

// #ifdef __clang__ //clang
//   lprintf("Clang",0,"Clang compiler active" );
// #endif

  int i, j, bytesite;
  int n = 5;
  double res1, res2, res3, res4, res5, res6, res7, res8, res9, res10, res11, res12;
  float elapsed, gflops;
  int n_times = 5000000;
  int n_warmup = 1000;

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

//  mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);
  suNf_vector *chi, *chi2, chi3, chi4, *chi5, *chi6, *psi, *psi2, *psi_copy, *psi2_copy;
  suNf *up;

 up = amalloc(n_times*sizeof(suNf), ALIGN);
 psi = amalloc(n_times*sizeof(suNf_vector), ALIGN);
 psi2 = amalloc(n_times*sizeof(suNf_vector), ALIGN);
 chi = amalloc(n_times*sizeof(suNf_vector), ALIGN);
 chi2 = amalloc(n_times*sizeof(suNf_vector), ALIGN);
 chi5 = amalloc(n_times*sizeof(suNf_vector), ALIGN);
 chi6 = amalloc(n_times*sizeof(suNf_vector), ALIGN);

    bytesite = 36 * sizeof(suNf_vector) + 8 * sizeof(suNf); // 8 spinors read + 1 spinor write + 8 gauge matrices read
    bytesite = 40 * sizeof(suNf_vector) + 8 * sizeof(suNf); // 8 spinors read + 1 spinor read+write + 8 gauge matrices read
    lprintf("LA TEST", 0, "Byte per site = %d\n", bytesite);

//  up = _mm_malloc(sizeof(suNf), MEM_ALIGN);
//  psi = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  psi2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi2 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi5 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);
//  chi6 = _mm_malloc(sizeof(suNf_vector), MEM_ALIGN);

//  __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;
//  __m128d chi_3rd, chi2_3rd;

// const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);


/* Memory Initialization by hand */
//  psi->c[0] = (1.0 + 4.0 * I);
//  psi->c[1] = (2.0 + 5.0 * I);
//  psi->c[2] = (3.0 + 6.0 * I);

//  psi2->c[0] = (1.0 + 2.0 * I);
//  psi2->c[1] = (3.0 + 4.0 * I);
//  psi2->c[2] = (2.0 + 1.0 * I);

// // //  /* Matrix (3x3) initialized: 18 doubles */
//  up->c[0] = (1.0 + 2.0 * I);
//  up->c[1] = (3.0 + 4.0 * I);
//  up->c[2] = (5.0 + 6.0 * I);

//  up->c[3] = (2.0 + 1.0 * I);
//  up->c[4] = (3.0 + 2.0 * I);
//  up->c[5] = (1.0 + 3.0 * I);

//  up->c[6] = (4.0 + 5.0 * I);
//  up->c[7] = (6.0 + 4.0 * I);
//  up->c[8] = (5.0 + 6.0 * I);


/* Memory Initialization */
  for(i=0; i<n_times; i++)
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

   //single_MVM(chi, up, psi);
  // double_MVM_macro(chi, chi2, up, psi, psi2);
      // double_MVM_non_macro(chi, chi2, up, psi, psi2);
      // double_MVM_non_macro_test(chi5, chi6, up, psi, psi2);
  // single_MVM_2x2(chi, up, psi);
  // double_MVM_2x2(chi, chi2, up, psi, psi2);
  //single_MVM_inverse(chi, up, psi);
  // double_MVM_inverse(chi, chi2, up, psi, psi2);
   //single_MVM_inverse_2x2(chi, up, psi);
  //   double_MVM_inverse_2x2(chi, chi2, up, psi, psi2);



 /* Non-Macro version of new routine */
//  psi_copy = psi;
//  psi2_copy = psi2;
//  for (i = 0; i < n_warmup; ++i)
//  {
 
//   // double_MVM_non_macro(chi, chi2, up, psi, psi2);
//   // double_MVM_non_macro(psi, psi2, up, chi, chi2);
//   _suNf_double_multiply(chi, chi2, up, psi, psi2);
//   _suNf_double_multiply(psi, psi2, up, chi, chi2);

//   psi->c[0] *= 0.001;
//   psi->c[1] *= 0.001;
//   psi->c[2] *= 0.001;

//   psi2->c[0] *= 0.001;
//   psi2->c[1] *= 0.001;
//   psi2->c[2] *= 0.001;
//  }

//  psi_copy = psi;
//  psi2_copy = psi2;

  gettimeofday(&start, 0);
# ifdef _OPENMP
    wt1=omp_get_wtime();
# endif
  t1=clock();

 for (i = 0; i < n_times; i++)
 {
  // CALLGRIND_START_INSTRUMENTATION;
  // CALLGRIND_TOGGLE_COLLECT;
  // double_MVM_non_macro(chi, chi2, up, psi, psi2);
  // CALLGRIND_TOGGLE_COLLECT;
  // CALLGRIND_STOP_INSTRUMENTATION;
  // double_MVM_non_macro(psi, psi2, up, chi, chi2);

  //_suNf_double_multiply(chi, chi2, up, psi, psi2);
  // _suNf_double_multiply(psi, psi2, up, chi, chi2);
  _suNf_double_multiply((chi+i), (chi2+i), ((up+i)), ((psi+i)), ((psi2+i)));

  // psi->c[0] *= 0.001;
  // psi->c[1] *= 0.001;
  // psi->c[2] *= 0.001;

  // psi2->c[0] *= 0.001;
  // psi2->c[1] *= 0.001;
  // psi2->c[2] *= 0.001;
 }

  t2=clock();
# ifdef _OPENMP
    wt2=omp_get_wtime();
# endif
  gettimeofday(&end, 0);
  timeval_subtract(&etime, &end, &start);

    lprintf("DOUBLE_MVM_MACRO",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
# ifdef _OPENMP
    lprintf("DOUBLE_MVM_MACRO",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
# endif
    lprintf("DOUBLE_MVM_MACRO",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);


 gettimeofday(&start, 0);
# ifdef _OPENMP
    wt1=omp_get_wtime();
# endif
  t1=clock();

 for (i = 0; i < n_times; i++)
 {
  // CALLGRIND_START_INSTRUMENTATION;
  // CALLGRIND_TOGGLE_COLLECT;
  // double_MVM_non_macro(chi, chi2, up, psi, psi2);
  //double_MVM_non_macro_test(chi5, chi6, up, psi, psi2);
  // CALLGRIND_TOGGLE_COLLECT;
  // CALLGRIND_STOP_INSTRUMENTATION;
  // double_MVM_non_macro(psi, psi2, up, chi, chi2);
  // double_MVM_non_macro_test(psi, psi2, up, chi5, chi6);
  

  //_suNf_double_multiply_stream((chi5+i), (chi6+i), ((up+i)), ((psi+i)), ((psi2+i)));
  double_MVM_non_macro_stream((chi5+i), (chi6+i), ((up+i)), ((psi+i)), ((psi2+i)));
  // double_MVM_non_macro_stream(chi, chi2, up, psi, psi2);
  
  // _suNf_double_multiply_stream(psi, psi2, up, chi, chi2);

  // psi->c[0] *= 0.001;
  // psi->c[1] *= 0.001;
  // psi->c[2] *= 0.001;

  // psi2->c[0] *= 0.001;
  // psi2->c[1] *= 0.001;
  // psi2->c[2] *= 0.001;
 }

  t2=clock();
# ifdef _OPENMP
    wt2=omp_get_wtime();
# endif
  gettimeofday(&end, 0);
  timeval_subtract(&etime, &end, &start);

    lprintf("DOUBLE_MVM_MACRO_STREAM",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
# ifdef _OPENMP
    lprintf("DOUBLE_MVM_MACRO_STREAM",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
# endif
    lprintf("DOUBLE_MVM_MACRO_STREAM",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);





  // printf("chi[0] = %.1fre\n", _complex_re(chi->c[0]));
  // printf("chi[0] = %.1fim\n", _complex_im(chi->c[0]));
  // printf("chi[1] = %.1fre\n", _complex_re(chi->c[1]));
  // printf("chi[1] = %.1fim\n", _complex_im(chi->c[1]));
  // printf("chi[2] = %.1fre\n", _complex_re(chi->c[2]));
  // printf("chi[2] = %.1fim\n", _complex_im(chi->c[2]));

  // printf("chi2[0] = %.1fre\n", _complex_re(chi2->c[0]));
  // printf("chi2[0] = %.1fim\n", _complex_im(chi2->c[0]));
  // printf("chi2[1] = %.1fre\n", _complex_re(chi2->c[1]));
  // printf("chi2[1] = %.1fim\n", _complex_im(chi2->c[1]));
  // printf("chi2[2] = %.1fre\n", _complex_re(chi2->c[2]));
  // printf("chi2[2] = %.1fim\n", _complex_im(chi2->c[2]));


  // printf("chi5[0] = %.1fre\n", _complex_re(chi5->c[0]));
  // printf("chi5[0] = %.1fim\n", _complex_im(chi5->c[0]));
  // printf("chi5[1] = %.1fre\n", _complex_re(chi5->c[1]));
  // printf("chi5[1] = %.1fim\n", _complex_im(chi5->c[1]));
  // printf("chi5[2] = %.1fre\n", _complex_re(chi5->c[2]));
  // printf("chi5[2] = %.1fim\n", _complex_im(chi5->c[2]));

  // printf("chi6[0] = %.1fre\n", _complex_re(chi6->c[0]));
  // printf("chi6[0] = %.1fim\n", _complex_im(chi6->c[0]));
  // printf("chi6[1] = %.1fre\n", _complex_re(chi6->c[1]));
  // printf("chi6[1] = %.1fim\n", _complex_im(chi6->c[1]));
  // printf("chi6[2] = %.1fre\n", _complex_re(chi6->c[2]));
  // printf("chi6[2] = %.1fim\n", _complex_im(chi6->c[2]));
 

  /*Initialising the variables*/
  // my_init(psi, psi2, up, n);
  // my_init(&psi, &psi2, up, n);

  /******************************************************************************
   * Checking the results are identical: double_MVM() == _suNf_theta_T_multiply()
   ******************************************************************************/
  
  /* Test 01: _suNf_single_MVM == _suNf_theta_T_multiply */
  _suNf_single_MVM(chi, up, psi);
  // single_MVM(chi, up, psi);
  _suNf_theta_T_multiply(chi3, (*up), (*psi));

  for (i = 0; i < 3; i++)
{
    res1 = _complex_re(chi->c[i]);
    res2 = _complex_im(chi->c[i]); 
    res5 = _complex_re(chi3.c[i]); 
    res6 = _complex_im(chi3.c[i]); 

  error((fabs((res1 - res5) / res1) > 1.e-15) || (fabs((res2 - res6) / res2) > 1.e-15), 1, "First Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==> Test Failed!");

  printf("Single_MVM PASS!!\n");
  res1 = .0;
  res2 = .0;
  res5 = .0;
  res6 = .0;
}
printf("\n");

/* Test 02: _suNf_single_MVM_inverse == _suNf_theta_T_multiply */
_suNf_single_MVM_inverse(chi, up, psi);
// single_MVM_inverse(chi, up, psi);
_suNf_theta_T_inverse_multiply(chi3, (*up), (*psi));

  for (i = 0; i < 3; i++)
{
  res1 = _complex_re(chi->c[i]);
  res2 = _complex_im(chi->c[i]); 
  res5 = _complex_re(chi3.c[i]); 
  res6 = _complex_im(chi3.c[i]); 

  error((fabs((res1 - res5) / res1) > 1.e-15) || (fabs((res2 - res6) / res2) > 1.e-15), 1, "First Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==> Test Failed!");

  printf("Single_MVM_Inverse PASS!!\n");
  res1 = .0;
  res2 = .0;
  res5 = .0;
  res6 = .0;
}
printf("\n");


/* Test 03: _suNf_double_multiply == _suNf_theta_T_multiply */
  //_suNf_double_multiply(chi, chi2, up, psi, psi2);
  _suNf_double_multiply_stream(chi, chi2, up, psi, psi2);
  _suNf_theta_T_multiply(chi3, (*up), (*psi));
  _suNf_theta_T_multiply(chi4, (*up), (*psi2));

  for (i = 0; i < 3; i++)
{
    res1 = _complex_re(chi->c[i]);
    res2 = _complex_im(chi->c[i]); 
    res3 = _complex_re(chi2->c[i]); 
    res4 = _complex_im(chi2->c[i]); 

    res5 = _complex_re(chi3.c[i]); 
    res6 = _complex_im(chi3.c[i]); 
    res7 = _complex_re(chi4.c[i]); 
    res7 = _complex_re(chi4.c[i]); 
    res7 = _complex_re(chi4.c[i]); 
    res8 = _complex_im(chi4.c[i]); 
    res8 = _complex_im(chi4.c[i]); 
    res8 = _complex_im(chi4.c[i]); 

  error((fabs((res1 - res5) / res1) > 1.e-15) || (fabs((res2 - res6) / res2) > 1.e-15), 1, "First Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==> Test Failed!");
  error((fabs((res3 - res7) / res3) > 1.e-15) || (fabs((res4 - res8) / res4) > 1.e-15), 1, "Second Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==>Test Failed!");

  printf("Double_MVM Stream PASS!!\n");
  res1 = .0;
  res2 = .0;
  res3 = .0;
  res4 = .0;

  res5 = .0;
  res6 = .0;
  res7 = .0;
  res8 = .0;
}
printf("\n");


/* Test 04:_suNf_double_inverse_multiply == _suNf_theta_T_inverse_multiply */
  _suNf_double_inverse_multiply(chi5, chi6, up, psi, psi2);
  _suNf_theta_T_inverse_multiply(chi3, (*up), (*psi));
  _suNf_theta_T_inverse_multiply(chi4, (*up), (*psi2));

  for (i = 0; i < 3; i++)
 {
    res9 = _complex_re(chi5->c[i]);
    res10 = _complex_im(chi5->c[i]); 
    res11 = _complex_re(chi6->c[i]); 
    res12 = _complex_im(chi6->c[i]); 

    res3 = _complex_re(chi3.c[i]); 
    res4 = _complex_im(chi3.c[i]); 
    res7 = _complex_re(chi4.c[i]); 
    res8 = _complex_im(chi4.c[i]); 

  error((fabs((res9 - res3) / res9) > 1.e-15) || (fabs((res10 - res4) / res10) > 1.e-15), 1, "First Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==> Test Failed!");
  error((fabs((res11 - res7) / res11) > 1.e-15) || (fabs((res12 - res8) / res12) > 1.e-15), 1, "Second Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==>Test Failed!");

  printf("Double_MVM_Inverse PASS!!\n");

  res3 = .0;
  res4 = .0;
  res7 = .0;
  res8 = .0;
  res9 = .0;
  res10 = .0;
  res11 = .0;
  res12 = .0;
 }
printf("\n");

  /* Vector initialized: 6 doubles */
  // psi->c[0] = (1.0 + 4.0 * I);
  // psi->c[1] = (2.0 + 5.0 * I);
  // psi->c[2] = (3.0 + 6.0 * I);

  // psi2->c[0] = (1.0 + 2.0 * I);
  // psi2->c[1] = (3.0 + 4.0 * I);
  // psi2->c[2] = (2.0 + 1.0 * I);

  /* Matrix (3x3) initialized: 18 doubles */
  // up->c[0] = (1.0 + 2.0 * I);
  // up->c[1] = (3.0 + 4.0 * I);
  // up->c[2] = (5.0 + 6.0 * I);
  // up->c[3] = (2.0 + 1.0 * I);
  // up->c[4] = (3.0 + 2.0 * I);
  // up->c[5] = (1.0 + 3.0 * I);
  // up->c[6] = (4.0 + 5.0 * I);
  // up->c[7] = (6.0 + 4.0 * I);
  // up->c[8] = (5.0 + 6.0 * I);


// _suNf_theta_T_multiply(chi3, (*up), (*psi));
// _suNf_theta_T_multiply(chi4, (*up), (*psi2));

//   for (i = 0; i < 2; i++)
// {
// res1 = _complex_re(chi->c[i]);
//     res2 = _complex_im(chi->c[i]); 
//     res3 = _complex_re(chi2->c[i]); 
//     res4 = _complex_im(chi2->c[i]); 

//     res5 = _complex_re(chi3.c[i]); 
//     res6 = _complex_im(chi3.c[i]); 
//     res7 = _complex_re(chi4.c[i]); 
//     res7 = _complex_re(chi4.c[i]); 
//     res7 = _complex_re(chi4.c[i]); 
//     res8 = _complex_im(chi4.c[i]); 
//     res8 = _complex_im(chi4.c[i]); 
//     res8 = _complex_im(chi4.c[i]); 

//   error((fabs((res1 - res5) / res1) > 1.e-15) || (fabs((res2 - res6) / res2) > 1.e-15), 1, "First Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==> Test Failed!");
//   error((fabs((res3 - res7) / res3) > 1.e-15) || (fabs((res4 - res8) / res4) > 1.e-15), 1, "Second Vector in double_MVM_nonMacro and theta_T_multiply", " are not equal ==>Test Failed!");

//   printf("Double_MVM_2x2 PASS!!\n");
//   res1 = .0;
//   res2 = .0;
//   res3 = .0;
//   res4 = .0;

//   res5 = .0;
//   res6 = .0;
//   res7 = .0;
//   res8 = .0;
// }
// printf("\n");

// printf("single_MVM_2x2 MACRO\n");
// _suNf_single_MVM_2x2(chi, up, psi);
// printf("chi[0] = %.1fre\n", _complex_re(chi->c[0]));
// printf("chi[0] = %.1fim\n", _complex_im(chi->c[0]));
// printf("chi[1] = %.1fre\n", _complex_re(chi->c[1]));
// printf("chi[1] = %.1fim\n\n", _complex_im(chi->c[1]));

// printf("single_MVM_inverse_2x2 MACRO\n");
// _suNf_single_MVM_inverse_2x2(chi, up, psi);
// printf("chi[0] = %.1fre\n", _complex_re(chi->c[0]));
// printf("chi[0] = %.1fim\n", _complex_im(chi->c[0]));
// printf("chi[1] = %.1fre\n", _complex_re(chi->c[1]));
// printf("chi[1] = %.1fim\n\n", _complex_im(chi->c[1]));

// _suNf_double_MVM_2x2(chi, chi2, up, psi, psi2);
// printf("MVM_2x2 MACRO\n");
// printf("chi[0] = %.1fre\n", _complex_re(chi->c[0]));
// printf("chi[0] = %.1fim\n", _complex_im(chi->c[0]));
// printf("chi[1] = %.1fre\n", _complex_re(chi->c[1]));
// printf("chi[1] = %.1fim\n", _complex_im(chi->c[1]));
// printf("chi2[0] = %.1fre\n", _complex_re(chi2->c[0]));
// printf("chi2[0] = %.1fim\n", _complex_im(chi2->c[0]));
// printf("chi2[1] = %.1fre\n", _complex_re(chi2->c[1]));
// printf("chi2[1] = %.1fim\n\n", _complex_im(chi2->c[1]));

// _suNf_double_MVM_inverse_2x2(chi, chi2, up, psi, psi2);
// printf("MVM Inverse MACRO\n");
// printf("chi[0] = %.1fre\n", _complex_re(chi->c[0]));
// printf("chi[0] = %.1fim\n", _complex_im(chi->c[0]));
// printf("chi[1] = %.1fre\n", _complex_re(chi->c[1]));
// printf("chi[1] = %.1fim\n", _complex_im(chi->c[1]));
// printf("chi2[0] = %.1fre\n", _complex_re(chi2->c[0]));
// printf("chi2[0] = %.1fim\n", _complex_im(chi2->c[0]));
// printf("chi2[1] = %.1fre\n", _complex_re(chi2->c[1]));
// printf("chi2[1] = %.1fim\n", _complex_im(chi2->c[1]));




  /*****************************************************************
   * Testing Performance: double_MVM() vs _suNf_theta_T_multiply()
   *****************************************************************/
  /* Macro version of new routine */
//  psi_copy = psi;
//  psi2_copy = psi2;

 for (i = 0; i < n_warmup; ++i)
 {
  // double_MVM_macro(chi, chi2, up, psi, psi2);
  // double_MVM_macro(psi, psi2, up, chi, chi2);

  //  single_MVM(chi, up, psi);
  //  single_MVM(psi, up, chi);

  // psi->c[0] *= 0.001;
  // psi->c[1] *= 0.001;
  // psi->c[2] *= 0.001;

  // psi2->c[0] *= 0.001;
  // psi2->c[1] *= 0.001;
  // psi2->c[2] *= 0.001;
 }

//  psi_copy = psi;
//  psi2_copy = psi2;

  gettimeofday(&start, 0);
# ifdef _OPENMP
    wt1=omp_get_wtime();
# endif
  t1=clock();

 for (i = 0; i < n_times; ++i)
 {
  // CALLGRIND_START_INSTRUMENTATION;
  // CALLGRIND_TOGGLE_COLLECT;
  // double_MVM_macro(chi, chi2, up, psi, psi2);
  // CALLGRIND_TOGGLE_COLLECT;
  // CALLGRIND_STOP_INSTRUMENTATION;
  // double_MVM_macro(psi, psi2, up, chi, chi2);

  // single_MVM(chi, up, psi);
  // single_MVM(psi, up, chi);

  // psi->c[0] *= 0.001;
  // psi->c[1] *= 0.001;
  // psi->c[2] *= 0.001;

  // psi2->c[0] *= 0.001;
  // psi2->c[1] *= 0.001;
  // psi2->c[2] *= 0.001;
 }

//   t2=clock();
// # ifdef _OPENMP
//     wt2=omp_get_wtime();
// # endif
//   gettimeofday(&end, 0);
//   timeval_subtract(&etime, &end, &start);

//     lprintf("MVM_MACRO",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
// # ifdef _OPENMP
//     lprintf("MVM_MACRO",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
// # endif
//     lprintf("MVM_MACRO",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);


/* Non-Macro version of new routine */
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

//     lprintf("MVM_NON-MACRO",0,"CPU time (clock)                = %12.4g sec\n", (t2-t1)/1000000.0 );
// # ifdef _OPENMP
//     lprintf("MVM_NON-MACRO",0,"wall clock time (omp_get_wtime) = %12.4g sec\n", wt2-wt1 );
// # endif
//     lprintf("MVM_NON_MACRO",0,"wall clock time (gettimeofday)  = %12.4g sec\n\n", (etime.tv_sec) + (etime.tv_usec)*1e-6);



/* HiRep Macro function */
//  psi_copy = psi;
//  psi2_copy = psi2;
 for (i = 0; i < n_warmup; ++i)
 {
  // _suNf_theta_T_multiply((*chi), (*up), (*psi));
  //_suNf_theta_T_multiply((*chi2), (*up), (*psi2));

  // _suNf_theta_T_multiply((*psi), (*up), (*chi));
 // _suNf_theta_T_multiply((*psi2), (*up), (*chi2));

  // psi->c[0] *= 0.001;
  // psi->c[1] *= 0.001;
  // psi->c[2] *= 0.001;

  // psi2->c[0] *= 0.001;
  // psi2->c[1] *= 0.001;
  // psi2->c[2] *= 0.001;
 }

//  psi_copy = psi;
//  psi2_copy = psi2;

  gettimeofday(&start, 0);
# ifdef _OPENMP
    wt1=omp_get_wtime();
# endif
  t1=clock();
 for (i = 0; i < n_times; ++i)
 {
  // CALLGRIND_START_INSTRUMENTATION;
  // CALLGRIND_TOGGLE_COLLECT;
  // _suNf_theta_T_multiply((*chi), (*up), (*psi));
  //_suNf_theta_T_multiply((*chi2), (*up), (*psi2));
  // CALLGRIND_TOGGLE_COLLECT;
  // CALLGRIND_STOP_INSTRUMENTATION;

  // _suNf_theta_T_multiply((*psi), (*up), (*chi));
  //_suNf_theta_T_multiply((*psi2), (*up), (*chi2));

  // psi->c[0] *= 0.001;
  // psi->c[1] *= 0.001;
  // psi->c[2] *= 0.001;

  // psi2->c[0] *= 0.001;
  // psi2->c[1] *= 0.001;
  // psi2->c[2] *= 0.001;
 }

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


 afree(up);
 afree(psi);
 afree(psi2);
 afree(chi);
 afree(chi2);
 afree(chi5);
 afree(chi6);


//  _mm_free(up);
//  _mm_free(psi);
//  _mm_free(psi2);
//  _mm_free(chi);
//  _mm_free(chi2);

  return 0;
}

/* Matrix up multiplied by the vector psi and stored the product (vector) to chi */
void single_MVM(suNf_vector *chi, const suNf *up, const suNf_vector *psi)
{
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, psi2, psi3, psi_3rd;
__m128d chi_3rd;

  /*up and psi are loaded from memory to register temp1, temp8, temp9,temp6*/
  /* Loading first row of 3 complexes of 3x3 matrix */
 temp1 = _mm256_loadu_pd((double *)up);/* [0],[1],[2],[3] */
 temp2 = _mm256_shuffle_pd(temp1, temp1, 0b0000);/* re re re re */
 temp3 = _mm256_shuffle_pd(temp1, temp1, 0b1111);/* im im im im */
 temp8 = _mm256_loadu_pd((double *)up + 2);/* [2],[3],[4],[5] */

 /* Loading second row of 3 complexes of 3x3 matrix */
 temp1 = _mm256_loadu_pd((double *)up + 6);/* [6],[7],[8],[9] */
 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0000);/* re re re re */
 temp5 = _mm256_shuffle_pd(temp1, temp1, 0b1111);/* im im im im */
 temp9 = _mm256_loadu_pd((double *)up + 8);/* [8],[9],[10],[11] */

 /* Loading third row of 2 complexes of 3x3 matrix */
 temp1 = _mm256_load_pd((double *)up + 12);/* [12],[13],[14],[15] */
 temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000);/* re re re re */
 temp7 = _mm256_shuffle_pd(temp1, temp1, 0b1111);/* im im im im */

 /* Loading 3 complexes of psi vector and shuffling */
 temp1 = _mm256_loadu_pd((double *)psi);
 psi2 = _mm256_shuffle_pd(temp1, temp1, 0b0101);/* im re im re */
 psi_3rd = _mm256_loadu_pd((double *)psi + 2);

 /******* 1st and 2nd row*col Computations*******/
 /* =======First set of computation (Row 1): 2x2========*/   
 temp3 = _mm256_mul_pd(temp3, psi2);     
 temp2 = _mm256_fmaddsub_pd(temp2, temp1, temp3);

 /* =======Second set of computation (Row 2): 2x2========*/  
 temp5 = _mm256_mul_pd(temp5, psi2);     
 temp4 = _mm256_fmaddsub_pd(temp4, temp1, temp5);

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

 temp13 = _mm256_mul_pd(temp13, psi3);             
 temp10 = _mm256_fmaddsub_pd(temp10, temp4, temp13);

 /* Adding 2x2 results to leftover results */
 temp2 = _mm256_add_pd(temp2, temp10);

 /* 3rd row*col computations*/           
 temp7 = _mm256_mul_pd(temp7, psi2);               
 temp6 = _mm256_fmaddsub_pd(temp6, temp1, temp7);

 temp10 = _mm256_permute2f128_pd(temp6, temp6, 1); 
 temp1 = _mm256_add_pd(temp10, temp6);

 /* =======Leftover element(3rd) row 3 and col ======= */
 temp6 = _mm256_loadu_pd((double *)up + 14);/*[14],[15],[16],[17] */
 temp10 = _mm256_permute2f128_pd(temp6, temp6, 1);/* H1 becomes L1: [16][17][14][15]  */
 temp10 = _mm256_blend_pd(temp10, temp6, 12);/*[16][17][16][17] */
 temp11 = _mm256_shuffle_pd(temp10, temp10, 0b0000);/* re re re re */
 temp12 = _mm256_shuffle_pd(temp10, temp10, 0b1111);/* im im im im */ 

 temp12 = _mm256_mul_pd(temp12, psi3);              
 temp11 = _mm256_fmaddsub_pd(temp11, temp4, temp12);

 /* Adding 3rd row*col results to leftover results */
 temp11 = _mm256_add_pd(temp1, temp11);
 chi_3rd = _mm256_castpd256_pd128(temp11); 

 /* Storing Results */
 _mm256_store_pd((double *)chi, temp2);
 _mm_store_pd((double *)chi + 4, chi_3rd);
}



/* Matrix up multiplied by the vector psi and psi2 and stored the product (vectors) to chi and chi2 */
void double_MVM_non_macro(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
  __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;
  __m128d chi_3rd, chi2_3rd;

  /*===>Start of loading variables: up, psi, psi2<===*/
  /* Loading first row (2 complexes) of 3x3 matrix */
  temp1 = _mm256_loadu_pd((double *)up); /* [0][1][2][3]*/
  temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/
  temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/ 

  /* Loading second row (2 complexes) of 3x3 matrix */
  temp2 = _mm256_loadu_pd((double *)up + 6); /* [6][7][8][9]*/                                
  temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real) */  
  temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag imag imag imag)*/

  /* Loading third row (2 complexes) of 3x3 matrix */
  temp3 = _mm256_loadu_pd((double *)up + 12); /*[12][13][14][15] */                            
  temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /*(real real real real) */
  temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /*(imag imag imag imag)*/

  /* Loading first column (2 complexes of psi vector) and shuffling */
  temp4 = _mm256_loadu_pd((double *)psi);      
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
  temp11 = _mm256_add_pd(temp13, temp11);/* L1+H1, L2+H2 */       

  /* =======Leftover element(3rd) row 1 & 2 and col ======= */
  temp12 = _mm256_loadu_pd((double *)up + 2); /* [2][3][4][5] */
  temp12 = _mm256_permute2f128_pd(temp12, temp12, 1); /* [4][5][2][3] */
  temp13 = _mm256_loadu_pd((double *)up + 8); /* [8][9][10][11] */
  temp12 = _mm256_blend_pd(temp12, temp13, 12); /* [H1 H2]:[4][5][10][11] */  

  temp13 = _mm256_loadu_pd((double *)psi + 2);                                                  
  temp16 = _mm256_permute2f128_pd(temp13, temp13, 1);                                    
  temp13 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/

  temp15 = _mm256_shuffle_pd(temp12, temp12, 0b0000); /* re re re re */
  temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);/* im im im im */
  temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);/* im re im re */
          
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
  temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1*/

  /* A vector of high lane of temp1 [H1] and of temp7 [H2] */
  temp1 = _mm256_blend_pd(temp1, temp7, 12); /*[H1 H2]*/
  temp1 = _mm256_add_pd(temp13, temp1);/* L1+H1, L2+H2 */

  /* =======Leftover element(3rd) row 1 & 2 and col ======= */
  temp13 = _mm256_loadu_pd((double *)psi2 + 2);                                             
  temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);                                      
  temp14 = _mm256_blend_pd(temp14, temp13, 12); /*[H1 H2]*/ 

  temp17 = _mm256_shuffle_pd(temp14, temp14, 0b0101);/*im re im re*/
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
  temp3 = _mm256_add_pd(temp5, temp3); /* L1+H1, L2+H2 */

  /* =======Leftover element(3rd) row 3 and col ======= */
  temp9 = _mm256_loadu_pd((double *)up + 14);/*[14],[15],[16],[17] */
  temp10 = _mm256_permute2f128_pd(temp9, temp9, 1); /* H1 becomes L1: [16][17][14][15]  */
  temp9 = _mm256_blend_pd(temp10, temp9, 12);/*[16][17][16][17]*/
  temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);/*re re re re*/
  temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);/*im im im im*/

  temp9 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/ 
  temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);/*im re im re */                                              
  
  temp2 = _mm256_mul_pd(temp12, temp13);  
  temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);

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




/* Matrix up multiplied by the vector psi and psi2 and stored the product (vectors) to chi and chi2 */
void double_MVM_non_macro_stream(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
  __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;
  __m128d chi_3rd, chi2_3rd;

  /*===>Start of loading variables: up, psi, psi2<===*/
  /* Loading first row (2 complexes) of 3x3 matrix */
  temp1 = _mm256_loadu_pd((double *)up); /* [0][1][2][3]*/
  temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/
  temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/ 

  /* Loading second row (2 complexes) of 3x3 matrix */
  temp2 = _mm256_loadu_pd((double *)up + 6); /* [6][7][8][9]*/                                
  temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real) */  
  temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag imag imag imag)*/

  /* Loading third row (2 complexes) of 3x3 matrix */
  temp3 = _mm256_loadu_pd((double *)up + 12); /*[12][13][14][15] */                            
  temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /*(real real real real) */
  temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /*(imag imag imag imag)*/

  /* Loading first column (2 complexes of psi vector) and shuffling */
  temp4 = _mm256_loadu_pd((double *)psi);      
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
  temp11 = _mm256_add_pd(temp13, temp11);/* L1+H1, L2+H2 */       

  /* =======Leftover element(3rd) row 1 & 2 and col ======= */
  temp12 = _mm256_loadu_pd((double *)up + 2); /* [2][3][4][5] */
  temp12 = _mm256_permute2f128_pd(temp12, temp12, 1); /* [4][5][2][3] */
  temp13 = _mm256_loadu_pd((double *)up + 8); /* [8][9][10][11] */
  temp12 = _mm256_blend_pd(temp12, temp13, 12); /* [H1 H2]:[4][5][10][11] */  

  temp13 = _mm256_loadu_pd((double *)psi + 2);                                                  
  temp16 = _mm256_permute2f128_pd(temp13, temp13, 1);                                    
  temp13 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/

  temp15 = _mm256_shuffle_pd(temp12, temp12, 0b0000); /* re re re re */
  temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);/* im im im im */
  temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);/* im re im re */
          
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
  temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1*/

  /* A vector of high lane of temp1 [H1] and of temp7 [H2] */
  temp1 = _mm256_blend_pd(temp1, temp7, 12); /*[H1 H2]*/
  temp1 = _mm256_add_pd(temp13, temp1);/* L1+H1, L2+H2 */

  /* =======Leftover element(3rd) row 1 & 2 and col ======= */
  temp13 = _mm256_loadu_pd((double *)psi2 + 2);                                             
  temp14 = _mm256_permute2f128_pd(temp13, temp13, 1);                                      
  temp14 = _mm256_blend_pd(temp14, temp13, 12); /*[H1 H2]*/ 

  temp17 = _mm256_shuffle_pd(temp14, temp14, 0b0101);/*im re im re*/
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
  temp3 = _mm256_add_pd(temp5, temp3); /* L1+H1, L2+H2 */

  /* =======Leftover element(3rd) row 3 and col ======= */
  temp9 = _mm256_loadu_pd((double *)up + 14);/*[14],[15],[16],[17] */
  temp10 = _mm256_permute2f128_pd(temp9, temp9, 1); /* H1 becomes L1: [16][17][14][15]  */
  temp9 = _mm256_blend_pd(temp10, temp9, 12);/*[16][17][16][17]*/
  temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);/*re re re re*/
  temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);/*im im im im*/

  temp9 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/ 
  temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);/*im re im re */                                              
  
  temp2 = _mm256_mul_pd(temp12, temp13);  
  temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);

  temp2 = _mm256_add_pd(temp3, temp7); /*chi[2] chi2[2]*/ 

  chi_3rd = _mm256_castpd256_pd128(temp2);/* chi[2] */
  chi2_3rd = _mm256_extractf128_pd(temp2, 1);/* chi2[2] */

  /* ===========(Pair 3) End: Matrix 1&2 ============*/

  /*Storing Results*/
 _mm256_stream_pd((double *)chi, temp11); 
 _mm_stream_pd((double *)chi + 4, chi_3rd);

 _mm256_stream_pd((double *)chi2, temp1);
 _mm_stream_pd((double *)chi2 + 4, chi2_3rd);
}






void double_MVM_non_macro_test(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;
  __m128d chi_3rd, chi2_3rd;

  /*===>Start of loading variables: up, psi, psi2<===*/
  /* Loading first row (2 complexes) of 3x3 matrix */
  temp1 = _mm256_loadu_pd((double *)up); /* [0][1][2][3]*/
  temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/
  temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/ 

  /* Loading second row (2 complexes) of 3x3 matrix */
  temp2 = _mm256_loadu_pd((double *)up + 6); /* [6][7][8][9]*/                                
  temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real) */  
  temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag imag imag imag)*/

  /* Loading third row (2 complexes) of 3x3 matrix */
  temp3 = _mm256_loadu_pd((double *)up + 12); /*[12][13][14][15] */                            
  temp8 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /*(real real real real) */
  temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /*(imag imag imag imag)*/

  /* Loading first column (2 complexes of psi vector) and shuffling */
  temp4 = _mm256_loadu_pd((double *)psi);      
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
  temp11 = _mm256_add_pd(temp13, temp11);/* L1+H1, L2+H2 */       

  /* =======Leftover element(3rd) row 1 & 2 and col ======= */
  temp12 = _mm256_loadu_pd((double *)up + 2); /* [2][3][4][5] */
  temp12 = _mm256_permute2f128_pd(temp12, temp12, 1); /* [4][5][2][3] */
  temp13 = _mm256_loadu_pd((double *)up + 8); /* [8][9][10][11] */
  temp12 = _mm256_blend_pd(temp12, temp13, 12); /* [H1 H2]:[4][5][10][11] */  

  temp13 = _mm256_loadu_pd((double *)psi + 2);                                                  
  temp16 = _mm256_permute2f128_pd(temp13, temp13, 1);                                    
  temp13 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/

  temp15 = _mm256_shuffle_pd(temp12, temp12, 0b0000); /* re re re re */
  temp12 = _mm256_shuffle_pd(temp12, temp12, 0b1111);/* im im im im */
  temp14 = _mm256_shuffle_pd(temp13, temp13, 0b0101);/* im re im re */
          
  temp14 = _mm256_mul_pd(temp12, temp14);                 
  temp13 = _mm256_fmaddsub_pd(temp15, temp13, temp14);

  /* Addition: 2x2 results + leftover */
  temp11 = _mm256_add_pd(temp11, temp13); 
  /* ===========(Pair 1) End: Matrix 1 ============*/

  /* ===========(Pair 2) Start: Matrix 2 ============*/

  /* Loading first row (2 complexes) of 3x3 matrix */
  temp1 = _mm256_loadu_pd((double *)up); /* [0][1][2][3]*/
  temp6 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/
  temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/ 

  /* Loading second row (2 complexes) of 3x3 matrix */
  temp2 = _mm256_loadu_pd((double *)up + 6); /* [6][7][8][9]*/                                
  temp7 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real) */  
  temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag imag imag imag)*/

  /*First row*col computation:2x2*/
  temp1 = _mm256_mul_pd(temp1, temp10); /*(im*im)(im*re)(re*im)(im*re)*/ 
  temp1 = _mm256_fmaddsub_pd(temp6, temp5, temp1);

  /*Second row*col computation:2x2*/
  temp2 = _mm256_mul_pd(temp2, temp10); /* (im*im)(im*re)(re*im)(im*re)*/ 
  temp7 = _mm256_fmaddsub_pd(temp7, temp5, temp2);

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

  temp17 = _mm256_shuffle_pd(temp14, temp14, 0b0101);/*im re im re*/
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
  temp3 = _mm256_add_pd(temp5, temp3); /* L1+H1, L2+H2 */

  /* =======Leftover element(3rd) row 3 and col ======= */
  temp9 = _mm256_loadu_pd((double *)up + 14);/*[14],[15],[16],[17] */
  temp10 = _mm256_permute2f128_pd(temp9, temp9, 1); /* H1 becomes L1: [16][17][14][15]  */
  temp9 = _mm256_blend_pd(temp10, temp9, 12);/*[16][17][16][17]*/
  temp10 = _mm256_shuffle_pd(temp9, temp9, 0b0000);/*re re re re*/
  temp12 = _mm256_shuffle_pd(temp9, temp9, 0b1111);/*im im im im*/

  temp9 = _mm256_blend_pd(temp16, temp13, 12); /*[H1 H2]*/ 
  temp13 = _mm256_shuffle_pd(temp9, temp9, 0b0101);/*im re im re */                                              
  
  temp2 = _mm256_mul_pd(temp12, temp13);  
  temp7 = _mm256_fmaddsub_pd(temp10, temp9, temp2);

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
const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);
__m128d chi_3rd;

/*===>Start of loading variables: um, psi<===*/
temp1 = _mm256_loadu_pd((double *)um);/* loading um[0]um[1]*/
temp1 = _mm256_mul_pd(temp1, simd_mask);

temp2 = _mm256_loadu_pd((double *)um + 6); /*loading um[3]um[4]*/
temp2 = _mm256_mul_pd(temp2, simd_mask);
/****************************************************************
 * col1: working vector temp3 - lower lane of temp2 [L1] and temp1 [L2]
 ****************************************************************/
temp3 = _mm256_permute2f128_pd(temp2, temp1, 2); /*[L1 L2] um[0] um[3]*/ // NEED TO CONJUGATE...
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1);                         /*swapping L2 and H2 of temp1*/

/*******************************************************************************
 * col2: working temp1 vector - high lane of temp1 [H1] and temp2 [H2]
 ******************************************************************************/
temp1 = _mm256_blend_pd(temp1, temp2, 12); /*[H1 H2] um[1] um[4]*/ // NEED TO CONJUGATE...

/* now cols temp3 and temp1 need to be reshuffled*/
temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /* im re im re */
temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101); /* im re im re */

/* Row: Loading 1st 2 complexes of psi vector and shuffling */
temp5 = _mm256_loadu_pd((double *)psi);
/* Need to shuffle as before */
temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0000); /* Row 1: real real real real*/
temp5 = _mm256_shuffle_pd(temp5, temp5, 0b1111); /* Row 2: imag imag imag imag*/
/*===>End of loading variables: up, psi<====*/

/***************************************
 *    Start of MVM Computations: 2x2
 ***************************************/

/*First row*col computation:2x2*/
temp2 = _mm256_mul_pd(temp5, temp2); /*(im*im) (im*re) (im*im) (im*re)*/
temp2 = _mm256_fmaddsub_pd(temp6, temp3, temp2);

/*Second row*col computation:2x2*/
temp3 = _mm256_mul_pd(temp5, temp4); /*(im*im)(im*re)(im*im)(im*re)*/
temp1 = _mm256_fmaddsub_pd(temp6, temp1, temp3);

/* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results(2x2)========== */
/* A vector of lower lane of temp1 [L1] and temp2 [L2]*/
temp3 = _mm256_permute2f128_pd(temp1, temp2, 2); /*[L1 L2]*/
temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); /*swapping L2 and H2 of temp1*/

/* A vector of high lane of temp [H1] and of addsub_res1 [H2] */
temp1 = _mm256_blend_pd(temp2, temp1, 12); /*[H1 H2]*/
temp1 = _mm256_add_pd(temp3, temp1);       /* L1+H1, L2+H2 */

/* =======Leftover element(3rd) row 1 & 2 and col ======= */
/* 3rd element of row 1 and 2  */
temp3 = _mm256_loadu_pd((double *)psi + 2);
temp2 = _mm256_permute2f128_pd(temp3, temp3, 1);
temp2 = _mm256_blend_pd(temp2, temp3, 12); /*[H1 H2]*/

temp3 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /* Row 1:(re re re re)*/
temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /* Row 2:(im,im,im,im)*/

/* 3rd element of col 1 and 2 */
temp4 = _mm256_loadu_pd((double *)um + 12);
temp4 = _mm256_mul_pd(temp4, simd_mask);
temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101); /* Col: im re im re*/

temp7 = _mm256_mul_pd(temp2, temp7);
temp4 = _mm256_fmaddsub_pd(temp3, temp4, temp7);

/* Adding 2x2 results to leftover results */
temp1 = _mm256_add_pd(temp1, temp4);

/* 3rd row*col computations: Row reused from above*/

/* Loading and shuffling 3rd element of col 1 and 2*/
temp4 = _mm256_loadu_pd((double *)um + 2); /*um[1]um[2]*/
temp4 = _mm256_mul_pd(temp4, simd_mask);
temp7 = _mm256_loadu_pd((double *)um + 8); /*um[4]um[5]*/
temp7 = _mm256_mul_pd(temp7, simd_mask);
temp4 = _mm256_permute2f128_pd(temp4, temp4, 1);
temp4 = _mm256_blend_pd(temp4, temp7, 12);       /*[H1 H2] um[2] um[5]*/
temp7 = _mm256_shuffle_pd(temp4, temp4, 0b0101); /* im re im re */

temp5 = _mm256_mul_pd(temp5, temp7); /*(im*im)(im*re)(im*im)(im*re)*/
temp4 = _mm256_fmaddsub_pd(temp6, temp4, temp5);

temp5 = _mm256_permute2f128_pd(temp4, temp4, 1);
temp5 = _mm256_add_pd(temp5, temp4);

/* =======Leftover element(3rd) row 3 and col ======= */
/* Loading third set of 3 complexes of 3x3 matrix */
temp4 = _mm256_loadu_pd((double *)um + 14); /*um[7]um[8]*/
temp4 = _mm256_mul_pd(temp4, simd_mask);
temp6 = _mm256_permute2f128_pd(temp4, temp4, 1);
temp4 = _mm256_blend_pd(temp6, temp4, 12);
temp6 = _mm256_shuffle_pd(temp4, temp4, 0b0101);

temp2 = _mm256_mul_pd(temp2, temp6);
temp2 = _mm256_fmaddsub_pd(temp3, temp4, temp2);

temp2 = _mm256_add_pd(temp5, temp2);     /*chi[2] chi[2]*/
chi_3rd = _mm256_castpd256_pd128(temp2); /*chi[2]*/

/* Storing Results */
_mm256_store_pd((double *)chi, temp1);
_mm_store_pd((double *)chi + 4, chi_3rd);
}



void double_MVM_inverse(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2)
{
__m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;
const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);
__m128d chi_3rd, chi2_3rd;

/*===>Start loading variables: um, psi, psi2<===*/
temp1 = _mm256_loadu_pd((double *)um); /* loading um[0]um[1]*/
temp1 = _mm256_mul_pd(temp1, simd_mask);
temp2 = _mm256_loadu_pd((double *)um + 6); /*loading um[3]um[4]*/
temp2 = _mm256_mul_pd(temp2, simd_mask);

/********************************************************************
  * Col1: working vector temp3 - lower lane of temp2 [L1] and temp1 [L2]
* ******************************************************************/
temp3 = _mm256_permute2f128_pd(temp2, temp1, 2);/*[L1 L2] um[0] um[3]*/
temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1*/

/*******************************************************************
  * Col2: working vector temp1 - high lane of temp1 [H1] and temp2 [H2]
********************************************************************/
temp1 = _mm256_blend_pd(temp1, temp2, 12); /*[H1 H2] um[1] um[4]*/

/* now cols um0um3 and um1um4 need to be reshuffled*/
temp2 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /*img real img real*/
temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0101); /*img real img real*/

/* Row-Matrix1: Loading 1st 2 complexes of psi vector and shuffling */
temp5 = _mm256_loadu_pd((double *)psi);
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
temp10 = _mm256_mul_pd(temp5, temp2); /*(im*im),(im*re),(im*im),(im*re)*/
temp9 = _mm256_fmaddsub_pd(temp6, temp3, temp10);

/*Second row*col computation:2x2*/
temp11 = _mm256_mul_pd(temp5, temp4); /*(im*im),(im*re),(im*im),(im*re)*/
temp10 = _mm256_fmaddsub_pd(temp6, temp1, temp11);

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
temp13 = _mm256_loadu_pd((double *)um + 12);  /*um[6]um[7]*/
temp13 = _mm256_mul_pd(temp13, simd_mask);
temp15 = _mm256_shuffle_pd(temp13, temp13, 0b0101);/*im re im re*/
 
temp10 = _mm256_mul_pd(temp10, temp15); 
temp10 = _mm256_fmaddsub_pd(temp12, temp13, temp10);

/* Adding 2x2 results to leftover results */
temp9 = _mm256_add_pd(temp9, temp10);/* chi[0] chi[1] */

/* ===========(Pair 1) End: Matrix 1 ============*/

/* ===========(Pair 2) Start: Matrix 2 ============*/
/*First row*col computation:2x2*/
temp2 = _mm256_mul_pd(temp7, temp2); /*(im*im),(im*re),(im*im),(im*re) */
temp2 = _mm256_fmaddsub_pd(temp8, temp3, temp2);

/*Second row*col computation:2x2*/
temp3 = _mm256_mul_pd(temp7, temp4); /* (im*im),(im*re),(im*im),(im*re) */  
temp1 = _mm256_fmaddsub_pd(temp8, temp1, temp3);

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
 
temp3 = _mm256_mul_pd(temp3, temp15); 
temp3 = _mm256_fmaddsub_pd(temp4, temp13, temp3);

/* Adding 2x2 results to leftover results */
temp1 = _mm256_add_pd(temp1, temp3); /* chi2[0] chi2[1] */

/* ===========(Pair 2) End: Matrix 2 ============*/

/* ===========(Pair 3) Start: Matrix 1&2 ============*/
/* ********************************************************
  * Matrix 1: Third row*col computation-first 2 elements
  * ********************************************************/
/* ===> Row: shuffled (temp6,temp4) from above is to be reused*/
 /* Loading and shuffling 3rd element of col 1 and 2  */
temp3 = _mm256_loadu_pd((double *)um + 2); /*um[1]um[2]*/
temp3 = _mm256_mul_pd(temp3, simd_mask);
temp4 = _mm256_loadu_pd((double *)um + 8); /*um[4]um[5]*/
temp4 = _mm256_mul_pd(temp4, simd_mask);
temp3 = _mm256_permute2f128_pd(temp3, temp3, 1);
/* Working register for col */
temp3 = _mm256_blend_pd(temp3, temp4, 12); /*[H1 H2] um[2] um[5]*/ 
temp4 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /* im re im re */
 
temp5 = _mm256_mul_pd(temp5, temp4); 
temp5 = _mm256_fmaddsub_pd(temp6, temp3, temp5);

/* **********************************************************
 * Matrix 2: Third 3rd row*col computation - first 2 elements
 * **********************************************************/
//temp3 = _mm256_mul_pd(temp8, temp3);    
temp4 = _mm256_mul_pd(temp7, temp4);
temp3 = _mm256_fmaddsub_pd(temp8, temp3, temp4);

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
temp5 = _mm256_mul_pd(temp5, simd_mask);
temp6 = _mm256_permute2f128_pd(temp5, temp5, 1);  
temp5 = _mm256_blend_pd(temp6, temp5, 12);       
temp6 = _mm256_shuffle_pd(temp5, temp5, 0b0101);/* im re im re */

temp2 = _mm256_mul_pd(temp2, temp6); 
temp2 = _mm256_fmaddsub_pd(temp4, temp5, temp2);

temp2 = _mm256_add_pd(temp3, temp2); /*chi[2] chi2[2]*/

chi_3rd = _mm256_castpd256_pd128(temp2);   /*First 128-bits chi[2]*/
chi2_3rd = _mm256_extractf128_pd(temp2, 1); /*Second 128-bits chi2[2]*/

/* ===========(Pair 3) End: Matrix 1&2 ============*/

/*Storing Results*/
 _mm256_store_pd((double *)chi, temp9); 
 _mm_storeu_pd((double *)chi + 4, chi_3rd);

 _mm256_store_pd((double *)chi2, temp1); 
 _mm_storeu_pd((double *)chi2 + 4, chi2_3rd);
}



void single_MVM_2x2(suNf_vector *chi, const suNf *up, const suNf_vector *psi)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* 
  * 2x2 means matrix(up) has 4 complexes and the vector (psi) has 2 complexes
  *Loading first set of 3 complexes of 3x3 matrix 
  */
 temp1 = _mm256_loadu_pd((double *)up);         // temp1 up0, load 4 doubles (0,1,2,3)

 temp4 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /* (real real real real)*/    
 temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /* (imag, imag, imag, imag)*/ 

 /* Loading second set of 3 complexes of 3x3 matrix */
 temp2 = _mm256_loadu_pd((double *)up + 4);   // load next 4 doubles (4,5,6,7)

 temp5 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real)*/    
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag, imag, imag, imag)*/ 

 /* Loading 3 complexes of psi vector and shuffling */
 temp3 = _mm256_loadu_pd((double *)psi); // temp4 psi0 
 temp6 = _mm256_shuffle_pd(temp3, temp3, 0b0101); 
 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /*First row*col computation:2x2*/  
 temp1 = _mm256_mul_pd(temp1, temp6); /* (im*im),(im*re),(re*im),(im*re) */     
 temp1 = _mm256_fmaddsub_pd(temp4, temp3, temp1);                                      

 /*Second row*col computation:2x2*/    
 temp2 = _mm256_mul_pd(temp2, temp6); /* (im*im),(im*re),(re*im),(im*re) */    
 temp2 = _mm256_fmaddsub_pd(temp5, temp3, temp2);                                      

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of addsub_res1 [L1] and addsub_res0 [L2] */
 temp4 = _mm256_permute2f128_pd(temp2, temp1, 2);   //[L1 L2] 
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); // Placing H2 lane in L2 lane 

 /* A vector of high lane of res1 [H1] and addsub_res1 [H2] */
 temp1 = _mm256_blend_pd(temp1, temp2, 12); //[H1 H2] 
 temp1 = _mm256_add_pd(temp4, temp1); // Result of 2x2 

 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp1); 
}




void double_MVM_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *up, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9;

 /*===>Start of loading variables: up, psi, psi2<===*/
 /* Loading first set of 3 complexes of 3x3 matrix */
 temp1 = _mm256_loadu_pd((double *)up); //[0 1 2 3]
 temp2 = _mm256_loadu_pd((double *)up + 4); //[4 5 6 7]

 /* Loading 3 complexes of psi vector and shuffling */
 temp3 = _mm256_loadu_pd((double *)psi); 
 temp5 = _mm256_shuffle_pd(temp3, temp3, 0b0101); /*(imag real imag real)*/ 

 temp4 = _mm256_loadu_pd((double *)psi2); 
 temp6 = _mm256_shuffle_pd(temp4, temp4, 0b0101); /*(imag real imag real)*/
 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /* First row shuffling*/
 temp7 = _mm256_shuffle_pd(temp1, temp1, 0b0000); /*(real real real real)*/    
 temp1 = _mm256_shuffle_pd(temp1, temp1, 0b1111); /*(imag, imag, imag, imag)*/ 

/*First row*col computation:2x2*/
 temp9 = _mm256_mul_pd(temp1, temp5); /*(im*im),(im*re),(im*im),(im*re)*/  
 temp8 = _mm256_fmaddsub_pd(temp7, temp3, temp9);                                  

 /*Second row shuffling*/
 temp9 = _mm256_shuffle_pd(temp2, temp2, 0b0000); /*(real real real real)*/    
 temp2 = _mm256_shuffle_pd(temp2, temp2, 0b1111); /*(imag, imag, imag, imag)*/ 


/*Second row*col computation:2x2*/
 temp5 = _mm256_mul_pd(temp2, temp5); /*(im*im),(im*re),(im*im),(im*re)*/         
 temp3 = _mm256_fmaddsub_pd(temp9, temp3, temp5);                                     

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of temp3 [L1] and of temp8 [L2] */
 temp5 = _mm256_permute2f128_pd(temp3, temp8, 2); //[L1 L2]
 temp8 = _mm256_permute2f128_pd(temp8, temp8, 1); // Placing H2 lane in L2 lane

 /* A vector of high lane of temp8 [H1] and of temp3 [H2] */
 temp3 = _mm256_blend_pd(temp8, temp3, 12); //[H1 H2]
 temp3 = _mm256_add_pd(temp5, temp3);  // Result of 2x2: chi[0] chi[1]

 /* =================================(Pair 2) start ============================= */
 /*Third set of computation:2x2*/      
 temp1 = _mm256_mul_pd(temp1, temp6); /*(im*im),(im*re),(re*im),(im*re)*/       
 temp1 = _mm256_fmaddsub_pd(temp7, temp4, temp1);                                       

 /*Fourth set of computation:2x2*/   
 temp2 = _mm256_mul_pd(temp2, temp6); /*(im*im),(im*re),(re*im),(im*re) */       
 temp2 = _mm256_fmaddsub_pd(temp9, temp4, temp2);                                         

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of temp2 [L1] and temp1 [L2] */
 temp4 = _mm256_permute2f128_pd(temp2, temp1, 2); // [L1 L2] 
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); // Placing H2 lane in L2 lane 

 /* A vector of high lane of temp1 [H1] and temp2 [H2] */
 temp1 = _mm256_blend_pd(temp1, temp2, 12); // [H1 H2]
 temp1 = _mm256_add_pd(temp4, temp1); // Result of 2x2: chi2[0] chi2[1]

 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp3);
 _mm256_store_pd((double *)chi2, temp1);
}




void single_MVM_inverse_2x2(suNf_vector *chi, const suNf *um, const suNf_vector *psi)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6;
 const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);
 /*===>Start of loading variables: um, psi<===*/
 temp1 = _mm256_loadu_pd((double *)um); /* um[0]um[1] */
 temp1 = _mm256_mul_pd(temp1, simd_mask);
 
 temp2 = _mm256_loadu_pd((double *)um + 4); /*um[2]um[3]*/
 temp2 = _mm256_mul_pd(temp2, simd_mask);

 /****************************************************************
  * col1: working vector temp4 of lower lane of temp1 [L1] and temp2 [L2]
  * ***************************************************************/
 temp4 = _mm256_permute2f128_pd(temp2, temp1, 2); /*[L1 L2] um[0] um[2]*/       
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1: um[1] um[0]*/

 /*******************************************************************************
  * col2: working vector temp1 of high lane of temp1 [H1] and temp2 [H2]
  * *****************************************************************************/
 temp1 = _mm256_blend_pd(temp1, temp2, 12); /*[H1 H2] um[1] um[3]*/

 /* now cols temp1 and temp4 need to be reshuffled like psi: img real img real*/ 
 temp2 = _mm256_shuffle_pd(temp4, temp4, 0b0101); /* im re im re */               
 temp5 = _mm256_shuffle_pd(temp1, temp1, 0b0101); /* im re im re */                

 /* Row: Loading 2 complexes of psi vector and shuffling */
 temp3 = _mm256_loadu_pd((double *)psi); 
 temp6 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /* Row 1:(real real real real)*/    
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /* Row 2:(imag, imag, imag, imag)*/   

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First row*col computation:2x2*/    
 temp2 = _mm256_mul_pd(temp3, temp2); /*(im*im),(im*re),(im*im),(im*re)*/     
 temp2 = _mm256_fmaddsub_pd(temp6, temp4, temp2);                                      

 /*Second row*col computation:2x2*/   
 temp3 = _mm256_mul_pd(temp3, temp5); /*(im*im),(im*re),(im*im),(im*re)*/     
 temp1 = _mm256_fmaddsub_pd(temp6, temp1, temp3);                                       

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of temp1 [L1] and temp2 [L2] */
 temp3 = _mm256_permute2f128_pd(temp1, temp2, 2); /*[L1 L2]*/                   
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); /*swapping L2 and H2 of temp2*/ 

 /* A vector of high lane of temp2 [H1] and temp1 [H2] */
 temp1 = _mm256_blend_pd(temp2, temp1, 12); /*[H1 H2]*/    

 /* Adding  */                  
 temp1 = _mm256_add_pd(temp3, temp1); /*Result of 2x2: chi[0] chi[1]*/      

 /* Storing Results */
 _mm256_store_pd((double *)chi, temp1);
}




void double_MVM_inverse_2x2(suNf_vector *chi, suNf_vector *chi2, const suNf *um, const suNf_vector *psi, const suNf_vector *psi2)
{
 __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11;
 const __m256d simd_mask = _mm256_set_pd(-1.0, 1.0, -1.0, 1.0);

 /*===>Start of loading variables: um, psi<===*/
 /* Loading first set of 2 complexes of 3x3 matrix */
 temp1 = _mm256_loadu_pd((double *)um); /* um[0]um[1] */
 temp1 = _mm256_mul_pd(temp1, simd_mask);
 temp2 = _mm256_loadu_pd((double *)um + 4); /*um[2]um[3]*/
 temp2 = _mm256_mul_pd(temp2, simd_mask);

 /****************************************************************
  * col1: working vector temp4 of lower lane of temp2 [L1] and temp2 [L2]
  * ***************************************************************/
 temp4 = _mm256_permute2f128_pd(temp2, temp1, 2); /*[L1 L2] um[0] um[2]*/       
 temp1 = _mm256_permute2f128_pd(temp1, temp1, 1); /*swapping L2 and H2 of temp1: um[1] um[0] */ 

 /*******************************************************************************
  * col2: working vector temp1 vector of high lane of temp1 [H1] and temp2 [H2]
  * *****************************************************************************/
 temp1 = _mm256_blend_pd(temp1, temp2, 12); /*[H1 H2] um[1] um[3]*/ 

 /* now cols temp1 and temp4 need to be reshuffled*/
 temp2 = _mm256_shuffle_pd(temp4, temp4, 0b0101); /* im re im re */       
 temp5 = _mm256_shuffle_pd(temp1, temp1, 0b0101); /* im re im re */       

 /* Row: Loading 2 complexes of psi vector and shuffling */
 temp3 = _mm256_loadu_pd((double *)psi); // temp3 psi0
 temp6 = _mm256_shuffle_pd(temp3, temp3, 0b0000); /* Row 1:(real real real real)*/      
 temp3 = _mm256_shuffle_pd(temp3, temp3, 0b1111); /* Row 2:(imag, imag, imag, imag)*/   

 /* Row: Loading 2 complexes of psi2 vector and shuffling */
 temp7 = _mm256_loadu_pd((double *)psi2); 
 temp8 = _mm256_shuffle_pd(temp7, temp7, 0b0000); /* Row 1:(real real real real)*/           
 temp7 = _mm256_shuffle_pd(temp7, temp7, 0b1111); /* Row 2:(imag, imag, imag, imag)*/        

 /*===>End of loading variables: up, psi, psi2<====*/

 /*========>Start of MVM Computations: 2x2<========*/
 /* =================================(Pair 1) start ============================= */
 /*First row*col computation:2x2*/
 temp9 = _mm256_mul_pd(temp6, temp4); /*(re*re),(re*im),(re*re),(re*im)*/      
 temp10 = _mm256_mul_pd(temp3, temp2); /*(im*im),(im*re),(im*im),(im*re)*/     
 temp9 = _mm256_addsub_pd(temp9, temp10);                                       

 /*Second row*col computation:2x2*/
 temp6 = _mm256_mul_pd(temp6, temp1); /*(re*re),(re*im),(re*re),(re*im)*/         
 temp3 = _mm256_mul_pd(temp3, temp5); /*(im*im),(im*re),(im*im),(im*re)*/         
 temp3 = _mm256_addsub_pd(temp6, temp3);

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 1 (2x2)========== */
 /* A vector of lower lane of temp3 [L1] and temp9 [L2] */
 temp6 = _mm256_permute2f128_pd(temp3, temp9, 2); /*[L1 L2]*/ 
 temp11 = _mm256_permute2f128_pd(temp9, temp9, 1); /*swapping L2 and H2 of temp9*/

 /* A vector of high lane of temp11 [H1] and temp3 [H2] */
 temp3 = _mm256_blend_pd(temp11, temp3, 12); /*[H1 H2]*/              
 temp3 = _mm256_add_pd(temp6, temp3); /*Result of 2x2: chi[0] chi[1]*/

 /* =================================(Pair 2) start ============================= */
 /*Fourth set of computation:2x2*/
 temp4 = _mm256_mul_pd(temp8, temp4); /*(re*re),(re*im),(re*re),(re*im) */     
 temp2 = _mm256_mul_pd(temp7, temp2); /*(im*im),(im*re),(im*im),(im*re) */     
 temp2 = _mm256_addsub_pd(temp4, temp2);                                       

 /*Fifth set of computation:2x2*/
 temp1 = _mm256_mul_pd(temp8, temp1); /*(re*re),(re*im),(re*re),(re*im)*/     
 temp4 = _mm256_mul_pd(temp7, temp5); /*(im*im),(im*re),(im*im),(im*re)*/      
 temp1 = _mm256_addsub_pd(temp1, temp4);      

 /* ==========Shuffling and adding 2 AVX registers of row 1 & 2 results Matrix 2 (2x2)========== */
 /* A vector of lower lane of temp1 [L1] and temp2 [L2] */
 temp4 = _mm256_permute2f128_pd(temp1, temp2, 2); /*[L1 L2]*/ 
 temp2 = _mm256_permute2f128_pd(temp2, temp2, 1); /*swapping L2 and H2 of temp2*/ 

 /* A vector of high lane of temp2 [H1] and temp2 [H2] */
 temp1 = _mm256_blend_pd(temp2, temp1, 12); /*[H1 H2]*/             
 temp2 = _mm256_add_pd(temp4, temp1); /*Result of 2x2: chi2[0] chi2[1]*/

 /*Storing Results*/
 _mm256_store_pd((double *)chi, temp3); 
 _mm256_store_pd((double *)chi2, temp2);
}


