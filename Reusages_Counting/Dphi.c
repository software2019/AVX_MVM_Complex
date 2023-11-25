/***************************************************************************\
* Copyright (c) 2008, Claudio Pica                                          *
* All rights reserved.                                                      *
\***************************************************************************/

/*******************************************************************************
 *
 * File Dphi.c
 *
 * Action of the Wilson-Dirac operator D and hermitian g5D on a given
 * double-precision spinor field
 *
 *******************************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "suN.h"
#include "global.h"
#include "error.h"
#include "dirac.h"
#include "linear_algebra.h"
#include "spinor_field.h"
#include "geometry.h"
#include "communications.h"
#include "memory.h"
#include "clover_tools.h"
#include "clover_exp.h"
#include "logger.h"
#include <valgrind/callgrind.h>
#define VEC_ALIGN __attribute__((aligned(32)))

#ifdef ROTATED_SF
#include "update.h"
extern rhmc_par _update_par; /* Update/update_rhmc.c */
#endif                       /* ROTATED_SF */

/*
 * Init of Dphi
 */

static int init_dirac = 1;
static spinor_field *gtmp = NULL;
static spinor_field *etmp = NULL;
static spinor_field *otmp = NULL;
static spinor_field *otmp2 = NULL;

static void free_mem()
{
  if (gtmp != NULL)
  {
    free_spinor_field_f(gtmp);
    gtmp = NULL;
  }
  if (etmp != NULL)
  {
    free_spinor_field_f(etmp);
    etmp = NULL;
  }
  if (otmp != NULL)
  {
    free_spinor_field_f(otmp);
    otmp = NULL;
  }
  if (otmp2 != NULL)
  {
    free_spinor_field_f(otmp2);
    otmp2 = NULL;
  }
  init_dirac = 1;
}

static void init_Dirac()
{
  if (init_dirac)
  {
    gtmp = alloc_spinor_field_f(1, &glattice);
    etmp = alloc_spinor_field_f(1, &glat_even);
    otmp = alloc_spinor_field_f(1, &glat_odd);
    otmp2 = alloc_spinor_field_f(1, &glat_odd);
    atexit(&free_mem);
    init_dirac = 0;
  }
}

/*
 * the following variable is used to keep trace of
 * matrix-vector multiplication.
 * we count how many time the function Dphi_ is called
 */
static unsigned long int MVMcounter = 0;

unsigned long int getMVM()
{
  unsigned long int res = MVMcounter >> 1; /* divide by two */
  MVMcounter = 0;                          /* reset counter */

  return res;
}

/* r=t*u*s */
#ifdef BC_T_THETA

#define _suNf_theta_T_multiply(r, u, s) \
  _suNf_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_f((r), eitheta[0], vtmp[0])

#define _suNf_theta_T_inverse_multiply(r, u, s) \
  _suNf_inverse_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_star_f((r), eitheta[0], vtmp[0])

#define _suNf_double_theta_T_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_f((r1), eitheta[0], vtmp[0]);                \
  _vector_mulc_f((r2), eitheta[0], vtmp[1])

#define _suNf_double_theta_T_inverse_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_inverse_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_star_f((r1), eitheta[0], vtmp[0]);                   \
  _vector_mulc_star_f((r2), eitheta[0], vtmp[1])

#else

#define _suNf_theta_T_multiply(r, u, s) _suNf_multiply((r), (u), (s))
#define _suNf_theta_T_inverse_multiply(r, u, s) _suNf_inverse_multiply((r), (u), (s))
#define _suNf_double_theta_T_multiply(r1, r2, u, s1, s2) _suNf_double_multiply((r1), (r2), (u), (s1), (s2))
#define _suNf_double_theta_T_inverse_multiply(r1, r2, u, s1, s2) _suNf_double_inverse_multiply((r1), (r2), (u), (s1), (s2))

#endif

/* r=t*u*s */
#ifdef BC_X_THETA

#define _suNf_theta_X_multiply(r, u, s) \
  _suNf_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_f((r), eitheta[1], vtmp[0])

#define _suNf_theta_X_inverse_multiply(r, u, s) \
  _suNf_inverse_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_star_f((r), eitheta[1], vtmp[0])

#define _suNf_double_theta_X_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_f((r1), eitheta[1], vtmp[0]);                \
  _vector_mulc_f((r2), eitheta[1], vtmp[1])

#define _suNf_double_theta_X_inverse_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_inverse_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_star_f((r1), eitheta[1], vtmp[0]);                   \
  _vector_mulc_star_f((r2), eitheta[1], vtmp[1])

#else

#define _suNf_theta_X_multiply(r, u, s) _suNf_multiply((r), (u), (s))
#define _suNf_theta_X_inverse_multiply(r, u, s) _suNf_inverse_multiply((r), (u), (s))
#define _suNf_double_theta_X_multiply(r1, r2, u, s1, s2) _suNf_double_multiply((r1), (r2), (u), (s1), (s2))
#define _suNf_double_theta_X_inverse_multiply(r1, r2, u, s1, s2) _suNf_double_inverse_multiply((r1), (r2), (u), (s1), (s2))
#endif

/* r=t*u*s */
#ifdef BC_Y_THETA

#define _suNf_theta_Y_multiply(r, u, s) \
  _suNf_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_f((r), eitheta[2], vtmp[0])

#define _suNf_theta_Y_inverse_multiply(r, u, s) \
  _suNf_inverse_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_star_f((r), eitheta[2], vtmp[0])

#define _suNf_double_theta_Y_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_f((r1), eitheta[2], vtmp[0]);                \
  _vector_mulc_f((r2), eitheta[2], vtmp[1])

#define _suNf_double_theta_Y_inverse_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_inverse_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_star_f((r1), eitheta[2], vtmp[0]);                   \
  _vector_mulc_star_f((r2), eitheta[2], vtmp[1])

#else

#define _suNf_theta_Y_multiply(r, u, s) _suNf_multiply((r), (u), (s))
#define _suNf_theta_Y_inverse_multiply(r, u, s) _suNf_inverse_multiply((r), (u), (s))
#define _suNf_double_theta_Y_multiply(r1, r2, u, s1, s2) _suNf_double_multiply((r1), (r2), (u), (s1), (s2))
#define _suNf_double_theta_Y_inverse_multiply(r1, r2, u, s1, s2) _suNf_double_inverse_multiply((r1), (r2), (u), (s1), (s2))

#endif

/* r=t*u*s */
#ifdef BC_Z_THETA

#define _suNf_theta_Z_multiply(r, u, s) \
  _suNf_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_f((r), eitheta[3], vtmp[0])

#define _suNf_theta_Z_inverse_multiply(r, u, s) \
  _suNf_inverse_multiply(vtmp[0], (u), (s));    \
  _vector_mulc_star_f((r), eitheta[3], vtmp[0])

#define _suNf_double_theta_T_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_f((r1), eitheta[3], vtmp[0]);                \
  _vector_mulc_f((r2), eitheta[3], vtmp[1])

#define _suNf_double_theta_T_inverse_multiply(r1, r2, u, s1, s2)    \
  _suNf_double_inverse_multiply(vtmp[0], vtmp[1], (u), (s1), (s2)); \
  _vector_mulc_star_f((r1), eitheta[3], vtmp[0]);                   \
  _vector_mulc_star_f((r2), eitheta[3], vtmp[1])

#else

#define _suNf_theta_Z_multiply(r, u, s) _suNf_multiply((r), (u), (s))
#define _suNf_theta_Z_inverse_multiply(r, u, s) _suNf_inverse_multiply((r), (u), (s))
#define _suNf_double_theta_Z_multiply(r1, r2, u, s1, s2) _suNf_double_multiply((r1), (r2), (u), (s1), (s2))
#define _suNf_double_theta_Z_inverse_multiply(r1, r2, u, s1, s2) _suNf_double_inverse_multiply((r1), (r2), (u), (s1), (s2))

#endif

/*
 * This function defines the massless Dirac operator
 * It can act on spinors defined on the whole lattice
 * or on spinors with definite parity
 */

void Dphi_(spinor_field *out, spinor_field *in)
{
#ifdef CHECK_SPINOR_MATCHING
  error((in == NULL) || (out == NULL), 1, "Dphi_ [Dphi.c]",
        "Attempt to access unallocated memory space");
  error(in == out, 1, "Dphi_ [Dphi.c]",
        "Input and output fields must be different");
  error(out->type == &glat_even && in->type == &glat_even, 1, "Dphi_ [Dphi.c]", "Spinors don't match! (1)");
  error(out->type == &glat_odd && in->type == &glat_odd, 1, "Dphi_ [Dphi.c]", "Spinors don't match! (2)");
#endif

  ++MVMcounter; /* count matrix calls */
  if (out->type == &glattice)
    ++MVMcounter;

  /************************ loop over all lattice sites *************************/
  /* start communication of input spinor field */
  _OMP_PRAGMA(master)
  {
    start_sf_sendrecv(in);
  }
  _PIECE_FOR(out->type, ixp)
  {
#ifdef WITH_MPI
    if (ixp == out->type->inner_master_pieces)
    {
      /* wait for spinor to be transfered */
      _OMP_PRAGMA(master)
      {
        complete_sf_sendrecv(in);
      }
      _OMP_PRAGMA(barrier)
    }
#endif
    _SITE_FOR(out->type, ixp, ix)
    {
      //lprintf("Thread TEST",0, "Thread num %d\n", omp_get_num_threads());
      int iy;
      suNf *up, *um;
      suNf_vector psi, chi, psi2, chi2; //__attribute__((aligned(32)));
      suNf_spinor *r, *sp, *sm;
#if defined(BC_T_THETA) || defined(BC_X_THETA) || defined(BC_Y_THETA) || defined(BC_Z_THETA)
      suNf_vector vtmp[2];
#endif

      r = _FIELD_AT(out, ix);

      /******************************* direction +0 *********************************/

      iy = iup(ix, 0);
      sp = _FIELD_AT(in, iy);
      up = pu_gauge_f(ix, 0);

      _vector_add_f(psi, (*sp).c[0], (*sp).c[2]);
      _vector_add_f(psi2, (*sp).c[1], (*sp).c[3]);
      _suNf_theta_T_multiply(chi, (*up), psi);
      _suNf_theta_T_multiply(chi2, (*up), psi2);

      (*r).c[0] = chi;
      (*r).c[2] = chi;
      (*r).c[1] = chi2;
      (*r).c[3] = chi2;

      /******************************* direction -0 *********************************/

      iy = idn(ix, 0);
      sm = _FIELD_AT(in, iy);
      um = pu_gauge_f(iy, 0);

      _vector_sub_f(psi, (*sm).c[0], (*sm).c[2]);
      _vector_sub_f(psi2, (*sm).c[1], (*sm).c[3]);
      _suNf_theta_T_inverse_multiply(chi, (*um), psi);
      _suNf_theta_T_inverse_multiply(chi2, (*um), psi2);

      _vector_add_assign_f((*r).c[0], chi);
      _vector_sub_assign_f((*r).c[2], chi);
      _vector_add_assign_f((*r).c[1], chi2);
      _vector_sub_assign_f((*r).c[3], chi2);

      /******************************* direction +1 *********************************/

      iy = iup(ix, 1);
      sp = _FIELD_AT(in, iy);
      up = pu_gauge_f(ix, 1);

      _vector_i_add_f(psi, (*sp).c[0], (*sp).c[3]);
      _vector_i_add_f(psi2, (*sp).c[1], (*sp).c[2]);
      _suNf_theta_X_multiply(chi, (*up), psi);
      _suNf_theta_X_multiply(chi2, (*up), psi2);

      _vector_add_assign_f((*r).c[0], chi);
      _vector_i_sub_assign_f((*r).c[3], chi);
      _vector_add_assign_f((*r).c[1], chi2);
      _vector_i_sub_assign_f((*r).c[2], chi2);

      /******************************* direction -1 *********************************/

      iy = idn(ix, 1);
      sm = _FIELD_AT(in, iy);
      um = pu_gauge_f(iy, 1);

      _vector_i_sub_f(psi, (*sm).c[0], (*sm).c[3]);
      _vector_i_sub_f(psi2, (*sm).c[1], (*sm).c[2]);
      _suNf_theta_X_inverse_multiply(chi, (*um), psi);
      _suNf_theta_X_inverse_multiply(chi2, (*um), psi2);

      _vector_add_assign_f((*r).c[0], chi);
      _vector_i_add_assign_f((*r).c[3], chi);
      _vector_add_assign_f((*r).c[1], chi2);
      _vector_i_add_assign_f((*r).c[2], chi2);

      /******************************* direction +2 *********************************/

      iy = iup(ix, 2);
      sp = _FIELD_AT(in, iy);
      up = pu_gauge_f(ix, 2);

      _vector_add_f(psi, (*sp).c[0], (*sp).c[3]);
      _vector_sub_f(psi2, (*sp).c[1], (*sp).c[2]);
      _suNf_theta_Y_multiply(chi, (*up), psi);
      _suNf_theta_Y_multiply(chi2, (*up), psi2);

      _vector_add_assign_f((*r).c[0], chi);
      _vector_add_assign_f((*r).c[3], chi);
      _vector_add_assign_f((*r).c[1], chi2);
      _vector_sub_assign_f((*r).c[2], chi2);

      /******************************* direction -2 *********************************/

      iy = idn(ix, 2);
      sm = _FIELD_AT(in, iy);
      um = pu_gauge_f(iy, 2);

      _vector_sub_f(psi, (*sm).c[0], (*sm).c[3]);
      _vector_add_f(psi2, (*sm).c[1], (*sm).c[2]);
      _suNf_theta_Y_inverse_multiply(chi, (*um), psi);
      _suNf_theta_Y_inverse_multiply(chi2, (*um), psi2);

      _vector_add_assign_f((*r).c[0], chi);
      _vector_sub_assign_f((*r).c[3], chi);
      _vector_add_assign_f((*r).c[1], chi2);
      _vector_add_assign_f((*r).c[2], chi2);

      /******************************* direction +3 *********************************/

      iy = iup(ix, 3);
      sp = _FIELD_AT(in, iy);
      up = pu_gauge_f(ix, 3);

      _vector_i_add_f(psi, (*sp).c[0], (*sp).c[2]);
      _vector_i_sub_f(psi2, (*sp).c[1], (*sp).c[3]);
      _suNf_theta_Z_multiply(chi, (*up), psi);
      _suNf_theta_Z_multiply(chi2, (*up), psi2);

      _vector_add_assign_f((*r).c[0], chi);
      _vector_i_sub_assign_f((*r).c[2], chi);
      _vector_add_assign_f((*r).c[1], chi2);
      _vector_i_add_assign_f((*r).c[3], chi2);

      /******************************* direction -3 *********************************/

      iy = idn(ix, 3);
      sm = _FIELD_AT(in, iy);
      um = pu_gauge_f(iy, 3);

      _vector_i_sub_f(psi, (*sm).c[0], (*sm).c[2]);
      _vector_i_add_f(psi2, (*sm).c[1], (*sm).c[3]);
      _suNf_theta_Z_inverse_multiply(chi, (*um), psi);
      _suNf_theta_Z_inverse_multiply(chi2, (*um), psi2);

      _vector_add_assign_f((*r).c[0], chi);
      _vector_i_add_assign_f((*r).c[2], chi);
      _vector_add_assign_f((*r).c[1], chi2);
      _vector_i_sub_assign_f((*r).c[3], chi2);

      /******************************** end of loop *********************************/

      _spinor_mul_f(*r, -0.5, *r);

    } /* SITE_FOR */
  }   /* PIECE FOR */
}

/* The check_reusages calculates spinor reusages ratio */
int access_count = 0;
long int counter = 0;
int cache_miss_count = 0;
int byte_count = 0;
float LLC_hit_ratio = 0.;
static int *mem_arr = NULL;
int reused_spinor_new = 0;
int reused_spinor_old = 0;
int reused_spinor_temp1 = 0;
int reused_spinor_temp2 = 0;
int reusage_count = 0;
float reusage_ratio;
long int step_count = 0;
int total_bytes_accessed = 0;
int total_load2 = 0;
int total_thread;

/* Function Calculates: cache reusage ratio */
void check_reusages(spinor_field *out, suNf_spinor *sp)
{
  _OMP_PRAGMA(master)
  {
    int reused_bytes;
    int LLC_Miss_Count;

    /* Allocating memory just only once */
    if (counter == 0)
    {
      mem_arr = malloc(VOLUME * 8 * sizeof(int));
      total_thread = omp_get_num_threads();
    }

    mem_arr[counter] = sp;
    lprintf("TEST MEM", 0, "mem_arr[%d] = %d\n", counter, mem_arr[counter]);

    /*===== Reusages counting start from step 2 =====*/
    /* Cache Hit/Reusage Count only Spinor */
    for (int i = 0; i < counter; i++)
    {
      if ((mem_arr[counter] == mem_arr[i]))
      {
        reused_spinor_new++; // reusage spinors
        break;
      }
    }

    /* Cache Miss Count: only Spinor */
    if (reused_spinor_old == reused_spinor_new)
    {
      cache_miss_count++;
    }
    reused_spinor_old = reused_spinor_new;

    counter++;

    /*=====total byte accessed/LS=====*/
    if ((counter) % 8 == 0)
    {
      step_count++;
      access_count += (9 * sizeof(suNf_spinor) + 8 * sizeof(suNf));
      reused_spinor_temp1 = reused_spinor_new - reused_spinor_temp2;
      // lprintf("TEST REUSAGE", 0, "Reudage count in step %d =  %d\n", step_count, reused_spinor_temp1);
      // lprintf("TEST THREAD", 0, " TID = %d\n", omp_get_thread_num());

      byte_count += (2880 - reused_spinor_temp1 * 192);
      // lprintf("TEST BYTE COUNT", 0, "Total byte upto step %d =  %d\n\n", step_count, byte_count);

      reused_spinor_temp2 = reused_spinor_new;
    }

    /*===Print the reusage ratio; ||LLC = 40 MB/node|| 2 procs per node so a process has 20 MB LLC memory===*/
    if (step_count == ((out->type)->fuse_inner_counter) / total_thread) // a chunk iterations/thread
    {
      lprintf("TEST STEPS", 0, "Total steps per thread = %d\n", ((out->type)->fuse_inner_counter) / total_thread);
      reused_bytes = (reused_spinor_new * sizeof(suNf_spinor));     //(times.reused * bytes.reused)
      reusage_ratio = (((float)reused_bytes / access_count) * 100); //(times.reused * bytes.reused)/total.bytes.accessed

      /* Reusage Bytes Count */
      lprintf("TEST REUSAGE MEMORY", 0, "Total Memory Reusage = %d bytes\n", reused_bytes);
      /* Total Accessed (LS) Bytes */
      lprintf("TEST LS MEMORY", 0, "Total Memory Accessed (LS) = %d bytes\n", access_count);
      /* Reusages Rate */
      lprintf("TEST RUSAGE RATIO", 0, "Memory Reusage Rate = %.2f%%\n", reusage_ratio);
      /* Miss Rate */
      lprintf("TEST MISS RATIO", 0, "Memory Miss Rate = %.2f%%\n", (100 - reusage_ratio));
    }
  } // master thread
}

void arr_free()
{
  if (mem_arr != NULL)
  {
    free(mem_arr);
  }
}

void Dphi_fused_(spinor_field *out, spinor_field *in)
{
#ifdef CHECK_SPINOR_MATCHING
  error((in == NULL) || (out == NULL), 1, "Dphi_ [Dphi.c]",
        "Attempt to access unallocated memory space");
  error(in == out, 1, "Dphi_ [Dphi.c]",
        "Input and output fields must be different");
  error(out->type == &glat_even && in->type == &glat_even, 1, "Dphi_ [Dphi.c]", "Spinors don't match! (1)");
  error(out->type == &glat_odd && in->type == &glat_odd, 1, "Dphi_ [Dphi.c]", "Spinors don't match! (2)");
#endif

  //++MVMcounter; /* count matrix calls */
  // if (out->type == &glattice)
  //  ++MVMcounter;
  //
  /************************ loop over all lattice sites *************************/
  /* start communication of input spinor field */
  _OMP_PRAGMA(master)
  {
    start_sf_sendrecv(in);
  }
  _OMP_BARRIER

  int ix;
  int iy;
  suNf *up, *um;
  suNf_vector psi, chi, psi2, chi2; 
  suNf_spinor *r, *sp, *sm;

// #ifdef AVX2_HIREP
// __m256d temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17;
// __m128d chi_3rd, chi2_3rd;
// #endif

#if defined(BC_T_THETA) || defined(BC_X_THETA) || defined(BC_Y_THETA) || defined(BC_Z_THETA)
  suNf_vector vtmp[2];
#endif

//lprintf("INNER COUNTER",0,"(out->type)->fuse_inner_counter= %d\n", (out->type)->fuse_inner_counter);

  _OMP_PRAGMA(_omp_for nowait)
  // _OMP_PRAGMA(for schedule(static) nowait)
  // _OMP_PRAGMA(for nowait)
  for (int _fuse_master_for_ip_ix = 0; _fuse_master_for_ip_ix < (out->type)->fuse_inner_counter; _fuse_master_for_ip_ix++)

  /*********** static no chunksize Test: Blocked Distribution of Loops *************/
  // int start = omp_get_thread_num() * (out->type)->fuse_inner_counter / omp_get_num_threads();
  // int finish = (omp_get_thread_num() + 1) * (out->type)->fuse_inner_counter / omp_get_num_threads();
  // for (int _fuse_master_for_ip_ix = start; _fuse_master_for_ip_ix < finish; _fuse_master_for_ip_ix++)

  /************* static 1 Test: Cyclic Distribution loops ************/
  // int stride = omp_get_num_threads();
  // int tdxstart = omp_get_thread_num();
  // for (int _fuse_master_for_ip_ix = tdxstart; _fuse_master_for_ip_ix < (out->type)->fuse_inner_counter; _fuse_master_for_ip_ix += stride)

  {
    // lprintf("Test Chunksize", 0, "TID %d = %d index\n", omp_get_thread_num(), _fuse_master_for_ip_ix);
    ix = _FUSE_IDX(out->type, ix);

    r = _FIELD_AT(out, ix);

    /******************************* direction +0 *********************************/

    iy = iup(ix, 0);
    sp = _FIELD_AT(in, iy);
    up = pu_gauge_f(ix, 0);

    _vector_add_f(psi, (*sp).c[0], (*sp).c[2]);
    _vector_add_f(psi2, (*sp).c[1], (*sp).c[3]);
    _suNf_double_theta_T_multiply(chi, chi2, (*up), psi, psi2);
  

    (*r).c[0] = chi;
    (*r).c[2] = chi;
    (*r).c[1] = chi2;
    (*r).c[3] = chi2;

    /******************************* direction -0 *********************************/

    iy = idn(ix, 0);
    sm = _FIELD_AT(in, iy);
    um = pu_gauge_f(iy, 0);

    _vector_sub_f(psi, (*sm).c[0], (*sm).c[2]);
    _vector_sub_f(psi2, (*sm).c[1], (*sm).c[3]);
    _suNf_double_theta_T_inverse_multiply(chi, chi2, (*um), psi, psi2);

    _vector_add_assign_f((*r).c[0], chi);
    _vector_sub_assign_f((*r).c[2], chi);
    _vector_add_assign_f((*r).c[1], chi2);
    _vector_sub_assign_f((*r).c[3], chi2);

    /******************************* direction +1 *********************************/

    iy = iup(ix, 1);
    sp = _FIELD_AT(in, iy);
    up = pu_gauge_f(ix, 1);

    _vector_i_add_f(psi, (*sp).c[0], (*sp).c[3]);
    _vector_i_add_f(psi2, (*sp).c[1], (*sp).c[2]);
    _suNf_double_theta_X_multiply(chi, chi2, (*up), psi, psi2);

    _vector_add_assign_f((*r).c[0], chi);
    _vector_i_sub_assign_f((*r).c[3], chi);
    _vector_add_assign_f((*r).c[1], chi2);
    _vector_i_sub_assign_f((*r).c[2], chi2);

    /******************************* direction -1 *********************************/

    iy = idn(ix, 1);
    sm = _FIELD_AT(in, iy);
    um = pu_gauge_f(iy, 1);

    _vector_i_sub_f(psi, (*sm).c[0], (*sm).c[3]);
    _vector_i_sub_f(psi2, (*sm).c[1], (*sm).c[2]);
    _suNf_double_theta_X_inverse_multiply(chi, chi2, (*um), psi, psi2);

    _vector_add_assign_f((*r).c[0], chi);
    _vector_i_add_assign_f((*r).c[3], chi);
    _vector_add_assign_f((*r).c[1], chi2);
    _vector_i_add_assign_f((*r).c[2], chi2);

    /******************************* direction +2 *********************************/

    iy = iup(ix, 2);
    sp = _FIELD_AT(in, iy);
    up = pu_gauge_f(ix, 2);

    _vector_add_f(psi, (*sp).c[0], (*sp).c[3]);
    _vector_sub_f(psi2, (*sp).c[1], (*sp).c[2]);
    _suNf_double_theta_Y_multiply(chi, chi2, (*up), psi, psi2);

    _vector_add_assign_f((*r).c[0], chi);
    _vector_add_assign_f((*r).c[3], chi);
    _vector_add_assign_f((*r).c[1], chi2);
    _vector_sub_assign_f((*r).c[2], chi2);

    /******************************* direction -2 *********************************/

    iy = idn(ix, 2);
    sm = _FIELD_AT(in, iy);
    um = pu_gauge_f(iy, 2);

    _vector_sub_f(psi, (*sm).c[0], (*sm).c[3]);
    _vector_add_f(psi2, (*sm).c[1], (*sm).c[2]);
    _suNf_double_theta_Y_inverse_multiply(chi, chi2, (*um), psi, psi2);

    _vector_add_assign_f((*r).c[0], chi);
    _vector_sub_assign_f((*r).c[3], chi);
    _vector_add_assign_f((*r).c[1], chi2);
    _vector_add_assign_f((*r).c[2], chi2);

    /******************************* direction +3 *********************************/

    iy = iup(ix, 3);
    sp = _FIELD_AT(in, iy);
    up = pu_gauge_f(ix, 3);

    _vector_i_add_f(psi, (*sp).c[0], (*sp).c[2]);
    _vector_i_sub_f(psi2, (*sp).c[1], (*sp).c[3]);
    _suNf_double_theta_Z_multiply(chi, chi2, (*up), psi, psi2);

    _vector_add_assign_f((*r).c[0], chi);
    _vector_i_sub_assign_f((*r).c[2], chi);
    _vector_add_assign_f((*r).c[1], chi2);
    _vector_i_add_assign_f((*r).c[3], chi2);

    /******************************* direction -3 *********************************/

    iy = idn(ix, 3);
    sm = _FIELD_AT(in, iy);
    um = pu_gauge_f(iy, 3);

    _vector_i_sub_f(psi, (*sm).c[0], (*sm).c[2]);
    _vector_i_add_f(psi2, (*sm).c[1], (*sm).c[3]);
    _suNf_double_theta_Z_inverse_multiply(chi, chi2, (*um), psi, psi2);

    _vector_add_assign_f((*r).c[0], chi);
    _vector_i_add_assign_f((*r).c[2], chi);
    _vector_add_assign_f((*r).c[1], chi2);
    _vector_i_sub_assign_f((*r).c[3], chi2);

    /******************************** end of loop *********************************/

    _spinor_mul_f(*r, -0.5, *r);

  } /* FUSE FOR */

#ifdef WITH_MPI

  _OMP_PRAGMA(master)
  {
    complete_sf_sendrecv(in);
  }
  _OMP_PRAGMA(barrier)
#endif

  // _OMP_PRAGMA(_omp_for nowait)

  // tdxstart = (out->type)->fuse_inner_counter + omp_get_thread_num();

  // for (int _fuse_master_for_ip_ix = tdxstart; _fuse_master_for_ip_ix < (out->type)->fuse_gauge_size; _fuse_master_for_ip_ix += stride)

  // for (int _fuse_master_for_ip_ix = (out->type)->fuse_inner_counter; _fuse_master_for_ip_ix < (out->type)->fuse_gauge_size; _fuse_master_for_ip_ix++)
  // {
  //   ix = _FUSE_IDX(out->type, ix);

  //   r = _FIELD_AT(out, ix);

  //   /******************************* direction +0 *********************************/

  //   iy = iup(ix, 0);
  //   sp = _FIELD_AT(in, iy);
  //   up = pu_gauge_f(ix, 0);

  //   _vector_add_f(psi, (*sp).c[0], (*sp).c[2]);
  //   _vector_add_f(psi2, (*sp).c[1], (*sp).c[3]);
  //   _suNf_theta_T_multiply(chi, (*up), psi);
  //   _suNf_theta_T_multiply(chi2, (*up), psi2);

  //   (*r).c[0] = chi;
  //   (*r).c[2] = chi;
  //   (*r).c[1] = chi2;
  //   (*r).c[3] = chi2;

  //   /******************************* direction -0 *********************************/

  //   iy = idn(ix, 0);
  //   sm = _FIELD_AT(in, iy);
  //   um = pu_gauge_f(iy, 0);

  //   _vector_sub_f(psi, (*sm).c[0], (*sm).c[2]);
  //   _vector_sub_f(psi2, (*sm).c[1], (*sm).c[3]);
  //   _suNf_theta_T_inverse_multiply(chi, (*um), psi);
  //   _suNf_theta_T_inverse_multiply(chi2, (*um), psi2);

  //   _vector_add_assign_f((*r).c[0], chi);
  //   _vector_sub_assign_f((*r).c[2], chi);
  //   _vector_add_assign_f((*r).c[1], chi2);
  //   _vector_sub_assign_f((*r).c[3], chi2);

  //   /******************************* direction +1 *********************************/

  //   iy = iup(ix, 1);
  //   sp = _FIELD_AT(in, iy);
  //   up = pu_gauge_f(ix, 1);

  //   _vector_i_add_f(psi, (*sp).c[0], (*sp).c[3]);
  //   _vector_i_add_f(psi2, (*sp).c[1], (*sp).c[2]);
  //   _suNf_theta_X_multiply(chi, (*up), psi);
  //   _suNf_theta_X_multiply(chi2, (*up), psi2);

  //   _vector_add_assign_f((*r).c[0], chi);
  //   _vector_i_sub_assign_f((*r).c[3], chi);
  //   _vector_add_assign_f((*r).c[1], chi2);
  //   _vector_i_sub_assign_f((*r).c[2], chi2);

  //   /******************************* direction -1 *********************************/

  //   iy = idn(ix, 1);
  //   sm = _FIELD_AT(in, iy);
  //   um = pu_gauge_f(iy, 1);

  //   _vector_i_sub_f(psi, (*sm).c[0], (*sm).c[3]);
  //   _vector_i_sub_f(psi2, (*sm).c[1], (*sm).c[2]);
  //   _suNf_theta_X_inverse_multiply(chi, (*um), psi);
  //   _suNf_theta_X_inverse_multiply(chi2, (*um), psi2);

  //   _vector_add_assign_f((*r).c[0], chi);
  //   _vector_i_add_assign_f((*r).c[3], chi);
  //   _vector_add_assign_f((*r).c[1], chi2);
  //   _vector_i_add_assign_f((*r).c[2], chi2);

  //   /******************************* direction +2 *********************************/

  //   iy = iup(ix, 2);
  //   sp = _FIELD_AT(in, iy);
  //   up = pu_gauge_f(ix, 2);

  //   _vector_add_f(psi, (*sp).c[0], (*sp).c[3]);
  //   _vector_sub_f(psi2, (*sp).c[1], (*sp).c[2]);
  //   _suNf_theta_Y_multiply(chi, (*up), psi);
  //   _suNf_theta_Y_multiply(chi2, (*up), psi2);

  //   _vector_add_assign_f((*r).c[0], chi);
  //   _vector_add_assign_f((*r).c[3], chi);
  //   _vector_add_assign_f((*r).c[1], chi2);
  //   _vector_sub_assign_f((*r).c[2], chi2);

  //   /******************************* direction -2 *********************************/

  //   iy = idn(ix, 2);
  //   sm = _FIELD_AT(in, iy);
  //   um = pu_gauge_f(iy, 2);

  //   _vector_sub_f(psi, (*sm).c[0], (*sm).c[3]);
  //   _vector_add_f(psi2, (*sm).c[1], (*sm).c[2]);
  //   _suNf_theta_Y_inverse_multiply(chi, (*um), psi);
  //   _suNf_theta_Y_inverse_multiply(chi2, (*um), psi2);

  //   _vector_add_assign_f((*r).c[0], chi);
  //   _vector_sub_assign_f((*r).c[3], chi);
  //   _vector_add_assign_f((*r).c[1], chi2);
  //   _vector_add_assign_f((*r).c[2], chi2);

  //   /******************************* direction +3 *********************************/

  //   iy = iup(ix, 3);
  //   sp = _FIELD_AT(in, iy);
  //   up = pu_gauge_f(ix, 3);

  //   _vector_i_add_f(psi, (*sp).c[0], (*sp).c[2]);
  //   _vector_i_sub_f(psi2, (*sp).c[1], (*sp).c[3]);
  //   _suNf_theta_Z_multiply(chi, (*up), psi);
  //   _suNf_theta_Z_multiply(chi2, (*up), psi2);

  //   _vector_add_assign_f((*r).c[0], chi);
  //   _vector_i_sub_assign_f((*r).c[2], chi);
  //   _vector_add_assign_f((*r).c[1], chi2);
  //   _vector_i_add_assign_f((*r).c[3], chi2);

  //   /******************************* direction -3 *********************************/

  //   iy = idn(ix, 3);
  //   sm = _FIELD_AT(in, iy);
  //   um = pu_gauge_f(iy, 3);

  //   _vector_i_sub_f(psi, (*sm).c[0], (*sm).c[2]);
  //   _vector_i_add_f(psi2, (*sm).c[1], (*sm).c[3]);
  //   _suNf_theta_Z_inverse_multiply(chi, (*um), psi);
  //   _suNf_theta_Z_inverse_multiply(chi2, (*um), psi2);

  //   _vector_add_assign_f((*r).c[0], chi);
  //   _vector_i_add_assign_f((*r).c[2], chi);
  //   _vector_add_assign_f((*r).c[1], chi2);
  //   _vector_i_sub_assign_f((*r).c[3], chi2);

  //   /******************************** end of loop *********************************/

  //   _spinor_mul_f(*r, -0.5, *r);

  // } /* FUSE FOR */
}

/*
 * this function takes 2 spinors defined on the whole lattice
 */
void Dphi(double m0, spinor_field *out, spinor_field *in)
{
  double rho;
#ifdef ROTATED_SF
  int ix, iy, iz, index;
  suNf_spinor *r, *sp;
  double SFrho;
  suNf_spinor tmp;
#endif /* ROTATED_SF */

  error((in == NULL) || (out == NULL), 1, "Dphi [Dphi.c]",
        "Attempt to access unallocated memory space");

  error(in == out, 1, "Dphi [Dphi.c]",
        "Input and output fields must be different");

  apply_BCs_on_spinor_field(in);

#ifdef CHECK_SPINOR_MATCHING
  error(out->type != &glattice || in->type != &glattice, 1, "Dphi [Dphi.c]", "Spinors are not defined on all the lattice!");
#endif /* CHECK_SPINOR_MATCHING */

  Dphi_(out, in);

  rho = 4. + m0;

  spinor_field_mul_add_assign_f(out, rho, in);

#ifdef ROTATED_SF
  SFrho = 3. * _update_par.SF_ds + _update_par.SF_zf - 4.;

  if (COORD[0] == 0)
  {
    for (ix = 0; ix < X; ++ix)
      for (iy = 0; iy < Y; ++iy)
        for (iz = 0; iz < Z; ++iz)
        {
          index = ipt(1, ix, iy, iz);
          r = _FIELD_AT(out, index);
          sp = _FIELD_AT(in, index);
          _spinor_mul_add_assign_f(*r, SFrho, *sp);

          _spinor_pminus_f(tmp, *sp);
          _spinor_g5_assign_f(tmp);
          if (_update_par.SF_sign == 1)
          {
            _spinor_i_add_assign_f(*r, tmp);
          }
          else
          {
            _spinor_i_sub_assign_f(*r, tmp);
          }
        }
  }
  if (COORD[0] == NP_T - 1)
  {
    for (ix = 0; ix < X; ++ix)
      for (iy = 0; iy < Y; ++iy)
        for (iz = 0; iz < Z; ++iz)
        {
          index = ipt(T - 1, ix, iy, iz);
          r = _FIELD_AT(out, index);
          sp = _FIELD_AT(in, index);
          _spinor_mul_add_assign_f(*r, SFrho, *sp);

          _spinor_pplus_f(tmp, *sp);
          _spinor_g5_assign_f(tmp);
          if (_update_par.SF_sign == 1)
          {
            _spinor_i_add_assign_f(*r, tmp);
          }
          else
          {
            _spinor_i_sub_assign_f(*r, tmp);
          }
        }
  }
#endif /* ROTATED_SF */

  apply_BCs_on_spinor_field(out);
}

void g5Dphi(double m0, spinor_field *out, spinor_field *in)
{
  double rho;
#ifdef ROTATED_SF
  int ix, iy, iz, index;
  suNf_spinor *r, *sp;
  double SFrho;
  suNf_spinor tmp;
#endif /* ROTATED_SF */

  error((in == NULL) || (out == NULL), 1, "g5Dphi [Dphi.c]",
        "Attempt to access unallocated memory space");

  error(in == out, 1, "g5Dphi [Dphi.c]",
        "Input and output fields must be different");

#ifdef CHECK_SPINOR_MATCHING
  error(out->type != &glattice || in->type != &glattice, 1, "g5Dphi [Dphi.c]", "Spinors are not defined on all the lattice!");
#endif /* CHECK_SPINOR_MATCHING */

  apply_BCs_on_spinor_field(in);

  Dphi_(out, in);

  rho = 4. + m0;

  spinor_field_mul_add_assign_f(out, rho, in);

#ifdef ROTATED_SF
  SFrho = 3. * _update_par.SF_ds + _update_par.SF_zf - 4.;

  if (COORD[0] == 0)
  {
    for (ix = 0; ix < X; ++ix)
      for (iy = 0; iy < Y; ++iy)
        for (iz = 0; iz < Z; ++iz)
        {
          index = ipt(1, ix, iy, iz);
          r = _FIELD_AT(out, index);
          sp = _FIELD_AT(in, index);
          _spinor_mul_add_assign_f(*r, SFrho, *sp);

          _spinor_pminus_f(tmp, *sp);
          _spinor_g5_assign_f(tmp);
          if (_update_par.SF_sign == 1)
          {
            _spinor_i_add_assign_f(*r, tmp);
          }
          else
          {
            _spinor_i_sub_assign_f(*r, tmp);
          }
        }
  }
  if (COORD[0] == NP_T - 1)
  {
    for (ix = 0; ix < X; ++ix)
      for (iy = 0; iy < Y; ++iy)
        for (iz = 0; iz < Z; ++iz)
        {
          index = ipt(T - 1, ix, iy, iz);
          r = _FIELD_AT(out, index);
          sp = _FIELD_AT(in, index);
          _spinor_mul_add_assign_f(*r, SFrho, *sp);

          _spinor_pplus_f(tmp, *sp);
          _spinor_g5_assign_f(tmp);
          if (_update_par.SF_sign == 1)
          {
            _spinor_i_add_assign_f(*r, tmp);
          }
          else
          {
            _spinor_i_sub_assign_f(*r, tmp);
          }
        }
  }
#endif /* ROTATED_SF */

  spinor_field_g5_assign_f(out);

  apply_BCs_on_spinor_field(out);
}

/* Even/Odd preconditioned dirac operator
 * this function takes 2 spinors defined on the even lattice
 * Dphi in = (4+m0)^2*in - D_EO D_OE in
 *
 */
void Dphi_eopre(double m0, spinor_field *out, spinor_field *in)
{
  double rho;

  error((in == NULL) || (out == NULL), 1, "Dphi_eopre [Dphi.c]",
        "Attempt to access unallocated memory space");

  error(in == out, 1, "Dphi_eopre [Dphi.c]",
        "Input and output fields must be different");

#ifdef CHECK_SPINOR_MATCHING
  error(out->type != &glat_even || in->type != &glat_even, 1, "Dphi_eopre " __FILE__, "Spinors are not defined on even lattice!");
#endif /* CHECK_SPINOR_MATCHING */

  apply_BCs_on_spinor_field(in);

  /* alloc memory for temporary spinor field */
  if (init_dirac)
  {
    init_Dirac();
  }

  Dphi_(otmp, in);
  apply_BCs_on_spinor_field(otmp);
  Dphi_(out, otmp);

  rho = 4.0 + m0;

  rho *= -rho; /* this minus sign is taken into account below */

  spinor_field_mul_add_assign_f(out, rho, in);
  spinor_field_minus_f(out, out);
  apply_BCs_on_spinor_field(out);
}

/* Even/Odd preconditioned dirac operator
 * this function takes 2 spinors defined on the odd lattice
 * Dphi in = (4+m0)^2*in - D_OE D_EO in
 *
 */
void Dphi_oepre(double m0, spinor_field *out, spinor_field *in)
{
  double rho;

  error((in == NULL) || (out == NULL), 1, "Dphi_oepre [Dphi.c]",
        "Attempt to access unallocated memory space");

  error(in == out, 1, "Dphi_oepre [Dphi.c]",
        "Input and output fields must be different");

#ifdef CHECK_SPINOR_MATCHING
  error(out->type != &glat_odd || in->type != &glat_odd, 1, "Dphi_oepre " __FILE__, "Spinors are not defined on odd lattice!");
#endif /* CHECK_SPINOR_MATCHING */

  apply_BCs_on_spinor_field(in);

  /* alloc memory for temporary spinor field */
  if (init_dirac)
  {
    init_Dirac();
  }

  Dphi_(etmp, in);
  apply_BCs_on_spinor_field(etmp);
  Dphi_(out, etmp);

  rho = 4.0 + m0;

  rho *= -rho; /* this minus sign is taken into account below */

  spinor_field_mul_add_assign_f(out, rho, in);
  spinor_field_minus_f(out, out);

  apply_BCs_on_spinor_field(out);
}

void g5Dphi_eopre(double m0, spinor_field *out, spinor_field *in)
{
  double rho;

  error((in == NULL) || (out == NULL), 1, "g5Dphi_eopre [Dphi.c]",
        "Attempt to access unallocated memory space");

  error(in == out, 1, "Dphi_eopre [Dphi.c]",
        "Input and output fields must be different");

#ifdef CHECK_SPINOR_MATCHING
  error(out->type != &glat_even || in->type != &glat_even, 1, "g5Dphi_eopre " __FILE__, "Spinors are not defined on even lattice!");
#endif /* CHECK_SPINOR_MATCHING */

  apply_BCs_on_spinor_field(in);

  /* alloc memory for temporary spinor field */
  if (init_dirac)
  {
    init_Dirac();
  }

  Dphi_(otmp, in);
  apply_BCs_on_spinor_field(otmp);
  Dphi_(out, otmp);

  rho = 4.0 + m0;

  rho *= -rho; /* this minus sign is taken into account below */

  spinor_field_mul_add_assign_f(out, rho, in);
  spinor_field_minus_f(out, out);
  spinor_field_g5_assign_f(out);

  apply_BCs_on_spinor_field(out);
}

/* g5Dphi_eopre ^2 */
void g5Dphi_eopre_sq(double m0, spinor_field *out, spinor_field *in)
{
  /* alloc memory for temporary spinor field */
  if (init_dirac)
  {
    init_Dirac();
  }

  g5Dphi_eopre(m0, etmp, in);
  g5Dphi_eopre(m0, out, etmp);
}

/* g5Dhi ^2 */
void g5Dphi_sq(double m0, spinor_field *out, spinor_field *in)
{
  /* alloc memory for temporary spinor field */
  if (init_dirac)
  {
    init_Dirac();
  }

#ifdef ROTATED_SF
  /*the switch of the SF_sign is needed to take care of the antihermiticity of the boundary term of the dirac operator*/
  g5Dphi(m0, gtmp, in);
  _update_par.SF_sign = -_update_par.SF_sign;
  g5Dphi(m0, out, gtmp);
  _update_par.SF_sign = -_update_par.SF_sign;
#else
  g5Dphi(m0, gtmp, in);
  g5Dphi(m0, out, gtmp);
#endif
}

// Twisted mass operator for even odd preconditioned case
/* g5 (M^+-_ee-M_eo {M_oo}^{-1} M_oe*/
void Qhat_eopre(double m0, double mu, spinor_field *out, spinor_field *in)
{
  double norm = (4 + m0) * (4 + m0) + mu * mu;
  double rho = (4 + m0) / norm;
  double complex imu;
  imu = -I * mu / norm;

  error((in == NULL) || (out == NULL), 1, "Qhat_eopre [Dphi.c]",
        "Attempt to access unallocated memory space");

  error(in == out, 1, "Qhat_eopre [Dphi.c]",
        "Input and output fields must be different");

#ifdef CHECK_SPINOR_MATCHING
  error(out->type != &glat_even || in->type != &glat_even, 1, "Qhat_eopre " __FILE__, "Spinors are not defined on even lattice!");
#endif /* CHECK_SPINOR_MATCHING */

  apply_BCs_on_spinor_field(in);

  /* alloc memory for temporary spinor field */
  if (init_dirac)
  {
    init_Dirac();
  }
  Dphi_(otmp, in);
  apply_BCs_on_spinor_field(otmp);
  spinor_field_mul_f(otmp2, rho, otmp);
  spinor_field_g5_mulc_add_assign_f(otmp2, imu, otmp);
  Dphi_(out, otmp2);

  rho = -(4 + m0);
  spinor_field_mul_add_assign_f(out, rho, in);
  imu = -I * mu;
  spinor_field_g5_mulc_add_assign_f(out, imu, in);

  spinor_field_minus_f(out, out);
  spinor_field_g5_assign_f(out);

  apply_BCs_on_spinor_field(out);
}

void Qhat_eopre_sq(double m0, double mu, spinor_field *out, spinor_field *in)
{
  /* alloc memory for temporary spinor field */
  if (init_dirac)
  {
    init_Dirac();
  }

#ifdef ROTATED_SF
  /*the switch of the SF_sign is needed to take care of the antihermiticity of the boundary term of the dirac operator*/
  error(1, "Qhat_eopre_sq", __FILE__, "Not implemented\n");
#else
  Qhat_eopre(m0, -mu, etmp, in);
  Qhat_eopre(m0, mu, out, etmp);
#endif
}

#ifdef WITH_CLOVER

/*************************************************
 * Dirac operators with clover term:             *
 * Cphi = Dphi + clover                          *
 * Cphi_eopre = D_ee - D_eo D_oo^-1 D_oe         *
 * Cphi_diag = D_oo or D_ee                      *
 * Cphi_diag_inv = D_oo^-1 or D_ee^-1            *
 *************************************************/

static void Cphi_(double mass, spinor_field *dptr, spinor_field *sptr, int assign)
{

  // Correct mass term
  mass = (4. + mass);

  suNf_vector v1, v2;
  suNf_spinor *out, *in, tmp;
  suNfc *s0, *s1, *s2, *s3;

  // Loop over local sites
  _MASTER_FOR(dptr->type, ix)
  {

    // Field pointers
    out = _FIELD_AT(dptr, ix);
    in = _FIELD_AT(sptr, ix);
    s0 = _4FIELD_AT(cl_term, ix, 0);
    s1 = _4FIELD_AT(cl_term, ix, 1);
    s2 = _4FIELD_AT(cl_term, ix, 2);
    s3 = _4FIELD_AT(cl_term, ix, 3);

    // Component 0
    _suNfc_multiply(v1, *s0, in->c[0]);
    _suNfc_multiply(v2, *s1, in->c[1]);
    _vector_add_f(tmp.c[0], v1, v2);

    // Component 1
    _suNfc_inverse_multiply(v1, *s1, in->c[0]);
    _suNfc_multiply(v2, *s0, in->c[1]);
    _vector_sub_f(tmp.c[1], v1, v2);

    // Component 2
    _suNfc_multiply(v1, *s2, in->c[2]);
    _suNfc_multiply(v2, *s3, in->c[3]);
    _vector_add_f(tmp.c[2], v1, v2);

    // Component 3
    _suNfc_inverse_multiply(v1, *s3, in->c[2]);
    _suNfc_multiply(v2, *s2, in->c[3]);
    _vector_sub_f(tmp.c[3], v1, v2);

    // Add mass
    _spinor_mul_add_assign_f(tmp, mass, *in);

    // Store
    if (assign)
    {
      _spinor_add_assign_f(*out, tmp);
    }
    else
    {
      *out = tmp;
    }
  }
}

static void Cphi_inv_(double mass, spinor_field *dptr, spinor_field *sptr, int assign)
{
  int N = 2 * NF;
  mass = (4. + mass);

  // Update LDL decomposition
  compute_ldl_decomp(mass);

  // Loop over local sites
  _MASTER_FOR(dptr->type, ix)
  {
    double complex *up, *dn, *x, c;
    suNf_spinor *out, *in, tmp;
    int n;

    // Field pointers
    up = _FIELD_AT(cl_ldl, ix)->up;
    dn = _FIELD_AT(cl_ldl, ix)->dn;
    out = _FIELD_AT(dptr, ix);
    in = _FIELD_AT(sptr, ix);

    // tmp = in
    tmp = *in;
    x = (double complex *)&tmp;

    // Forward substitution
    for (int i = 0; i < N; i++)
    {
      for (int k = 0; k < i; k++)
      {
        n = i * (i + 1) / 2 + k;
        _complex_mul_sub_assign(x[i], up[n], x[k]);
        _complex_mul_sub_assign(x[i + N], dn[n], x[k + N]);
      }
    }

    // Backward substitution
    for (int i = N - 1; i >= 0; i--)
    {
      n = i * (i + 1) / 2 + i;
      _complex_mulr(x[i], 1. / creal(up[n]), x[i]);
      _complex_mulr(x[i + N], 1. / creal(dn[n]), x[i + N]);
      for (int k = i + 1; k < N; k++)
      {
        n = k * (k + 1) / 2 + i;

        c = conj(up[n]);

        _complex_mul_sub_assign(x[i], c, x[k]);

        c = conj(dn[n]);
        _complex_mul_sub_assign(x[i + N], c, x[k + N]);
      }
    }

    // Store
    if (assign)
    {
      _spinor_add_assign_f(*out, tmp);
    }
    else
    {
      *out = tmp;
    }
  }
}
// BC for clover term in open/schrödinger functional.
void Cphi(double mass, spinor_field *dptr, spinor_field *sptr)
{
  apply_BCs_on_spinor_field(sptr);
  Dphi_(dptr, sptr);
  Cphi_(mass, dptr, sptr, 1);
  apply_BCs_on_spinor_field(dptr);
}

void g5Cphi(double mass, spinor_field *dptr, spinor_field *sptr)
{
  Cphi(mass, dptr, sptr);
  spinor_field_g5_assign_f(dptr);
}

void g5Cphi_sq(double mass, spinor_field *dptr, spinor_field *sptr)
{
  if (init_dirac)
  {
    init_Dirac();
  }

  g5Cphi(mass, gtmp, sptr);
  g5Cphi(mass, dptr, gtmp);
}

void Cphi_eopre(double mass, spinor_field *dptr, spinor_field *sptr)
{
  if (init_dirac)
  {
    init_Dirac();
  }

  apply_BCs_on_spinor_field(sptr);
  Dphi_(otmp, sptr);
  Cphi_inv_(mass, otmp, otmp, 0);
  apply_BCs_on_spinor_field(otmp);
  Dphi_(dptr, otmp);
  spinor_field_minus_f(dptr, dptr);
  Cphi_(mass, dptr, sptr, 1);
  apply_BCs_on_spinor_field(dptr);
}

void g5Cphi_eopre(double mass, spinor_field *dptr, spinor_field *sptr)
{
  Cphi_eopre(mass, dptr, sptr);
  spinor_field_g5_assign_f(dptr);
}

void g5Cphi_eopre_sq(double mass, spinor_field *dptr, spinor_field *sptr)
{
  if (init_dirac)
  {
    init_Dirac();
  }

  g5Cphi_eopre(mass, etmp, sptr);
  g5Cphi_eopre(mass, dptr, etmp);
}

void Cphi_diag(double mass, spinor_field *dptr, spinor_field *sptr)
{
  // Here (dptr == sptr) is allowed
  apply_BCs_on_spinor_field(sptr);
  Cphi_(mass, dptr, sptr, 0);
  apply_BCs_on_spinor_field(dptr);
}

void Cphi_diag_inv(double mass, spinor_field *dptr, spinor_field *sptr)
{
  // Here (dptr == sptr) is allowed
  apply_BCs_on_spinor_field(sptr);
  Cphi_inv_(mass, dptr, sptr, 0);
  apply_BCs_on_spinor_field(dptr);
}

#endif //#ifdef WITH_CLOVER

#ifdef WITH_EXPCLOVER

/*************************************************
 * Dirac operators with clover term:             *
 * Cphi = Dphi + exp clover                      *
 * Cphi_eopre = D_ee - D_eo D_oo^-1 D_oe         *
 * Cphi_diag = D_oo or D_ee                      *
 * Cphi_diag_inv = D_oo^-1 or D_ee^-1            *
 *************************************************/

// Inverse: 0, then normal operator; 1, then inverse operator;
// Assume hermiticity!!
static void Cphi_(double mass, spinor_field *dptr, spinor_field *sptr, int assign, int inverse)
{
  evaluate_sw_order(&mass);

  // Correct mass term
  mass = (4. + mass);

  double invexpmass = 1.0 / mass;
  if (inverse == 1)
  {
    invexpmass = -1.0 / mass;
    mass = 1 / mass;
  }

  suNfc Aplus[4];
  suNfc Aminus[4];

  suNfc expAplus[4];
  suNfc expAminus[4];

  init_clover_exp();

  // Loop over local sites
  _MASTER_FOR(dptr->type, ix)
  {
    suNf_vector v1, v2;
    suNf_spinor *out, *in, tmp;
    suNfc *s0, *s1, *s2, *s3;

    // Field pointers
    out = _FIELD_AT(dptr, ix);
    in = _FIELD_AT(sptr, ix);
    s0 = _4FIELD_AT(cl_term, ix, 0);
    s1 = _4FIELD_AT(cl_term, ix, 1);
    s2 = _4FIELD_AT(cl_term, ix, 2);
    s3 = _4FIELD_AT(cl_term, ix, 3);

    // Build matrices Aplus Aminus
    // Aplus  = (s0 s1, s1^dagger -s0)
    // Aminus = (s2 s3, s3^dagger -s2)

    _suNfc_mul(Aplus[0], invexpmass, *s0);
    _suNfc_mul(Aplus[1], invexpmass, *s1);
    _suNfc_dagger(Aplus[2], Aplus[1]);
    _suNfc_mul(Aplus[3], -invexpmass, *s0);

    _suNfc_mul(Aminus[0], invexpmass, *s2);
    _suNfc_mul(Aminus[1], invexpmass, *s3);
    _suNfc_dagger(Aminus[2], Aminus[1]);
    _suNfc_mul(Aminus[3], -invexpmass, *s2);

    // Exponentiate Aplus Aminus

    clover_exp(Aplus, expAplus);
    clover_exp(Aminus, expAminus);

    // Correct factor (4+m)

    _suNfc_mul_assign(expAplus[0], mass);
    _suNfc_mul_assign(expAplus[1], mass);
    _suNfc_mul_assign(expAplus[2], mass);
    _suNfc_mul_assign(expAplus[3], mass);
    _suNfc_mul_assign(expAminus[0], mass);
    _suNfc_mul_assign(expAminus[1], mass);
    _suNfc_mul_assign(expAminus[2], mass);
    _suNfc_mul_assign(expAminus[3], mass);

    // Apply Aplus Aminus to spinor

    // Comp 0
    _suNfc_multiply(v1, expAplus[0], in->c[0]);
    _suNfc_multiply(v2, expAplus[1], in->c[1]);
    _vector_add_f(tmp.c[0], v1, v2);

    // Comp 1
    _suNfc_multiply(v1, expAplus[2], in->c[0]);
    _suNfc_multiply(v2, expAplus[3], in->c[1]);
    _vector_add_f(tmp.c[1], v1, v2);

    // Comp 2
    _suNfc_multiply(v1, expAminus[0], in->c[2]);
    _suNfc_multiply(v2, expAminus[1], in->c[3]);
    _vector_add_f(tmp.c[2], v1, v2);

    // Comp 3
    _suNfc_multiply(v1, expAminus[2], in->c[2]);
    _suNfc_multiply(v2, expAminus[3], in->c[3]);
    _vector_add_f(tmp.c[3], v1, v2);

    // Store
    if (assign)
    {
      _spinor_add_assign_f(*out, tmp);
    }
    else
    {
      *out = tmp;
    }
  }
}

void Cphi(double mass, spinor_field *dptr, spinor_field *sptr)
{
  apply_BCs_on_spinor_field(sptr);
  Dphi_(dptr, sptr);
  Cphi_(mass, dptr, sptr, 1, 0);
  apply_BCs_on_spinor_field(dptr);
}

void g5Cphi(double mass, spinor_field *dptr, spinor_field *sptr)
{
  Cphi(mass, dptr, sptr);
  spinor_field_g5_assign_f(dptr);
}

void g5Cphi_sq(double mass, spinor_field *dptr, spinor_field *sptr)
{
  if (init_dirac)
  {
    init_Dirac();
  }

  g5Cphi(mass, gtmp, sptr);
  g5Cphi(mass, dptr, gtmp);
}

void Cphi_eopre(double mass, spinor_field *dptr, spinor_field *sptr)
{

  if (init_dirac)
  {
    init_Dirac();
  }

  apply_BCs_on_spinor_field(sptr);
  Dphi_(otmp, sptr);
  Cphi_(mass, otmp, otmp, 0, 1);
  apply_BCs_on_spinor_field(otmp);
  Dphi_(dptr, otmp);
  spinor_field_minus_f(dptr, dptr);
  Cphi_(mass, dptr, sptr, 1, 0);
  apply_BCs_on_spinor_field(dptr);
}

void g5Cphi_eopre(double mass, spinor_field *dptr, spinor_field *sptr)
{
  Cphi_eopre(mass, dptr, sptr);
  spinor_field_g5_assign_f(dptr);
}

void g5Cphi_eopre_sq(double mass, spinor_field *dptr, spinor_field *sptr)
{
  if (init_dirac)
  {
    init_Dirac();
  }

  g5Cphi_eopre(mass, etmp, sptr);
  g5Cphi_eopre(mass, dptr, etmp);
}

void Cphi_diag(double mass, spinor_field *dptr, spinor_field *sptr)
{
  // Here (dptr == sptr) is allowed
  apply_BCs_on_spinor_field(sptr);
  Cphi_(mass, dptr, sptr, 0, 0);
  apply_BCs_on_spinor_field(dptr);
}

void Cphi_diag_inv(double mass, spinor_field *dptr, spinor_field *sptr)
{
  // Here (dptr == sptr) is allowed

  apply_BCs_on_spinor_field(sptr);
  Cphi_(mass, dptr, sptr, 0, 1);
  apply_BCs_on_spinor_field(dptr);
}

#endif // With expclover
