# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-I /home/mrahman/HiRep/Include -O2 -march=core-avx2 -mtune=core-avx2 -S -lm";
	.file "avx_complex_vec_align_load.c"
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
                                                          #101.1
        pushq     %rbp                                          #101.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #101.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #101.1
        pushq     %r12                                          #101.1
        pushq     %r13                                          #101.1
        pushq     %r14                                          #101.1
        pushq     %r15                                          #101.1
        pushq     %rbx                                          #101.1
        subq      $344, %rsp                                    #101.1
        xorl      %esi, %esi                                    #101.1
        movl      $3, %edi                                      #101.1
        call      __intel_new_feature_proc_init                 #101.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.106:                       # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  (%rsp)                                        #101.1
        movl      $.L_2__STRING.0, %edi                         #110.1
        movl      $8, %esi                                      #110.1
        orl       $32832, (%rsp)                                #101.1
        xorl      %eax, %eax                                    #110.1
        vldmxcsr  (%rsp)                                        #101.1
..___tag_value_main.11:
#       printf(const char *__restrict__, ...)
        call      printf                                        #110.1
..___tag_value_main.12:
                                # LOE
..B1.2:                         # Preds ..B1.106
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.1, %edi                         #111.1
        movl      $32, %esi                                     #111.1
        xorl      %eax, %eax                                    #111.1
..___tag_value_main.13:
#       printf(const char *__restrict__, ...)
        call      printf                                        #111.1
..___tag_value_main.14:
                                # LOE
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        movl      $400, %edi                                    #118.7
#       malloc(size_t)
        call      malloc                                        #118.7
                                # LOE rax
..B1.107:                       # Preds ..B1.3
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #118.7
                                # LOE rbx
..B1.4:                         # Preds ..B1.107
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #118.7
#       malloc(size_t)
        call      malloc                                        #118.7
                                # LOE rax rbx
..B1.108:                       # Preds ..B1.4
                                # Execution count [5.70e-01]
        movq      %rax, %r12                                    #118.7
                                # LOE rbx r12
..B1.5:                         # Preds ..B1.108
                                # Execution count [5.70e-01]
        testq     %rbx, %rbx                                    #118.7
        je        ..B1.101      # Prob 5%                       #118.7
                                # LOE rbx r12
..B1.6:                         # Preds ..B1.5
                                # Execution count [5.42e-01]
        testq     %r12, %r12                                    #118.7
        je        ..B1.101      # Prob 3%                       #118.7
                                # LOE rbx r12
..B1.7:                         # Preds ..B1.6
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #118.7
        lea       256(%rbx), %r14                               #118.7
        andq      $-256, %r14                                   #118.7
        movq      %r14, (%r12)                                  #118.7
        movq      %rbx, 8(%r12)                                 #118.7
        movq      %rax, 16(%r12)                                #118.7
        movq      %r12, first(%rip)                             #118.7
                                # LOE r14
..B1.8:                         # Preds ..B1.103 ..B1.7
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #119.8
#       malloc(size_t)
        call      malloc                                        #119.8
                                # LOE rax r14
..B1.109:                       # Preds ..B1.8
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #119.8
                                # LOE rbx r14
..B1.9:                         # Preds ..B1.109
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #119.8
#       malloc(size_t)
        call      malloc                                        #119.8
                                # LOE rax rbx r14
..B1.110:                       # Preds ..B1.9
                                # Execution count [5.70e-01]
        movq      %rax, %r12                                    #119.8
                                # LOE rbx r12 r14
..B1.10:                        # Preds ..B1.110
                                # Execution count [5.70e-01]
        testq     %rbx, %rbx                                    #119.8
        je        ..B1.98       # Prob 5%                       #119.8
                                # LOE rbx r12 r14
..B1.11:                        # Preds ..B1.10
                                # Execution count [5.42e-01]
        testq     %r12, %r12                                    #119.8
        je        ..B1.98       # Prob 3%                       #119.8
                                # LOE rbx r12 r14
..B1.12:                        # Preds ..B1.11
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #119.8
        lea       256(%rbx), %r15                               #119.8
        andq      $-256, %r15                                   #119.8
        movq      %r15, (%r12)                                  #119.8
        movq      %rbx, 8(%r12)                                 #119.8
        movq      %rax, 16(%r12)                                #119.8
        movq      %r12, first(%rip)                             #119.8
                                # LOE r14 r15
..B1.13:                        # Preds ..B1.100 ..B1.12
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #120.9
#       malloc(size_t)
        call      malloc                                        #120.9
                                # LOE rax r14 r15
..B1.111:                       # Preds ..B1.13
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #120.9
                                # LOE r12 r14 r15
..B1.14:                        # Preds ..B1.111
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #120.9
#       malloc(size_t)
        call      malloc                                        #120.9
                                # LOE rax r12 r14 r15
..B1.112:                       # Preds ..B1.14
                                # Execution count [5.70e-01]
        movq      %rax, %rbx                                    #120.9
                                # LOE rbx r12 r14 r15
..B1.15:                        # Preds ..B1.112
                                # Execution count [5.70e-01]
        testq     %r12, %r12                                    #120.9
        je        ..B1.95       # Prob 5%                       #120.9
                                # LOE rbx r12 r14 r15
..B1.16:                        # Preds ..B1.15
                                # Execution count [5.42e-01]
        testq     %rbx, %rbx                                    #120.9
        je        ..B1.95       # Prob 3%                       #120.9
                                # LOE rbx r12 r14 r15
..B1.17:                        # Preds ..B1.16
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #120.9
        lea       256(%r12), %r13                               #120.9
        andq      $-256, %r13                                   #120.9
        movq      %r13, (%rbx)                                  #120.9
        movq      %r12, 8(%rbx)                                 #120.9
        movq      %rax, 16(%rbx)                                #120.9
        movq      %rbx, first(%rip)                             #120.9
                                # LOE r13 r14 r15
..B1.18:                        # Preds ..B1.97 ..B1.17
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #121.8
#       malloc(size_t)
        call      malloc                                        #121.8
                                # LOE rax r13 r14 r15
..B1.113:                       # Preds ..B1.18
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #121.8
                                # LOE r12 r13 r14 r15
..B1.19:                        # Preds ..B1.113
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #121.8
#       malloc(size_t)
        call      malloc                                        #121.8
                                # LOE rax r12 r13 r14 r15
..B1.114:                       # Preds ..B1.19
                                # Execution count [5.70e-01]
        movq      %rax, %rbx                                    #121.8
                                # LOE rbx r12 r13 r14 r15
..B1.20:                        # Preds ..B1.114
                                # Execution count [5.70e-01]
        testq     %r12, %r12                                    #121.8
        je        ..B1.92       # Prob 5%                       #121.8
                                # LOE rbx r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20
                                # Execution count [5.42e-01]
        testq     %rbx, %rbx                                    #121.8
        je        ..B1.92       # Prob 3%                       #121.8
                                # LOE rbx r12 r13 r14 r15
..B1.22:                        # Preds ..B1.21
                                # Execution count [5.21e-01]
        movq      first(%rip), %rcx                             #121.8
        lea       256(%r12), %rax                               #121.8
        andq      $-256, %rax                                   #121.8
        movq      %rax, 280(%rsp)                               #121.8[spill]
        movq      %rax, (%rbx)                                  #121.8
        movq      %r12, 8(%rbx)                                 #121.8
        movq      %rcx, 16(%rbx)                                #121.8
        movq      %rbx, first(%rip)                             #121.8
                                # LOE r13 r14 r15
..B1.23:                        # Preds ..B1.94 ..B1.22
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #122.9
#       malloc(size_t)
        call      malloc                                        #122.9
                                # LOE rax r13 r14 r15
..B1.115:                       # Preds ..B1.23
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #122.9
                                # LOE rbx r13 r14 r15
..B1.24:                        # Preds ..B1.115
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #122.9
#       malloc(size_t)
        call      malloc                                        #122.9
                                # LOE rax rbx r13 r14 r15
..B1.116:                       # Preds ..B1.24
                                # Execution count [5.70e-01]
        movq      %rax, %rcx                                    #122.9
                                # LOE rcx rbx r13 r14 r15
..B1.25:                        # Preds ..B1.116
                                # Execution count [5.70e-01]
        testq     %rbx, %rbx                                    #122.9
        je        ..B1.89       # Prob 5%                       #122.9
                                # LOE rcx rbx r13 r14 r15
..B1.26:                        # Preds ..B1.25
                                # Execution count [5.42e-01]
        testq     %rcx, %rcx                                    #122.9
        je        ..B1.89       # Prob 3%                       #122.9
                                # LOE rcx rbx r13 r14 r15
..B1.27:                        # Preds ..B1.26
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #122.9
        lea       256(%rbx), %r12                               #122.9
        andq      $-256, %r12                                   #122.9
        movq      %r12, (%rcx)                                  #122.9
        movq      %rbx, 8(%rcx)                                 #122.9
        movq      %rax, 16(%rcx)                                #122.9
        movq      %rcx, first(%rip)                             #122.9
                                # LOE r12 r13 r14 r15
..B1.28:                        # Preds ..B1.91 ..B1.27
                                # Execution count [1.00e+00]
        movq      %r15, %rdi                                    #135.2
        movq      %r13, %rsi                                    #135.2
        movq      %r14, %rdx                                    #135.2
        movl      $5, %ecx                                      #135.2
..___tag_value_main.16:
#       my_init(suNf_vector *, suNf_vector *, suNf *, const int)
        call      my_init                                       #135.2
..___tag_value_main.17:
                                # LOE r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.00e+00]
        xorl      %esi, %esi                                    #235.2
        lea       192(%rsp), %rdi                               #235.2
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #235.2
                                # LOE r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.00e+00]
        movq      $1129578500, (%rsp)                           #239.3
        xorl      %r10d, %r10d                                  #239.3
        movq      %r10, 8(%rsp)                                 #239.3
        lea       (%rsp), %rax                                  #239.0
        movq      %r10, 16(%rax)                                #239.3
        xorl      %edx, %edx                                    #239.0
        movq      %r10, 24(%rax)                                #239.3
        movl      $1129578498, %r8d                             #240.3
        movq      %r10, 32(%rax)                                #239.3
        lea       208(%rsp), %rdi                               #256.2
        movq      %r10, 40(%rax)                                #239.3
        xorl      %esi, %esi                                    #256.2
        rolq      $3, %rdi                                      #239.0
        rolq      $13, %rdi                                     #239.0
        rolq      $61, %rdi                                     #239.0
        rolq      $51, %rdi                                     #239.0
        xchgq     %rbx, %rbx                                    #239.0
        lea       48(%rsp), %rax                                #240.0
        movq      %rdx, 200(%rax)                               #239.0
        xorl      %edx, %edx                                    #240.0
        movq      200(%rax), %rcx                               #239.3
        movq      %r8, (%rax)                                   #240.3
        movq      %r10, 8(%rax)                                 #240.3
        movq      %r10, 16(%rax)                                #240.3
        movq      %r10, 24(%rax)                                #240.3
        movq      %r10, 32(%rax)                                #240.3
        movq      %r10, 40(%rax)                                #240.3
        rolq      $3, %rdi                                      #240.0
        rolq      $13, %rdi                                     #240.0
        rolq      $61, %rdi                                     #240.0
        rolq      $51, %rdi                                     #240.0
        xchgq     %rbx, %rbx                                    #240.0
        lea       96(%rsp), %rax                                #242.0
        vmovupd   (%r14), %ymm2                                 #241.3
        vmovupd   48(%r14), %ymm7                               #241.3
        vmovupd   96(%r14), %ymm4                               #241.3
        vunpckhpd %ymm2, %ymm2, %ymm9                           #241.3
        vmovupd   (%r15), %ymm2                                 #241.3
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #241.3
        vunpckhpd %ymm7, %ymm7, %ymm10                          #241.3
        vmulpd    %ymm8, %ymm9, %ymm11                          #241.3
        vmulpd    %ymm8, %ymm10, %ymm12                         #241.3
        vmovupd   16(%r14), %ymm7                               #241.3
        vmovddup  (%r14), %ymm13                                #241.3
        vmovddup  48(%r14), %ymm14                              #241.3
        vfmaddsub231pd %ymm13, %ymm2, %ymm11                    #241.3
        vfmaddsub231pd %ymm14, %ymm2, %ymm12                    #241.3
        vunpckhpd %ymm4, %ymm4, %ymm6                           #241.3
        vmovupd   (%r13), %ymm4                                 #241.3
        vperm2f128 $1, %ymm11, %ymm11, %ymm15                   #241.3
        vperm2f128 $2, %ymm11, %ymm12, %ymm1                    #241.3
        vblendpd  $12, %ymm12, %ymm15, %ymm0                    #241.3
        vmovupd   16(%r15), %ymm12                              #241.3
        vaddpd    %ymm0, %ymm1, %ymm15                          #241.3
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #241.3
        vmulpd    %ymm3, %ymm9, %ymm9                           #241.3
        vmulpd    %ymm3, %ymm10, %ymm10                         #241.3
        vfmaddsub213pd %ymm9, %ymm4, %ymm13                     #241.3
        vfmaddsub213pd %ymm10, %ymm4, %ymm14                    #241.3
        vperm2f128 $1, %ymm7, %ymm7, %ymm11                     #241.3
        vperm2f128 $1, %ymm12, %ymm12, %ymm7                    #241.3
        vblendpd  $12, 64(%r14), %ymm11, %ymm1                  #241.3
        vblendpd  $12, %ymm12, %ymm7, %ymm12                    #241.3
        vmovddup  %ymm1, %ymm0                                  #241.3
        vunpckhpd %ymm1, %ymm1, %ymm1                           #241.3
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #241.3
        vmulpd    %ymm11, %ymm1, %ymm11                         #241.3
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #241.3
        vperm2f128 $2, %ymm13, %ymm14, %ymm12                   #241.3
        vperm2f128 $1, %ymm13, %ymm13, %ymm9                    #241.3
        vmovupd   16(%r13), %ymm13                              #241.3
        vaddpd    %ymm15, %ymm11, %ymm11                        #241.3
        vperm2f128 $1, %ymm13, %ymm13, %ymm15                   #241.3
        vblendpd  $12, %ymm14, %ymm9, %ymm14                    #241.3
        vblendpd  $12, %ymm13, %ymm15, %ymm9                    #241.3
        vshufpd   $5, %ymm9, %ymm9, %ymm10                      #241.3
        vmulpd    %ymm10, %ymm1, %ymm1                          #241.3
        vaddpd    %ymm14, %ymm12, %ymm14                        #241.3
        vfmaddsub213pd %ymm1, %ymm9, %ymm0                      #241.3
        vmulpd    %ymm8, %ymm6, %ymm9                           #241.3
        vmulpd    %ymm3, %ymm6, %ymm8                           #241.3
        vaddpd    %ymm14, %ymm0, %ymm14                         #241.3
        vmovddup  96(%r14), %ymm5                               #241.3
        vfmaddsub231pd %ymm5, %ymm2, %ymm9                      #241.3
        vmovupd   112(%r14), %ymm2                              #241.3
        vfmaddsub213pd %ymm8, %ymm4, %ymm5                      #241.3
        vperm2f128 $2, %ymm9, %ymm5, %ymm3                      #241.3
        vperm2f128 $1, %ymm9, %ymm9, %ymm6                      #241.3
        vperm2f128 $1, %ymm2, %ymm2, %ymm9                      #241.3
        vblendpd  $12, %ymm2, %ymm9, %ymm4                      #241.3
        vblendpd  $12, %ymm13, %ymm7, %ymm13                    #241.3
        vunpckhpd %ymm4, %ymm4, %ymm12                          #241.3
        vshufpd   $5, %ymm13, %ymm13, %ymm7                     #241.3
        vmulpd    %ymm7, %ymm12, %ymm15                         #241.3
        vmovddup  %ymm4, %ymm10                                 #241.3
        vfmaddsub213pd %ymm15, %ymm13, %ymm10                   #241.3
        vblendpd  $12, %ymm5, %ymm6, %ymm5                      #241.3
        vaddpd    %ymm5, %ymm3, %ymm5                           #241.3
        vaddpd    %ymm5, %ymm10, %ymm1                          #241.3
        movq      184(%rax), %rcx                               #241.3[spill]
        movq      %rdx, 160(%rax)                               #240.0
        xorl      %edx, %edx                                    #242.0
        movq      160(%rax), %rbx                               #240.3
        vmovupd   %ymm11, (%rcx)                                #241.3
        vmovupd   %ymm14, (%r12)                                #241.3
        vextractf128 $1, %ymm1, 32(%r12)                        #241.3
        vmovupd   %xmm1, 32(%rcx)                               #241.3






        movq      %r8, (%rax)                                   #242.3
        movq      %r10, 8(%rax)                                 #242.3
        movq      %r10, 16(%rax)                                #242.3
        movq      %r10, 24(%rax)                                #242.3
        movq      %r10, 32(%rax)                                #242.3
        movq      %r10, 40(%rax)                                #242.3
        rolq      $3, %rdi                                      #242.0
        rolq      $13, %rdi                                     #242.0
        rolq      $61, %rdi                                     #242.0
        rolq      $51, %rdi                                     #242.0
        xchgq     %rbx, %rbx                                    #242.0
        lea       144(%rsp), %rax                               #243.0
        movq      %rdx, 120(%rax)                               #242.0
        xorl      %edx, %edx                                    #243.0
        movq      120(%rax), %r9                                #242.3
        movq      $1129578501, (%rax)                           #243.3
        movq      %r10, 8(%rax)                                 #243.3
        movq      %r10, 16(%rax)                                #243.3
        movq      %r10, 24(%rax)                                #243.3
        movq      %r10, 32(%rax)                                #243.3
        movq      %r10, 40(%rax)                                #243.3
        rolq      $3, %rdi                                      #243.0
        rolq      $13, %rdi                                     #243.0
        rolq      $61, %rdi                                     #243.0
        rolq      $51, %rdi                                     #243.0
        xchgq     %rbx, %rbx                                    #243.0
        vmovupd   48(%r14), %ymm11                              #246.3
        vmovupd   (%r14), %ymm14                                #246.3
        vmovupd   (%r12), %ymm13                                #246.3
        vmovupd   96(%r14), %ymm6                               #246.3
        vmovupd   16(%r14), %ymm10                              #246.3
        vunpckhpd %ymm11, %ymm11, %ymm8                         #246.3
        vmovupd   (%rcx), %ymm11                                #246.3
        vunpckhpd %ymm14, %ymm14, %ymm0                         #246.3
        vshufpd   $5, %ymm11, %ymm11, %ymm5                     #246.3
        vmulpd    %ymm5, %ymm0, %ymm9                           #246.3
        vmulpd    %ymm5, %ymm8, %ymm2                           #246.3
        vmovddup  (%r14), %ymm4                                 #246.3
        vmovddup  48(%r14), %ymm1                               #246.3
        vfmaddsub231pd %ymm4, %ymm11, %ymm9                     #246.3
        vfmaddsub231pd %ymm1, %ymm11, %ymm2                     #246.3
        vperm2f128 $1, %ymm9, %ymm9, %ymm3                      #246.3
        vshufpd   $5, %ymm13, %ymm13, %ymm12                    #246.3
        vperm2f128 $2, %ymm9, %ymm2, %ymm7                      #246.3
        vblendpd  $12, %ymm2, %ymm3, %ymm9                      #246.3
        vunpckhpd %ymm6, %ymm6, %ymm15                          #246.3
        vaddpd    %ymm9, %ymm7, %ymm6                           #246.3
        vmovupd   16(%rcx), %ymm9                               #246.3
        vmulpd    %ymm12, %ymm0, %ymm0                          #246.3
        vmulpd    %ymm12, %ymm8, %ymm8                          #246.3
        vmulpd    %ymm5, %ymm15, %ymm5                          #246.3
        vfmaddsub213pd %ymm0, %ymm13, %ymm4                     #246.3
        vfmaddsub213pd %ymm8, %ymm13, %ymm1                     #246.3
        vperm2f128 $1, %ymm10, %ymm10, %ymm3                    #246.3
        vperm2f128 $1, %ymm9, %ymm9, %ymm7                      #246.3
        vblendpd  $12, 64(%r14), %ymm3, %ymm2                   #246.3
        vblendpd  $12, %ymm9, %ymm7, %ymm3                      #246.3
        vmovddup  %ymm2, %ymm9                                  #246.3
        vunpckhpd %ymm2, %ymm2, %ymm10                          #246.3
        vshufpd   $5, %ymm3, %ymm3, %ymm2                       #246.3
        vmulpd    %ymm2, %ymm10, %ymm2                          #246.3
        vperm2f128 $2, %ymm4, %ymm1, %ymm0                      #246.3
        vperm2f128 $1, %ymm4, %ymm4, %ymm4                      #246.3
        vblendpd  $12, %ymm1, %ymm4, %ymm1                      #246.3
        vmovupd   16(%r12), %ymm4                               #246.3
        vfmaddsub231pd %ymm9, %ymm3, %ymm2                      #246.3
        vaddpd    %ymm1, %ymm0, %ymm0                           #246.3
        vaddpd    %ymm6, %ymm2, %ymm2                           #246.3
        vperm2f128 $1, %ymm4, %ymm4, %ymm3                      #246.3
        vblendpd  $12, %ymm4, %ymm3, %ymm8                      #246.3
        vshufpd   $5, %ymm8, %ymm8, %ymm6                       #246.3
        vmulpd    %ymm6, %ymm10, %ymm10                         #246.3
        vfmaddsub213pd %ymm10, %ymm8, %ymm9                     #246.3
        vaddpd    %ymm0, %ymm9, %ymm9                           #246.3
        vmovupd   112(%r14), %ymm0                              #246.3
        vmovddup  96(%r14), %ymm14                              #246.3
        vfmaddsub231pd %ymm14, %ymm11, %ymm5                    #246.3
        vmulpd    %ymm12, %ymm15, %ymm11                        #246.3
        vperm2f128 $1, %ymm0, %ymm0, %ymm15                     #246.3
        vblendpd  $12, %ymm0, %ymm15, %ymm15                    #246.3
        vblendpd  $12, %ymm4, %ymm7, %ymm4                      #246.3
        vunpckhpd %ymm15, %ymm15, %ymm1                         #246.3
        vshufpd   $5, %ymm4, %ymm4, %ymm7                       #246.3
        vmulpd    %ymm7, %ymm1, %ymm1                           #246.3
        vfmaddsub213pd %ymm11, %ymm13, %ymm14                   #246.3
        vmovddup  %ymm15, %ymm3                                 #246.3
        vperm2f128 $1, %ymm5, %ymm5, %ymm12                     #246.3
        movq      %rdx, 128(%rax)                               #243.0
        vfmaddsub213pd %ymm1, %ymm4, %ymm3                      #246.3
        vperm2f128 $2, %ymm5, %ymm14, %ymm13                    #246.3
        vblendpd  $12, %ymm14, %ymm12, %ymm14                   #246.3
        movq      128(%rax), %r11                               #243.3
        vmovupd   %ymm2, (%r15)                                 #246.3
        vmovupd   %ymm9, (%r13)                                 #246.3
        vaddpd    %ymm14, %ymm13, %ymm5                         #246.3
        vaddpd    %ymm5, %ymm3, %ymm0                           #246.3
        vmovddup  .L_2il0floatpacket.0(%rip), %xmm3             #248.3
        vmulpd    16(%r15), %xmm3, %xmm9                        #249.3
        vmulpd    (%r15), %xmm3, %xmm2                          #248.3
        vmovupd   %xmm9, 16(%r15)                               #249.3
        vmovupd   %xmm2, (%r15)                                 #248.3
        vmulpd    (%r13), %xmm3, %xmm9                          #252.3
        vmulpd    16(%r13), %xmm3, %xmm1                        #253.3
        vmovupd   %xmm9, (%r13)                                 #252.3
        vmovupd   %xmm1, 16(%r13)                               #253.3
        vextractf128 $1, %ymm0, %xmm6                           #246.3
        vmulpd    %xmm0, %xmm3, %xmm2                           #250.3
        vmulpd    %xmm6, %xmm3, %xmm4                           #254.3
        vmovupd   %xmm2, 32(%r15)                               #250.3
        vmovupd   %xmm4, 32(%r13)                               #254.3
        vzeroupper                                              #256.2
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #256.2
                                # LOE r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.00e+00]
        lea       224(%rsp), %rdi                               #257.2
        lea       208(%rsp), %rsi                               #257.2
        lea       192(%rsp), %rdx                               #257.2
..___tag_value_main.19:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #257.2
..___tag_value_main.20:
                                # LOE r12 r13 r14 r15
..B1.32:                        # Preds ..B1.31
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.2, %edi                         #259.2
        xorl      %eax, %eax                                    #259.2
        movq      224(%rsp), %rsi                               #259.2
        movq      232(%rsp), %rdx                               #259.2
..___tag_value_main.21:
#       printf(const char *__restrict__, ...)
        call      printf                                        #259.2
..___tag_value_main.22:
                                # LOE r12 r13 r14 r15
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.00e+00]
        movq      first(%rip), %rcx                             #308.2
        movq      %rcx, %rbx                                    #308.2
        movq      %rcx, %r8                                     #308.2
        testq     %rcx, %rcx                                    #308.2
        je        ..B1.83       # Prob 0%                       #308.2
                                # LOE rcx rbx r8 r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33
                                # Execution count [9.94e-01]
        cmpq      (%rcx), %r14                                  #308.2
        je        ..B1.40       # Prob 20%                      #308.2
                                # LOE rcx rbx r8 r12 r13 r14 r15
..B1.36:                        # Preds ..B1.34 ..B1.37
                                # Execution count [2.31e+00]
        movq      %r8, %rax                                     #308.2
        movq      16(%r8), %r8                                  #308.2
        testq     %r8, %r8                                      #308.2
        je        ..B1.44       # Prob 18%                      #308.2
                                # LOE rax rcx rbx r8 r12 r13 r14 r15
..B1.37:                        # Preds ..B1.36
                                # Execution count [1.90e+00]
        cmpq      (%r8), %r14                                   #308.2
        jne       ..B1.36       # Prob 80%                      #308.2
                                # LOE rax rcx rbx r8 r12 r13 r14 r15
..B1.38:                        # Preds ..B1.37
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #308.2
        je        ..B1.40       # Prob 12%                      #308.2
                                # LOE rax rbx r8 r12 r13 r15
..B1.39:                        # Preds ..B1.38
                                # Execution count [5.09e-01]
        movq      16(%r8), %rdx                                 #308.2
        movq      %rdx, 16(%rax)                                #308.2
        jmp       ..B1.41       # Prob 100%                     #308.2
                                # LOE rbx r8 r12 r13 r15
..B1.40:                        # Preds ..B1.34 ..B1.38
                                # Execution count [6.94e-02]
        movq      16(%r8), %rbx                                 #308.2
        movq      %rbx, first(%rip)                             #308.2
                                # LOE rbx r8 r12 r13 r15
..B1.41:                        # Preds ..B1.39 ..B1.40
                                # Execution count [5.78e-01]
        movq      8(%r8), %rdi                                  #308.2
        movq      %r8, 240(%rsp)                                #308.2[spill]
#       free(void *)
        call      free                                          #308.2
                                # LOE rbx r12 r13 r15
..B1.42:                        # Preds ..B1.41
                                # Execution count [5.78e-01]
        movq      240(%rsp), %r8                                #[spill]
        movq      %r8, %rdi                                     #308.2
#       free(void *)
        call      free                                          #308.2
                                # LOE rbx r12 r13 r15
..B1.43:                        # Preds ..B1.42
                                # Execution count [5.78e-01]
        movq      %rbx, %rcx                                    #309.2
        testq     %rbx, %rbx                                    #309.2
        je        ..B1.83       # Prob 0%                       #309.2
                                # LOE rcx rbx r12 r13 r15
..B1.44:                        # Preds ..B1.36 ..B1.43
                                # Execution count [9.94e-01]
        cmpq      (%rcx), %r15                                  #309.2
        je        ..B1.50       # Prob 20%                      #309.2
                                # LOE rcx rbx r12 r13 r15
..B1.46:                        # Preds ..B1.44 ..B1.47
                                # Execution count [2.31e+00]
        movq      %rcx, %rax                                    #309.2
        movq      16(%rcx), %rcx                                #309.2
        testq     %rcx, %rcx                                    #309.2
        je        ..B1.86       # Prob 18%                      #309.2
                                # LOE rax rcx rbx r12 r13 r15
..B1.47:                        # Preds ..B1.46
                                # Execution count [1.90e+00]
        cmpq      (%rcx), %r15                                  #309.2
        jne       ..B1.46       # Prob 80%                      #309.2
                                # LOE rax rcx rbx r12 r13 r15
..B1.48:                        # Preds ..B1.47
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #309.2
        je        ..B1.50       # Prob 12%                      #309.2
                                # LOE rax rcx rbx r12 r13
..B1.49:                        # Preds ..B1.48
                                # Execution count [5.09e-01]
        movq      16(%rcx), %rdx                                #309.2
        movq      %rdx, 16(%rax)                                #309.2
        jmp       ..B1.51       # Prob 100%                     #309.2
                                # LOE rcx rbx r12 r13
..B1.50:                        # Preds ..B1.44 ..B1.48
                                # Execution count [6.94e-02]
        movq      16(%rcx), %rbx                                #309.2
        movq      %rbx, first(%rip)                             #309.2
                                # LOE rcx rbx r12 r13
..B1.51:                        # Preds ..B1.49 ..B1.50
                                # Execution count [5.78e-01]
        movq      8(%rcx), %rdi                                 #309.2
        movq      %rcx, 240(%rsp)                               #309.2[spill]
#       free(void *)
        call      free                                          #309.2
                                # LOE rbx r12 r13
..B1.52:                        # Preds ..B1.51
                                # Execution count [5.78e-01]
        movq      240(%rsp), %rcx                               #[spill]
        movq      %rcx, %rdi                                    #309.2
#       free(void *)
        call      free                                          #309.2
                                # LOE rbx r12 r13
..B1.53:                        # Preds ..B1.52
                                # Execution count [5.75e-01]
        movq      %rbx, %r14                                    #310.2
        testq     %rbx, %rbx                                    #310.2
        je        ..B1.83       # Prob 0%                       #310.2
                                # LOE rbx r12 r13 r14
..B1.54:                        # Preds ..B1.86 ..B1.53
                                # Execution count [9.94e-01]
        cmpq      (%r14), %r13                                  #310.2
        je        ..B1.60       # Prob 20%                      #310.2
                                # LOE rbx r12 r13 r14
..B1.56:                        # Preds ..B1.54 ..B1.57
                                # Execution count [2.31e+00]
        movq      %r14, %rax                                    #310.2
        movq      16(%r14), %r14                                #310.2
        testq     %r14, %r14                                    #310.2
        je        ..B1.85       # Prob 18%                      #310.2
                                # LOE rax rbx r12 r13 r14
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.90e+00]
        cmpq      (%r14), %r13                                  #310.2
        jne       ..B1.56       # Prob 80%                      #310.2
                                # LOE rax rbx r12 r13 r14
..B1.58:                        # Preds ..B1.57
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #310.2
        je        ..B1.60       # Prob 12%                      #310.2
                                # LOE rax rbx r12 r14
..B1.59:                        # Preds ..B1.58
                                # Execution count [5.09e-01]
        movq      16(%r14), %rdx                                #310.2
        movq      %rdx, 16(%rax)                                #310.2
        jmp       ..B1.61       # Prob 100%                     #310.2
                                # LOE rbx r12 r14
..B1.60:                        # Preds ..B1.54 ..B1.58
                                # Execution count [6.94e-02]
        movq      16(%r14), %rbx                                #310.2
        movq      %rbx, first(%rip)                             #310.2
                                # LOE rbx r12 r14
..B1.61:                        # Preds ..B1.59 ..B1.60
                                # Execution count [5.78e-01]
        movq      8(%r14), %rdi                                 #310.2
#       free(void *)
        call      free                                          #310.2
                                # LOE rbx r12 r14
..B1.62:                        # Preds ..B1.61
                                # Execution count [5.78e-01]
        movq      %r14, %rdi                                    #310.2
#       free(void *)
        call      free                                          #310.2
                                # LOE rbx r12
..B1.63:                        # Preds ..B1.62
                                # Execution count [5.77e-01]
        movq      %rbx, %r13                                    #311.2
        testq     %rbx, %rbx                                    #311.2
        je        ..B1.83       # Prob 0%                       #311.2
                                # LOE rbx r12 r13
..B1.64:                        # Preds ..B1.85 ..B1.63
                                # Execution count [9.94e-01]
        movq      280(%rsp), %rax                               #311.2[spill]
        cmpq      (%r13), %rax                                  #311.2
        je        ..B1.70       # Prob 20%                      #311.2
                                # LOE rax rbx r12 r13
..B1.65:                        # Preds ..B1.64
                                # Execution count [7.95e-01]
        movq      %rax, %rdx                                    #
                                # LOE rdx rbx r12 r13
..B1.66:                        # Preds ..B1.67 ..B1.65
                                # Execution count [2.31e+00]
        movq      %r13, %rax                                    #311.2
        movq      16(%r13), %r13                                #311.2
        testq     %r13, %r13                                    #311.2
        je        ..B1.74       # Prob 18%                      #311.2
                                # LOE rax rdx rbx r12 r13
..B1.67:                        # Preds ..B1.66
                                # Execution count [1.90e+00]
        cmpq      (%r13), %rdx                                  #311.2
        jne       ..B1.66       # Prob 80%                      #311.2
                                # LOE rax rdx rbx r12 r13
..B1.68:                        # Preds ..B1.67
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #311.2
        je        ..B1.70       # Prob 12%                      #311.2
                                # LOE rax rbx r12 r13
..B1.69:                        # Preds ..B1.68
                                # Execution count [5.09e-01]
        movq      16(%r13), %rdx                                #311.2
        movq      %rdx, 16(%rax)                                #311.2
        jmp       ..B1.71       # Prob 100%                     #311.2
                                # LOE rbx r12 r13
..B1.70:                        # Preds ..B1.64 ..B1.68
                                # Execution count [6.94e-02]
        movq      16(%r13), %rbx                                #311.2
        movq      %rbx, first(%rip)                             #311.2
                                # LOE rbx r12 r13
..B1.71:                        # Preds ..B1.69 ..B1.70
                                # Execution count [5.78e-01]
        movq      8(%r13), %rdi                                 #311.2
#       free(void *)
        call      free                                          #311.2
                                # LOE rbx r12 r13
..B1.72:                        # Preds ..B1.71
                                # Execution count [5.78e-01]
        movq      %r13, %rdi                                    #311.2
#       free(void *)
        call      free                                          #311.2
                                # LOE rbx r12
..B1.73:                        # Preds ..B1.72
                                # Execution count [5.77e-01]
        testq     %rbx, %rbx                                    #312.2
        je        ..B1.83       # Prob 0%                       #312.2
                                # LOE rbx r12
..B1.74:                        # Preds ..B1.66 ..B1.73
                                # Execution count [9.94e-01]
        cmpq      (%rbx), %r12                                  #312.2
        je        ..B1.80       # Prob 20%                      #312.2
                                # LOE rbx r12
..B1.76:                        # Preds ..B1.74 ..B1.77
                                # Execution count [2.31e+00]
        movq      %rbx, %rax                                    #312.2
        movq      16(%rbx), %rbx                                #312.2
        testq     %rbx, %rbx                                    #312.2
        je        ..B1.83       # Prob 18%                      #312.2
                                # LOE rax rbx r12
..B1.77:                        # Preds ..B1.76
                                # Execution count [1.90e+00]
        cmpq      (%rbx), %r12                                  #312.2
        jne       ..B1.76       # Prob 80%                      #312.2
                                # LOE rax rbx r12
..B1.78:                        # Preds ..B1.77
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #312.2
        je        ..B1.80       # Prob 12%                      #312.2
                                # LOE rax rbx
..B1.79:                        # Preds ..B1.78
                                # Execution count [5.09e-01]
        movq      16(%rbx), %rdx                                #312.2
        movq      %rdx, 16(%rax)                                #312.2
        jmp       ..B1.81       # Prob 100%                     #312.2
                                # LOE rbx
..B1.80:                        # Preds ..B1.74 ..B1.78
                                # Execution count [6.94e-02]
        movq      16(%rbx), %rax                                #312.2
        movq      %rax, first(%rip)                             #312.2
                                # LOE rbx
..B1.81:                        # Preds ..B1.79 ..B1.80
                                # Execution count [5.78e-01]
        movq      8(%rbx), %rdi                                 #312.2
#       free(void *)
        call      free                                          #312.2
                                # LOE rbx
..B1.82:                        # Preds ..B1.81
                                # Execution count [5.78e-01]
        movq      %rbx, %rdi                                    #312.2
#       free(void *)
        call      free                                          #312.2
                                # LOE
..B1.83:                        # Preds ..B1.76 ..B1.82 ..B1.73 ..B1.63 ..B1.53
                                #       ..B1.43 ..B1.33
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #320.9
        addq      $344, %rsp                                    #320.9
	.cfi_restore 3
        popq      %rbx                                          #320.9
	.cfi_restore 15
        popq      %r15                                          #320.9
	.cfi_restore 14
        popq      %r14                                          #320.9
	.cfi_restore 13
        popq      %r13                                          #320.9
	.cfi_restore 12
        popq      %r12                                          #320.9
        movq      %rbp, %rsp                                    #320.9
        popq      %rbp                                          #320.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #320.9
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.85:                        # Preds ..B1.56
                                # Execution count [4.16e-01]: Infreq
        movq      %rbx, %r13                                    #311.2
        jmp       ..B1.64       # Prob 100%                     #311.2
                                # LOE rbx r12 r13
..B1.86:                        # Preds ..B1.46
                                # Execution count [4.16e-01]: Infreq
        movq      %rbx, %r14                                    #310.2
        jmp       ..B1.54       # Prob 100%                     #310.2
                                # LOE rbx r12 r13 r14
..B1.89:                        # Preds ..B1.25 ..B1.26
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #122.9
        movq      %rcx, (%rsp)                                  #122.9[spill]
#       free(void *)
        call      free                                          #122.9
                                # LOE r13 r14 r15
..B1.90:                        # Preds ..B1.89
                                # Execution count [4.88e-02]: Infreq
        movq      (%rsp), %rcx                                  #[spill]
        movq      %rcx, %rdi                                    #122.9
#       free(void *)
        call      free                                          #122.9
                                # LOE r13 r14 r15
..B1.91:                        # Preds ..B1.90
                                # Execution count [4.88e-02]: Infreq
        xorl      %r12d, %r12d                                  #122.9
        jmp       ..B1.28       # Prob 100%                     #122.9
                                # LOE r12 r13 r14 r15
..B1.92:                        # Preds ..B1.20 ..B1.21
                                # Execution count [4.88e-02]: Infreq
        movq      %r12, %rdi                                    #121.8
#       free(void *)
        call      free                                          #121.8
                                # LOE rbx r13 r14 r15
..B1.93:                        # Preds ..B1.92
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #121.8
#       free(void *)
        call      free                                          #121.8
                                # LOE r13 r14 r15
..B1.94:                        # Preds ..B1.93
                                # Execution count [4.88e-02]: Infreq
        movq      $0, 280(%rsp)                                 #121.8[spill]
        jmp       ..B1.23       # Prob 100%                     #121.8
                                # LOE r13 r14 r15
..B1.95:                        # Preds ..B1.16 ..B1.15
                                # Execution count [4.88e-02]: Infreq
        movq      %r12, %rdi                                    #120.9
#       free(void *)
        call      free                                          #120.9
                                # LOE rbx r14 r15
..B1.96:                        # Preds ..B1.95
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #120.9
#       free(void *)
        call      free                                          #120.9
                                # LOE r14 r15
..B1.97:                        # Preds ..B1.96
                                # Execution count [4.88e-02]: Infreq
        xorl      %r13d, %r13d                                  #120.9
        jmp       ..B1.18       # Prob 100%                     #120.9
                                # LOE r13 r14 r15
..B1.98:                        # Preds ..B1.10 ..B1.11
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #119.8
#       free(void *)
        call      free                                          #119.8
                                # LOE r12 r14
..B1.99:                        # Preds ..B1.98
                                # Execution count [4.88e-02]: Infreq
        movq      %r12, %rdi                                    #119.8
#       free(void *)
        call      free                                          #119.8
                                # LOE r14
..B1.100:                       # Preds ..B1.99
                                # Execution count [4.88e-02]: Infreq
        xorl      %r15d, %r15d                                  #119.8
        jmp       ..B1.13       # Prob 100%                     #119.8
                                # LOE r14 r15
..B1.101:                       # Preds ..B1.5 ..B1.6
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #118.7
#       free(void *)
        call      free                                          #118.7
                                # LOE r12
..B1.102:                       # Preds ..B1.101
                                # Execution count [4.88e-02]: Infreq
        movq      %r12, %rdi                                    #118.7
#       free(void *)
        call      free                                          #118.7
                                # LOE
..B1.103:                       # Preds ..B1.102
                                # Execution count [4.88e-02]: Infreq
        xorl      %r14d, %r14d                                  #118.7
        jmp       ..B1.8        # Prob 100%                     #118.7
        .align    16,0x90
                                # LOE r14
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
# -- End  main
	.text
.L_2__routine_start_amalloc_1:
# -- Begin  amalloc
	.text
# mark_begin;
       .align    16,0x90
	.globl amalloc
# --- amalloc(size_t, int)
amalloc:
# parameter 1: %rdi
# parameter 2: %esi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_amalloc.46:
..L47:
                                                         #486.1
        pushq     %r12                                          #486.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #486.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %rbp                                          #486.1
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
        testq     %rdi, %rdi                                    #492.15
        jbe       ..B2.11       # Prob 28%                      #492.15
                                # LOE rbx rdi r14 r15 esi
..B2.2:                         # Preds ..B2.1
                                # Execution count [7.20e-01]
        testl     %esi, %esi                                    #492.26
        jl        ..B2.11       # Prob 20%                      #492.26
                                # LOE rbx rdi r14 r15 esi
..B2.3:                         # Preds ..B2.2
                                # Execution count [5.70e-01]
        movl      $1, %eax                                      #495.2
        shlx      %esi, %eax, %r13d                             #495.15
        movslq    %r13d, %r13                                   #495.2
        addq      %r13, %rdi                                    #498.22
#       malloc(size_t)
        call      malloc                                        #498.22
                                # LOE rax rbx r13 r14 r15
..B2.14:                        # Preds ..B2.3
                                # Execution count [5.70e-01]
        movq      %rax, %rbp                                    #498.22
                                # LOE rbx rbp r13 r14 r15
..B2.4:                         # Preds ..B2.14
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #499.25
#       malloc(size_t)
        call      malloc                                        #499.25
                                # LOE rax rbx rbp r13 r14 r15
..B2.15:                        # Preds ..B2.4
                                # Execution count [5.70e-01]
        movq      %rax, %r12                                    #499.25
                                # LOE rbx rbp r12 r13 r14 r15
..B2.5:                         # Preds ..B2.15
                                # Execution count [5.70e-01]
        testq     %rbp, %rbp                                    #501.20
        je        ..B2.9        # Prob 5%                       #501.20
                                # LOE rbx rbp r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [5.42e-01]
        testq     %r12, %r12                                    #501.37
        je        ..B2.9        # Prob 3%                       #501.37
                                # LOE rbx rbp r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [5.21e-01]
        movq      %rbp, 8(%r12)                                 #510.4
        lea       (%r13,%rbp), %rax                             #508.35
        decq      %r13                                          #496.33
        negq      %r13                                          #508.59
        decq      %r13                                          #508.59
        movq      first(%rip), %rbp                             #511.16
        andq      %r13, %rax                                    #508.59
        movq      %rax, (%r12)                                  #509.4
        movq      %rbp, 16(%r12)                                #511.4
        movq      %r12, first(%rip)                             #512.2
	.cfi_restore 6
        popq      %rbp                                          #518.18
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #518.18
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #518.18
	.cfi_def_cfa_offset 8
        ret                                                     #518.18
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	.cfi_offset 12, -16
	.cfi_offset 13, -24
                                # LOE
..B2.9:                         # Preds ..B2.6 ..B2.5
                                # Execution count [4.88e-02]
        movq      %rbp, %rdi                                    #503.3
#       free(void *)
        call      free                                          #503.3
                                # LOE rbx r12 r14 r15
..B2.10:                        # Preds ..B2.9
                                # Execution count [4.88e-02]
        movq      %r12, %rdi                                    #504.3
#       free(void *)
        call      free                                          #504.3
                                # LOE rbx r14 r15
..B2.11:                        # Preds ..B2.2 ..B2.1 ..B2.10
                                # Execution count [4.88e-02]
        xorl      %eax, %eax                                    #505.10
	.cfi_restore 6
        popq      %rbp                                          #505.10
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #505.10
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #505.10
	.cfi_def_cfa_offset 8
        ret                                                     #505.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	amalloc,@function
	.size	amalloc,.-amalloc
..LNamalloc.1:
	.data
# -- End  amalloc
	.text
.L_2__routine_start_afree_2:
# -- Begin  afree
	.text
# mark_begin;
       .align    16,0x90
	.globl afree
# --- afree(void *)
afree:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_afree.71:
..L72:
                                                         #522.1
        pushq     %r15                                          #522.1
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
        movq      first(%rip), %r15                             #531.11
        testq     %r15, %r15                                    #531.23
        je        ..B3.13       # Prob 0%                       #531.23
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
                                # Execution count [9.94e-01]
        cmpq      (%r15), %rdi                                  #533.20
        je        ..B3.8        # Prob 20%                      #533.20
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B3.4:                         # Preds ..B3.2 ..B3.5
                                # Execution count [2.31e+00]
        movq      %r15, %rax                                    #545.3
        movq      16(%r15), %r15                                #531.35
        testq     %r15, %r15                                    #531.23
        je        ..B3.13       # Prob 18%                      #531.23
                                # LOE rax rbx rbp rdi r12 r13 r14 r15
..B3.5:                         # Preds ..B3.4
                                # Execution count [1.90e+00]
        cmpq      (%r15), %rdi                                  #533.20
        jne       ..B3.4        # Prob 80%                      #533.20
                                # LOE rax rbx rbp rdi r12 r13 r14 r15
..B3.6:                         # Preds ..B3.5
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #535.13
        je        ..B3.8        # Prob 12%                      #535.13
                                # LOE rax rbx rbp r12 r13 r14 r15
..B3.7:                         # Preds ..B3.6
                                # Execution count [5.09e-01]
        movq      16(%r15), %rdx                                #536.19
        movq      %rdx, 16(%rax)                                #536.7
        jmp       ..B3.9        # Prob 100%                     #536.7
                                # LOE rbx rbp r12 r13 r14 r15
..B3.8:                         # Preds ..B3.2 ..B3.6
                                # Execution count [6.94e-02]
        movq      16(%r15), %rax                                #538.15
        movq      %rax, first(%rip)                             #538.5
                                # LOE rbx rbp r12 r13 r14 r15
..B3.9:                         # Preds ..B3.7 ..B3.8
                                # Execution count [5.78e-01]
        movq      8(%r15), %rdi                                 #540.4
#       free(void *)
        call      free                                          #540.4
                                # LOE rbx rbp r12 r13 r14 r15
..B3.10:                        # Preds ..B3.9
                                # Execution count [5.78e-01]
        movq      %r15, %rdi                                    #541.4
	.cfi_restore 15
        popq      %r15                                          #541.4
	.cfi_def_cfa_offset 8
#       free(void *)
        jmp       free                                          #541.4
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
                                # LOE
..B3.13:                        # Preds ..B3.4 ..B3.1
                                # Execution count [4.22e-01]: Infreq
	.cfi_restore 15
        popq      %r15                                          #547.1
	.cfi_def_cfa_offset 8
        ret                                                     #547.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	afree,@function
	.size	afree,.-afree
..LNafree.2:
	.data
# -- End  afree
	.bss
	.align 8
	.align 8
first:
	.type	first,@object
	.size	first,8
	.space 8	# pad
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.0:
	.long	0xd2f1a9fc,0x3f50624d,0x00000000,0x00000000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,16
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1195985985
	.long	540876878
	.long	680997
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,12
	.align 4
.L_2__STRING.1:
	.long	1598899533
	.long	1195985985
	.long	540876878
	.long	680997
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,16
	.align 4
.L_2__STRING.2:
	.long	1651863364
	.long	1298097516
	.long	1096764758
	.long	1293965398
	.long	1869767521
	.long	1768710432
	.long	1684368999
	.long	1634692191
	.long	1767120996
	.long	540697965
	.long	1684809051
	.long	1667592992
	.long	1684808992
	.long	1702065440
	.long	679267
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,60
	.data
	.section .note.GNU-stack, ""
# End
