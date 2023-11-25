	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-I . -O2 -qopenmp -march=core-avx2 -mtune=core-avx2 -g -S -lm -o icc_O2_dowhile.s";
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
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_main.2:
..L3:
                                                          #158.1
..LN0:
	.file   1 "avx_complex_vec_align_load.c"
	.loc    1  158  is_stmt 1
        pushq     %rbp                                          #158.1
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #158.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-128, %rsp                                   #158.1
..LN3:
        pushq     %r12                                          #158.1
..LN4:
        pushq     %r13                                          #158.1
..LN5:
        pushq     %r14                                          #158.1
..LN6:
        pushq     %r15                                          #158.1
..LN7:
        pushq     %rbx                                          #158.1
..LN8:
        subq      $344, %rsp                                    #158.1
..LN9:
        xorl      %esi, %esi                                    #158.1
..LN10:
        movl      $3, %edi                                      #158.1
..LN11:
        call      __intel_new_feature_proc_init                 #158.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
..LN12:
                                # LOE
..B1.77:                        # Preds ..B1.1
                                # Execution count [0.00e+00]
..LN13:
        vstmxcsr  (%rsp)                                        #158.1
..LN14:
        movl      $.2.5_2_kmpc_loc_struct_pack.19, %edi         #158.1
..LN15:
        xorl      %esi, %esi                                    #158.1
..LN16:
        orl       $32832, (%rsp)                                #158.1
..LN17:
        xorl      %eax, %eax                                    #158.1
..LN18:
        vldmxcsr  (%rsp)                                        #158.1
..___tag_value_main.13:
..LN19:
        call      __kmpc_begin                                  #158.1
..___tag_value_main.14:
..LN20:
                                # LOE
..B1.2:                         # Preds ..B1.77
                                # Execution count [1.00e+00]
..LN21:
	.loc    1  177  prologue_end  is_stmt 1
        vpxor     %ymm0, %ymm0, %ymm0                           #177.1
..LN22:
        vmovdqu   %ymm0, (%rsp)                                 #177.1
..LN23:
        vmovdqu   %ymm0, 32(%rsp)                               #177.1
..LN24:
        vmovdqu   %ymm0, 64(%rsp)                               #177.1
..LN25:
        vmovdqu   %ymm0, 96(%rsp)                               #177.1
..LN26:
                                # LOE
..B1.3:                         # Preds ..B1.2
                                # Execution count [5.00e-01]
..LN27:
	.loc    1  179  is_stmt 1
        xorl      %edi, %edi                                    #179.4
..LN28:
        movl      $128, %esi                                    #179.4
..LN29:
	.loc    1  178  is_stmt 1
        orq       $1, (%rsp)                                    #178.1
..LN30:
	.loc    1  179  is_stmt 1
        lea       (%rsp), %rdx                                  #179.4
..LN31:
        vzeroupper                                              #179.4
..___tag_value_main.15:
..LN32:
#       sched_setaffinity(__pid_t, size_t, const cpu_set_t *)
        call      sched_setaffinity                             #179.4
..___tag_value_main.16:
..LN33:
                                # LOE eax
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
..LN34:
        cmpl      $-1, %eax                                     #179.47
..LN35:
        je        ..B1.74       # Prob 5%                       #179.47
..LN36:
                                # LOE
..B1.5:                         # Preds ..B1.74 ..B1.4
                                # Execution count [1.00e+00]
..LN37:
	.loc    1  186  is_stmt 1
        movq      $0x35a4e9000, %rdi                            #186.8
..LN38:
        movl      $8, %esi                                      #186.8
..___tag_value_main.17:
..LN39:
#       amalloc(size_t, int)
        call      amalloc                                       #186.8
..___tag_value_main.18:
..LN40:
                                # LOE rax
..B1.79:                        # Preds ..B1.5
                                # Execution count [1.00e+00]
..LN41:
        movq      %rax, 200(%rsp)                               #186.8[spill]
..LN42:
                                # LOE
..B1.6:                         # Preds ..B1.79
                                # Execution count [1.00e+00]
..LN43:
	.loc    1  187  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #187.9
..LN44:
        movl      $8, %esi                                      #187.9
..___tag_value_main.20:
..LN45:
#       amalloc(size_t, int)
        call      amalloc                                       #187.9
..___tag_value_main.21:
..LN46:
                                # LOE rax
..B1.80:                        # Preds ..B1.6
                                # Execution count [1.00e+00]
..LN47:
        movq      %rax, 272(%rsp)                               #187.9[spill]
..LN48:
                                # LOE
..B1.7:                         # Preds ..B1.80
                                # Execution count [1.00e+00]
..LN49:
	.loc    1  188  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #188.10
..LN50:
        movl      $8, %esi                                      #188.10
..___tag_value_main.23:
..LN51:
#       amalloc(size_t, int)
        call      amalloc                                       #188.10
..___tag_value_main.24:
..LN52:
                                # LOE rax
..B1.81:                        # Preds ..B1.7
                                # Execution count [1.00e+00]
..LN53:
        movq      %rax, 280(%rsp)                               #188.10[spill]
..LN54:
                                # LOE
..B1.8:                         # Preds ..B1.81
                                # Execution count [1.00e+00]
..LN55:
	.loc    1  189  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #189.9
..LN56:
        movl      $8, %esi                                      #189.9
..___tag_value_main.26:
..LN57:
#       amalloc(size_t, int)
        call      amalloc                                       #189.9
..___tag_value_main.27:
..LN58:
                                # LOE rax
..B1.82:                        # Preds ..B1.8
                                # Execution count [1.00e+00]
..LN59:
        movq      %rax, %r15                                    #189.9
..LN60:
                                # LOE r15
..B1.9:                         # Preds ..B1.82
                                # Execution count [1.00e+00]
..LN61:
	.loc    1  190  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #190.10
..LN62:
        movl      $8, %esi                                      #190.10
..___tag_value_main.28:
..LN63:
#       amalloc(size_t, int)
        call      amalloc                                       #190.10
..___tag_value_main.29:
..LN64:
                                # LOE rax r15
..B1.83:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
..LN65:
        movq      %rax, %r14                                    #190.10
..LN66:
                                # LOE r14 r15
..B1.10:                        # Preds ..B1.83
                                # Execution count [1.00e+00]
..LN67:
	.loc    1  191  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #191.10
..LN68:
        movl      $8, %esi                                      #191.10
..___tag_value_main.30:
..LN69:
#       amalloc(size_t, int)
        call      amalloc                                       #191.10
..___tag_value_main.31:
..LN70:
                                # LOE rax r14 r15
..B1.84:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
..LN71:
        movq      %rax, 208(%rsp)                               #191.10[spill]
..LN72:
                                # LOE r14 r15
..B1.11:                        # Preds ..B1.84
                                # Execution count [1.00e+00]
..LN73:
	.loc    1  192  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #192.10
..LN74:
        movl      $8, %esi                                      #192.10
..___tag_value_main.33:
..LN75:
#       amalloc(size_t, int)
        call      amalloc                                       #192.10
..___tag_value_main.34:
..LN76:
                                # LOE rax r14 r15
..B1.85:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
..LN77:
        movq      %rax, 216(%rsp)                               #192.10[spill]
..LN78:
                                # LOE r14 r15
..B1.12:                        # Preds ..B1.85
                                # Execution count [1.00e+00]
..LN79:
	.loc    1  193  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #193.10
..LN80:
        movl      $8, %esi                                      #193.10
..___tag_value_main.36:
..LN81:
#       amalloc(size_t, int)
        call      amalloc                                       #193.10
..___tag_value_main.37:
..LN82:
                                # LOE rax r14 r15
..B1.86:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
..LN83:
        movq      %rax, %r13                                    #193.10
..LN84:
                                # LOE r13 r14 r15
..B1.13:                        # Preds ..B1.86
                                # Execution count [1.00e+00]
..LN85:
	.loc    1  194  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #194.10
..LN86:
        movl      $8, %esi                                      #194.10
..___tag_value_main.38:
..LN87:
#       amalloc(size_t, int)
        call      amalloc                                       #194.10
..___tag_value_main.39:
..LN88:
                                # LOE rax r13 r14 r15
..B1.87:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
..LN89:
        movq      %rax, %r12                                    #194.10
..LN90:
                                # LOE r12 r13 r14 r15
..B1.14:                        # Preds ..B1.87
                                # Execution count [8.47e-01]
..LN91:
	.loc    1  203  is_stmt 1
        xorl      %edx, %edx                                    #203.7
..LN92:
        xorl      %eax, %eax                                    #203.7
..LN93:
        movq      200(%rsp), %rbx                               #203.7[spill]
..LN94:
        movq      280(%rsp), %rcx                               #203.7[spill]
..LN95:
        movq      272(%rsp), %rsi                               #203.7[spill]
..LN96:
        movq      %r12, 312(%rsp)                               #203.7[spill]
..LN97:
        movq      %rax, %r12                                    #203.7
..LN98:
        movq      %r13, 304(%rsp)                               #203.7[spill]
..LN99:
        movl      %edx, %r13d                                   #203.7
..LN100:
        movq      %r14, 296(%rsp)                               #203.7[spill]
..LN101:
        movq      %r15, 288(%rsp)                               #203.7[spill]
..LN102:
                                # LOE rcx rbx rsi r12 r13d
..B1.15:                        # Preds ..B1.22 ..B1.14
                                # Execution count [4.70e+00]
..L47:
                # optimization report
                # %s was not vectorized: loop with function call not considered an optimization candidate.
..LN103:
..LN104:
	.loc    1  205  is_stmt 1
        xorb      %dl, %dl                                      #205.9
..LN105:
	.loc    1  207  is_stmt 1
        lea       (%rsi,%r12), %rax                             #207.8
..LN106:
	.loc    1  205  is_stmt 1
        movq      %r12, 128(%rsp)                               #205.9[spill]
..LN107:
	.loc    1  208  is_stmt 1
        lea       (%rcx,%r12), %r14                             #208.8
..LN108:
	.loc    1  205  is_stmt 1
        movl      %r13d, 136(%rsp)                              #205.9[spill]
..LN109:
        xorl      %r15d, %r15d                                  #205.9
..LN110:
        movq      %rax, %r12                                    #205.9
..LN111:
        movb      %dl, %r13b                                    #205.9
..LN112:
                                # LOE rbx r12 r14 r15 r13b
..B1.16:                        # Preds ..B1.18 ..B1.15
                                # Execution count [1.41e+01]
..L50:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN113:
..LN114:
	.loc    1  207  is_stmt 1
        movl      $5, %edi                                      #207.23
..___tag_value_main.51:
..LN115:
#       my_rand(const int)
        call      my_rand                                       #207.23
..___tag_value_main.52:
..LN116:
                                # LOE rbx r12 r14 r15 r13b xmm0 xmm1
..B1.88:                        # Preds ..B1.16
                                # Execution count [1.41e+01]
..LN117:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #207.23
..LN118:
                                # LOE rbx r12 r14 r15 r13b xmm0
..B1.17:                        # Preds ..B1.88
                                # Execution count [1.41e+01]
..LN119:
	.loc    1  208  is_stmt 1
        movl      $5, %edi                                      #208.24
..LN120:
	.loc    1  207  is_stmt 1
        vmovupd   %xmm0, (%r15,%r12)                            #207.8
..___tag_value_main.53:
..LN121:
	.loc    1  208  is_stmt 1
#       my_rand(const int)
        call      my_rand                                       #208.24
..___tag_value_main.54:
..LN122:
                                # LOE rbx r12 r14 r15 r13b xmm0 xmm1
..B1.89:                        # Preds ..B1.17
                                # Execution count [1.41e+01]
..LN123:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #208.24
..LN124:
                                # LOE rbx r12 r14 r15 r13b xmm0
..B1.18:                        # Preds ..B1.89
                                # Execution count [1.41e+01]
..LN125:
	.loc    1  205  is_stmt 1
        incb      %r13b                                         #205.19
..LN126:
	.loc    1  208  is_stmt 1
        vmovupd   %xmm0, (%r15,%r14)                            #208.8
..LN127:
	.loc    1  205  is_stmt 1
        addq      $16, %r15                                     #205.19
..LN128:
        cmpb      $3, %r13b                                     #205.16
..LN129:
        jl        ..B1.16       # Prob 66%                      #205.16
..LN130:
                                # LOE rbx r12 r14 r15 r13b
..B1.19:                        # Preds ..B1.18
                                # Execution count [4.70e+00]
..LN131:
        movq      128(%rsp), %r12                               #[spill]
..LN132:
	.loc    1  211  is_stmt 1
        xorb      %r15b, %r15b                                  #211.9
..LN133:
        movl      136(%rsp), %r13d                              #[spill]
..LN134:
        xorl      %r14d, %r14d                                  #211.9
..LN135:
        movq      280(%rsp), %rcx                               #[spill]
..LN136:
        movq      272(%rsp), %rsi                               #[spill]
..LN137:
                                # LOE rbx r12 r14 r13d r15b
..B1.20:                        # Preds ..B1.21 ..B1.19
                                # Execution count [4.23e+01]
..L59:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN138:
..LN139:
	.loc    1  213  is_stmt 1
        movl      $5, %edi                                      #213.22
..___tag_value_main.60:
..LN140:
#       my_rand(const int)
        call      my_rand                                       #213.22
..___tag_value_main.61:
..LN141:
                                # LOE rbx r12 r14 r13d r15b xmm0 xmm1
..B1.90:                        # Preds ..B1.20
                                # Execution count [4.23e+01]
..LN142:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #213.22
..LN143:
                                # LOE rbx r12 r14 r13d r15b xmm0
..B1.21:                        # Preds ..B1.90
                                # Execution count [4.23e+01]
..LN144:
	.loc    1  211  is_stmt 1
        incb      %r15b                                         #211.19
..LN145:
	.loc    1  213  is_stmt 1
        vmovupd   %xmm0, (%r14,%rbx)                            #213.8
..LN146:
	.loc    1  211  is_stmt 1
        addq      $16, %r14                                     #211.19
..LN147:
        cmpb      $9, %r15b                                     #211.16
..LN148:
        jl        ..B1.20       # Prob 88%                      #211.16
..LN149:
                                # LOE rbx r12 r14 r13d r15b
..B1.22:                        # Preds ..B1.21
                                # Execution count [4.70e+00]
..LN150:
	.loc    1  203  is_stmt 1
        incl      %r13d                                         #203.18
..LN151:
        addq      $48, %r12                                     #203.18
..LN152:
        addq      $144, %rbx                                    #203.18
..LN153:
        movq      280(%rsp), %rcx                               #[spill]
..LN154:
        movq      272(%rsp), %rsi                               #[spill]
..LN155:
        cmpl      $100000000, %r13d                             #203.14
..LN156:
        jl        ..B1.15       # Prob 82%                      #203.14
..LN157:
                                # LOE rcx rbx rsi r12 r13d
..B1.23:                        # Preds ..B1.22
                                # Execution count [9.00e-01]
..LN158:
	.loc    1  222  is_stmt 1
        xorl      %edx, %edx                                    #222.5
..LN159:
        xorl      %ecx, %ecx                                    #222.5
..LN160:
        movq      312(%rsp), %r12                               #[spill]
..LN161:
        xorl      %eax, %eax                                    #222.5
..LN162:
        movq      304(%rsp), %r13                               #[spill]
..LN163:
        movq      296(%rsp), %r14                               #[spill]
..LN164:
        movq      288(%rsp), %r15                               #[spill]
..LN165:
        movq      280(%rsp), %rbx                               #222.5[spill]
..LN166:
        movq      %rsi, %r9                                     #222.5
..LN167:
        movq      200(%rsp), %r10                               #222.5[spill]
..LN168:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.24:                        # Preds ..B1.24 ..B1.23
                                # Execution count [5.00e+00]
..L70:
                # optimization report
                # PEELED LOOP
                # LOOP WITH USER VECTOR INTRINSICS
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN169:
..LN170:
	.loc    1  224  is_stmt 1
        vmovupd   (%rdx,%r10), %ymm11                           #224.3
..LN171:
	.loc    1  222  is_stmt 1
        incl      %ecx                                          #222.16
..LN172:
	.loc    1  224  is_stmt 1
        vmovupd   (%rax,%r9), %ymm2                             #224.3
..LN173:
        vmovupd   48(%rdx,%r10), %ymm7                          #224.3
..LN174:
        vmovupd   96(%rdx,%r10), %ymm4                          #224.3
..LN175:
        vunpckhpd %ymm11, %ymm11, %ymm15                        #224.3
..LN176:
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #224.3
..LN177:
        vunpckhpd %ymm7, %ymm7, %ymm14                          #224.3
..LN178:
        vmulpd    %ymm8, %ymm15, %ymm0                          #224.3
..LN179:
        vmulpd    %ymm8, %ymm14, %ymm13                         #224.3
..LN180:
        vmovupd   16(%rdx,%r10), %ymm7                          #224.3
..LN181:
        vmovddup  (%rdx,%r10), %ymm10                           #224.3
..LN182:
        vmovddup  48(%rdx,%r10), %ymm9                          #224.3
..LN183:
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #224.3
..LN184:
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #224.3
..LN185:
        vunpckhpd %ymm4, %ymm4, %ymm6                           #224.3
..LN186:
        vmovupd   (%rax,%rbx), %ymm4                            #224.3
..LN187:
        vmulpd    %ymm8, %ymm6, %ymm8                           #224.3
..LN188:
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #224.3
..LN189:
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #224.3
..LN190:
        vmovupd   16(%rax,%r9), %ymm1                           #224.3
..LN191:
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #224.3
..LN192:
        vmulpd    %ymm3, %ymm15, %ymm15                         #224.3
..LN193:
        vmulpd    %ymm3, %ymm14, %ymm14                         #224.3
..LN194:
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #224.3
..LN195:
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #224.3
..LN196:
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #224.3
..LN197:
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #224.3
..LN198:
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #224.3
..LN199:
        vaddpd    %ymm11, %ymm12, %ymm13                        #224.3
..LN200:
        vblendpd  $12, 64(%rdx,%r10), %ymm0, %ymm11             #224.3
..LN201:
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #224.3
..LN202:
        vmovddup  %ymm11, %ymm0                                 #224.3
..LN203:
        vunpckhpd %ymm11, %ymm11, %ymm1                         #224.3
..LN204:
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #224.3
..LN205:
        vmulpd    %ymm11, %ymm1, %ymm11                         #224.3
..LN206:
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #224.3
..LN207:
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #224.3
..LN208:
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #224.3
..LN209:
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #224.3
..LN210:
        vmovupd   16(%rax,%rbx), %ymm10                         #224.3
..LN211:
        vaddpd    %ymm13, %ymm11, %ymm11                        #224.3
..LN212:
        vaddpd    %ymm9, %ymm12, %ymm9                          #224.3
..LN213:
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #224.3
..LN214:
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #224.3
..LN215:
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #224.3
..LN216:
        vmulpd    %ymm14, %ymm1, %ymm1                          #224.3
..LN217:
        vmovddup  96(%rdx,%r10), %ymm5                          #224.3
..LN218:
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #224.3
..LN219:
        vmulpd    %ymm3, %ymm6, %ymm2                           #224.3
..LN220:
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #224.3
..LN221:
        vmovupd   112(%rdx,%r10), %ymm1                         #224.3
..LN222:
        vmovupd   %ymm11, (%rax,%r15)                           #224.3
..LN223:
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #224.3
..LN224:
        vaddpd    %ymm9, %ymm0, %ymm9                           #224.3
..LN225:
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #224.3
..LN226:
	.loc    1  222  is_stmt 1
        addq      $144, %rdx                                    #222.16
..LN227:
	.loc    1  224  is_stmt 1
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #224.3
..LN228:
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #224.3
..LN229:
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #224.3
..LN230:
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #224.3
..LN231:
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #224.3
..LN232:
        vunpckhpd %ymm2, %ymm2, %ymm3                           #224.3
..LN233:
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #224.3
..LN234:
        vmulpd    %ymm7, %ymm3, %ymm4                           #224.3
..LN235:
        vaddpd    %ymm5, %ymm6, %ymm5                           #224.3
..LN236:
        vmovddup  %ymm2, %ymm6                                  #224.3
..LN237:
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #224.3
..LN238:
        vaddpd    %ymm5, %ymm6, %ymm8                           #224.3
..LN239:
        vmovupd   %xmm8, 32(%rax,%r15)                          #224.3
..LN240:
        vmovupd   %ymm9, (%rax,%r14)                            #224.3
..LN241:
        vextractf128 $1, %ymm8, 32(%rax,%r14)                   #224.3
..LN242:
	.loc    1  222  is_stmt 1
        addq      $48, %rax                                     #222.16
..LN243:
        cmpl      $100000000, %ecx                              #222.12
..LN244:
        jl        ..B1.24       # Prob 82%                      #222.12
..LN245:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.25:                        # Preds ..B1.24
                                # Execution count [1.00e+00]
..LN246:
	.loc    1  229  is_stmt 1
        xorl      %esi, %esi                                    #229.3
..LN247:
        lea       128(%rsp), %rdi                               #229.3
..LN248:
        vzeroupper                                              #229.3
..LN249:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #229.3
..LN250:
                                # LOE r12 r13 r14 r15
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.00e+00]
..___tag_value_main.71:
..LN251:
	.loc    1  231  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #231.9
..___tag_value_main.72:
..LN252:
                                # LOE r12 r13 r14 r15 xmm0
..B1.91:                        # Preds ..B1.26
                                # Execution count [1.00e+00]
..LN253:
        vmovsd    %xmm0, 176(%rsp)                              #231.9[spill]
..LN254:
                                # LOE r12 r13 r14 r15
..B1.27:                        # Preds ..B1.91
                                # Execution count [1.00e+00]
..LN255:
	.loc    1  233  is_stmt 1
#       clock(void)
        call      clock                                         #233.6
..LN256:
                                # LOE rax r12 r13 r14 r15
..B1.92:                        # Preds ..B1.27
                                # Execution count [1.00e+00]
..LN257:
        movq      %rax, 184(%rsp)                               #233.6[spill]
..LN258:
                                # LOE r12 r13 r14 r15
..B1.28:                        # Preds ..B1.92
                                # Execution count [9.00e-01]
..LN259:
	.loc    1  235  is_stmt 1
        xorl      %edx, %edx                                    #235.5
..LN260:
        xorl      %ecx, %ecx                                    #235.5
..LN261:
        movq      280(%rsp), %rbx                               #235.5[spill]
..LN262:
        xorl      %eax, %eax                                    #235.5
..LN263:
        movq      272(%rsp), %r9                                #235.5[spill]
..LN264:
        movq      200(%rsp), %r10                               #235.5[spill]
..LN265:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.29:                        # Preds ..B1.29 ..B1.28
                                # Execution count [5.00e+00]
..L78:
                # optimization report
                # %s was not vectorized: ASM code cannot be vectorized
..LN266:
..LN267:
	.loc    1  237  is_stmt 1
# # LLVM-MCA-BEGIN double_MVM_macro
..LN268:
	.loc    1  235  is_stmt 1
        incl      %ecx                                          #235.16
..LN269:
	.loc    1  238  is_stmt 1
        vmovupd   (%rdx,%r10), %ymm11                           #238.7
..LN270:
        vmovupd   (%rax,%r9), %ymm2                             #238.7
..LN271:
        vmovupd   48(%rdx,%r10), %ymm7                          #238.7
..LN272:
        vmovupd   96(%rdx,%r10), %ymm4                          #238.7
..LN273:
        vunpckhpd %ymm11, %ymm11, %ymm15                        #238.7
..LN274:
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #238.7
..LN275:
        vunpckhpd %ymm7, %ymm7, %ymm14                          #238.7
..LN276:
        vmulpd    %ymm8, %ymm15, %ymm0                          #238.7
..LN277:
        vmulpd    %ymm8, %ymm14, %ymm13                         #238.7
..LN278:
        vmovupd   16(%rdx,%r10), %ymm7                          #238.7
..LN279:
        vmovddup  (%rdx,%r10), %ymm10                           #238.7
..LN280:
        vmovddup  48(%rdx,%r10), %ymm9                          #238.7
..LN281:
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #238.7
..LN282:
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #238.7
..LN283:
        vunpckhpd %ymm4, %ymm4, %ymm6                           #238.7
..LN284:
        vmovupd   (%rax,%rbx), %ymm4                            #238.7
..LN285:
        vmulpd    %ymm8, %ymm6, %ymm8                           #238.7
..LN286:
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #238.7
..LN287:
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #238.7
..LN288:
        vmovupd   16(%rax,%r9), %ymm1                           #238.7
..LN289:
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #238.7
..LN290:
        vmulpd    %ymm3, %ymm15, %ymm15                         #238.7
..LN291:
        vmulpd    %ymm3, %ymm14, %ymm14                         #238.7
..LN292:
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #238.7
..LN293:
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #238.7
..LN294:
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #238.7
..LN295:
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #238.7
..LN296:
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #238.7
..LN297:
        vaddpd    %ymm11, %ymm12, %ymm13                        #238.7
..LN298:
        vblendpd  $12, 64(%rdx,%r10), %ymm0, %ymm11             #238.7
..LN299:
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #238.7
..LN300:
        vmovddup  %ymm11, %ymm0                                 #238.7
..LN301:
        vunpckhpd %ymm11, %ymm11, %ymm1                         #238.7
..LN302:
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #238.7
..LN303:
        vmulpd    %ymm11, %ymm1, %ymm11                         #238.7
..LN304:
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #238.7
..LN305:
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #238.7
..LN306:
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #238.7
..LN307:
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #238.7
..LN308:
        vmovupd   16(%rax,%rbx), %ymm10                         #238.7
..LN309:
        vaddpd    %ymm13, %ymm11, %ymm11                        #238.7
..LN310:
        vaddpd    %ymm9, %ymm12, %ymm9                          #238.7
..LN311:
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #238.7
..LN312:
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #238.7
..LN313:
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #238.7
..LN314:
        vmulpd    %ymm14, %ymm1, %ymm1                          #238.7
..LN315:
        .byte     144                                           #238.7
..LN316:
        vmovddup  96(%rdx,%r10), %ymm5                          #238.7
..LN317:
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #238.7
..LN318:
        vmulpd    %ymm3, %ymm6, %ymm2                           #238.7
..LN319:
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #238.7
..LN320:
        vmovupd   112(%rdx,%r10), %ymm1                         #238.7
..LN321:
        vmovupd   %ymm11, (%rax,%r15)                           #238.7
..LN322:
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #238.7
..LN323:
        vaddpd    %ymm9, %ymm0, %ymm9                           #238.7
..LN324:
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #238.7
..LN325:
	.loc    1  235  is_stmt 1
        addq      $144, %rdx                                    #235.16
..LN326:
	.loc    1  238  is_stmt 1
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #238.7
..LN327:
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #238.7
..LN328:
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #238.7
..LN329:
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #238.7
..LN330:
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #238.7
..LN331:
        vunpckhpd %ymm2, %ymm2, %ymm3                           #238.7
..LN332:
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #238.7
..LN333:
        vmulpd    %ymm7, %ymm3, %ymm4                           #238.7
..LN334:
        vaddpd    %ymm5, %ymm6, %ymm5                           #238.7
..LN335:
        vmovddup  %ymm2, %ymm6                                  #238.7
..LN336:
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #238.7
..LN337:
        vaddpd    %ymm5, %ymm6, %ymm8                           #238.7
..LN338:
        vmovupd   %xmm8, 32(%rax,%r15)                          #238.7
..LN339:
        vmovupd   %ymm9, (%rax,%r14)                            #238.7
..LN340:
        vextractf128 $1, %ymm8, 32(%rax,%r14)                   #238.7
..LN341:
	.loc    1  240  is_stmt 1
# # LLVM-MCA-END
..LN342:
	.loc    1  235  is_stmt 1
        addq      $48, %rax                                     #235.16
..LN343:
        cmpl      $100000000, %ecx                              #235.12
..LN344:
        jl        ..B1.29       # Prob 82%                      #235.12
..LN345:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.00e+00]
..LN346:
	.loc    1  243  is_stmt 1
        vzeroupper                                              #243.4
..LN347:
#       clock(void)
        call      clock                                         #243.4
..LN348:
                                # LOE rax r12 r13 r14 r15
..B1.93:                        # Preds ..B1.30
                                # Execution count [1.00e+00]
..LN349:
        movq      %rax, %rbx                                    #243.4
..LN350:
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.93
                                # Execution count [1.00e+00]
..___tag_value_main.79:
..LN351:
	.loc    1  245  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #245.9
..___tag_value_main.80:
..LN352:
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.94:                        # Preds ..B1.31
                                # Execution count [1.00e+00]
..LN353:
        vmovsd    %xmm0, 192(%rsp)                              #245.9[spill]
..LN354:
                                # LOE rbx r12 r13 r14 r15
..B1.32:                        # Preds ..B1.94
                                # Execution count [1.00e+00]
..LN355:
	.loc    1  247  is_stmt 1
        xorl      %esi, %esi                                    #247.3
..LN356:
        lea       144(%rsp), %rdi                               #247.3
..LN357:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #247.3
..LN358:
                                # LOE rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.00e+00]
..LN359:
	.loc    1  248  is_stmt 1
        lea       160(%rsp), %rdi                               #248.3
..LN360:
        lea       144(%rsp), %rsi                               #248.3
..LN361:
        lea       128(%rsp), %rdx                               #248.3
..___tag_value_main.82:
..LN362:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #248.3
..___tag_value_main.83:
..LN363:
                                # LOE rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33
                                # Execution count [1.00e+00]
..LN364:
	.loc    1  250  is_stmt 1
        subq      184(%rsp), %rbx                               #250.5[spill]
..LN365:
        vxorpd    %xmm0, %xmm0, %xmm0                           #250.5
..LN366:
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #250.5
..LN367:
        movl      $.L_2__STRING.1, %edi                         #250.5
..LN368:
        xorl      %esi, %esi                                    #250.5
..LN369:
        movl      $.L_2__STRING.2, %edx                         #250.5
..LN370:
        movl      $1, %eax                                      #250.5
..LN371:
        vdivsd    .L_2il0floatpacket.0(%rip), %xmm0, %xmm0      #250.5
..___tag_value_main.85:
..LN372:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #250.5
..___tag_value_main.86:
..LN373:
                                # LOE r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34
                                # Execution count [1.00e+00]
..LN374:
	.loc    1  252  is_stmt 1
        vmovsd    192(%rsp), %xmm0                              #252.5[spill]
..LN375:
        movl      $.L_2__STRING.1, %edi                         #252.5
..LN376:
        xorl      %esi, %esi                                    #252.5
..LN377:
        movl      $.L_2__STRING.3, %edx                         #252.5
..LN378:
        movl      $1, %eax                                      #252.5
..LN379:
        vsubsd    176(%rsp), %xmm0, %xmm0                       #252.5[spill]
..___tag_value_main.88:
..LN380:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #252.5
..___tag_value_main.89:
..LN381:
                                # LOE r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35
                                # Execution count [1.00e+00]
..LN382:
	.loc    1  254  is_stmt 1
        vxorpd    %xmm1, %xmm1, %xmm1                           #254.5
..LN383:
        vxorpd    %xmm0, %xmm0, %xmm0                           #254.5
..LN384:
        vcvtsi2sdq 168(%rsp), %xmm1, %xmm1                      #254.5
..LN385:
        vcvtsi2sdq 160(%rsp), %xmm0, %xmm0                      #254.5
..LN386:
        movl      $.L_2__STRING.1, %edi                         #254.5
..LN387:
        xorl      %esi, %esi                                    #254.5
..LN388:
        movl      $.L_2__STRING.4, %edx                         #254.5
..LN389:
        movl      $1, %eax                                      #254.5
..LN390:
        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm1, %xmm0    #254.5
..___tag_value_main.91:
..LN391:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #254.5
..___tag_value_main.92:
..LN392:
                                # LOE r12 r13 r14 r15
..B1.37:                        # Preds ..B1.36
                                # Execution count [9.00e-01]
..LN393:
	.loc    1  264  is_stmt 1
        xorl      %edx, %edx                                    #264.5
..LN394:
        xorl      %ecx, %ecx                                    #264.5
..LN395:
        movq      280(%rsp), %rbx                               #264.5[spill]
..LN396:
        xorl      %eax, %eax                                    #264.5
..LN397:
        movq      272(%rsp), %r9                                #264.5[spill]
..LN398:
        movq      200(%rsp), %r10                               #264.5[spill]
..LN399:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.38:                        # Preds ..B1.38 ..B1.37
                                # Execution count [5.00e+00]
..L96:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN400:
..LN401:
	.loc    1  266  is_stmt 1
        vmovupd   (%rax,%r10), %xmm10                           #266.3
..LN402:
        vmovupd   (%rdx,%r9), %xmm8                             #266.3
..LN403:
        vmovupd   16(%rax,%r10), %xmm1                          #266.3
..LN404:
        vunpckhpd %xmm8, %xmm8, %xmm7                           #266.3
..LN405:
	.loc    1  264  is_stmt 1
        incl      %ecx                                          #264.16
..LN406:
	.loc    1  266  is_stmt 1
        vshufpd   $1, %xmm10, %xmm10, %xmm11                    #266.3
..LN407:
        vmulpd    %xmm11, %xmm7, %xmm6                          #266.3
..LN408:
        vmovddup  (%rdx,%r9), %xmm2                             #266.3
..LN409:
        vfmaddsub213pd %xmm6, %xmm10, %xmm2                     #266.3
..LN410:
        vshufpd   $1, %xmm1, %xmm1, %xmm0                       #266.3
..LN411:
        vmovupd   %xmm2, (%rdx,%r13)                            #266.3
..LN412:
        vmovupd   16(%rdx,%r9), %xmm4                           #266.3
..LN413:
        vunpckhpd %xmm4, %xmm4, %xmm5                           #266.3
..LN414:
        vmulpd    %xmm0, %xmm5, %xmm3                           #266.3
..LN415:
        vmovupd   48(%rax,%r10), %xmm4                          #266.3
..LN416:
        vmovddup  16(%rdx,%r9), %xmm14                          #266.3
..LN417:
        vfmaddsub213pd %xmm3, %xmm1, %xmm14                     #266.3
..LN418:
        vmovupd   32(%rax,%r10), %xmm3                          #266.3
..LN419:
        vaddpd    %xmm14, %xmm2, %xmm8                          #266.3
..LN420:
        vmovupd   %xmm8, (%rdx,%r13)                            #266.3
..LN421:
        vshufpd   $1, %xmm3, %xmm3, %xmm2                       #266.3
..LN422:
        vmovupd   32(%rdx,%r9), %xmm15                          #266.3
..LN423:
        vunpckhpd %xmm15, %xmm15, %xmm14                        #266.3
..LN424:
        vmulpd    %xmm2, %xmm14, %xmm9                          #266.3
..LN425:
        vmovddup  32(%rdx,%r9), %xmm7                           #266.3
..LN426:
        vfmaddsub213pd %xmm9, %xmm3, %xmm7                      #266.3
..LN427:
        vaddpd    %xmm7, %xmm8, %xmm6                           #266.3
..LN428:
        vmovupd   64(%rax,%r10), %xmm7                          #266.3
..LN429:
        vmovupd   %xmm6, (%rdx,%r13)                            #266.3
..LN430:
        vshufpd   $1, %xmm7, %xmm7, %xmm6                       #266.3
..LN431:
        vmovupd   (%rdx,%r9), %xmm5                             #266.3
..LN432:
        vunpckhpd %xmm5, %xmm5, %xmm12                          #266.3
..LN433:
        vshufpd   $1, %xmm4, %xmm4, %xmm5                       #266.3
..LN434:
        vmulpd    %xmm5, %xmm12, %xmm13                         #266.3
..LN435:
        vmovddup  (%rdx,%r9), %xmm9                             #266.3
..LN436:
        vfmaddsub213pd %xmm13, %xmm4, %xmm9                     #266.3
..LN437:
        vmovupd   %xmm9, 16(%rdx,%r13)                          #266.3
..LN438:
        vmovupd   16(%rdx,%r9), %xmm15                          #266.3
..LN439:
        vunpckhpd %xmm15, %xmm15, %xmm14                        #266.3
..LN440:
        vmulpd    %xmm6, %xmm14, %xmm8                          #266.3
..LN441:
        vmovddup  16(%rdx,%r9), %xmm12                          #266.3
..LN442:
        vfmaddsub213pd %xmm8, %xmm7, %xmm12                     #266.3
..LN443:
        vaddpd    %xmm12, %xmm9, %xmm13                         #266.3
..LN444:
        vmovupd   80(%rax,%r10), %xmm9                          #266.3
..LN445:
        vmovupd   %xmm13, 16(%rdx,%r13)                         #266.3
..LN446:
        vshufpd   $1, %xmm9, %xmm9, %xmm8                       #266.3
..LN447:
        .byte     144                                           #266.3
..LN448:
        vmovupd   32(%rdx,%r9), %xmm15                          #266.3
..LN449:
        vunpckhpd %xmm15, %xmm15, %xmm12                        #266.3
..LN450:
        vmulpd    %xmm8, %xmm12, %xmm15                         #266.3
..LN451:
        vmovddup  32(%rdx,%r9), %xmm14                          #266.3
..LN452:
        vfmaddsub213pd %xmm15, %xmm9, %xmm14                    #266.3
..LN453:
        vaddpd    %xmm14, %xmm13, %xmm13                        #266.3
..LN454:
        vmovupd   96(%rax,%r10), %xmm14                         #266.3
..LN455:
        vmovupd   %xmm13, 16(%rdx,%r13)                         #266.3
..LN456:
        vmovupd   (%rdx,%r9), %xmm13                            #266.3
..LN457:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #266.3
..LN458:
        vshufpd   $1, %xmm14, %xmm14, %xmm13                    #266.3
..LN459:
        vmulpd    %xmm13, %xmm15, %xmm15                        #266.3
..LN460:
        vmovddup  (%rdx,%r9), %xmm12                            #266.3
..LN461:
        vfmaddsub213pd %xmm15, %xmm14, %xmm12                   #266.3
..LN462:
        vmovupd   112(%rax,%r10), %xmm15                        #266.3
..LN463:
        vmovupd   %xmm13, 176(%rsp)                             #266.3[spill]
..LN464:
        vmovupd   %xmm12, 32(%rdx,%r13)                         #266.3
..LN465:
        vshufpd   $1, %xmm15, %xmm15, %xmm13                    #266.3
..LN466:
        vmovupd   16(%rdx,%r9), %xmm14                          #266.3
..LN467:
        vunpckhpd %xmm14, %xmm14, %xmm14                        #266.3
..LN468:
        vmulpd    %xmm13, %xmm14, %xmm14                        #266.3
..LN469:
        vmovupd   %xmm13, 224(%rsp)                             #266.3[spill]
..LN470:
        vmovddup  16(%rdx,%r9), %xmm13                          #266.3
..LN471:
        vfmaddsub213pd %xmm14, %xmm15, %xmm13                   #266.3
..LN472:
        vmovupd   128(%rax,%r10), %xmm14                        #266.3
..LN473:
        vshufpd   $1, %xmm14, %xmm14, %xmm15                    #266.3
..LN474:
        vaddpd    %xmm13, %xmm12, %xmm13                        #266.3
..LN475:
        vmovupd   %xmm13, 32(%rdx,%r13)                         #266.3
..LN476:
        vmovupd   %xmm15, 240(%rsp)                             #266.3[spill]
..LN477:
        vmovupd   32(%rdx,%r9), %xmm12                          #266.3
..LN478:
        vunpckhpd %xmm12, %xmm12, %xmm12                        #266.3
..LN479:
        vmulpd    %xmm15, %xmm12, %xmm12                        #266.3
..LN480:
        .byte     102                                           #266.3
..LN481:
        .byte     144                                           #266.3
..LN482:
        vmovddup  32(%rdx,%r9), %xmm15                          #266.3
..LN483:
        vfmaddsub213pd %xmm12, %xmm14, %xmm15                   #266.3
..LN484:
        vaddpd    %xmm15, %xmm13, %xmm13                        #266.3
..LN485:
        vmovupd   %xmm13, 32(%rdx,%r13)                         #266.3
..LN486:
	.loc    1  267  is_stmt 1
        vmovupd   (%rdx,%rbx), %xmm13                           #267.3
..LN487:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #267.3
..LN488:
        vmulpd    %xmm11, %xmm15, %xmm11                        #267.3
..LN489:
        vmovddup  (%rdx,%rbx), %xmm12                           #267.3
..LN490:
        vfmaddsub213pd %xmm11, %xmm10, %xmm12                   #267.3
..LN491:
        vmovupd   %xmm12, (%rdx,%r12)                           #267.3
..LN492:
        vmovupd   16(%rdx,%rbx), %xmm10                         #267.3
..LN493:
        vunpckhpd %xmm10, %xmm10, %xmm10                        #267.3
..LN494:
        vmulpd    %xmm0, %xmm10, %xmm0                          #267.3
..LN495:
        vmovddup  16(%rdx,%rbx), %xmm11                         #267.3
..LN496:
        vfmaddsub213pd %xmm0, %xmm1, %xmm11                     #267.3
..LN497:
        vaddpd    %xmm11, %xmm12, %xmm0                         #267.3
..LN498:
        vmovupd   %xmm0, (%rdx,%r12)                            #267.3
..LN499:
        vmovupd   32(%rdx,%rbx), %xmm1                          #267.3
..LN500:
        vunpckhpd %xmm1, %xmm1, %xmm1                           #267.3
..LN501:
        vmulpd    %xmm2, %xmm1, %xmm2                           #267.3
..LN502:
        vmovddup  32(%rdx,%rbx), %xmm10                         #267.3
..LN503:
        vfmaddsub213pd %xmm2, %xmm3, %xmm10                     #267.3
..LN504:
        vaddpd    %xmm10, %xmm0, %xmm3                          #267.3
..LN505:
        vmovupd   %xmm3, (%rdx,%r12)                            #267.3
..LN506:
        vmovupd   (%rdx,%rbx), %xmm11                           #267.3
..LN507:
        vunpckhpd %xmm11, %xmm11, %xmm12                        #267.3
..LN508:
        vmulpd    %xmm5, %xmm12, %xmm5                          #267.3
..LN509:
        vmovddup  (%rdx,%rbx), %xmm15                           #267.3
..LN510:
        vfmaddsub213pd %xmm5, %xmm4, %xmm15                     #267.3
..LN511:
        vmovupd   %xmm15, 16(%rdx,%r12)                         #267.3
..LN512:
        vmovupd   16(%rdx,%rbx), %xmm4                          #267.3
..LN513:
        vunpckhpd %xmm4, %xmm4, %xmm13                          #267.3
..LN514:
        vmulpd    %xmm6, %xmm13, %xmm6                          #267.3
..LN515:
        vmovddup  16(%rdx,%rbx), %xmm0                          #267.3
..LN516:
        vfmaddsub213pd %xmm6, %xmm7, %xmm0                      #267.3
..LN517:
        vaddpd    %xmm0, %xmm15, %xmm0                          #267.3
..LN518:
        vmovupd   %xmm0, 16(%rdx,%r12)                          #267.3
..LN519:
        vmovupd   32(%rdx,%rbx), %xmm7                          #267.3
..LN520:
        vunpckhpd %xmm7, %xmm7, %xmm7                           #267.3
..LN521:
        vmulpd    %xmm8, %xmm7, %xmm8                           #267.3
..LN522:
        vmovddup  32(%rdx,%rbx), %xmm1                          #267.3
..LN523:
        vfmaddsub213pd %xmm8, %xmm9, %xmm1                      #267.3
..LN524:
        vaddpd    %xmm1, %xmm0, %xmm9                           #267.3
..LN525:
        vmovupd   %xmm9, 16(%rdx,%r12)                          #267.3
..LN526:
        vmovupd   (%rdx,%rbx), %xmm0                            #267.3
..LN527:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #267.3
..LN528:
        vmulpd    176(%rsp), %xmm1, %xmm2                       #267.3[spill]
..LN529:
        vmovddup  (%rdx,%rbx), %xmm6                            #267.3
..LN530:
        vfmaddsub132pd 96(%rax,%r10), %xmm2, %xmm6              #267.3
..LN531:
        vmovupd   %xmm6, 32(%rdx,%r12)                          #267.3
..LN532:
        vmovupd   16(%rdx,%rbx), %xmm3                          #267.3
..LN533:
        vunpckhpd %xmm3, %xmm3, %xmm4                           #267.3
..LN534:
        vmulpd    224(%rsp), %xmm4, %xmm5                       #267.3[spill]
..LN535:
        vmovddup  16(%rdx,%rbx), %xmm7                          #267.3
..LN536:
        vfmaddsub132pd 112(%rax,%r10), %xmm5, %xmm7             #267.3
..LN537:
	.loc    1  264  is_stmt 1
        addq      $144, %rax                                    #264.16
..LN538:
	.loc    1  267  is_stmt 1
        vaddpd    %xmm7, %xmm6, %xmm11                          #267.3
..LN539:
        vmovupd   %xmm11, 32(%rdx,%r12)                         #267.3
..LN540:
        vmovupd   32(%rdx,%rbx), %xmm8                          #267.3
..LN541:
        vunpckhpd %xmm8, %xmm8, %xmm9                           #267.3
..LN542:
        vmulpd    240(%rsp), %xmm9, %xmm10                      #267.3[spill]
..LN543:
        vmovddup  32(%rdx,%rbx), %xmm12                         #267.3
..LN544:
        vfmaddsub213pd %xmm10, %xmm14, %xmm12                   #267.3
..LN545:
        vaddpd    %xmm12, %xmm11, %xmm14                        #267.3
..LN546:
        vmovupd   %xmm14, 32(%rdx,%r12)                         #267.3
..LN547:
	.loc    1  264  is_stmt 1
        addq      $48, %rdx                                     #264.16
..LN548:
        cmpl      $100000000, %ecx                              #264.12
..LN549:
        jl        ..B1.38       # Prob 82%                      #264.12
..LN550:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.39:                        # Preds ..B1.38
                                # Execution count [1.00e+00]
..LN551:
	.loc    1  271  is_stmt 1
        xorl      %esi, %esi                                    #271.3
..LN552:
        lea       128(%rsp), %rdi                               #271.3
..LN553:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #271.3
..LN554:
                                # LOE r12 r13 r14 r15
..B1.40:                        # Preds ..B1.39
                                # Execution count [1.00e+00]
..___tag_value_main.103:
..LN555:
	.loc    1  273  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #273.9
..___tag_value_main.104:
..LN556:
                                # LOE r12 r13 r14 r15 xmm0
..B1.95:                        # Preds ..B1.40
                                # Execution count [1.00e+00]
..LN557:
        vmovsd    %xmm0, 176(%rsp)                              #273.9[spill]
..LN558:
                                # LOE r12 r13 r14 r15
..B1.41:                        # Preds ..B1.95
                                # Execution count [1.00e+00]
..LN559:
	.loc    1  275  is_stmt 1
#       clock(void)
        call      clock                                         #275.6
..LN560:
                                # LOE rax r12 r13 r14 r15
..B1.96:                        # Preds ..B1.41
                                # Execution count [1.00e+00]
..LN561:
        movq      %rax, 184(%rsp)                               #275.6[spill]
..LN562:
                                # LOE r12 r13 r14 r15
..B1.42:                        # Preds ..B1.96
                                # Execution count [9.00e-01]
..LN563:
	.loc    1  276  is_stmt 1
        xorl      %edx, %edx                                    #276.6
..LN564:
        xorl      %ecx, %ecx                                    #276.6
..LN565:
        movq      280(%rsp), %rbx                               #276.6[spill]
..LN566:
        xorl      %eax, %eax                                    #276.6
..LN567:
        movq      272(%rsp), %r9                                #276.6[spill]
..LN568:
        movq      200(%rsp), %r10                               #276.6[spill]
..LN569:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.43:                        # Preds ..B1.43 ..B1.42
                                # Execution count [5.00e+00]
..L110:
                # optimization report
                # %s was not vectorized: ASM code cannot be vectorized
..LN570:
..LN571:
	.loc    1  278  is_stmt 1
# # LLVM-MCA-BEGIN _suNf_theta_T_multiply
..LN572:
	.loc    1  276  is_stmt 1
        incl      %ecx                                          #276.17
..LN573:
	.loc    1  279  is_stmt 1
        vmovupd   (%rax,%r10), %xmm10                           #279.3
..LN574:
        vmovupd   (%rdx,%r9), %xmm8                             #279.3
..LN575:
        vmovupd   16(%rax,%r10), %xmm1                          #279.3
..LN576:
        vunpckhpd %xmm8, %xmm8, %xmm7                           #279.3
..LN577:
        vshufpd   $1, %xmm10, %xmm10, %xmm11                    #279.3
..LN578:
        vmulpd    %xmm11, %xmm7, %xmm6                          #279.3
..LN579:
        vmovddup  (%rdx,%r9), %xmm2                             #279.3
..LN580:
        vfmaddsub213pd %xmm6, %xmm10, %xmm2                     #279.3
..LN581:
        vshufpd   $1, %xmm1, %xmm1, %xmm0                       #279.3
..LN582:
        vmovupd   %xmm2, (%rdx,%r13)                            #279.3
..LN583:
        vmovupd   16(%rdx,%r9), %xmm4                           #279.3
..LN584:
        vunpckhpd %xmm4, %xmm4, %xmm5                           #279.3
..LN585:
        vmulpd    %xmm0, %xmm5, %xmm3                           #279.3
..LN586:
        vmovupd   48(%rax,%r10), %xmm4                          #279.3
..LN587:
        vmovddup  16(%rdx,%r9), %xmm14                          #279.3
..LN588:
        vfmaddsub213pd %xmm3, %xmm1, %xmm14                     #279.3
..LN589:
        vmovupd   32(%rax,%r10), %xmm3                          #279.3
..LN590:
        vaddpd    %xmm14, %xmm2, %xmm8                          #279.3
..LN591:
        vmovupd   %xmm8, (%rdx,%r13)                            #279.3
..LN592:
        vshufpd   $1, %xmm3, %xmm3, %xmm2                       #279.3
..LN593:
        vmovupd   32(%rdx,%r9), %xmm15                          #279.3
..LN594:
        vunpckhpd %xmm15, %xmm15, %xmm14                        #279.3
..LN595:
        vmulpd    %xmm2, %xmm14, %xmm9                          #279.3
..LN596:
        vmovddup  32(%rdx,%r9), %xmm7                           #279.3
..LN597:
        vfmaddsub213pd %xmm9, %xmm3, %xmm7                      #279.3
..LN598:
        vaddpd    %xmm7, %xmm8, %xmm6                           #279.3
..LN599:
        vmovupd   64(%rax,%r10), %xmm7                          #279.3
..LN600:
        vmovupd   %xmm6, (%rdx,%r13)                            #279.3
..LN601:
        vshufpd   $1, %xmm7, %xmm7, %xmm6                       #279.3
..LN602:
        vmovupd   (%rdx,%r9), %xmm5                             #279.3
..LN603:
        vunpckhpd %xmm5, %xmm5, %xmm12                          #279.3
..LN604:
        vshufpd   $1, %xmm4, %xmm4, %xmm5                       #279.3
..LN605:
        vmulpd    %xmm5, %xmm12, %xmm13                         #279.3
..LN606:
        vmovddup  (%rdx,%r9), %xmm9                             #279.3
..LN607:
        vfmaddsub213pd %xmm13, %xmm4, %xmm9                     #279.3
..LN608:
        vmovupd   %xmm9, 16(%rdx,%r13)                          #279.3
..LN609:
        vmovupd   16(%rdx,%r9), %xmm15                          #279.3
..LN610:
        vunpckhpd %xmm15, %xmm15, %xmm14                        #279.3
..LN611:
        vmulpd    %xmm6, %xmm14, %xmm8                          #279.3
..LN612:
        vmovddup  16(%rdx,%r9), %xmm12                          #279.3
..LN613:
        vfmaddsub213pd %xmm8, %xmm7, %xmm12                     #279.3
..LN614:
        vaddpd    %xmm12, %xmm9, %xmm13                         #279.3
..LN615:
        vmovupd   80(%rax,%r10), %xmm9                          #279.3
..LN616:
        vmovupd   %xmm13, 16(%rdx,%r13)                         #279.3
..LN617:
        vshufpd   $1, %xmm9, %xmm9, %xmm8                       #279.3
..LN618:
        vmovupd   32(%rdx,%r9), %xmm15                          #279.3
..LN619:
        vunpckhpd %xmm15, %xmm15, %xmm12                        #279.3
..LN620:
        vmulpd    %xmm8, %xmm12, %xmm15                         #279.3
..LN621:
        vmovddup  32(%rdx,%r9), %xmm14                          #279.3
..LN622:
        vfmaddsub213pd %xmm15, %xmm9, %xmm14                    #279.3
..LN623:
        vaddpd    %xmm14, %xmm13, %xmm13                        #279.3
..LN624:
        vmovupd   96(%rax,%r10), %xmm14                         #279.3
..LN625:
        vmovupd   %xmm13, 16(%rdx,%r13)                         #279.3
..LN626:
        vmovupd   (%rdx,%r9), %xmm13                            #279.3
..LN627:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #279.3
..LN628:
        vshufpd   $1, %xmm14, %xmm14, %xmm13                    #279.3
..LN629:
        vmulpd    %xmm13, %xmm15, %xmm15                        #279.3
..LN630:
        vmovddup  (%rdx,%r9), %xmm12                            #279.3
..LN631:
        vfmaddsub213pd %xmm15, %xmm14, %xmm12                   #279.3
..LN632:
        .byte     15                                            #279.3
..LN633:
        .byte     31                                            #279.3
..LN634:
        .byte     0                                             #279.3
..LN635:
        vmovupd   112(%rax,%r10), %xmm15                        #279.3
..LN636:
        vmovupd   %xmm13, 224(%rsp)                             #279.3[spill]
..LN637:
        vmovupd   %xmm12, 32(%rdx,%r13)                         #279.3
..LN638:
        vshufpd   $1, %xmm15, %xmm15, %xmm13                    #279.3
..LN639:
        vmovupd   16(%rdx,%r9), %xmm14                          #279.3
..LN640:
        vunpckhpd %xmm14, %xmm14, %xmm14                        #279.3
..LN641:
        vmulpd    %xmm13, %xmm14, %xmm14                        #279.3
..LN642:
        vmovupd   %xmm13, 240(%rsp)                             #279.3[spill]
..LN643:
        vmovddup  16(%rdx,%r9), %xmm13                          #279.3
..LN644:
        vfmaddsub213pd %xmm14, %xmm15, %xmm13                   #279.3
..LN645:
        vmovupd   128(%rax,%r10), %xmm14                        #279.3
..LN646:
        vshufpd   $1, %xmm14, %xmm14, %xmm15                    #279.3
..LN647:
        vaddpd    %xmm13, %xmm12, %xmm13                        #279.3
..LN648:
        vmovupd   %xmm13, 32(%rdx,%r13)                         #279.3
..LN649:
        vmovupd   %xmm15, 256(%rsp)                             #279.3[spill]
..LN650:
        vmovupd   32(%rdx,%r9), %xmm12                          #279.3
..LN651:
        vunpckhpd %xmm12, %xmm12, %xmm12                        #279.3
..LN652:
        vmulpd    %xmm15, %xmm12, %xmm12                        #279.3
..LN653:
        vmovddup  32(%rdx,%r9), %xmm15                          #279.3
..LN654:
        vfmaddsub213pd %xmm12, %xmm14, %xmm15                   #279.3
..LN655:
        vaddpd    %xmm15, %xmm13, %xmm13                        #279.3
..LN656:
        vmovupd   %xmm13, 32(%rdx,%r13)                         #279.3
..LN657:
	.loc    1  280  is_stmt 1
        vmovupd   (%rdx,%rbx), %xmm13                           #280.3
..LN658:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #280.3
..LN659:
        vmulpd    %xmm11, %xmm15, %xmm11                        #280.3
..LN660:
        vmovddup  (%rdx,%rbx), %xmm12                           #280.3
..LN661:
        vfmaddsub213pd %xmm11, %xmm10, %xmm12                   #280.3
..LN662:
        vmovupd   %xmm12, (%rdx,%r12)                           #280.3
..LN663:
        vmovupd   16(%rdx,%rbx), %xmm10                         #280.3
..LN664:
        vunpckhpd %xmm10, %xmm10, %xmm10                        #280.3
..LN665:
        vmulpd    %xmm0, %xmm10, %xmm0                          #280.3
..LN666:
        vmovddup  16(%rdx,%rbx), %xmm11                         #280.3
..LN667:
        vfmaddsub213pd %xmm0, %xmm1, %xmm11                     #280.3
..LN668:
        vaddpd    %xmm11, %xmm12, %xmm0                         #280.3
..LN669:
        vmovupd   %xmm0, (%rdx,%r12)                            #280.3
..LN670:
        vmovupd   32(%rdx,%rbx), %xmm1                          #280.3
..LN671:
        vunpckhpd %xmm1, %xmm1, %xmm1                           #280.3
..LN672:
        vmulpd    %xmm2, %xmm1, %xmm2                           #280.3
..LN673:
        vmovddup  32(%rdx,%rbx), %xmm10                         #280.3
..LN674:
        vfmaddsub213pd %xmm2, %xmm3, %xmm10                     #280.3
..LN675:
        vaddpd    %xmm10, %xmm0, %xmm3                          #280.3
..LN676:
        vmovupd   %xmm3, (%rdx,%r12)                            #280.3
..LN677:
        vmovupd   (%rdx,%rbx), %xmm11                           #280.3
..LN678:
        vunpckhpd %xmm11, %xmm11, %xmm12                        #280.3
..LN679:
        vmulpd    %xmm5, %xmm12, %xmm5                          #280.3
..LN680:
        vmovddup  (%rdx,%rbx), %xmm15                           #280.3
..LN681:
        vfmaddsub213pd %xmm5, %xmm4, %xmm15                     #280.3
..LN682:
        vmovupd   %xmm15, 16(%rdx,%r12)                         #280.3
..LN683:
        vmovupd   16(%rdx,%rbx), %xmm4                          #280.3
..LN684:
        vunpckhpd %xmm4, %xmm4, %xmm13                          #280.3
..LN685:
        vmulpd    %xmm6, %xmm13, %xmm6                          #280.3
..LN686:
        vmovddup  16(%rdx,%rbx), %xmm0                          #280.3
..LN687:
        vfmaddsub213pd %xmm6, %xmm7, %xmm0                      #280.3
..LN688:
        vaddpd    %xmm0, %xmm15, %xmm0                          #280.3
..LN689:
        vmovupd   %xmm0, 16(%rdx,%r12)                          #280.3
..LN690:
        vmovupd   32(%rdx,%rbx), %xmm7                          #280.3
..LN691:
        vunpckhpd %xmm7, %xmm7, %xmm7                           #280.3
..LN692:
        vmulpd    %xmm8, %xmm7, %xmm8                           #280.3
..LN693:
        vmovddup  32(%rdx,%rbx), %xmm1                          #280.3
..LN694:
        vfmaddsub213pd %xmm8, %xmm9, %xmm1                      #280.3
..LN695:
        vaddpd    %xmm1, %xmm0, %xmm9                           #280.3
..LN696:
        vmovupd   %xmm9, 16(%rdx,%r12)                          #280.3
..LN697:
        vmovupd   (%rdx,%rbx), %xmm0                            #280.3
..LN698:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #280.3
..LN699:
        vmulpd    224(%rsp), %xmm1, %xmm2                       #280.3[spill]
..LN700:
        vmovddup  (%rdx,%rbx), %xmm6                            #280.3
..LN701:
        vfmaddsub132pd 96(%rax,%r10), %xmm2, %xmm6              #280.3
..LN702:
        vmovupd   %xmm6, 32(%rdx,%r12)                          #280.3
..LN703:
        vmovupd   16(%rdx,%rbx), %xmm3                          #280.3
..LN704:
        vunpckhpd %xmm3, %xmm3, %xmm4                           #280.3
..LN705:
        vmulpd    240(%rsp), %xmm4, %xmm5                       #280.3[spill]
..LN706:
        vmovddup  16(%rdx,%rbx), %xmm7                          #280.3
..LN707:
        vfmaddsub132pd 112(%rax,%r10), %xmm5, %xmm7             #280.3
..LN708:
	.loc    1  276  is_stmt 1
        addq      $144, %rax                                    #276.17
..LN709:
	.loc    1  280  is_stmt 1
        vaddpd    %xmm7, %xmm6, %xmm11                          #280.3
..LN710:
        vmovupd   %xmm11, 32(%rdx,%r12)                         #280.3
..LN711:
        vmovupd   32(%rdx,%rbx), %xmm8                          #280.3
..LN712:
        vunpckhpd %xmm8, %xmm8, %xmm9                           #280.3
..LN713:
        vmulpd    256(%rsp), %xmm9, %xmm10                      #280.3[spill]
..LN714:
        vmovddup  32(%rdx,%rbx), %xmm12                         #280.3
..LN715:
        vfmaddsub213pd %xmm10, %xmm14, %xmm12                   #280.3
..LN716:
        vaddpd    %xmm12, %xmm11, %xmm14                        #280.3
..LN717:
        vmovupd   %xmm14, 32(%rdx,%r12)                         #280.3
..LN718:
	.loc    1  276  is_stmt 1
        addq      $48, %rdx                                     #276.17
..LN719:
	.loc    1  281  is_stmt 1
# # LLVM-MCA-END
..LN720:
	.loc    1  276  is_stmt 1
        cmpl      $100000000, %ecx                              #276.13
..LN721:
        jl        ..B1.43       # Prob 82%                      #276.13
..LN722:
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 ecx
..B1.44:                        # Preds ..B1.43
                                # Execution count [1.00e+00]
..LN723:
	.loc    1  284  is_stmt 1
#       clock(void)
        call      clock                                         #284.6
..LN724:
                                # LOE rax r12 r13 r14 r15
..B1.97:                        # Preds ..B1.44
                                # Execution count [1.00e+00]
..LN725:
        movq      %rax, %rbx                                    #284.6
..LN726:
                                # LOE rbx r12 r13 r14 r15
..B1.45:                        # Preds ..B1.97
                                # Execution count [1.00e+00]
..___tag_value_main.117:
..LN727:
	.loc    1  286  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #286.9
..___tag_value_main.118:
..LN728:
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.98:                        # Preds ..B1.45
                                # Execution count [1.00e+00]
..LN729:
        vmovsd    %xmm0, 192(%rsp)                              #286.9[spill]
..LN730:
                                # LOE rbx r12 r13 r14 r15
..B1.46:                        # Preds ..B1.98
                                # Execution count [1.00e+00]
..LN731:
	.loc    1  288  is_stmt 1
        xorl      %esi, %esi                                    #288.3
..LN732:
        lea       144(%rsp), %rdi                               #288.3
..LN733:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #288.3
..LN734:
                                # LOE rbx r12 r13 r14 r15
..B1.47:                        # Preds ..B1.46
                                # Execution count [1.00e+00]
..LN735:
	.loc    1  289  is_stmt 1
        lea       160(%rsp), %rdi                               #289.3
..LN736:
        lea       144(%rsp), %rsi                               #289.3
..LN737:
        lea       128(%rsp), %rdx                               #289.3
..___tag_value_main.120:
..LN738:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #289.3
..___tag_value_main.121:
..LN739:
                                # LOE rbx r12 r13 r14 r15
..B1.48:                        # Preds ..B1.47
                                # Execution count [1.00e+00]
..LN740:
	.loc    1  291  is_stmt 1
        subq      184(%rsp), %rbx                               #291.5[spill]
..LN741:
        vxorpd    %xmm0, %xmm0, %xmm0                           #291.5
..LN742:
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #291.5
..LN743:
        movl      $.L_2__STRING.5, %edi                         #291.5
..LN744:
        xorl      %esi, %esi                                    #291.5
..LN745:
        movl      $.L_2__STRING.2, %edx                         #291.5
..LN746:
        movl      $1, %eax                                      #291.5
..LN747:
        vdivsd    .L_2il0floatpacket.0(%rip), %xmm0, %xmm0      #291.5
..___tag_value_main.123:
..LN748:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #291.5
..___tag_value_main.124:
..LN749:
                                # LOE r12 r13 r14 r15
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.00e+00]
..LN750:
	.loc    1  293  is_stmt 1
        vmovsd    192(%rsp), %xmm0                              #293.5[spill]
..LN751:
        movl      $.L_2__STRING.5, %edi                         #293.5
..LN752:
        xorl      %esi, %esi                                    #293.5
..LN753:
        movl      $.L_2__STRING.3, %edx                         #293.5
..LN754:
        movl      $1, %eax                                      #293.5
..LN755:
        vsubsd    176(%rsp), %xmm0, %xmm0                       #293.5[spill]
..___tag_value_main.126:
..LN756:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #293.5
..___tag_value_main.127:
..LN757:
                                # LOE r12 r13 r14 r15
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.00e+00]
..LN758:
	.loc    1  295  is_stmt 1
        vxorpd    %xmm1, %xmm1, %xmm1                           #295.5
..LN759:
        vxorpd    %xmm0, %xmm0, %xmm0                           #295.5
..LN760:
        vcvtsi2sdq 168(%rsp), %xmm1, %xmm1                      #295.5
..LN761:
        vcvtsi2sdq 160(%rsp), %xmm0, %xmm0                      #295.5
..LN762:
        movl      $.L_2__STRING.5, %edi                         #295.5
..LN763:
        xorl      %esi, %esi                                    #295.5
..LN764:
        movl      $.L_2__STRING.4, %edx                         #295.5
..LN765:
        movl      $1, %eax                                      #295.5
..LN766:
        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm1, %xmm0    #295.5
..___tag_value_main.129:
..LN767:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #295.5
..___tag_value_main.130:
..LN768:
                                # LOE r12 r13 r14 r15
..B1.51:                        # Preds ..B1.50
                                # Execution count [9.00e-01]
..LN769:
	.loc    1  304  is_stmt 1
        xorl      %edx, %edx                                    #304.6
..LN770:
        xorl      %eax, %eax                                    #304.6
..LN771:
        movq      %r12, %rdi                                    #304.6
..LN772:
        movq      %r13, %rcx                                    #304.6
..LN773:
        movq      %r14, %rsi                                    #304.6
..LN774:
        movq      %r15, %r8                                     #304.6
..LN775:
                                # LOE rax rcx rsi rdi r8 edx
..B1.52:                        # Preds ..B1.60 ..B1.51
                                # Execution count [5.00e+00]
..L131:
                # optimization report
                # %s was not vectorized: loop with function call not considered an optimization candidate.
..LN776:
..LN777:
	.loc    1  306  is_stmt 1
        movq      %rax, 184(%rsp)                               #306.7[spill]
..LN778:
	.loc    1  310  is_stmt 1
        lea       (%rsi,%rax), %r9                              #310.10
..LN779:
	.loc    1  306  is_stmt 1
        movq      %r9, 192(%rsp)                                #306.7[spill]
..LN780:
        xorb      %r14b, %r14b                                  #306.7
..LN781:
        movl      %edx, 176(%rsp)                               #306.7[spill]
..LN782:
	.loc    1  308  is_stmt 1
        lea       (%r8,%rax), %r13                              #308.10
..LN783:
	.loc    1  306  is_stmt 1
        movq      %rdi, 312(%rsp)                               #306.7[spill]
..LN784:
	.loc    1  313  is_stmt 1
        lea       (%rcx,%rax), %r12                             #313.11
..LN785:
	.loc    1  306  is_stmt 1
        movq      %rcx, 304(%rsp)                               #306.7[spill]
..LN786:
	.loc    1  315  is_stmt 1
        lea       (%rdi,%rax), %rbx                             #315.11
..LN787:
	.loc    1  306  is_stmt 1
        movq      %rsi, 296(%rsp)                               #306.7[spill]
..LN788:
        xorl      %r15d, %r15d                                  #306.7
..LN789:
        movq      %r8, 288(%rsp)                                #306.7[spill]
..LN790:
                                # LOE rbx r12 r13 r15 r14b
..B1.53:                        # Preds ..B1.59 ..B1.52
                                # Execution count [1.50e+01]
..L139:
                # optimization report
                # %s was not vectorized: compile time constraints prevent loop optimization. Consider using -O3.
..LN791:
..LN792:
	.loc    1  308  is_stmt 1
        vmovupd   (%r15,%r13), %xmm1                            #308.10
..LN793:
	.loc    1  313  is_stmt 1
        vmovupd   (%r15,%r12), %xmm4                            #313.11
..LN794:
	.loc    1  310  is_stmt 1
        movq      192(%rsp), %rax                               #310.10[spill]
..LN795:
	.loc    1  318  is_stmt 1
        vsubsd    %xmm4, %xmm1, %xmm5                           #318.10
..LN796:
	.loc    1  310  is_stmt 1
        vmovupd   (%r15,%rax), %xmm0                            #310.10
..LN797:
	.loc    1  318  is_stmt 1
        vdivsd    %xmm1, %xmm5, %xmm6                           #318.10
..LN798:
	.loc    1  311  is_stmt 1
        vunpckhpd %xmm0, %xmm0, %xmm3                           #311.10
..LN799:
	.loc    1  318  is_stmt 1
        vandpd    .L_2il0floatpacket.3(%rip), %xmm6, %xmm7      #318.10
..LN800:
	.loc    1  309  is_stmt 1
        vunpckhpd %xmm1, %xmm1, %xmm2                           #309.10
..LN801:
	.loc    1  310  is_stmt 1
        vmovsd    %xmm0, 248(%rsp)                              #310.10[spill]
..LN802:
	.loc    1  311  is_stmt 1
        vmovsd    %xmm3, 240(%rsp)                              #311.10[spill]
..LN803:
	.loc    1  315  is_stmt 1
        vmovupd   (%r15,%rbx), %xmm0                            #315.11
..LN804:
	.loc    1  318  is_stmt 1
        vcomisd   .L_2il0floatpacket.2(%rip), %xmm7             #318.39
..LN805:
        jbe       ..B1.73       # Prob 5%                       #318.39
..LN806:
                                # LOE rbx r12 r13 r15 r14b xmm0 xmm2 xmm4
..B1.54:                        # Preds ..B1.53
                                # Execution count [1.42e+01]
..LN807:
        movl      $1, %edi                                      #318.3
..LN808:
                                # LOE rbx r12 r13 r15 edi r14b xmm0
..B1.55:                        # Preds ..B1.54 ..B1.73
                                # Execution count [1.50e+01]
..LN809:
        movl      $1, %esi                                      #318.3
..LN810:
        movl      $.L_2__STRING.6, %edx                         #318.3
..LN811:
        movl      $.L_2__STRING.7, %ecx                         #318.3
..LN812:
        vmovupd   %xmm0, 224(%rsp)                              #318.3[spill]
..___tag_value_main.143:
..LN813:
#       error(int, int, char *, char *)
        call      error                                         #318.3
..___tag_value_main.144:
..LN814:
                                # LOE rbx r12 r13 r15 r14b
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.50e+01]
..LN815:
        vmovupd   224(%rsp), %xmm0                              #[spill]
..LN816:
	.loc    1  319  is_stmt 1
        vmovsd    248(%rsp), %xmm2                              #319.10[spill]
..LN817:
        vsubsd    %xmm0, %xmm2, %xmm1                           #319.10
..LN818:
        vdivsd    %xmm2, %xmm1, %xmm3                           #319.10
..LN819:
        vandpd    .L_2il0floatpacket.3(%rip), %xmm3, %xmm4      #319.10
..LN820:
        vcomisd   .L_2il0floatpacket.2(%rip), %xmm4             #319.40
..LN821:
        jbe       ..B1.72       # Prob 5%                       #319.40
..LN822:
                                # LOE rbx r12 r13 r15 r14b xmm0
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.42e+01]
..LN823:
        movl      $1, %edi                                      #319.3
..LN824:
                                # LOE rbx r12 r13 r15 edi r14b
..B1.58:                        # Preds ..B1.57 ..B1.72
                                # Execution count [1.50e+01]
..LN825:
        movl      $1, %esi                                      #319.3
..LN826:
        movl      $.L_2__STRING.8, %edx                         #319.3
..LN827:
        movl      $.L_2__STRING.9, %ecx                         #319.3
..___tag_value_main.148:
..LN828:
#       error(int, int, char *, char *)
        call      error                                         #319.3
..___tag_value_main.149:
..LN829:
                                # LOE rbx r12 r13 r15 r14b
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.50e+01]
..LN830:
	.loc    1  306  is_stmt 1
        incb      %r14b                                         #306.17
..LN831:
        addq      $16, %r15                                     #306.17
..LN832:
        cmpb      $3, %r14b                                     #306.14
..LN833:
        jl        ..B1.53       # Prob 66%                      #306.14
..LN834:
                                # LOE rbx r12 r13 r15 r14b
..B1.60:                        # Preds ..B1.59
                                # Execution count [5.00e+00]
..LN835:
        movl      176(%rsp), %edx                               #[spill]
..LN836:
	.loc    1  304  is_stmt 1
        incl      %edx                                          #304.21
..LN837:
        movq      184(%rsp), %rax                               #[spill]
..LN838:
        addq      $48, %rax                                     #304.21
..LN839:
        movq      312(%rsp), %rdi                               #[spill]
..LN840:
        movq      304(%rsp), %rcx                               #[spill]
..LN841:
        movq      296(%rsp), %rsi                               #[spill]
..LN842:
        movq      288(%rsp), %r8                                #[spill]
..LN843:
        cmpl      $100000000, %edx                              #304.17
..LN844:
        jl        ..B1.52       # Prob 82%                      #304.17
..LN845:
                                # LOE rax rcx rsi rdi r8 edx
..B1.61:                        # Preds ..B1.60
                                # Execution count [1.00e+00]
..LN846:
        movq      %rdi, %r12                                    #
..LN847:
	.loc    1  334  is_stmt 1
        movq      200(%rsp), %rdi                               #334.3[spill]
..LN848:
        movq      %rcx, %r13                                    #
..LN849:
        movq      %rsi, %r14                                    #
..LN850:
        movq      %r8, %r15                                     #
..___tag_value_main.157:
..LN851:
#       afree(void *)
        call      afree                                         #334.3
..___tag_value_main.158:
..LN852:
                                # LOE r12 r13 r14 r15
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.00e+00]
..LN853:
	.loc    1  335  is_stmt 1
        movq      272(%rsp), %rdi                               #335.3[spill]
..___tag_value_main.159:
..LN854:
#       afree(void *)
        call      afree                                         #335.3
..___tag_value_main.160:
..LN855:
                                # LOE r12 r13 r14 r15
..B1.63:                        # Preds ..B1.62
                                # Execution count [1.00e+00]
..LN856:
	.loc    1  336  is_stmt 1
        movq      280(%rsp), %rdi                               #336.3[spill]
..___tag_value_main.162:
..LN857:
#       afree(void *)
        call      afree                                         #336.3
..___tag_value_main.163:
..LN858:
                                # LOE r12 r13 r14 r15
..B1.64:                        # Preds ..B1.63
                                # Execution count [1.00e+00]
..LN859:
	.loc    1  337  is_stmt 1
        movq      %r15, %rdi                                    #337.3
..___tag_value_main.165:
..LN860:
#       afree(void *)
        call      afree                                         #337.3
..___tag_value_main.166:
..LN861:
                                # LOE r12 r13 r14
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.00e+00]
..LN862:
	.loc    1  338  is_stmt 1
        movq      %r14, %rdi                                    #338.3
..___tag_value_main.167:
..LN863:
#       afree(void *)
        call      afree                                         #338.3
..___tag_value_main.168:
..LN864:
                                # LOE r12 r13
..B1.66:                        # Preds ..B1.65
                                # Execution count [1.00e+00]
..LN865:
	.loc    1  339  is_stmt 1
        movq      208(%rsp), %rdi                               #339.3[spill]
..___tag_value_main.169:
..LN866:
#       afree(void *)
        call      afree                                         #339.3
..___tag_value_main.170:
..LN867:
                                # LOE r12 r13
..B1.67:                        # Preds ..B1.66
                                # Execution count [1.00e+00]
..LN868:
	.loc    1  340  is_stmt 1
        movq      216(%rsp), %rdi                               #340.3[spill]
..___tag_value_main.172:
..LN869:
#       afree(void *)
        call      afree                                         #340.3
..___tag_value_main.173:
..LN870:
                                # LOE r12 r13
..B1.68:                        # Preds ..B1.67
                                # Execution count [1.00e+00]
..LN871:
	.loc    1  341  is_stmt 1
        movq      %r13, %rdi                                    #341.3
..___tag_value_main.175:
..LN872:
#       afree(void *)
        call      afree                                         #341.3
..___tag_value_main.176:
..LN873:
                                # LOE r12
..B1.69:                        # Preds ..B1.68
                                # Execution count [1.00e+00]
..LN874:
	.loc    1  342  is_stmt 1
        movq      %r12, %rdi                                    #342.3
..___tag_value_main.177:
..LN875:
#       afree(void *)
        call      afree                                         #342.3
..___tag_value_main.178:
..LN876:
                                # LOE
..B1.70:                        # Preds ..B1.69
                                # Execution count [1.00e+00]
..LN877:
	.loc    1  344  is_stmt 1
        movl      $.2.5_2_kmpc_loc_struct_pack.30, %edi         #344.10
..LN878:
        xorl      %eax, %eax                                    #344.10
..___tag_value_main.179:
..LN879:
        call      __kmpc_end                                    #344.10
..___tag_value_main.180:
..LN880:
                                # LOE
..B1.71:                        # Preds ..B1.70
                                # Execution count [1.00e+00]
..LN881:
        xorl      %eax, %eax                                    #344.10
..LN882:
	.loc    1  344  epilogue_begin  is_stmt 1
        addq      $344, %rsp                                    #344.10
	.cfi_restore 3
..LN883:
        popq      %rbx                                          #344.10
	.cfi_restore 15
..LN884:
        popq      %r15                                          #344.10
	.cfi_restore 14
..LN885:
        popq      %r14                                          #344.10
	.cfi_restore 13
..LN886:
        popq      %r13                                          #344.10
	.cfi_restore 12
..LN887:
        popq      %r12                                          #344.10
..LN888:
        movq      %rbp, %rsp                                    #344.10
..LN889:
        popq      %rbp                                          #344.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN890:
        ret                                                     #344.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
..LN891:
                                # LOE
..B1.72:                        # Preds ..B1.56
                                # Execution count [7.50e-01]: Infreq
..LN892:
	.loc    1  316  is_stmt 1
        vunpckhpd %xmm0, %xmm0, %xmm0                           #316.11
..LN893:
	.loc    1  319  is_stmt 1
        vmovsd    240(%rsp), %xmm2                              #319.52[spill]
..LN894:
        vsubsd    %xmm0, %xmm2, %xmm1                           #319.52
..LN895:
        vdivsd    %xmm2, %xmm1, %xmm3                           #319.52
..LN896:
        vandpd    .L_2il0floatpacket.3(%rip), %xmm3, %xmm4      #319.52
..LN897:
        vcmpgtsd  .L_2il0floatpacket.2(%rip), %xmm4, %xmm5      #319.82
..LN898:
        vmovd     %xmm5, %edi                                   #319.82
..LN899:
        negl      %edi                                          #319.82
..LN900:
        jmp       ..B1.58       # Prob 100%                     #319.82
..LN901:
                                # LOE rbx r12 r13 r15 edi r14b
..B1.73:                        # Preds ..B1.53
                                # Execution count [7.50e-01]: Infreq
..LN902:
	.loc    1  314  is_stmt 1
        vunpckhpd %xmm4, %xmm4, %xmm1                           #314.11
..LN903:
	.loc    1  318  is_stmt 1
        vsubsd    %xmm1, %xmm2, %xmm3                           #318.51
..LN904:
        vdivsd    %xmm2, %xmm3, %xmm2                           #318.51
..LN905:
        vandpd    .L_2il0floatpacket.3(%rip), %xmm2, %xmm4      #318.51
..LN906:
        vcmpgtsd  .L_2il0floatpacket.2(%rip), %xmm4, %xmm5      #318.81
..LN907:
        vmovd     %xmm5, %edi                                   #318.81
..LN908:
        negl      %edi                                          #318.81
..LN909:
        jmp       ..B1.55       # Prob 100%                     #318.81
..LN910:
                                # LOE rbx r12 r13 r15 edi r14b xmm0
..B1.74:                        # Preds ..B1.4
                                # Execution count [5.10e-02]: Infreq
..LN911:
	.loc    1  180  is_stmt 1
        movl      $il0_peep_printf_format_0, %edi               #180.5
..LN912:
        call      puts                                          #180.5
..LN913:
        jmp       ..B1.5        # Prob 100%                     #180.5
        .align    16,0x90
..LN914:
                                # LOE
..LN915:
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.916:
.LNmain:
	.data
	.align 4
	.align 4
.2.5_2_kmpc_loc_struct_pack.19:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.18
	.align 4
.2.5_2__kmpc_loc_pack.18:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	53
	.byte	56
	.byte	59
	.byte	49
	.byte	53
	.byte	56
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.5_2_kmpc_loc_struct_pack.30:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.29
	.align 4
.2.5_2__kmpc_loc_pack.29:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	51
	.byte	52
	.byte	52
	.byte	59
	.byte	51
	.byte	52
	.byte	52
	.byte	59
	.byte	59
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_0:
	.long	1314013527
	.long	977751625
	.long	1970225952
	.long	1847616620
	.long	1931506799
	.long	1126200421
	.long	1092638032
	.long	1852401254
	.long	746157161
	.long	1852793632
	.long	1970170228
	.long	778530409
	.word	11822
	.byte	0
	.data
	.file   2 "/usr/include/bits/sched.h"
	.file   3 "suN_types.h"
	.file   4 "/usr/include/time.h"
	.file   5 "/usr/include/bits/types.h"
	.file   6 "/usr/include/bits/time.h"
	.file   7 "/opt/ohpc/pub/intel/compilers_and_libraries_2019.5.281/linux/compiler/include/stddef.h"
	.file   8 "/opt/ohpc/pub/intel/compilers_and_libraries_2019.5.281/linux/compiler/include/icc/immintrin.h"
	.file   9 "/opt/ohpc/pub/intel/compilers_and_libraries_2019.5.281/linux/compiler/include/icc/emmintrin.h"
# -- End  main
	.text
.L_2__routine_start_double_MVM_non_macro_1:
# -- Begin  double_MVM_non_macro
	.text
# mark_begin;
       .align    16,0x90
	.globl double_MVM_non_macro
# --- double_MVM_non_macro(suNf_vector *, suNf_vector *, const suNf *, const suNf_vector *, const suNf_vector *)
double_MVM_non_macro:
# parameter 1(chi): %rdi
# parameter 2(chi2): %rsi
# parameter 3(up): %rdx
# parameter 4(psi): %rcx
# parameter 5(psi2): %r8
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_double_MVM_non_macro.201:
..L202:
                                                        #349.1
..LN917:
	.loc    1  349  prologue_end  is_stmt 1
..LN918:
	.loc    1  355  is_stmt 1
        vmovupd   (%rdx), %ymm11                                #355.35
..LN919:
	.loc    1  370  is_stmt 1
        vmovupd   (%rcx), %ymm2                                 #370.35
..LN920:
	.loc    1  360  is_stmt 1
        vmovupd   48(%rdx), %ymm7                               #360.36
..LN921:
	.loc    1  365  is_stmt 1
        vmovupd   96(%rdx), %ymm4                               #365.35
..LN922:
	.loc    1  357  is_stmt 1
        vunpckhpd %ymm11, %ymm11, %ymm15                        #357.10
..LN923:
	.loc    1  371  is_stmt 1
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #371.10
..LN924:
	.loc    1  362  is_stmt 1
        vunpckhpd %ymm7, %ymm7, %ymm14                          #362.10
..LN925:
	.loc    1  384  is_stmt 1
        vmulpd    %ymm8, %ymm15, %ymm0                          #384.11
..LN926:
	.loc    1  388  is_stmt 1
        vmulpd    %ymm8, %ymm14, %ymm13                         #388.11
..LN927:
	.loc    1  400  is_stmt 1
        vmovupd   16(%rdx), %ymm7                               #400.37
..LN928:
	.loc    1  356  is_stmt 1
        vmovddup  (%rdx), %ymm10                                #356.10
..LN929:
	.loc    1  361  is_stmt 1
        vmovddup  48(%rdx), %ymm9                               #361.10
..LN930:
	.loc    1  385  is_stmt 1
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #385.11
..LN931:
	.loc    1  389  is_stmt 1
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #389.11
..LN932:
	.loc    1  367  is_stmt 1
        vunpckhpd %ymm4, %ymm4, %ymm6                           #367.10
..LN933:
	.loc    1  374  is_stmt 1
        vmovupd   (%r8), %ymm4                                  #374.35
..LN934:
	.loc    1  454  is_stmt 1
        vmulpd    %ymm8, %ymm6, %ymm8                           #454.11
..LN935:
	.loc    1  394  is_stmt 1
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #394.11
..LN936:
	.loc    1  396  is_stmt 1
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #396.11
..LN937:
	.loc    1  405  is_stmt 1
        vmovupd   16(%rcx), %ymm1                               #405.37
..LN938:
	.loc    1  375  is_stmt 1
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #375.11
..LN939:
	.loc    1  422  is_stmt 1
        vmulpd    %ymm3, %ymm15, %ymm15                         #422.10
..LN940:
	.loc    1  426  is_stmt 1
        vmulpd    %ymm3, %ymm14, %ymm14                         #426.10
..LN941:
	.loc    1  423  is_stmt 1
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #423.10
..LN942:
	.loc    1  427  is_stmt 1
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #427.10
..LN943:
	.loc    1  393  is_stmt 1
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #393.11
..LN944:
	.loc    1  401  is_stmt 1
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #401.11
..LN945:
	.loc    1  406  is_stmt 1
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #406.11
..LN946:
	.loc    1  397  is_stmt 1
        vaddpd    %ymm11, %ymm12, %ymm13                        #397.11
..LN947:
	.loc    1  403  is_stmt 1
        vblendpd  $12, 64(%rdx), %ymm0, %ymm11                  #403.11
..LN948:
	.loc    1  407  is_stmt 1
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #407.11
..LN949:
	.loc    1  409  is_stmt 1
        vmovddup  %ymm11, %ymm0                                 #409.11
..LN950:
	.loc    1  410  is_stmt 1
        vunpckhpd %ymm11, %ymm11, %ymm1                         #410.11
..LN951:
	.loc    1  411  is_stmt 1
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #411.11
..LN952:
	.loc    1  413  is_stmt 1
        vmulpd    %ymm11, %ymm1, %ymm11                         #413.11
..LN953:
	.loc    1  414  is_stmt 1
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #414.11
..LN954:
	.loc    1  431  is_stmt 1
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #431.11
..LN955:
	.loc    1  432  is_stmt 1
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #432.10
..LN956:
	.loc    1  434  is_stmt 1
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #434.10
..LN957:
	.loc    1  438  is_stmt 1
        vmovupd   16(%r8), %ymm10                               #438.37
..LN958:
	.loc    1  417  is_stmt 1
        vaddpd    %ymm13, %ymm11, %ymm11                        #417.11
..LN959:
	.loc    1  435  is_stmt 1
        vaddpd    %ymm9, %ymm12, %ymm9                          #435.10
..LN960:
	.loc    1  439  is_stmt 1
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #439.11
..LN961:
	.loc    1  440  is_stmt 1
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #440.11
..LN962:
	.loc    1  442  is_stmt 1
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #442.11
..LN963:
	.loc    1  443  is_stmt 1
        vmulpd    %ymm14, %ymm1, %ymm1                          #443.11
..LN964:
	.loc    1  366  is_stmt 1
        vmovddup  96(%rdx), %ymm5                               #366.10
..LN965:
	.loc    1  455  is_stmt 1
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #455.10
..LN966:
	.loc    1  460  is_stmt 1
        vmulpd    %ymm3, %ymm6, %ymm2                           #460.10
..LN967:
	.loc    1  444  is_stmt 1
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #444.11
..LN968:
	.loc    1  472  is_stmt 1
        vmovupd   112(%rdx), %ymm1                              #472.36
..LN969:
	.loc    1  492  is_stmt 1
        vmovupd   %ymm11, (%rdi)                                #492.29
..LN970:
	.loc    1  461  is_stmt 1
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #461.10
..LN971:
	.loc    1  447  is_stmt 1
        vaddpd    %ymm9, %ymm0, %ymm9                           #447.10
..LN972:
	.loc    1  473  is_stmt 1
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #473.11
..LN973:
	.loc    1  466  is_stmt 1
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #466.10
..LN974:
	.loc    1  474  is_stmt 1
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #474.10
..LN975:
	.loc    1  478  is_stmt 1
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #478.10
..LN976:
	.loc    1  465  is_stmt 1
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #465.10
..LN977:
	.loc    1  468  is_stmt 1
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #468.10
..LN978:
	.loc    1  476  is_stmt 1
        vunpckhpd %ymm2, %ymm2, %ymm3                           #476.11
..LN979:
	.loc    1  479  is_stmt 1
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #479.11
..LN980:
	.loc    1  481  is_stmt 1
        vmulpd    %ymm7, %ymm3, %ymm4                           #481.10
..LN981:
	.loc    1  469  is_stmt 1
        vaddpd    %ymm5, %ymm6, %ymm5                           #469.10
..LN982:
	.loc    1  475  is_stmt 1
        vmovddup  %ymm2, %ymm6                                  #475.11
..LN983:
	.loc    1  482  is_stmt 1
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #482.10
..LN984:
	.loc    1  484  is_stmt 1
        vaddpd    %ymm5, %ymm6, %ymm8                           #484.10
..LN985:
	.loc    1  493  is_stmt 1
        vmovupd   %xmm8, 192(%rdi)                              #493.26
..LN986:
	.loc    1  495  is_stmt 1
        vmovupd   %ymm9, (%rsi)                                 #495.29
..LN987:
	.loc    1  496  is_stmt 1
        vextractf128 $1, %ymm8, 192(%rsi)                       #496.26
..LN988:
	.loc    1  497  is_stmt 1
        vzeroupper                                              #497.1
..LN989:
	.loc    1  497  epilogue_begin  is_stmt 1
        ret                                                     #497.1
        .align    16,0x90
..LN990:
                                # LOE
..LN991:
	.cfi_endproc
# mark_end;
	.type	double_MVM_non_macro,@function
	.size	double_MVM_non_macro,.-double_MVM_non_macro
..LNdouble_MVM_non_macro.992:
.LNdouble_MVM_non_macro:
	.data
# -- End  double_MVM_non_macro
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.3:
	.long	0xffffffff,0x7fffffff,0x00000000,0x00000000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,16
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 8
.L_2il0floatpacket.1:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x9ee75616,0x3cd203af
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1598903885
	.long	1380139341
	.word	79
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,10
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	542462019
	.long	1701669236
	.long	1818437664
	.long	694903663
	.long	538976288
	.long	538976288
	.long	538976288
	.long	538976288
	.long	824516669
	.long	1731472946
	.long	1667592992
	.word	10
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,46
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1819042167
	.long	1869374240
	.long	1948281699
	.long	543518057
	.long	1886220072
	.long	1952802655
	.long	1769240415
	.long	539583853
	.long	824516669
	.long	1731472946
	.long	1667592992
	.word	10
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,46
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	1819042167
	.long	1869374240
	.long	1948281699
	.long	543518057
	.long	1952802600
	.long	1701669236
	.long	1633969775
	.long	538978681
	.long	824516669
	.long	1731472946
	.long	1667592992
	.word	2570
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,47
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	1413826644
	.long	1599364929
	.long	1414288717
	.long	1498173513
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,17
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	1936877894
	.long	1700143220
	.long	1919906915
	.long	544106784
	.long	1651863396
	.long	1298097516
	.long	1834962262
	.long	1869767521
	.long	1684955424
	.long	1701344288
	.long	1415537012
	.long	1819635039
	.long	1819306356
	.word	121
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,54
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	1701994784
	.long	1953459744
	.long	1970365728
	.long	1025535073
	.long	1411399229
	.long	544502629
	.long	1818845510
	.long	2188389
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,32
	.align 4
.L_2__STRING.8:
	.long	1868784979
	.long	1444963438
	.long	1869898597
	.long	1852383346
	.long	1970234400
	.long	1600482402
	.long	1598903885
	.long	1919115629
	.long	1851859055
	.long	1752440932
	.long	1600222309
	.long	1970102100
	.long	1885959276
	.word	31084
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,55
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	1701994784
	.long	1953459744
	.long	1970365728
	.long	1025535073
	.long	1700019773
	.long	1176532083
	.long	1701603681
	.word	8548
	.byte	0
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,31
	.data
	.section .debug_opt_report, ""
..L207:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	10
	.long	..L208 - ..L207
	.long	48
	.long	..L209 - ..L207
	.long	143
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	1
	.quad	..L47
	.long	28
	.long	5
	.quad	..L50
	.long	28
	.long	19
	.quad	..L59
	.long	28
	.long	36
	.quad	..L70
	.long	28
	.long	53
	.quad	..L78
	.long	28
	.long	70
	.quad	..L96
	.long	28
	.long	84
	.quad	..L110
	.long	28
	.long	101
	.quad	..L131
	.long	28
	.long	115
	.quad	..L139
	.long	28
	.long	129
..L208:
	.long	1769238639
	.long	1635412333
	.long	1852795252
	.long	1885696607
	.long	1601466991
	.long	1936876918
	.long	7237481
	.long	1769238639
	.long	1635412333
	.long	1852795252
	.long	1885696607
	.long	7631471
..L209:
	.long	-2062548224
	.long	-2146431742
	.long	-2139062144
	.long	-2139062144
	.long	268946560
	.long	-2139062256
	.long	-2139062144
	.long	-1333755776
	.long	25198721
	.long	-2139090928
	.long	-2139062144
	.long	-2139062144
	.long	-2139061840
	.long	-1609560063
	.long	-2139062144
	.long	-2004844416
	.long	-2138984320
	.long	269287808
	.long	-2139062144
	.long	-2139062144
	.long	126386304
	.long	-2139090928
	.long	-2139062144
	.long	-2139062144
	.long	-2139061840
	.long	-2146431743
	.long	-2139062144
	.long	-2139062144
	.long	218597504
	.long	-2139062256
	.long	-2139062144
	.long	-863993728
	.long	-2146431737
	.long	-2139062144
	.long	-2139062144
	.word	41088
	.byte	7
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .debug_info
	.section .debug_info
.debug_info_seg:
	.align 1
	.4byte 0x000006f2
	.2byte 0x0004
	.4byte .debug_abbrev_seg
	.byte 0x08
//	DW_TAG_compile_unit:
	.byte 0x01
//	DW_AT_comp_dir:
	.4byte .debug_str
//	DW_AT_name:
	.4byte .debug_str+0x2e
//	DW_AT_producer:
	.4byte .debug_str+0x4b
	.4byte .debug_str+0xb7
//	DW_AT_language:
	.byte 0x01
//	DW_AT_use_UTF8:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..L3
//	DW_AT_high_pc:
	.8byte ..LNdouble_MVM_non_macro.992-..L3
	.byte 0x01
//	DW_AT_stmt_list:
	.4byte .debug_line_seg
//	DW_TAG_base_type:
	.byte 0x02
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte 0x00746e69
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x9d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x109
	.4byte .debug_str+0x109
//	DW_AT_frame_base:
	.2byte 0x7702
	.byte 0x00
//	DW_AT_low_pc:
	.8byte ..L3
//	DW_AT_high_pc:
	.8byte ..LNmain.916-..L3
	.byte 0x01
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x9f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x9f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xa0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006e
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x164
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x169
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_AT_location:
	.2byte 0x6301
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x16e
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x173
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x178
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x17d
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x182
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x187
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x18c
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_AT_location:
	.2byte 0x6501
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x191
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x197
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x19d
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a3
//	DW_AT_type:
	.4byte 0x000004be
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1b1
//	DW_AT_type:
	.4byte 0x000004be
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xa3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6e69
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa4
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1b8
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xa5
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c0
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xa8
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3174
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000004c5
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xa8
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3274
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000004c5
//	DW_AT_location:
	.2byte 0x5301
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xa9
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1db
//	DW_AT_type:
	.4byte 0x000004e2
//	DW_AT_location:
	.4byte 0x01809103
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xa9
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00646e65
//	DW_AT_type:
	.4byte 0x000004e2
//	DW_AT_location:
	.4byte 0x01909103
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xa9
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x20f
//	DW_AT_type:
	.4byte 0x000004e2
//	DW_AT_location:
	.4byte 0x01a09103
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xab
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00317477
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xab
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00327477
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xb0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x00000435
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xb6
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x7075
	.byte 0x00
//	DW_AT_type:
	.4byte 0x0000045c
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00696863
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x215
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x21a
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x21f
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x224
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x229
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00697370
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x22e
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_AT_location:
	.2byte 0x5201
//	DW_TAG_lexical_block:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0xb2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN29
//	DW_AT_high_pc:
	.8byte ..LN30
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xb2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x233
//	DW_AT_type:
	.4byte 0x0000051d
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN170
//	DW_AT_high_pc:
	.8byte ..LN242
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x240
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x258
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x25e
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x264
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x26a
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x270
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6b01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x276
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x27c
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x282
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x288
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x28f
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x296
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x29d
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2a4
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2ab
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b2
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6801
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b9
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6f01
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2c0
//	DW_AT_type:
	.4byte 0x00000562
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xe0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2da
//	DW_AT_type:
	.4byte 0x00000562
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN269
//	DW_AT_high_pc:
	.8byte ..LN341
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x240
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x258
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x25e
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x264
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x26a
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x270
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6b01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x276
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x27c
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x282
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x288
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x28f
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x296
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x29d
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2a4
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2ab
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b2
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6801
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b9
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6f01
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2c0
//	DW_AT_type:
	.4byte 0x00000562
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xee
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2da
//	DW_AT_type:
	.4byte 0x00000562
	.byte 0x00
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x0000040d
//	DW_TAG_base_type:
	.byte 0x0a
//	DW_AT_byte_size:
	.byte 0x00
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x10e
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x00000419
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x77
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0x113
//	DW_AT_type:
	.4byte 0x00000424
//	DW_TAG_base_type:
	.byte 0x0a
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x07
//	DW_AT_name:
	.4byte .debug_str+0x11e
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_const_type:
	.byte 0x0c
//	DW_AT_type:
	.4byte 0x00000435
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x81
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0x12c
//	DW_AT_type:
	.4byte 0x00000440
//	DW_TAG_structure_type:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x7f
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_byte_size:
	.byte 0x80
//	DW_TAG_member:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x80
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x136
//	DW_AT_type:
	.4byte 0x00000453
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0f
//	DW_AT_type:
	.4byte 0x00000419
//	DW_AT_byte_size:
	.byte 0x80
//	DW_TAG_subrange_type:
	.byte 0x10
//	DW_AT_upper_bound:
	.byte 0x0f
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x00000461
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x59
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x13d
//	DW_AT_type:
	.4byte 0x0000046c
//	DW_TAG_structure_type:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x57
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_byte_size:
	.byte 0x90
//	DW_TAG_member:
	.byte 0x11
//	DW_AT_decl_line:
	.byte 0x58
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.2byte 0x0063
//	DW_AT_type:
	.4byte 0x0000047d
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0f
//	DW_AT_type:
	.4byte 0x00000486
//	DW_AT_byte_size:
	.byte 0x90
//	DW_TAG_subrange_type:
	.byte 0x10
//	DW_AT_upper_bound:
	.byte 0x08
	.byte 0x00
//	DW_TAG_base_type:
	.byte 0x0a
//	DW_AT_byte_size:
	.byte 0x10
//	DW_AT_encoding:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x142
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x00000492
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x4f
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x151
//	DW_AT_type:
	.4byte 0x0000049d
//	DW_TAG_structure_type:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_byte_size:
	.byte 0x30
//	DW_TAG_member:
	.byte 0x11
//	DW_AT_decl_line:
	.byte 0x4e
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.2byte 0x0063
//	DW_AT_type:
	.4byte 0x000004ae
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0f
//	DW_AT_type:
	.4byte 0x00000486
//	DW_AT_byte_size:
	.byte 0x30
//	DW_TAG_subrange_type:
	.byte 0x10
//	DW_AT_upper_bound:
	.byte 0x02
	.byte 0x00
//	DW_TAG_base_type:
	.byte 0x0a
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x15d
//	DW_TAG_base_type:
	.byte 0x0a
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x1ab
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x3b
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x1c9
//	DW_AT_type:
	.4byte 0x000004d0
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x90
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x1d1
//	DW_AT_type:
	.4byte 0x000004db
//	DW_TAG_base_type:
	.byte 0x0a
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x127
//	DW_TAG_structure_type:
	.byte 0x12
//	DW_AT_decl_line:
	.byte 0x1e
//	DW_AT_decl_file:
	.byte 0x06
//	DW_AT_byte_size:
	.byte 0x10
//	DW_AT_name:
	.4byte .debug_str+0x1e1
//	DW_TAG_member:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x20
//	DW_AT_decl_file:
	.byte 0x06
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x1e9
//	DW_AT_type:
	.4byte 0x00000507
//	DW_TAG_member:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x21
//	DW_AT_decl_file:
	.byte 0x06
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x08
//	DW_AT_name:
	.4byte .debug_str+0x1f9
//	DW_AT_type:
	.4byte 0x00000512
	.byte 0x00
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x94
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x1f0
//	DW_AT_type:
	.4byte 0x000004db
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x96
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x201
//	DW_AT_type:
	.4byte 0x000004db
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x2f
//	DW_AT_decl_file:
	.byte 0x07
//	DW_AT_name:
	.4byte .debug_str+0x239
//	DW_AT_type:
	.4byte 0x00000424
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x0000052d
//	DW_TAG_const_type:
	.byte 0x0c
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x25
//	DW_AT_decl_file:
	.byte 0x08
//	DW_AT_name:
	.4byte .debug_str+0x246
//	DW_AT_type:
	.4byte 0x00000542
//	DW_TAG_structure_type:
	.byte 0x12
//	DW_AT_decl_line:
	.byte 0x23
//	DW_AT_decl_file:
	.byte 0x08
//	DW_AT_byte_size:
	.byte 0x20
//	DW_AT_name:
	.4byte .debug_str+0x246
//	DW_TAG_member:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x24
//	DW_AT_decl_file:
	.byte 0x08
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x24e
//	DW_AT_type:
	.4byte 0x00000559
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0f
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_AT_byte_size:
	.byte 0x20
//	DW_TAG_subrange_type:
	.byte 0x10
//	DW_AT_upper_bound:
	.byte 0x03
	.byte 0x00
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x40
//	DW_AT_decl_file:
	.byte 0x09
//	DW_AT_name:
	.4byte .debug_str+0x2c8
//	DW_AT_type:
	.4byte 0x0000056d
//	DW_TAG_structure_type:
	.byte 0x12
//	DW_AT_decl_line:
	.byte 0x3e
//	DW_AT_decl_file:
	.byte 0x09
//	DW_AT_byte_size:
	.byte 0x10
//	DW_AT_name:
	.4byte .debug_str+0x2c8
//	DW_TAG_member:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x3f
//	DW_AT_decl_file:
	.byte 0x09
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x2d0
//	DW_AT_type:
	.4byte 0x00000584
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0f
//	DW_AT_type:
	.4byte 0x000004b7
//	DW_AT_byte_size:
	.byte 0x10
//	DW_TAG_subrange_type:
	.byte 0x10
//	DW_AT_upper_bound:
	.byte 0x01
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2e3
	.4byte .debug_str+0x2e3
//	DW_AT_low_pc:
	.8byte ..L202
//	DW_AT_high_pc:
	.8byte ..LNdouble_MVM_non_macro.992-..L202
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x14
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_AT_name:
	.4byte 0x00696863
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_formal_parameter:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000048d
//	DW_AT_name:
	.4byte .debug_str+0x215
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_formal_parameter:
	.byte 0x14
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000006e1
//	DW_AT_name:
	.2byte 0x7075
	.byte 0x00
//	DW_AT_location:
	.2byte 0x5101
//	DW_TAG_formal_parameter:
	.byte 0x14
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000006eb
//	DW_AT_name:
	.4byte 0x00697370
//	DW_AT_location:
	.2byte 0x5201
//	DW_TAG_formal_parameter:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000006eb
//	DW_AT_name:
	.4byte .debug_str+0x22e
//	DW_AT_location:
	.2byte 0x5801
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x240
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x258
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x25e
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x264
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x26a
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x17
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x270
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6b01
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x276
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x17
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x27c
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x282
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x288
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x28f
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x296
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x29d
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2a4
//	DW_AT_type:
	.4byte 0x00000537
//	DW_TAG_variable:
	.byte 0x17
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2ab
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x17
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b2
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6801
//	DW_TAG_variable:
	.byte 0x17
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b9
//	DW_AT_type:
	.4byte 0x00000537
//	DW_AT_location:
	.2byte 0x6f01
//	DW_TAG_variable:
	.byte 0x17
//	DW_AT_decl_line:
	.2byte 0x015f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2c0
//	DW_AT_type:
	.4byte 0x00000562
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2da
//	DW_AT_type:
	.4byte 0x00000562
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x000006e6
//	DW_TAG_const_type:
	.byte 0x0c
//	DW_AT_type:
	.4byte 0x00000461
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x000006f0
//	DW_TAG_const_type:
	.byte 0x0c
//	DW_AT_type:
	.4byte 0x00000492
	.byte 0x00
// -- Begin DWARF2 SEGMENT .debug_line
	.section .debug_line
.debug_line_seg:
	.align 1
// -- Begin DWARF2 SEGMENT .debug_abbrev
	.section .debug_abbrev
.debug_abbrev_seg:
	.align 1
	.byte 0x01
	.byte 0x11
	.byte 0x01
	.byte 0x1b
	.byte 0x0e
	.byte 0x03
	.byte 0x0e
	.byte 0x25
	.byte 0x0e
	.2byte 0x7681
	.byte 0x0e
	.byte 0x13
	.byte 0x0b
	.byte 0x53
	.byte 0x0c
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x6a
	.byte 0x0c
	.byte 0x10
	.byte 0x17
	.2byte 0x0000
	.byte 0x02
	.byte 0x24
	.byte 0x00
	.byte 0x0b
	.byte 0x0b
	.byte 0x3e
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.2byte 0x0000
	.byte 0x03
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x40
	.byte 0x18
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x6a
	.byte 0x0c
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x04
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x05
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x06
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x07
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x08
	.byte 0x0b
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x01
	.2byte 0x0000
	.byte 0x09
	.byte 0x0f
	.byte 0x00
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0a
	.byte 0x24
	.byte 0x00
	.byte 0x0b
	.byte 0x0b
	.byte 0x3e
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.2byte 0x0000
	.byte 0x0b
	.byte 0x16
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0c
	.byte 0x26
	.byte 0x00
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0d
	.byte 0x13
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x0b
	.byte 0x0b
	.2byte 0x0000
	.byte 0x0e
	.byte 0x0d
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x38
	.byte 0x18
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0f
	.byte 0x01
	.byte 0x01
	.byte 0x49
	.byte 0x13
	.byte 0x0b
	.byte 0x0b
	.2byte 0x0000
	.byte 0x10
	.byte 0x21
	.byte 0x00
	.byte 0x2f
	.byte 0x0b
	.2byte 0x0000
	.byte 0x11
	.byte 0x0d
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x38
	.byte 0x18
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x12
	.byte 0x13
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x0b
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.2byte 0x0000
	.byte 0x13
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x27
	.byte 0x0c
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x14
	.byte 0x05
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x08
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x15
	.byte 0x05
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x0e
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x16
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x17
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x00
// -- Begin DWARF2 SEGMENT .debug_str
	.section .debug_str,"MS",@progbits,1
.debug_str_seg:
	.align 1
	.8byte 0x726d2f656d6f682f
	.8byte 0x56412f6e616d6861
	.8byte 0x6f435f4d564d5f58
	.8byte 0x78652f78656c706d
	.8byte 0x56415f656c706d61
	.4byte 0x65565f58
	.2byte 0x0063
	.8byte 0x706d6f635f787661
	.8byte 0x5f6365765f78656c
	.8byte 0x6f6c5f6e67696c61
	.4byte 0x632e6461
	.byte 0x00
	.8byte 0x2952286c65746e49
	.8byte 0x6c65746e49204320
	.8byte 0x4320343620295228
	.8byte 0x2072656c69706d6f
	.8byte 0x6c70706120726f66
	.8byte 0x736e6f6974616369
	.8byte 0x676e696e6e757220
	.8byte 0x65746e49206e6f20
	.8byte 0x2c3436202952286c
	.8byte 0x6e6f697372655620
	.8byte 0x2e352e302e393120
	.8byte 0x6c69754220313832
	.8byte 0x3830393130322064
	.4byte 0x000a3531
	.8byte 0x324f2d202e20492d
	.8byte 0x6d6e65706f712d20
	.8byte 0x686372616d2d2070
	.8byte 0x76612d65726f633d
	.8byte 0x6e75746d2d203278
	.8byte 0x612d65726f633d65
	.8byte 0x2d20672d20327876
	.8byte 0x6f2d206d6c2d2053
	.8byte 0x5f324f5f63636920
	.8byte 0x2e656c6968776f64
	.2byte 0x0073
	.4byte 0x6e69616d
	.byte 0x00
	.4byte 0x64696f76
	.byte 0x00
	.8byte 0x616d5f7570635f5f
	.2byte 0x6b73
	.byte 0x00
	.8byte 0x64656e6769736e75
	.4byte 0x6e6f6c20
	.2byte 0x0067
	.8byte 0x5f7465735f757063
	.2byte 0x0074
	.4byte 0x69625f5f
	.2byte 0x7374
	.byte 0x00
	.4byte 0x664e7573
	.byte 0x00
	.8byte 0x6320656c62756f64
	.4byte 0x6c706d6f
	.2byte 0x7865
	.byte 0x00
	.8byte 0x6365765f664e7573
	.4byte 0x00726f74
	.4byte 0x62756f64
	.2byte 0x656c
	.byte 0x00
	.4byte 0x31736572
	.byte 0x00
	.4byte 0x32736572
	.byte 0x00
	.4byte 0x33736572
	.byte 0x00
	.4byte 0x34736572
	.byte 0x00
	.4byte 0x35736572
	.byte 0x00
	.4byte 0x36736572
	.byte 0x00
	.4byte 0x37736572
	.byte 0x00
	.4byte 0x38736572
	.byte 0x00
	.4byte 0x39736572
	.byte 0x00
	.4byte 0x31736572
	.2byte 0x0030
	.4byte 0x31736572
	.2byte 0x0031
	.4byte 0x31736572
	.2byte 0x0032
	.8byte 0x0064657370616c65
	.4byte 0x616f6c66
	.2byte 0x0074
	.4byte 0x6f6c6667
	.2byte 0x7370
	.byte 0x00
	.8byte 0x0073656d69745f6e
	.8byte 0x70756d7261775f6e
	.byte 0x00
	.8byte 0x00745f6b636f6c63
	.8byte 0x5f6b636f6c635f5f
	.2byte 0x0074
	.4byte 0x72617473
	.2byte 0x0074
	.8byte 0x006c6176656d6974
	.4byte 0x735f7674
	.2byte 0x6365
	.byte 0x00
	.8byte 0x745f656d69745f5f
	.byte 0x00
	.8byte 0x00636573755f7674
	.8byte 0x6f63657375735f5f
	.4byte 0x5f73646e
	.2byte 0x0074
	.4byte 0x6d697465
	.2byte 0x0065
	.4byte 0x32696863
	.byte 0x00
	.4byte 0x33696863
	.byte 0x00
	.4byte 0x34696863
	.byte 0x00
	.4byte 0x35696863
	.byte 0x00
	.4byte 0x36696863
	.byte 0x00
	.4byte 0x32697370
	.byte 0x00
	.4byte 0x70635f5f
	.2byte 0x0075
	.4byte 0x657a6973
	.2byte 0x745f
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x0031
	.8byte 0x00643635326d5f5f
	.8byte 0x36665f643635326d
	.2byte 0x0034
	.4byte 0x706d6574
	.2byte 0x0032
	.4byte 0x706d6574
	.2byte 0x0033
	.4byte 0x706d6574
	.2byte 0x0034
	.4byte 0x706d6574
	.2byte 0x0035
	.4byte 0x706d6574
	.2byte 0x0036
	.4byte 0x706d6574
	.2byte 0x0037
	.4byte 0x706d6574
	.2byte 0x0038
	.4byte 0x706d6574
	.2byte 0x0039
	.4byte 0x706d6574
	.2byte 0x3031
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x3131
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x3231
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x3331
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x3431
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x3531
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x3631
	.byte 0x00
	.4byte 0x706d6574
	.2byte 0x3731
	.byte 0x00
	.8byte 0x006472335f696863
	.8byte 0x00643832316d5f5f
	.8byte 0x36665f643832316d
	.2byte 0x0034
	.8byte 0x6472335f32696863
	.byte 0x00
	.8byte 0x4d5f656c62756f64
	.8byte 0x6d5f6e6f6e5f4d56
	.4byte 0x6f726361
	.byte 0x00
	.section .text
.LNDBG_TXe:
# End
