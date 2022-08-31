# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-I /home/mrahman/HiRep/Include -O3 -march=core-avx2 -mtune=core-avx2 -S -lm";
	.file "avx_complex_vec_macro.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main()
main:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #109.1
        pushq     %rbp                                          #109.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #109.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #109.1
        subq      $640, %rsp                                    #109.1
        xorl      %esi, %esi                                    #109.1
        movl      $3, %edi                                      #109.1
        call      __intel_new_feature_proc_init                 #109.1
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  240(%rsp)                                     #109.1
        movl      $5, %ecx                                      #126.2
        lea       144(%rsp), %rdi                               #126.2
        orl       $32832, 96(%rdi)                              #109.1
        lea       192(%rsp), %rsi                               #126.2
        vldmxcsr  48(%rsi)                                      #109.1
        lea       (%rsp), %rdx                                  #126.2
..___tag_value_main.6:
#       my_init(suNf_vector *, suNf_vector *, suNf *, const int)
        call      my_init                                       #126.2
..___tag_value_main.7:
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.13
                                # Execution count [1.00e+00]
        xorl      %esi, %esi                                    #207.2
        lea       336(%rsp), %rdi                               #207.2
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #207.2
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        vmovupd   (%rsp), %ymm12                                #210.3
        lea       352(%rsp), %rdi                               #221.2
        vmovupd   -208(%rdi), %ymm15                            #210.3
        vmovupd   48(%rsp), %ymm5                               #210.3
        vmovupd   96(%rsp), %ymm6                               #210.3
        vmovupd   -160(%rdi), %ymm0                             #210.3
        vunpckhpd %ymm12, %ymm12, %ymm7                         #210.3
        xorl      %esi, %esi                                    #221.2
        vshufpd   $5, %ymm15, %ymm15, %ymm2                     #210.3
        vunpckhpd %ymm5, %ymm5, %ymm8                           #210.3
        vmulpd    %ymm2, %ymm7, %ymm11                          #210.3
        vmulpd    %ymm2, %ymm8, %ymm3                           #210.3
        vmovddup  (%rsp), %ymm9                                 #210.3
        vmovddup  48(%rsp), %ymm10                              #210.3
        vfmaddsub231pd %ymm9, %ymm15, %ymm11                    #210.3
        vfmaddsub231pd %ymm10, %ymm15, %ymm3                    #210.3
        vperm2f128 $1, %ymm11, %ymm11, %ymm4                    #210.3
        vunpckhpd %ymm6, %ymm6, %ymm5                           #210.3
        vmovupd   16(%rsp), %ymm6                               #210.3
        vmulpd    %ymm2, %ymm5, %ymm2                           #210.3
        vperm2f128 $2, %ymm11, %ymm3, %ymm13                    #210.3
        vblendpd  $12, %ymm3, %ymm4, %ymm14                     #210.3
        vmovupd   -192(%rdi), %ymm3                             #210.3
        vaddpd    %ymm14, %ymm13, %ymm13                        #210.3
        vperm2f128 $1, %ymm6, %ymm6, %ymm11                     #210.3
        vperm2f128 $1, %ymm3, %ymm3, %ymm4                      #210.3
        vblendpd  $12, 64(%rsp), %ymm11, %ymm14                 #210.3
        vblendpd  $12, %ymm3, %ymm4, %ymm3                      #210.3
        vmovddup  %ymm14, %ymm11                                #210.3
        vunpckhpd %ymm14, %ymm14, %ymm6                         #210.3
        vshufpd   $5, %ymm3, %ymm3, %ymm14                      #210.3
        vmulpd    %ymm14, %ymm6, %ymm14                         #210.3
        vfmaddsub213pd %ymm14, %ymm11, %ymm3                    #210.3
        vshufpd   $5, %ymm0, %ymm0, %ymm1                       #210.3
        vaddpd    %ymm13, %ymm3, %ymm3                          #210.3
        vmulpd    %ymm1, %ymm7, %ymm14                          #210.3
        vmulpd    %ymm1, %ymm8, %ymm13                          #210.3
        vmulpd    %ymm1, %ymm5, %ymm1                           #210.3
        vmovupd   %ymm3, -112(%rdi)                             #210.3
        vfmaddsub231pd %ymm9, %ymm0, %ymm14                     #210.3
        vfmaddsub231pd %ymm10, %ymm0, %ymm13                    #210.3
        vmovddup  96(%rsp), %ymm12                              #210.3
        vfmaddsub231pd %ymm12, %ymm15, %ymm2                    #210.3
        vfmaddsub231pd %ymm12, %ymm0, %ymm1                     #210.3
        vperm2f128 $2, %ymm14, %ymm13, %ymm15                   #210.3
        vperm2f128 $1, %ymm14, %ymm14, %ymm14                   #210.3
        vblendpd  $12, %ymm13, %ymm14, %ymm13                   #210.3
        vaddpd    %ymm13, %ymm15, %ymm15                        #210.3
        vmovupd   -144(%rdi), %ymm13                            #210.3
        vperm2f128 $1, %ymm13, %ymm13, %ymm14                   #210.3
        vblendpd  $12, %ymm13, %ymm14, %ymm14                   #210.3
        vblendpd  $12, %ymm13, %ymm4, %ymm13                    #210.3
        vshufpd   $5, %ymm14, %ymm14, %ymm4                     #210.3
        vmulpd    %ymm4, %ymm6, %ymm4                           #210.3
        vfmaddsub231pd %ymm11, %ymm14, %ymm4                    #210.3
        vaddpd    %ymm15, %ymm4, %ymm4                          #210.3
        vperm2f128 $2, %ymm2, %ymm1, %ymm15                     #210.3
        vperm2f128 $1, %ymm2, %ymm2, %ymm2                      #210.3
        vblendpd  $12, %ymm1, %ymm2, %ymm2                      #210.3
        vaddpd    %ymm2, %ymm15, %ymm14                         #210.3
        vmovupd   112(%rsp), %ymm2                              #210.3
        vmovupd   %ymm4, -64(%rdi)                              #210.3
        vperm2f128 $1, %ymm2, %ymm2, %ymm0                      #210.3
        vblendpd  $12, %ymm2, %ymm0, %ymm15                     #210.3
        vmovddup  %ymm15, %ymm2                                 #210.3
        vunpckhpd %ymm15, %ymm15, %ymm15                        #210.3
        vshufpd   $5, %ymm13, %ymm13, %ymm1                     #210.3
        vmulpd    %ymm1, %ymm15, %ymm0                          #210.3
        vfmaddsub231pd %ymm2, %ymm13, %ymm0                     #210.3
        vaddpd    %ymm14, %ymm0, %ymm13                         #210.3
        vshufpd   $5, %ymm3, %ymm3, %ymm14                      #211.3
        vmulpd    %ymm14, %ymm7, %ymm0                          #211.3
        vmulpd    %ymm14, %ymm8, %ymm1                          #211.3
        vfmaddsub231pd %ymm9, %ymm3, %ymm0                      #211.3
        vfmaddsub231pd %ymm10, %ymm3, %ymm1                     #211.3
        vmovupd   %xmm13, -80(%rdi)                             #210.3
        vextractf128 $1, %ymm13, -32(%rdi)                      #210.3
        vshufpd   $5, %ymm4, %ymm4, %ymm13                      #211.3
        vmulpd    %ymm13, %ymm7, %ymm7                          #211.3
        vmulpd    %ymm13, %ymm8, %ymm8                          #211.3
        vfmaddsub213pd %ymm7, %ymm4, %ymm9                      #211.3
        vfmaddsub213pd %ymm8, %ymm4, %ymm10                     #211.3
        vperm2f128 $2, %ymm0, %ymm1, %ymm7                      #211.3
        vperm2f128 $1, %ymm0, %ymm0, %ymm0                      #211.3
        vblendpd  $12, %ymm1, %ymm0, %ymm1                      #211.3
        vaddpd    %ymm1, %ymm7, %ymm0                           #211.3
        vmovupd   -96(%rdi), %ymm1                              #211.3
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #211.3
        vblendpd  $12, %ymm1, %ymm7, %ymm1                      #211.3
        vshufpd   $5, %ymm1, %ymm1, %ymm8                       #211.3
        vmulpd    %ymm8, %ymm6, %ymm8                           #211.3
        vfmaddsub213pd %ymm8, %ymm11, %ymm1                     #211.3
        vaddpd    %ymm0, %ymm1, %ymm8                           #211.3
        vmovupd   -48(%rdi), %ymm1                              #211.3
        vmovupd   %ymm8, -208(%rdi)                             #211.3
        vperm2f128 $2, %ymm9, %ymm10, %ymm0                     #211.3
        vperm2f128 $1, %ymm9, %ymm9, %ymm9                      #211.3
        vblendpd  $12, %ymm10, %ymm9, %ymm10                    #211.3
        vaddpd    %ymm10, %ymm0, %ymm9                          #211.3
        vperm2f128 $1, %ymm1, %ymm1, %ymm10                     #211.3
        vblendpd  $12, %ymm1, %ymm10, %ymm10                    #211.3
        vshufpd   $5, %ymm10, %ymm10, %ymm0                     #211.3
        vmulpd    %ymm0, %ymm6, %ymm6                           #211.3
        vfmaddsub213pd %ymm6, %ymm10, %ymm11                    #211.3
        vaddpd    %ymm9, %ymm11, %ymm11                         #211.3
        vmulpd    %ymm14, %ymm5, %ymm9                          #211.3
        vmulpd    %ymm13, %ymm5, %ymm5                          #211.3
        vmovupd   %ymm11, -160(%rdi)                            #211.3
        vfmaddsub231pd %ymm12, %ymm3, %ymm9                     #211.3
        vfmaddsub213pd %ymm5, %ymm4, %ymm12                     #211.3
        vblendpd  $12, %ymm1, %ymm7, %ymm7                      #211.3
        vshufpd   $5, %ymm7, %ymm7, %ymm1                       #211.3
        vmulpd    %ymm1, %ymm15, %ymm15                         #211.3
        vperm2f128 $1, %ymm9, %ymm9, %ymm0                      #211.3
        vfmaddsub213pd %ymm15, %ymm7, %ymm2                     #211.3
        vperm2f128 $2, %ymm9, %ymm12, %ymm3                     #211.3
        vblendpd  $12, %ymm12, %ymm0, %ymm12                    #211.3
        vaddpd    %ymm12, %ymm3, %ymm0                          #211.3
        vaddpd    %ymm0, %ymm2, %ymm2                           #211.3
        vmovupd   %xmm2, -176(%rdi)                             #211.3
        vextractf128 $1, %ymm2, -128(%rdi)                      #211.3
        vzeroupper                                              #221.2
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #221.2
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
        lea       368(%rsp), %rdi                               #222.2
        lea       352(%rsp), %rsi                               #222.2
        lea       336(%rsp), %rdx                               #222.2
..___tag_value_main.8:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #222.2
..___tag_value_main.9:
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %edi                         #224.2
        xorl      %eax, %eax                                    #224.2
        movq      368(%rsp), %rsi                               #224.2
        movq      376(%rsp), %rdx                               #224.2
..___tag_value_main.10:
#       printf(const char *__restrict__, ...)
        call      printf                                        #224.2
..___tag_value_main.11:
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        xorl      %esi, %esi                                    #247.2
        lea       336(%rsp), %rdi                               #247.2
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #247.2
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        vmovupd   16(%rsp), %xmm5                               #250.3
        vmovupd   160(%rsp), %xmm2                              #250.3
        vmovupd   (%rsp), %xmm4                                 #250.3
        vmovupd   144(%rsp), %xmm11                             #250.3
        vmovupd   32(%rsp), %xmm7                               #250.3
        vmovupd   176(%rsp), %xmm9                              #250.3
        vmovupd   80(%rsp), %xmm10                              #250.3
        vunpckhpd %xmm2, %xmm2, %xmm13                          #250.3
        lea       352(%rsp), %rdi                               #264.2
        vshufpd   $1, %xmm5, %xmm5, %xmm0                       #250.3
        xorl      %esi, %esi                                    #264.2
        vmulpd    %xmm0, %xmm13, %xmm6                          #250.3
        vunpckhpd %xmm11, %xmm11, %xmm14                        #250.3
        vshufpd   $1, %xmm4, %xmm4, %xmm15                      #250.3
        vmulpd    %xmm15, %xmm14, %xmm3                         #250.3
        vmovddup  -192(%rdi), %xmm11                            #250.3
        vunpckhpd %xmm9, %xmm9, %xmm13                          #250.3
        vshufpd   $1, %xmm7, %xmm7, %xmm1                       #250.3
        vfmaddsub213pd %xmm6, %xmm5, %xmm11                     #250.3
        vmovddup  -208(%rdi), %xmm12                            #250.3
        vmovddup  -176(%rdi), %xmm8                             #250.3
        vmulpd    %xmm1, %xmm13, %xmm6                          #250.3
        vfmaddsub231pd %xmm12, %xmm4, %xmm3                     #250.3
        vfmaddsub213pd %xmm6, %xmm7, %xmm8                      #250.3
        vshufpd   $1, %xmm9, %xmm9, %xmm13                      #250.3
        vmovupd   64(%rsp), %xmm6                               #250.3
        vaddpd    %xmm11, %xmm3, %xmm3                          #250.3
        vaddpd    %xmm8, %xmm3, %xmm7                           #250.3
        vmovupd   %xmm7, 32(%rdi)                               #250.3[spill]
        vmovupd   %xmm7, -112(%rdi)                             #250.3
        vunpckhpd %xmm10, %xmm10, %xmm7                         #250.3
        vmulpd    %xmm13, %xmm7, %xmm10                         #250.3
        vmovddup  80(%rsp), %xmm11                              #250.3
        vfmaddsub231pd %xmm11, %xmm9, %xmm10                    #250.3
        vunpckhpd %xmm6, %xmm6, %xmm3                           #250.3
        vshufpd   $1, %xmm2, %xmm2, %xmm11                      #250.3
        vmovupd   48(%rsp), %xmm6                               #250.3
        vmulpd    %xmm11, %xmm3, %xmm8                          #250.3
        vmovupd   %xmm7, 48(%rdi)                               #250.3[spill]
        vmovupd   %xmm3, 64(%rdi)                               #250.3[spill]
        vmovddup  64(%rsp), %xmm7                               #250.3
        vshufpd   $1, %xmm6, %xmm6, %xmm3                       #250.3
        vfmaddsub231pd %xmm7, %xmm2, %xmm8                      #250.3
        vmulpd    %xmm3, %xmm14, %xmm7                          #250.3
        vfmaddsub231pd %xmm12, %xmm6, %xmm7                     #250.3
        vaddpd    %xmm7, %xmm8, %xmm8                           #250.3
        vaddpd    %xmm8, %xmm10, %xmm7                          #250.3
        vmovupd   -224(%rdi), %xmm8                             #250.3
        vmovupd   %xmm7, -96(%rdi)                              #250.3
        vunpckhpd %xmm8, %xmm8, %xmm10                          #250.3
        vmulpd    %xmm13, %xmm10, %xmm13                        #250.3
        vmovupd   %xmm10, 80(%rdi)                              #250.3[spill]
        vmovddup  -224(%rdi), %xmm10                            #250.3
        vfmaddsub231pd %xmm10, %xmm9, %xmm13                    #250.3
        vmovupd   112(%rsp), %xmm9                              #250.3
        vunpckhpd %xmm9, %xmm9, %xmm10                          #250.3
        vmulpd    %xmm11, %xmm10, %xmm11                        #250.3
        vmovupd   %xmm10, 96(%rdi)                              #250.3[spill]
        vmovddup  112(%rsp), %xmm10                             #250.3
        vfmaddsub231pd %xmm10, %xmm2, %xmm11                    #250.3
        vmovupd   96(%rsp), %xmm10                              #250.3
        vshufpd   $1, %xmm10, %xmm10, %xmm2                     #250.3
        vmulpd    %xmm2, %xmm14, %xmm14                         #250.3
        vfmaddsub213pd %xmm14, %xmm10, %xmm12                   #250.3
        vmovupd   -160(%rdi), %xmm14                            #251.3
        vunpckhpd %xmm14, %xmm14, %xmm14                        #251.3
        vaddpd    %xmm12, %xmm11, %xmm12                        #250.3
        vaddpd    %xmm12, %xmm13, %xmm11                        #250.3
        vmulpd    %xmm15, %xmm14, %xmm12                        #251.3
        vmovupd   %xmm11, -80(%rdi)                             #250.3
        vmovupd   -144(%rdi), %xmm15                            #251.3
        vmulpd    %xmm3, %xmm14, %xmm13                         #251.3
        vmulpd    %xmm2, %xmm14, %xmm14                         #251.3
        vunpckhpd %xmm15, %xmm15, %xmm15                        #251.3
        vmulpd    %xmm0, %xmm15, %xmm2                          #251.3
        vmovupd   -128(%rdi), %xmm0                             #251.3
        vunpckhpd %xmm0, %xmm0, %xmm3                           #251.3
        vmovddup  -160(%rdi), %xmm0                             #251.3
        vmulpd    %xmm1, %xmm3, %xmm1                           #251.3
        vfmaddsub231pd %xmm0, %xmm4, %xmm12                     #251.3
        vfmaddsub231pd %xmm0, %xmm6, %xmm13                     #251.3
        vfmaddsub213pd %xmm14, %xmm10, %xmm0                    #251.3
        vunpckhpd %xmm10, %xmm10, %xmm10                        #253.3
        vmovupd   %xmm10, 128(%rdi)                             #253.3[spill]
        vmovddup  -144(%rdi), %xmm10                            #251.3
        vunpckhpd %xmm6, %xmm6, %xmm6                           #253.3
        vfmaddsub231pd %xmm10, %xmm5, %xmm2                     #251.3
        vmovupd   32(%rsp), %xmm14                              #251.3
        vmovupd   %xmm6, 112(%rdi)                              #253.3[spill]
        vaddpd    %xmm2, %xmm12, %xmm2                          #251.3
        vmovddup  -128(%rdi), %xmm12                            #251.3
        vfmaddsub231pd %xmm12, %xmm14, %xmm1                    #251.3
        vunpckhpd %xmm14, %xmm14, %xmm6                         #253.3
        vmovupd   80(%rsp), %xmm14                              #251.3
        vaddpd    %xmm1, %xmm2, %xmm1                           #251.3
        vmovupd   %xmm1, 144(%rdi)                              #251.3[spill]
        vmovupd   %xmm1, -64(%rdi)                              #251.3
        vshufpd   $1, %xmm14, %xmm14, %xmm1                     #251.3
        vmulpd    %xmm1, %xmm3, %xmm2                           #251.3
        vfmaddsub231pd %xmm12, %xmm14, %xmm2                    #251.3
        vmovupd   64(%rsp), %xmm14                              #251.3
        vshufpd   $1, %xmm14, %xmm14, %xmm1                     #251.3
        vmulpd    %xmm1, %xmm15, %xmm1                          #251.3
        vfmaddsub231pd %xmm10, %xmm14, %xmm1                    #251.3
        vunpckhpd %xmm4, %xmm4, %xmm4                           #253.3
        vunpckhpd %xmm5, %xmm5, %xmm5                           #253.3
        vmovupd   %xmm6, 160(%rdi)                              #253.3[spill]
        vaddpd    %xmm13, %xmm1, %xmm13                         #251.3
        vaddpd    %xmm13, %xmm2, %xmm13                         #251.3
        vshufpd   $1, %xmm8, %xmm8, %xmm2                       #251.3
        vmulpd    %xmm2, %xmm3, %xmm3                           #251.3
        vmovupd   %xmm13, -48(%rdi)                             #251.3
        vfmaddsub213pd %xmm3, %xmm8, %xmm12                     #251.3
        vshufpd   $1, %xmm9, %xmm9, %xmm8                       #251.3
        vshufpd   $1, %xmm7, %xmm7, %xmm1                       #253.3
        vmovddup  (%rsp), %xmm2                                 #253.3
        vmulpd    %xmm8, %xmm15, %xmm15                         #251.3
        vmulpd    %xmm1, %xmm5, %xmm3                           #253.3
        vfmaddsub213pd %xmm15, %xmm9, %xmm10                    #251.3
        vmovddup  16(%rsp), %xmm15                              #253.3
        vfmaddsub231pd %xmm15, %xmm7, %xmm3                     #253.3
        vaddpd    %xmm0, %xmm10, %xmm9                          #251.3
        vmovupd   32(%rdi), %xmm0                               #253.3[spill]
        vshufpd   $1, %xmm0, %xmm0, %xmm8                       #253.3
        vaddpd    %xmm9, %xmm12, %xmm14                         #251.3
        vmulpd    %xmm8, %xmm4, %xmm12                          #253.3
        vmovupd   %xmm14, -32(%rdi)                             #251.3
        vfmaddsub231pd %xmm2, %xmm0, %xmm12                     #253.3
        vshufpd   $1, %xmm11, %xmm11, %xmm9                     #253.3
        vmovupd   %xmm14, 176(%rdi)                             #251.3[spill]
        vmovddup  32(%rsp), %xmm14                              #253.3
        vmulpd    %xmm9, %xmm6, %xmm6                           #253.3
        vaddpd    %xmm12, %xmm3, %xmm2                          #253.3
        vfmaddsub231pd %xmm14, %xmm11, %xmm6                    #253.3
        vmovupd   64(%rdi), %xmm12                              #253.3[spill]
        vaddpd    %xmm6, %xmm2, %xmm3                           #253.3
        vmulpd    %xmm1, %xmm12, %xmm14                         #253.3
        vmovupd   %xmm3, -208(%rdi)                             #253.3
        vmulpd    112(%rdi), %xmm8, %xmm6                       #253.3[spill]
        vmulpd    128(%rdi), %xmm8, %xmm8                       #253.3[spill]
        vmovupd   96(%rdi), %xmm2                               #253.3[spill]
        vmulpd    %xmm1, %xmm2, %xmm10                          #253.3
        vmovddup  64(%rsp), %xmm3                               #253.3
        vmovddup  112(%rsp), %xmm1                              #253.3
        vfmaddsub231pd %xmm3, %xmm7, %xmm14                     #253.3
        vfmaddsub231pd %xmm1, %xmm7, %xmm10                     #253.3
        vmovddup  48(%rsp), %xmm7                               #253.3
        vfmaddsub231pd %xmm7, %xmm0, %xmm6                      #253.3
        vaddpd    %xmm6, %xmm14, %xmm7                          #253.3
        vmulpd    48(%rdi), %xmm9, %xmm14                       #253.3[spill]
        vmovddup  80(%rsp), %xmm6                               #253.3
        vfmaddsub231pd %xmm6, %xmm11, %xmm14                    #253.3
        vaddpd    %xmm14, %xmm7, %xmm7                          #253.3
        vmovupd   %xmm7, -192(%rdi)                             #253.3
        vmovupd   80(%rdi), %xmm7                               #253.3[spill]
        vmulpd    %xmm9, %xmm7, %xmm9                           #253.3
        vmovddup  -224(%rdi), %xmm14                            #253.3
        vfmaddsub231pd %xmm14, %xmm11, %xmm9                    #253.3
        vmovddup  96(%rsp), %xmm11                              #253.3
        vfmaddsub231pd %xmm11, %xmm0, %xmm8                     #253.3
        vaddpd    %xmm8, %xmm10, %xmm0                          #253.3
        vaddpd    %xmm9, %xmm0, %xmm8                           #253.3
        vshufpd   $1, %xmm13, %xmm13, %xmm9                     #254.3
        vmulpd    %xmm9, %xmm5, %xmm5                           #254.3
        vmovupd   %xmm8, -176(%rdi)                             #253.3
        vmulpd    %xmm9, %xmm2, %xmm2                           #254.3
        vfmaddsub213pd %xmm5, %xmm13, %xmm15                    #254.3
        vfmaddsub213pd %xmm2, %xmm13, %xmm1                     #254.3
        vmovupd   144(%rdi), %xmm2                              #254.3[spill]
        vmovddup  48(%rsp), %xmm10                              #254.3
        vmulpd    %xmm9, %xmm12, %xmm5                          #254.3
        vfmaddsub213pd %xmm5, %xmm13, %xmm3                     #254.3
        vshufpd   $1, %xmm2, %xmm2, %xmm13                      #254.3
        vmovddup  (%rsp), %xmm5                                 #254.3
        vmulpd    %xmm13, %xmm4, %xmm4                          #254.3
        vfmaddsub213pd %xmm4, %xmm2, %xmm5                      #254.3
        vmulpd    112(%rdi), %xmm13, %xmm4                      #254.3[spill]
        vmulpd    128(%rdi), %xmm13, %xmm13                     #254.3[spill]
        vaddpd    %xmm5, %xmm15, %xmm0                          #254.3
        vfmaddsub213pd %xmm4, %xmm2, %xmm10                     #254.3
        vfmaddsub213pd %xmm13, %xmm2, %xmm11                    #254.3
        vmovupd   176(%rdi), %xmm5                              #254.3[spill]
        vshufpd   $1, %xmm5, %xmm5, %xmm4                       #254.3
        vmulpd    160(%rdi), %xmm4, %xmm15                      #254.3[spill]
        vmulpd    48(%rdi), %xmm4, %xmm8                        #254.3[spill]
        vmulpd    %xmm4, %xmm7, %xmm7                           #254.3
        vaddpd    %xmm10, %xmm3, %xmm9                          #254.3
        vaddpd    %xmm11, %xmm1, %xmm1                          #254.3
        vfmaddsub213pd %xmm8, %xmm5, %xmm6                      #254.3
        vfmaddsub213pd %xmm7, %xmm5, %xmm14                     #254.3
        vmovddup  32(%rsp), %xmm3                               #254.3
        vfmaddsub213pd %xmm15, %xmm5, %xmm3                     #254.3
        vaddpd    %xmm6, %xmm9, %xmm6                           #254.3
        vaddpd    %xmm14, %xmm1, %xmm2                          #254.3
        vaddpd    %xmm3, %xmm0, %xmm15                          #254.3
        vmovupd   %xmm6, -144(%rdi)                             #254.3
        vmovupd   %xmm15, -160(%rdi)                            #254.3
        vmovupd   %xmm2, -128(%rdi)                             #254.3
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #264.2
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        lea       368(%rsp), %rdi                               #265.2
        lea       352(%rsp), %rsi                               #265.2
        lea       336(%rsp), %rdx                               #265.2
..___tag_value_main.35:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #265.2
..___tag_value_main.36:
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.1, %edi                         #267.2
        xorl      %eax, %eax                                    #267.2
        movq      368(%rsp), %rsi                               #267.2
        movq      376(%rsp), %rdx                               #267.2
..___tag_value_main.37:
#       printf(const char *__restrict__, ...)
        call      printf                                        #267.2
..___tag_value_main.38:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #269.9
        movq      %rbp, %rsp                                    #269.9
        popq      %rbp                                          #269.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #269.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
# -- End  main
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1651863364
	.long	1298097516
	.long	1096764758
	.long	1293965398
	.long	1330791233
	.long	1835619360
	.long	1528838757
	.long	543452197
	.long	543384947
	.long	543452197
	.long	1667593077
	.word	2653
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,47
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1952802932
	.long	1599364961
	.long	1953265005
	.long	2037149801
	.long	1835619360
	.long	1528838757
	.long	543452197
	.long	543384947
	.long	543452197
	.long	1667593077
	.word	2653
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,43
	.data
	.section .note.GNU-stack, ""
# End
