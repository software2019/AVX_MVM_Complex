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
..B1.108:                       # Preds ..B1.1
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
..B1.2:                         # Preds ..B1.108
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
..B1.109:                       # Preds ..B1.3
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #118.7
                                # LOE rbx
..B1.4:                         # Preds ..B1.109
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #118.7
#       malloc(size_t)
        call      malloc                                        #118.7
                                # LOE rax rbx
..B1.110:                       # Preds ..B1.4
                                # Execution count [5.70e-01]
        movq      %rax, %r13                                    #118.7
                                # LOE rbx r13
..B1.5:                         # Preds ..B1.110
                                # Execution count [5.70e-01]
        testq     %rbx, %rbx                                    #118.7
        je        ..B1.103      # Prob 5%                       #118.7
                                # LOE rbx r13
..B1.6:                         # Preds ..B1.5
                                # Execution count [5.42e-01]
        testq     %r13, %r13                                    #118.7
        je        ..B1.103      # Prob 3%                       #118.7
                                # LOE rbx r13
..B1.7:                         # Preds ..B1.6
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #118.7
        lea       256(%rbx), %r12                               #118.7
        andq      $-256, %r12                                   #118.7
        xorl      %r15d, %r15d                                  #118.7
        movq      %r12, (%r13)                                  #118.7
        movq      %rbx, 8(%r13)                                 #118.7
        movq      %rax, 16(%r13)                                #118.7
        movq      %r13, first(%rip)                             #118.7
                                # LOE r12 r15
..B1.8:                         # Preds ..B1.105 ..B1.7
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #119.8
#       malloc(size_t)
        call      malloc                                        #119.8
                                # LOE rax r12 r15
..B1.111:                       # Preds ..B1.8
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #119.8
                                # LOE r12 r14 r15
..B1.9:                         # Preds ..B1.111
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #119.8
#       malloc(size_t)
        call      malloc                                        #119.8
                                # LOE rax r12 r14 r15
..B1.112:                       # Preds ..B1.9
                                # Execution count [5.70e-01]
        movq      %rax, %rbx                                    #119.8
                                # LOE rbx r12 r14 r15
..B1.10:                        # Preds ..B1.112
                                # Execution count [5.70e-01]
        testq     %r14, %r14                                    #119.8
        je        ..B1.100      # Prob 5%                       #119.8
                                # LOE rbx r12 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [5.42e-01]
        testq     %rbx, %rbx                                    #119.8
        je        ..B1.100      # Prob 3%                       #119.8
                                # LOE rbx r12 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #119.8
        lea       256(%r14), %r13                               #119.8
        andq      $-256, %r13                                   #119.8
        movq      %r13, (%rbx)                                  #119.8
        movq      %r14, 8(%rbx)                                 #119.8
        movq      %rax, 16(%rbx)                                #119.8
        movq      %rbx, first(%rip)                             #119.8
                                # LOE r12 r13 r15
..B1.13:                        # Preds ..B1.102 ..B1.12
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #120.9
#       malloc(size_t)
        call      malloc                                        #120.9
                                # LOE rax r12 r13 r15
..B1.113:                       # Preds ..B1.13
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #120.9
                                # LOE rbx r12 r13 r15
..B1.14:                        # Preds ..B1.113
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #120.9
#       malloc(size_t)
        call      malloc                                        #120.9
                                # LOE rax rbx r12 r13 r15
..B1.114:                       # Preds ..B1.14
                                # Execution count [5.70e-01]
        movq      %rax, %r9                                     #120.9
                                # LOE rbx r9 r12 r13 r15
..B1.15:                        # Preds ..B1.114
                                # Execution count [5.70e-01]
        testq     %rbx, %rbx                                    #120.9
        je        ..B1.97       # Prob 5%                       #120.9
                                # LOE rbx r9 r12 r13 r15
..B1.16:                        # Preds ..B1.15
                                # Execution count [5.42e-01]
        testq     %r9, %r9                                      #120.9
        je        ..B1.97       # Prob 3%                       #120.9
                                # LOE rbx r9 r12 r13 r15
..B1.17:                        # Preds ..B1.16
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #120.9
        lea       256(%rbx), %r14                               #120.9
        andq      $-256, %r14                                   #120.9
        movq      %r14, (%r9)                                   #120.9
        movq      %rbx, 8(%r9)                                  #120.9
        movq      %rax, 16(%r9)                                 #120.9
        movq      %r9, first(%rip)                              #120.9
                                # LOE r12 r13 r14 r15
..B1.18:                        # Preds ..B1.99 ..B1.17
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #121.8
#       malloc(size_t)
        call      malloc                                        #121.8
                                # LOE rax r12 r13 r14 r15
..B1.115:                       # Preds ..B1.18
                                # Execution count [1.00e+00]
        movq      %rax, %r9                                     #121.8
                                # LOE r9 r12 r13 r14 r15
..B1.19:                        # Preds ..B1.115
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #121.8
        movq      %r9, (%rsp)                                   #121.8[spill]
#       malloc(size_t)
        call      malloc                                        #121.8
                                # LOE rax r12 r13 r14 r15
..B1.116:                       # Preds ..B1.19
                                # Execution count [5.70e-01]
        movq      (%rsp), %r9                                   #[spill]
        movq      %rax, %r10                                    #121.8
                                # LOE r9 r10 r12 r13 r14 r15
..B1.20:                        # Preds ..B1.116
                                # Execution count [5.70e-01]
        testq     %r9, %r9                                      #121.8
        je        ..B1.94       # Prob 5%                       #121.8
                                # LOE r9 r10 r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20
                                # Execution count [5.42e-01]
        testq     %r10, %r10                                    #121.8
        je        ..B1.94       # Prob 3%                       #121.8
                                # LOE r9 r10 r12 r13 r14 r15
..B1.22:                        # Preds ..B1.21
                                # Execution count [5.21e-01]
        movq      first(%rip), %rax                             #121.8
        lea       256(%r9), %rbx                                #121.8
        andq      $-256, %rbx                                   #121.8
        movq      %rbx, (%r10)                                  #121.8
        movq      %r9, 8(%r10)                                  #121.8
        movq      %rax, 16(%r10)                                #121.8
        movq      %r10, first(%rip)                             #121.8
                                # LOE rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.96 ..B1.22
                                # Execution count [1.00e+00]
        movl      $304, %edi                                    #122.9
#       malloc(size_t)
        call      malloc                                        #122.9
                                # LOE rax rbx r12 r13 r14 r15
..B1.117:                       # Preds ..B1.23
                                # Execution count [1.00e+00]
        movq      %rax, %r9                                     #122.9
                                # LOE rbx r9 r12 r13 r14 r15
..B1.24:                        # Preds ..B1.117
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #122.9
        movq      %r9, (%rsp)                                   #122.9[spill]
#       malloc(size_t)
        call      malloc                                        #122.9
                                # LOE rax rbx r12 r13 r14 r15
..B1.118:                       # Preds ..B1.24
                                # Execution count [5.70e-01]
        movq      (%rsp), %r9                                   #[spill]
        movq      %rax, %r10                                    #122.9
                                # LOE rbx r9 r10 r12 r13 r14 r15
..B1.25:                        # Preds ..B1.118
                                # Execution count [5.70e-01]
        testq     %r9, %r9                                      #122.9
        je        ..B1.91       # Prob 5%                       #122.9
                                # LOE rbx r9 r10 r12 r13 r14 r15
..B1.26:                        # Preds ..B1.25
                                # Execution count [5.42e-01]
        testq     %r10, %r10                                    #122.9
        je        ..B1.91       # Prob 3%                       #122.9
                                # LOE rbx r9 r10 r12 r13 r14 r15
..B1.27:                        # Preds ..B1.26
                                # Execution count [5.21e-01]
        movq      %r9, 8(%r10)                                  #122.9
        lea       256(%r9), %rax                                #122.9
        movq      first(%rip), %r9                              #122.9
        andq      $-256, %rax                                   #122.9
        movq      %rax, 280(%rsp)                               #122.9[spill]
        movq      %rax, (%r10)                                  #122.9
        movq      %r9, 16(%r10)                                 #122.9
        movq      %r10, first(%rip)                             #122.9
                                # LOE rbx r12 r13 r14 r15
..B1.28:                        # Preds ..B1.93 ..B1.27
                                # Execution count [1.00e+00]
        movq      %r13, %rdi                                    #135.2
        movq      %r14, %rsi                                    #135.2
        movq      %r12, %rdx                                    #135.2
        movl      $5, %ecx                                      #135.2
..___tag_value_main.20:
#       my_init(suNf_vector *, suNf_vector *, suNf *, const int)
        call      my_init                                       #135.2
..___tag_value_main.21:
                                # LOE rbx r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.00e+00]
        xorl      %esi, %esi                                    #235.2
        lea       96(%rsp), %rdi                                #235.2
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #235.2
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.00e+00]
        movq      $1129578500, (%rsp)                           #239.3
        lea       (%rsp), %rax                                  #239.0
        movq      %r15, 8(%rax)                                 #239.3
        xorl      %edx, %edx                                    #239.0
        movq      %r15, 16(%rax)                                #239.3
        movq      %rbx, %rdi                                    #241.3
        movq      %r15, 24(%rax)                                #239.3
        movq      %r13, %rcx                                    #241.3
        movq      %r15, 32(%rax)                                #239.3
        movq      %r14, %r8                                     #241.3
        movq      %r15, 40(%rax)                                #239.3
        rolq      $3, %rdi                                      #239.0
        rolq      $13, %rdi                                     #239.0
        rolq      $61, %rdi                                     #239.0
        rolq      $51, %rdi                                     #239.0
        xchgq     %rbx, %rbx                                    #239.0
        lea       48(%rsp), %rax                                #240.0
        movq      %rdx, 184(%rax)                               #239.0
        xorl      %edx, %edx                                    #240.0
        movq      184(%rax), %r9                                #239.3
        movq      $1129578498, (%rax)                           #240.3
        movq      %r15, 8(%rax)                                 #240.3
        movq      %r15, 16(%rax)                                #240.3
        movq      %r15, 24(%rax)                                #240.3
        movq      %r15, 32(%rax)                                #240.3
        movq      %r15, 40(%rax)                                #240.3
        rolq      $3, %rdi                                      #240.0
        rolq      $13, %rdi                                     #240.0
        rolq      $61, %rdi                                     #240.0
        rolq      $51, %rdi                                     #240.0
        xchgq     %rbx, %rbx                                    #240.0
        movq      %rdx, 192(%rax)                               #240.0
        movq      %r12, %rdx                                    #241.3
        movq      192(%rax), %r10                               #240.3
        movq      232(%rax), %rsi                               #241.3[spill]
..___tag_value_main.22:
#       double_MVM(suNf_vector *, suNf_vector *, const suNf *, const suNf_vector *, const suNf_vector *)
        call      double_MVM                                    #241.3
..___tag_value_main.23:
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
                                # Execution count [5.00e+00]
        movq      $1129578498, 136(%rsp)                        #242.3
        lea       136(%rsp), %rax                               #242.0
        movq      %r15, 8(%rax)                                 #242.3
        xorl      %edx, %edx                                    #242.0
        movq      %r15, 16(%rax)                                #242.3
        movq      %r13, %rdi                                    #246.3
        movq      %r15, 24(%rax)                                #242.3
        movq      %r14, %rsi                                    #246.3
        movq      %r15, 32(%rax)                                #242.3
        movq      %rbx, %rcx                                    #246.3
        movq      %r15, 40(%rax)                                #242.3
        rolq      $3, %rdi                                      #242.0
        rolq      $13, %rdi                                     #242.0
        rolq      $61, %rdi                                     #242.0
        rolq      $51, %rdi                                     #242.0
        xchgq     %rbx, %rbx                                    #242.0
        lea       184(%rsp), %rax                               #243.0
        movq      %rdx, 80(%rax)                                #242.0
        xorl      %edx, %edx                                    #243.0
        movq      80(%rax), %r9                                 #242.3
        movq      $1129578501, (%rax)                           #243.3
        movq      %r15, 8(%rax)                                 #243.3
        movq      %r15, 16(%rax)                                #243.3
        movq      %r15, 24(%rax)                                #243.3
        movq      %r15, 32(%rax)                                #243.3
        movq      %r15, 40(%rax)                                #243.3
        rolq      $3, %rdi                                      #243.0
        rolq      $13, %rdi                                     #243.0
        rolq      $61, %rdi                                     #243.0
        rolq      $51, %rdi                                     #243.0
        xchgq     %rbx, %rbx                                    #243.0
        movq      %rdx, 88(%rax)                                #243.0
        movq      %r12, %rdx                                    #246.3
        movq      88(%rax), %r10                                #243.3
        movq      96(%rax), %r8                                 #246.3[spill]
..___tag_value_main.25:
#       double_MVM(suNf_vector *, suNf_vector *, const suNf *, const suNf_vector *, const suNf_vector *)
        call      double_MVM                                    #246.3
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14
..B1.32:                        # Preds ..B1.31
                                # Execution count [5.00e+00]
        vmovddup  .L_2il0floatpacket.0(%rip), %xmm5             #248.3
        lea       248(%rsp), %rdi                               #256.2
        vmulpd    (%r13), %xmm5, %xmm0                          #248.3
        vmulpd    16(%r13), %xmm5, %xmm1                        #249.3
        vmovupd   %xmm0, (%r13)                                 #248.3
        vmovupd   %xmm1, 16(%r13)                               #249.3
        vmulpd    32(%r13), %xmm5, %xmm2                        #250.3
        vmulpd    (%r14), %xmm5, %xmm3                          #252.3
        vmovupd   %xmm2, 32(%r13)                               #250.3
        vmovupd   %xmm3, (%r14)                                 #252.3
        vmulpd    16(%r14), %xmm5, %xmm4                        #253.3
        vmulpd    32(%r14), %xmm5, %xmm6                        #254.3
        vmovupd   %xmm4, 16(%r14)                               #253.3
        vmovupd   %xmm6, 32(%r14)                               #254.3
        xorl      %esi, %esi                                    #256.2
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #256.2
                                # LOE rbx r12 r13 r14
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.00e+00]
        lea       112(%rsp), %rdi                               #257.2
        lea       248(%rsp), %rsi                               #257.2
        lea       96(%rsp), %rdx                                #257.2
..___tag_value_main.28:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #257.2
..___tag_value_main.29:
                                # LOE rbx r12 r13 r14
..B1.34:                        # Preds ..B1.33
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.2, %edi                         #259.2
        xorl      %eax, %eax                                    #259.2
        movq      112(%rsp), %rsi                               #259.2
        movq      120(%rsp), %rdx                               #259.2
..___tag_value_main.30:
#       printf(const char *__restrict__, ...)
        call      printf                                        #259.2
..___tag_value_main.31:
                                # LOE rbx r12 r13 r14
..B1.35:                        # Preds ..B1.34
                                # Execution count [1.00e+00]
        movq      first(%rip), %r9                              #308.2
        movq      %r9, %r15                                     #308.2
        movq      %r9, %r10                                     #308.2
        testq     %r9, %r9                                      #308.2
        je        ..B1.85       # Prob 0%                       #308.2
                                # LOE rbx r9 r10 r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35
                                # Execution count [9.94e-01]
        cmpq      (%r9), %r12                                   #308.2
        je        ..B1.42       # Prob 20%                      #308.2
                                # LOE rbx r9 r10 r12 r13 r14 r15
..B1.38:                        # Preds ..B1.36 ..B1.39
                                # Execution count [2.31e+00]
        movq      %r10, %rax                                    #308.2
        movq      16(%r10), %r10                                #308.2
        testq     %r10, %r10                                    #308.2
        je        ..B1.46       # Prob 18%                      #308.2
                                # LOE rax rbx r9 r10 r12 r13 r14 r15
..B1.39:                        # Preds ..B1.38
                                # Execution count [1.90e+00]
        cmpq      (%r10), %r12                                  #308.2
        jne       ..B1.38       # Prob 80%                      #308.2
                                # LOE rax rbx r9 r10 r12 r13 r14 r15
..B1.40:                        # Preds ..B1.39
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #308.2
        je        ..B1.42       # Prob 12%                      #308.2
                                # LOE rax rbx r10 r13 r14 r15
..B1.41:                        # Preds ..B1.40
                                # Execution count [5.09e-01]
        movq      16(%r10), %rdx                                #308.2
        movq      %rdx, 16(%rax)                                #308.2
        jmp       ..B1.43       # Prob 100%                     #308.2
                                # LOE rbx r10 r13 r14 r15
..B1.42:                        # Preds ..B1.36 ..B1.40
                                # Execution count [6.94e-02]
        movq      16(%r10), %r15                                #308.2
        movq      %r15, first(%rip)                             #308.2
                                # LOE rbx r10 r13 r14 r15
..B1.43:                        # Preds ..B1.41 ..B1.42
                                # Execution count [5.78e-01]
        movq      8(%r10), %rdi                                 #308.2
        movq      %r10, 128(%rsp)                               #308.2[spill]
#       free(void *)
        call      free                                          #308.2
                                # LOE rbx r13 r14 r15
..B1.44:                        # Preds ..B1.43
                                # Execution count [5.78e-01]
        movq      128(%rsp), %r10                               #[spill]
        movq      %r10, %rdi                                    #308.2
#       free(void *)
        call      free                                          #308.2
                                # LOE rbx r13 r14 r15
..B1.45:                        # Preds ..B1.44
                                # Execution count [5.78e-01]
        movq      %r15, %r9                                     #309.2
        testq     %r15, %r15                                    #309.2
        je        ..B1.85       # Prob 0%                       #309.2
                                # LOE rbx r9 r13 r14 r15
..B1.46:                        # Preds ..B1.38 ..B1.45
                                # Execution count [9.94e-01]
        cmpq      (%r9), %r13                                   #309.2
        je        ..B1.52       # Prob 20%                      #309.2
                                # LOE rbx r9 r13 r14 r15
..B1.48:                        # Preds ..B1.46 ..B1.49
                                # Execution count [2.31e+00]
        movq      %r9, %rax                                     #309.2
        movq      16(%r9), %r9                                  #309.2
        testq     %r9, %r9                                      #309.2
        je        ..B1.88       # Prob 18%                      #309.2
                                # LOE rax rbx r9 r13 r14 r15
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.90e+00]
        cmpq      (%r9), %r13                                   #309.2
        jne       ..B1.48       # Prob 80%                      #309.2
                                # LOE rax rbx r9 r13 r14 r15
..B1.50:                        # Preds ..B1.49
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #309.2
        je        ..B1.52       # Prob 12%                      #309.2
                                # LOE rax rbx r9 r14 r15
..B1.51:                        # Preds ..B1.50
                                # Execution count [5.09e-01]
        movq      16(%r9), %rdx                                 #309.2
        movq      %rdx, 16(%rax)                                #309.2
        jmp       ..B1.53       # Prob 100%                     #309.2
                                # LOE rbx r9 r14 r15
..B1.52:                        # Preds ..B1.46 ..B1.50
                                # Execution count [6.94e-02]
        movq      16(%r9), %r15                                 #309.2
        movq      %r15, first(%rip)                             #309.2
                                # LOE rbx r9 r14 r15
..B1.53:                        # Preds ..B1.51 ..B1.52
                                # Execution count [5.78e-01]
        movq      8(%r9), %rdi                                  #309.2
        movq      %r9, 128(%rsp)                                #309.2[spill]
#       free(void *)
        call      free                                          #309.2
                                # LOE rbx r14 r15
..B1.54:                        # Preds ..B1.53
                                # Execution count [5.78e-01]
        movq      128(%rsp), %r9                                #[spill]
        movq      %r9, %rdi                                     #309.2
#       free(void *)
        call      free                                          #309.2
                                # LOE rbx r14 r15
..B1.55:                        # Preds ..B1.54
                                # Execution count [5.75e-01]
        movq      %r15, %r12                                    #310.2
        testq     %r15, %r15                                    #310.2
        je        ..B1.85       # Prob 0%                       #310.2
                                # LOE rbx r12 r14 r15
..B1.56:                        # Preds ..B1.88 ..B1.55
                                # Execution count [9.94e-01]
        cmpq      (%r12), %r14                                  #310.2
        je        ..B1.62       # Prob 20%                      #310.2
                                # LOE rbx r12 r14 r15
..B1.58:                        # Preds ..B1.56 ..B1.59
                                # Execution count [2.31e+00]
        movq      %r12, %rax                                    #310.2
        movq      16(%r12), %r12                                #310.2
        testq     %r12, %r12                                    #310.2
        je        ..B1.87       # Prob 18%                      #310.2
                                # LOE rax rbx r12 r14 r15
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.90e+00]
        cmpq      (%r12), %r14                                  #310.2
        jne       ..B1.58       # Prob 80%                      #310.2
                                # LOE rax rbx r12 r14 r15
..B1.60:                        # Preds ..B1.59
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #310.2
        je        ..B1.62       # Prob 12%                      #310.2
                                # LOE rax rbx r12 r15
..B1.61:                        # Preds ..B1.60
                                # Execution count [5.09e-01]
        movq      16(%r12), %rdx                                #310.2
        movq      %rdx, 16(%rax)                                #310.2
        jmp       ..B1.63       # Prob 100%                     #310.2
                                # LOE rbx r12 r15
..B1.62:                        # Preds ..B1.56 ..B1.60
                                # Execution count [6.94e-02]
        movq      16(%r12), %r15                                #310.2
        movq      %r15, first(%rip)                             #310.2
                                # LOE rbx r12 r15
..B1.63:                        # Preds ..B1.61 ..B1.62
                                # Execution count [5.78e-01]
        movq      8(%r12), %rdi                                 #310.2
#       free(void *)
        call      free                                          #310.2
                                # LOE rbx r12 r15
..B1.64:                        # Preds ..B1.63
                                # Execution count [5.78e-01]
        movq      %r12, %rdi                                    #310.2
#       free(void *)
        call      free                                          #310.2
                                # LOE rbx r15
..B1.65:                        # Preds ..B1.64
                                # Execution count [5.77e-01]
        movq      %r15, %r12                                    #311.2
        testq     %r15, %r15                                    #311.2
        je        ..B1.85       # Prob 0%                       #311.2
                                # LOE rbx r12 r15
..B1.66:                        # Preds ..B1.87 ..B1.65
                                # Execution count [9.94e-01]
        cmpq      (%r12), %rbx                                  #311.2
        je        ..B1.72       # Prob 20%                      #311.2
                                # LOE rbx r12 r15
..B1.68:                        # Preds ..B1.66 ..B1.69
                                # Execution count [2.31e+00]
        movq      %r12, %rax                                    #311.2
        movq      16(%r12), %r12                                #311.2
        testq     %r12, %r12                                    #311.2
        je        ..B1.76       # Prob 18%                      #311.2
                                # LOE rax rbx r12 r15
..B1.69:                        # Preds ..B1.68
                                # Execution count [1.90e+00]
        cmpq      (%r12), %rbx                                  #311.2
        jne       ..B1.68       # Prob 80%                      #311.2
                                # LOE rax rbx r12 r15
..B1.70:                        # Preds ..B1.69
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #311.2
        je        ..B1.72       # Prob 12%                      #311.2
                                # LOE rax r12 r15
..B1.71:                        # Preds ..B1.70
                                # Execution count [5.09e-01]
        movq      16(%r12), %rdx                                #311.2
        movq      %rdx, 16(%rax)                                #311.2
        jmp       ..B1.73       # Prob 100%                     #311.2
                                # LOE r12 r15
..B1.72:                        # Preds ..B1.66 ..B1.70
                                # Execution count [6.94e-02]
        movq      16(%r12), %r15                                #311.2
        movq      %r15, first(%rip)                             #311.2
                                # LOE r12 r15
..B1.73:                        # Preds ..B1.71 ..B1.72
                                # Execution count [5.78e-01]
        movq      8(%r12), %rdi                                 #311.2
#       free(void *)
        call      free                                          #311.2
                                # LOE r12 r15
..B1.74:                        # Preds ..B1.73
                                # Execution count [5.78e-01]
        movq      %r12, %rdi                                    #311.2
#       free(void *)
        call      free                                          #311.2
                                # LOE r15
..B1.75:                        # Preds ..B1.74
                                # Execution count [5.77e-01]
        testq     %r15, %r15                                    #312.2
        je        ..B1.85       # Prob 0%                       #312.2
                                # LOE r15
..B1.76:                        # Preds ..B1.68 ..B1.75
                                # Execution count [9.94e-01]
        movq      280(%rsp), %rax                               #312.2[spill]
        cmpq      (%r15), %rax                                  #312.2
        je        ..B1.82       # Prob 20%                      #312.2
                                # LOE rax r15
..B1.77:                        # Preds ..B1.76
                                # Execution count [7.95e-01]
        movq      %rax, %rdx                                    #
                                # LOE rdx r15
..B1.78:                        # Preds ..B1.79 ..B1.77
                                # Execution count [2.31e+00]
        movq      %r15, %rax                                    #312.2
        movq      16(%r15), %r15                                #312.2
        testq     %r15, %r15                                    #312.2
        je        ..B1.85       # Prob 18%                      #312.2
                                # LOE rax rdx r15
..B1.79:                        # Preds ..B1.78
                                # Execution count [1.90e+00]
        cmpq      (%r15), %rdx                                  #312.2
        jne       ..B1.78       # Prob 80%                      #312.2
                                # LOE rax rdx r15
..B1.80:                        # Preds ..B1.79
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #312.2
        je        ..B1.82       # Prob 12%                      #312.2
                                # LOE rax r15
..B1.81:                        # Preds ..B1.80
                                # Execution count [5.09e-01]
        movq      16(%r15), %rdx                                #312.2
        movq      %rdx, 16(%rax)                                #312.2
        jmp       ..B1.83       # Prob 100%                     #312.2
                                # LOE r15
..B1.82:                        # Preds ..B1.76 ..B1.80
                                # Execution count [6.94e-02]
        movq      16(%r15), %rax                                #312.2
        movq      %rax, first(%rip)                             #312.2
                                # LOE r15
..B1.83:                        # Preds ..B1.81 ..B1.82
                                # Execution count [5.78e-01]
        movq      8(%r15), %rdi                                 #312.2
#       free(void *)
        call      free                                          #312.2
                                # LOE r15
..B1.84:                        # Preds ..B1.83
                                # Execution count [5.78e-01]
        movq      %r15, %rdi                                    #312.2
#       free(void *)
        call      free                                          #312.2
                                # LOE
..B1.85:                        # Preds ..B1.78 ..B1.84 ..B1.75 ..B1.65 ..B1.55
                                #       ..B1.45 ..B1.35
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
..B1.87:                        # Preds ..B1.58
                                # Execution count [4.16e-01]: Infreq
        movq      %r15, %r12                                    #311.2
        jmp       ..B1.66       # Prob 100%                     #311.2
                                # LOE rbx r12 r15
..B1.88:                        # Preds ..B1.48
                                # Execution count [4.16e-01]: Infreq
        movq      %r15, %r12                                    #310.2
        jmp       ..B1.56       # Prob 100%                     #310.2
                                # LOE rbx r12 r14 r15
..B1.91:                        # Preds ..B1.25 ..B1.26
                                # Execution count [4.88e-02]: Infreq
        movq      %r9, %rdi                                     #122.9
        movq      %r10, (%rsp)                                  #122.9[spill]
#       free(void *)
        call      free                                          #122.9
                                # LOE rbx r12 r13 r14 r15
..B1.92:                        # Preds ..B1.91
                                # Execution count [4.88e-02]: Infreq
        movq      (%rsp), %r10                                  #[spill]
        movq      %r10, %rdi                                    #122.9
#       free(void *)
        call      free                                          #122.9
                                # LOE rbx r12 r13 r14 r15
..B1.93:                        # Preds ..B1.92
                                # Execution count [4.88e-02]: Infreq
        movq      %r15, 280(%rsp)                               #122.9[spill]
        jmp       ..B1.28       # Prob 100%                     #122.9
                                # LOE rbx r12 r13 r14 r15
..B1.94:                        # Preds ..B1.20 ..B1.21
                                # Execution count [4.88e-02]: Infreq
        movq      %r9, %rdi                                     #121.8
        movq      %r10, (%rsp)                                  #121.8[spill]
#       free(void *)
        call      free                                          #121.8
                                # LOE r12 r13 r14 r15
..B1.95:                        # Preds ..B1.94
                                # Execution count [4.88e-02]: Infreq
        movq      (%rsp), %r10                                  #[spill]
        movq      %r10, %rdi                                    #121.8
#       free(void *)
        call      free                                          #121.8
                                # LOE r12 r13 r14 r15
..B1.96:                        # Preds ..B1.95
                                # Execution count [4.88e-02]: Infreq
        movq      %r15, %rbx                                    #121.8
        jmp       ..B1.23       # Prob 100%                     #121.8
                                # LOE rbx r12 r13 r14 r15
..B1.97:                        # Preds ..B1.16 ..B1.15
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #120.9
        movq      %r9, (%rsp)                                   #120.9[spill]
#       free(void *)
        call      free                                          #120.9
                                # LOE r12 r13 r15
..B1.98:                        # Preds ..B1.97
                                # Execution count [4.88e-02]: Infreq
        movq      (%rsp), %r9                                   #[spill]
        movq      %r9, %rdi                                     #120.9
#       free(void *)
        call      free                                          #120.9
                                # LOE r12 r13 r15
..B1.99:                        # Preds ..B1.98
                                # Execution count [4.88e-02]: Infreq
        movq      %r15, %r14                                    #120.9
        jmp       ..B1.18       # Prob 100%                     #120.9
                                # LOE r12 r13 r14 r15
..B1.100:                       # Preds ..B1.10 ..B1.11
                                # Execution count [4.88e-02]: Infreq
        movq      %r14, %rdi                                    #119.8
#       free(void *)
        call      free                                          #119.8
                                # LOE rbx r12 r15
..B1.101:                       # Preds ..B1.100
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #119.8
#       free(void *)
        call      free                                          #119.8
                                # LOE r12 r15
..B1.102:                       # Preds ..B1.101
                                # Execution count [4.88e-02]: Infreq
        movq      %r15, %r13                                    #119.8
        jmp       ..B1.13       # Prob 100%                     #119.8
                                # LOE r12 r13 r15
..B1.103:                       # Preds ..B1.5 ..B1.6
                                # Execution count [4.88e-02]: Infreq
        movq      %rbx, %rdi                                    #118.7
#       free(void *)
        call      free                                          #118.7
                                # LOE r13
..B1.104:                       # Preds ..B1.103
                                # Execution count [4.88e-02]: Infreq
        movq      %r13, %rdi                                    #118.7
#       free(void *)
        call      free                                          #118.7
                                # LOE
..B1.105:                       # Preds ..B1.104
                                # Execution count [4.88e-02]: Infreq
        xorl      %r12d, %r12d                                  #118.7
        xorl      %r15d, %r15d                                  #118.7
        jmp       ..B1.8        # Prob 100%                     #118.7
        .align    16,0x90
                                # LOE r12 r15
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
# -- End  main
	.text
.L_2__routine_start_double_MVM_1:
# -- Begin  double_MVM
	.text
# mark_begin;
       .align    16,0x90
	.globl double_MVM
# --- double_MVM(suNf_vector *, suNf_vector *, const suNf *, const suNf_vector *, const suNf_vector *)
double_MVM:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_double_MVM.59:
..L60:
                                                         #326.1
        vmovupd   (%rdx), %ymm11                                #332.35
        vmovupd   (%rcx), %ymm2                                 #347.35
        vmovupd   48(%rdx), %ymm7                               #337.36
        vmovupd   96(%rdx), %ymm4                               #342.35
        vunpckhpd %ymm11, %ymm11, %ymm15                        #334.10
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #348.10
        vunpckhpd %ymm7, %ymm7, %ymm14                          #339.10
        vmulpd    %ymm8, %ymm15, %ymm0                          #361.11
        vmulpd    %ymm8, %ymm14, %ymm13                         #365.11
        vmovupd   16(%rdx), %ymm7                               #377.37
        vmovddup  (%rdx), %ymm10                                #333.10
        vmovddup  48(%rdx), %ymm9                               #338.10
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #362.11
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #366.11
        vunpckhpd %ymm4, %ymm4, %ymm6                           #344.10
        vmovupd   (%r8), %ymm4                                  #351.35
        vmulpd    %ymm8, %ymm6, %ymm8                           #431.11
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #371.11
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #373.11
        vmovupd   16(%rcx), %ymm1                               #382.37
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #352.11
        vmulpd    %ymm3, %ymm15, %ymm15                         #399.10
        vmulpd    %ymm3, %ymm14, %ymm14                         #403.10
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #400.10
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #404.10
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #370.11
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #378.11
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #383.17
        vaddpd    %ymm11, %ymm12, %ymm13                        #374.11
        vblendpd  $12, 64(%rdx), %ymm0, %ymm11                  #380.11
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #384.11
        vmovddup  %ymm11, %ymm0                                 #386.15
        vunpckhpd %ymm11, %ymm11, %ymm1                         #387.11
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #388.11
        vmulpd    %ymm11, %ymm1, %ymm11                         #390.11
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #391.11
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #408.11
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #409.10
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #411.10
        vmovupd   16(%r8), %ymm10                               #415.37
        vaddpd    %ymm13, %ymm11, %ymm11                        #394.11
        vaddpd    %ymm9, %ymm12, %ymm9                          #412.10
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #416.11
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #417.11
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #419.9
        vmulpd    %ymm14, %ymm1, %ymm1                          #420.11
        vmovddup  96(%rdx), %ymm5                               #343.10
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #432.10
        vmulpd    %ymm3, %ymm6, %ymm2                           #437.10
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #421.11
        vmovupd   112(%rdx), %ymm1                              #449.36
        vmovupd   %ymm11, (%rdi)                                #469.28
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #438.10
        vaddpd    %ymm9, %ymm0, %ymm9                           #424.10
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #450.11
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #443.10
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #451.10
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #455.10
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #442.10
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #445.10
        vunpckhpd %ymm2, %ymm2, %ymm3                           #453.11
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #456.11
        vmulpd    %ymm7, %ymm3, %ymm4                           #458.10
        vaddpd    %ymm5, %ymm6, %ymm5                           #446.10
        vmovddup  %ymm2, %ymm6                                  #452.11
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #459.10
        vaddpd    %ymm5, %ymm6, %ymm8                           #461.10
        vmovupd   %xmm8, 32(%rdi)                               #470.25
        vmovupd   %ymm9, (%rsi)                                 #472.28
        vextractf128 $1, %ymm8, 32(%rsi)                        #473.25
        vzeroupper                                              #474.1
        ret                                                     #474.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	double_MVM,@function
	.size	double_MVM,.-double_MVM
..LNdouble_MVM.1:
	.data
# -- End  double_MVM
	.text
.L_2__routine_start_amalloc_2:
# -- Begin  amalloc
	.text
# mark_begin;
       .align    16,0x90
	.globl amalloc
# --- amalloc(size_t, int)
amalloc:
# parameter 1: %rdi
# parameter 2: %esi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_amalloc.62:
..L63:
                                                         #487.1
        pushq     %r12                                          #487.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #487.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %rbp                                          #487.1
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
        testq     %rdi, %rdi                                    #493.15
        jbe       ..B3.11       # Prob 28%                      #493.15
                                # LOE rbx rdi r14 r15 esi
..B3.2:                         # Preds ..B3.1
                                # Execution count [7.20e-01]
        testl     %esi, %esi                                    #493.26
        jl        ..B3.11       # Prob 20%                      #493.26
                                # LOE rbx rdi r14 r15 esi
..B3.3:                         # Preds ..B3.2
                                # Execution count [5.70e-01]
        movl      $1, %eax                                      #496.2
        shlx      %esi, %eax, %r13d                             #496.15
        movslq    %r13d, %r13                                   #496.2
        addq      %r13, %rdi                                    #499.22
#       malloc(size_t)
        call      malloc                                        #499.22
                                # LOE rax rbx r13 r14 r15
..B3.14:                        # Preds ..B3.3
                                # Execution count [5.70e-01]
        movq      %rax, %rbp                                    #499.22
                                # LOE rbx rbp r13 r14 r15
..B3.4:                         # Preds ..B3.14
                                # Execution count [5.70e-01]
        movl      $24, %edi                                     #500.25
#       malloc(size_t)
        call      malloc                                        #500.25
                                # LOE rax rbx rbp r13 r14 r15
..B3.15:                        # Preds ..B3.4
                                # Execution count [5.70e-01]
        movq      %rax, %r12                                    #500.25
                                # LOE rbx rbp r12 r13 r14 r15
..B3.5:                         # Preds ..B3.15
                                # Execution count [5.70e-01]
        testq     %rbp, %rbp                                    #502.20
        je        ..B3.9        # Prob 5%                       #502.20
                                # LOE rbx rbp r12 r13 r14 r15
..B3.6:                         # Preds ..B3.5
                                # Execution count [5.42e-01]
        testq     %r12, %r12                                    #502.37
        je        ..B3.9        # Prob 3%                       #502.37
                                # LOE rbx rbp r12 r13 r14 r15
..B3.7:                         # Preds ..B3.6
                                # Execution count [5.21e-01]
        movq      %rbp, 8(%r12)                                 #511.4
        lea       (%r13,%rbp), %rax                             #509.35
        decq      %r13                                          #497.33
        negq      %r13                                          #509.59
        decq      %r13                                          #509.59
        movq      first(%rip), %rbp                             #512.16
        andq      %r13, %rax                                    #509.59
        movq      %rax, (%r12)                                  #510.4
        movq      %rbp, 16(%r12)                                #512.4
        movq      %r12, first(%rip)                             #513.2
	.cfi_restore 6
        popq      %rbp                                          #519.18
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #519.18
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #519.18
	.cfi_def_cfa_offset 8
        ret                                                     #519.18
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	.cfi_offset 12, -16
	.cfi_offset 13, -24
                                # LOE
..B3.9:                         # Preds ..B3.6 ..B3.5
                                # Execution count [4.88e-02]
        movq      %rbp, %rdi                                    #504.3
#       free(void *)
        call      free                                          #504.3
                                # LOE rbx r12 r14 r15
..B3.10:                        # Preds ..B3.9
                                # Execution count [4.88e-02]
        movq      %r12, %rdi                                    #505.3
#       free(void *)
        call      free                                          #505.3
                                # LOE rbx r14 r15
..B3.11:                        # Preds ..B3.2 ..B3.1 ..B3.10
                                # Execution count [4.88e-02]
        xorl      %eax, %eax                                    #506.10
	.cfi_restore 6
        popq      %rbp                                          #506.10
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #506.10
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #506.10
	.cfi_def_cfa_offset 8
        ret                                                     #506.10
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	amalloc,@function
	.size	amalloc,.-amalloc
..LNamalloc.2:
	.data
# -- End  amalloc
	.text
.L_2__routine_start_afree_3:
# -- Begin  afree
	.text
# mark_begin;
       .align    16,0x90
	.globl afree
# --- afree(void *)
afree:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_afree.87:
..L88:
                                                         #523.1
        pushq     %r15                                          #523.1
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
        movq      first(%rip), %r15                             #532.11
        testq     %r15, %r15                                    #532.23
        je        ..B4.13       # Prob 0%                       #532.23
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [9.94e-01]
        cmpq      (%r15), %rdi                                  #534.20
        je        ..B4.8        # Prob 20%                      #534.20
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B4.4:                         # Preds ..B4.2 ..B4.5
                                # Execution count [2.31e+00]
        movq      %r15, %rax                                    #546.3
        movq      16(%r15), %r15                                #532.35
        testq     %r15, %r15                                    #532.23
        je        ..B4.13       # Prob 18%                      #532.23
                                # LOE rax rbx rbp rdi r12 r13 r14 r15
..B4.5:                         # Preds ..B4.4
                                # Execution count [1.90e+00]
        cmpq      (%r15), %rdi                                  #534.20
        jne       ..B4.4        # Prob 80%                      #534.20
                                # LOE rax rbx rbp rdi r12 r13 r14 r15
..B4.6:                         # Preds ..B4.5
                                # Execution count [3.79e-01]
        testq     %rax, %rax                                    #536.13
        je        ..B4.8        # Prob 12%                      #536.13
                                # LOE rax rbx rbp r12 r13 r14 r15
..B4.7:                         # Preds ..B4.6
                                # Execution count [5.09e-01]
        movq      16(%r15), %rdx                                #537.19
        movq      %rdx, 16(%rax)                                #537.7
        jmp       ..B4.9        # Prob 100%                     #537.7
                                # LOE rbx rbp r12 r13 r14 r15
..B4.8:                         # Preds ..B4.2 ..B4.6
                                # Execution count [6.94e-02]
        movq      16(%r15), %rax                                #539.15
        movq      %rax, first(%rip)                             #539.5
                                # LOE rbx rbp r12 r13 r14 r15
..B4.9:                         # Preds ..B4.7 ..B4.8
                                # Execution count [5.78e-01]
        movq      8(%r15), %rdi                                 #541.4
#       free(void *)
        call      free                                          #541.4
                                # LOE rbx rbp r12 r13 r14 r15
..B4.10:                        # Preds ..B4.9
                                # Execution count [5.78e-01]
        movq      %r15, %rdi                                    #542.4
	.cfi_restore 15
        popq      %r15                                          #542.4
	.cfi_def_cfa_offset 8
#       free(void *)
        jmp       free                                          #542.4
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
                                # LOE
..B4.13:                        # Preds ..B4.4 ..B4.1
                                # Execution count [4.22e-01]: Infreq
	.cfi_restore 15
        popq      %r15                                          #548.1
	.cfi_def_cfa_offset 8
        ret                                                     #548.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	afree,@function
	.size	afree,.-afree
..LNafree.3:
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
