	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler Classic for applications running on Intel(R) 64, Version 2021.2.0 Build 2021";
# mark_description "0228_000000";
# mark_description "-I . -O2 -qopenmp -march=core-avx2 -mtune=core-avx2 -g -S -lm -o icc_O2.s";
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
                                                          #99.1
..LN0:
	.file   1 "avx_complex_vec_align_load.c"
	.loc    1  99  is_stmt 1
        pushq     %rbp                                          #99.1
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #99.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-128, %rsp                                   #99.1
..LN3:
        pushq     %r12                                          #99.1
..LN4:
        pushq     %r13                                          #99.1
..LN5:
        pushq     %r14                                          #99.1
..LN6:
        pushq     %r15                                          #99.1
..LN7:
        pushq     %rbx                                          #99.1
..LN8:
        subq      $472, %rsp                                    #99.1
..LN9:
        movl      $3, %edi                                      #99.1
..LN10:
        xorl      %esi, %esi                                    #99.1
..LN11:
        call      __intel_new_feature_proc_init                 #99.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
..LN12:
                                # LOE
..B1.95:                        # Preds ..B1.1
                                # Execution count [0.00e+00]
..LN13:
        vstmxcsr  (%rsp)                                        #99.1
..LN14:
        movl      $.2.5_2_kmpc_loc_struct_pack.35, %edi         #99.1
..LN15:
        xorl      %esi, %esi                                    #99.1
..LN16:
        orl       $32832, (%rsp)                                #99.1
..LN17:
        xorl      %eax, %eax                                    #99.1
..LN18:
        vldmxcsr  (%rsp)                                        #99.1
..___tag_value_main.13:
..LN19:
        call      __kmpc_begin                                  #99.1
..___tag_value_main.14:
..LN20:
                                # LOE
..B1.2:                         # Preds ..B1.95
                                # Execution count [1.00e+00]
..LN21:
	.loc    1  118  prologue_end  is_stmt 1
        vpxor     %ymm0, %ymm0, %ymm0                           #118.1
..LN22:
        vmovdqu   %ymm0, 32(%rsp)                               #118.1
..LN23:
        vmovdqu   %ymm0, 64(%rsp)                               #118.1
..LN24:
        vmovdqu   %ymm0, 96(%rsp)                               #118.1
..LN25:
        vmovdqu   %ymm0, 128(%rsp)                              #118.1
..LN26:
                                # LOE
..B1.3:                         # Preds ..B1.2
                                # Execution count [5.00e-01]
..LN27:
	.loc    1  120  is_stmt 1
        xorl      %edi, %edi                                    #120.4
..LN28:
        movl      $128, %esi                                    #120.4
..LN29:
	.loc    1  119  is_stmt 1
        orq       $1, 32(%rsp)                                  #119.1
..LN30:
	.loc    1  120  is_stmt 1
        lea       32(%rsp), %rdx                                #120.4
..LN31:
        vzeroupper                                              #120.4
..___tag_value_main.15:
..LN32:
#       sched_setaffinity(__pid_t, size_t, const cpu_set_t *)
        call      sched_setaffinity                             #120.4
..___tag_value_main.16:
..LN33:
                                # LOE eax
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
..LN34:
        cmpl      $-1, %eax                                     #120.47
..LN35:
        je        ..B1.92       # Prob 5%                       #120.47
..LN36:
                                # LOE
..B1.5:                         # Preds ..B1.92 ..B1.4
                                # Execution count [1.00e+00]
..LN37:
	.loc    1  127  is_stmt 1
        movq      $0x35a4e9000, %rdi                            #127.8
..LN38:
        movl      $8, %esi                                      #127.8
..___tag_value_main.17:
..LN39:
#       amalloc(size_t, int)
        call      amalloc                                       #127.8
..___tag_value_main.18:
..LN40:
                                # LOE rax
..B1.97:                        # Preds ..B1.5
                                # Execution count [1.00e+00]
..LN41:
        movq      %rax, 248(%rsp)                               #127.8[spill]
..LN42:
                                # LOE
..B1.6:                         # Preds ..B1.97
                                # Execution count [1.00e+00]
..LN43:
	.loc    1  128  is_stmt 1
        movq      $0x35a4e9000, %rdi                            #128.8
..LN44:
        movl      $8, %esi                                      #128.8
..___tag_value_main.20:
..LN45:
#       amalloc(size_t, int)
        call      amalloc                                       #128.8
..___tag_value_main.21:
..LN46:
                                # LOE rax
..B1.98:                        # Preds ..B1.6
                                # Execution count [1.00e+00]
..LN47:
        movq      %rax, %r15                                    #128.8
..LN48:
                                # LOE r15
..B1.7:                         # Preds ..B1.98
                                # Execution count [1.00e+00]
..LN49:
	.loc    1  130  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #130.8
..LN50:
        movl      $8, %esi                                      #130.8
..___tag_value_main.22:
..LN51:
#       amalloc(size_t, int)
        call      amalloc                                       #130.8
..___tag_value_main.23:
..LN52:
                                # LOE rax r15
..B1.99:                        # Preds ..B1.7
                                # Execution count [1.00e+00]
..LN53:
        movq      %rax, %rbx                                    #130.8
..LN54:
                                # LOE rbx r15
..B1.8:                         # Preds ..B1.99
                                # Execution count [1.00e+00]
..LN55:
	.loc    1  131  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #131.8
..LN56:
        movl      $8, %esi                                      #131.8
..___tag_value_main.24:
..LN57:
#       amalloc(size_t, int)
        call      amalloc                                       #131.8
..___tag_value_main.25:
..LN58:
                                # LOE rax rbx r15
..B1.100:                       # Preds ..B1.8
                                # Execution count [1.00e+00]
..LN59:
        movq      %rax, 264(%rsp)                               #131.8[spill]
..LN60:
                                # LOE rbx r15
..B1.9:                         # Preds ..B1.100
                                # Execution count [1.00e+00]
..LN61:
	.loc    1  132  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #132.9
..LN62:
        movl      $8, %esi                                      #132.9
..___tag_value_main.27:
..LN63:
#       amalloc(size_t, int)
        call      amalloc                                       #132.9
..___tag_value_main.28:
..LN64:
                                # LOE rax rbx r15
..B1.101:                       # Preds ..B1.9
                                # Execution count [1.00e+00]
..LN65:
        movq      %rax, 256(%rsp)                               #132.9[spill]
..LN66:
                                # LOE rbx r15
..B1.10:                        # Preds ..B1.101
                                # Execution count [1.00e+00]
..LN67:
	.loc    1  133  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #133.10
..LN68:
        movl      $8, %esi                                      #133.10
..___tag_value_main.30:
..LN69:
#       amalloc(size_t, int)
        call      amalloc                                       #133.10
..___tag_value_main.31:
..LN70:
                                # LOE rax rbx r15
..B1.102:                       # Preds ..B1.10
                                # Execution count [1.00e+00]
..LN71:
        movq      %rax, %r14                                    #133.10
..LN72:
                                # LOE rbx r14 r15
..B1.11:                        # Preds ..B1.102
                                # Execution count [1.00e+00]
..LN73:
	.loc    1  134  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #134.9
..LN74:
        movl      $8, %esi                                      #134.9
..___tag_value_main.32:
..LN75:
#       amalloc(size_t, int)
        call      amalloc                                       #134.9
..___tag_value_main.33:
..LN76:
                                # LOE rax rbx r14 r15
..B1.103:                       # Preds ..B1.11
                                # Execution count [1.00e+00]
..LN77:
        movq      %rax, 328(%rsp)                               #134.9[spill]
..LN78:
                                # LOE rbx r14 r15
..B1.12:                        # Preds ..B1.103
                                # Execution count [1.00e+00]
..LN79:
	.loc    1  135  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #135.10
..LN80:
        movl      $8, %esi                                      #135.10
..___tag_value_main.35:
..LN81:
#       amalloc(size_t, int)
        call      amalloc                                       #135.10
..___tag_value_main.36:
..LN82:
                                # LOE rax rbx r14 r15
..B1.104:                       # Preds ..B1.12
                                # Execution count [1.00e+00]
..LN83:
        movq      %rax, 336(%rsp)                               #135.10[spill]
..LN84:
                                # LOE rbx r14 r15
..B1.13:                        # Preds ..B1.104
                                # Execution count [1.00e+00]
..LN85:
	.loc    1  136  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #136.10
..LN86:
        movl      $8, %esi                                      #136.10
..___tag_value_main.38:
..LN87:
#       amalloc(size_t, int)
        call      amalloc                                       #136.10
..___tag_value_main.39:
..LN88:
                                # LOE rax rbx r14 r15
..B1.105:                       # Preds ..B1.13
                                # Execution count [1.00e+00]
..LN89:
        movq      %rax, 240(%rsp)                               #136.10[spill]
..LN90:
                                # LOE rbx r14 r15
..B1.14:                        # Preds ..B1.105
                                # Execution count [1.00e+00]
..LN91:
	.loc    1  137  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #137.10
..LN92:
        movl      $8, %esi                                      #137.10
..___tag_value_main.41:
..LN93:
#       amalloc(size_t, int)
        call      amalloc                                       #137.10
..___tag_value_main.42:
..LN94:
                                # LOE rax rbx r14 r15
..B1.106:                       # Preds ..B1.14
                                # Execution count [1.00e+00]
..LN95:
        movq      %rax, 232(%rsp)                               #137.10[spill]
..LN96:
                                # LOE rbx r14 r15
..B1.15:                        # Preds ..B1.106
                                # Execution count [1.00e+00]
..LN97:
	.loc    1  138  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #138.10
..LN98:
        movl      $8, %esi                                      #138.10
..___tag_value_main.44:
..LN99:
#       amalloc(size_t, int)
        call      amalloc                                       #138.10
..___tag_value_main.45:
..LN100:
                                # LOE rax rbx r14 r15
..B1.107:                       # Preds ..B1.15
                                # Execution count [1.00e+00]
..LN101:
        movq      %rax, %r13                                    #138.10
..LN102:
                                # LOE rbx r13 r14 r15
..B1.16:                        # Preds ..B1.107
                                # Execution count [1.00e+00]
..LN103:
	.loc    1  139  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #139.10
..LN104:
        movl      $8, %esi                                      #139.10
..___tag_value_main.46:
..LN105:
#       amalloc(size_t, int)
        call      amalloc                                       #139.10
..___tag_value_main.47:
..LN106:
                                # LOE rax rbx r13 r14 r15
..B1.108:                       # Preds ..B1.16
                                # Execution count [1.00e+00]
..LN107:
        movq      %rax, %r12                                    #139.10
..LN108:
                                # LOE rbx r12 r13 r14 r15
..B1.17:                        # Preds ..B1.108
                                # Execution count [8.47e-01]
..LN109:
	.loc    1  151  is_stmt 1
        xorl      %ecx, %ecx                                    #151.7
..LN110:
        xorl      %edx, %edx                                    #151.7
..LN111:
        movq      %r15, %rax                                    #151.7
..LN112:
        movq      %r12, 344(%rsp)                               #151.7[spill]
..LN113:
        movq      %rdx, %r12                                    #151.7
..LN114:
        movq      %r13, 352(%rsp)                               #151.7[spill]
..LN115:
        movq      %rax, %r13                                    #151.7
..LN116:
        movq      %r14, 192(%rsp)                               #151.7[spill]
..LN117:
        movq      %rbx, %rax                                    #151.7
..LN118:
        movq      %r15, 24(%rsp)                                #151.7[spill]
..LN119:
        movl      %ecx, %ebx                                    #151.7
..LN120:
        movq      264(%rsp), %rsi                               #151.7[spill]
..LN121:
                                # LOE rax rsi r12 r13 ebx
..B1.18:                        # Preds ..B1.25 ..B1.17
                                # Execution count [4.70e+00]
..L53:
                # optimization report
                # %s was not vectorized: loop with function call not considered an optimization candidate.
..LN122:
..LN123:
	.loc    1  153  is_stmt 1
        xorb      %cl, %cl                                      #153.9
..LN124:
	.loc    1  155  is_stmt 1
        lea       (%rax,%r12), %rdx                             #155.8
..LN125:
	.loc    1  153  is_stmt 1
        movq      %r12, (%rsp)                                  #153.9[spill]
..LN126:
	.loc    1  156  is_stmt 1
        lea       (%rsi,%r12), %r14                             #156.8
..LN127:
	.loc    1  153  is_stmt 1
        movl      %ebx, 8(%rsp)                                 #153.9[spill]
..LN128:
        xorl      %r15d, %r15d                                  #153.9
..LN129:
        movq      %rax, 320(%rsp)                               #153.9[spill]
..LN130:
        movq      %rdx, %rbx                                    #153.9
..LN131:
        movb      %cl, %r12b                                    #153.9
..LN132:
                                # LOE rbx r13 r14 r15 r12b
..B1.19:                        # Preds ..B1.21 ..B1.18
                                # Execution count [1.41e+01]
..L57:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN133:
..LN134:
	.loc    1  155  is_stmt 1
        movl      $5, %edi                                      #155.22
..___tag_value_main.58:
..LN135:
#       my_rand(const int)
        call      my_rand                                       #155.22
..___tag_value_main.59:
..LN136:
                                # LOE rbx r13 r14 r15 r12b xmm0 xmm1
..B1.109:                       # Preds ..B1.19
                                # Execution count [1.41e+01]
..LN137:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #155.22
..LN138:
                                # LOE rbx r13 r14 r15 r12b xmm0
..B1.20:                        # Preds ..B1.109
                                # Execution count [1.41e+01]
..LN139:
	.loc    1  156  is_stmt 1
        movl      $5, %edi                                      #156.22
..LN140:
	.loc    1  155  is_stmt 1
        vmovupd   %xmm0, (%r15,%rbx)                            #155.8
..___tag_value_main.60:
..LN141:
	.loc    1  156  is_stmt 1
#       my_rand(const int)
        call      my_rand                                       #156.22
..___tag_value_main.61:
..LN142:
                                # LOE rbx r13 r14 r15 r12b xmm0 xmm1
..B1.110:                       # Preds ..B1.20
                                # Execution count [1.41e+01]
..LN143:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #156.22
..LN144:
                                # LOE rbx r13 r14 r15 r12b xmm0
..B1.21:                        # Preds ..B1.110
                                # Execution count [1.41e+01]
..LN145:
	.loc    1  153  is_stmt 1
        incb      %r12b                                         #153.19
..LN146:
	.loc    1  156  is_stmt 1
        vmovupd   %xmm0, (%r15,%r14)                            #156.8
..LN147:
	.loc    1  153  is_stmt 1
        addq      $16, %r15                                     #153.19
..LN148:
        cmpb      $3, %r12b                                     #153.16
..LN149:
        jl        ..B1.19       # Prob 66%                      #153.16
..LN150:
                                # LOE rbx r13 r14 r15 r12b
..B1.22:                        # Preds ..B1.21
                                # Execution count [4.70e+00]
..LN151:
        movq      (%rsp), %r12                                  #[spill]
..LN152:
	.loc    1  159  is_stmt 1
        xorb      %r14b, %r14b                                  #159.9
..LN153:
        movl      8(%rsp), %ebx                                 #[spill]
..LN154:
        xorl      %r15d, %r15d                                  #159.9
..LN155:
        movq      264(%rsp), %rsi                               #[spill]
..LN156:
        movq      320(%rsp), %rax                               #[spill]
..LN157:
                                # LOE r12 r13 r15 ebx r14b
..B1.23:                        # Preds ..B1.24 ..B1.22
                                # Execution count [4.23e+01]
..L66:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN158:
..LN159:
	.loc    1  161  is_stmt 1
        movl      $5, %edi                                      #161.22
..___tag_value_main.67:
..LN160:
#       my_rand(const int)
        call      my_rand                                       #161.22
..___tag_value_main.68:
..LN161:
                                # LOE r12 r13 r15 ebx r14b xmm0 xmm1
..B1.111:                       # Preds ..B1.23
                                # Execution count [4.23e+01]
..LN162:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #161.22
..LN163:
                                # LOE r12 r13 r15 ebx r14b xmm0
..B1.24:                        # Preds ..B1.111
                                # Execution count [4.23e+01]
..LN164:
	.loc    1  159  is_stmt 1
        incb      %r14b                                         #159.19
..LN165:
	.loc    1  161  is_stmt 1
        vmovupd   %xmm0, (%r15,%r13)                            #161.8
..LN166:
	.loc    1  159  is_stmt 1
        addq      $16, %r15                                     #159.19
..LN167:
        cmpb      $9, %r14b                                     #159.16
..LN168:
        jl        ..B1.23       # Prob 88%                      #159.16
..LN169:
                                # LOE r12 r13 r15 ebx r14b
..B1.25:                        # Preds ..B1.24
                                # Execution count [4.70e+00]
..LN170:
	.loc    1  151  is_stmt 1
        incl      %ebx                                          #151.18
..LN171:
        addq      $48, %r12                                     #151.18
..LN172:
        addq      $144, %r13                                    #151.18
..LN173:
        movq      264(%rsp), %rsi                               #[spill]
..LN174:
        movq      320(%rsp), %rax                               #[spill]
..LN175:
        cmpl      $100000000, %ebx                              #151.14
..LN176:
        jl        ..B1.18       # Prob 82%                      #151.14
..LN177:
                                # LOE rax rsi r12 r13 ebx
..B1.26:                        # Preds ..B1.25
                                # Execution count [0.00e+00]
..LN178:
        movq      24(%rsp), %r15                                #[spill]
..LN179:
        movq      %rax, %rbx                                    #
..LN180:
	.loc    1  180  is_stmt 1
        lea       248(%rsp), %rcx                               #180.5
..LN181:
        movq      (%rcx), %rdx                                  #180.5[spill]
..LN182:
	.loc    1  172  is_stmt 1
        xorl      %eax, %eax                                    #172.1
..LN183:
	.loc    1  180  is_stmt 1
        subq      %r15, %rdx                                    #180.5
..LN184:
        movq      %rdx, (%rsp)                                  #180.5[spill]
..LN185:
        movq      192(%rsp), %r14                               #[spill]
..LN186:
        movq      %rdx, %r12                                    #180.5
..LN187:
        movq      336(%rsp), %r10                               #180.5[spill]
..LN188:
        movq      328(%rsp), %r8                                #180.5[spill]
..LN189:
        movq      256(%rsp), %r9                                #180.5[spill]
..LN190:
        movq      (%rcx), %r11                                  #180.5[spill]
..LN191:
                                # LOE rax rbx r8 r9 r10 r11 r12 r14 r15
..B1.27:                        # Preds ..B1.29 ..B1.26
                                # Execution count [2.50e-02]
..L82:
                # optimization report
                # MEMOP WAS GENERATED FOR THIS LOOP
                # outer %s was not auto-vectorized: consider using SIMD directive
..L81:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 3
..LN192:
	.loc    1  174  is_stmt 1
..L80:
                # optimization report
                # LOOP WITH USER VECTOR INTRINSICS
                # outer %s was not auto-vectorized: consider using SIMD directive
..LN193:
	.loc    1  172  is_stmt 1
..LN194:
	.loc    1  177  is_stmt 1
        movq      264(%rsp), %rcx                               #177.25[spill]
..LN195:
	.loc    1  176  is_stmt 1
        lea       (%rax,%rax,2), %r13                           #176.24
..LN196:
        shlq      $4, %r13                                      #176.24
..LN197:
        vmovupd   (%rbx,%r13), %xmm0                            #176.24
..LN198:
        vmovupd   %xmm0, (%r9,%r13)                             #176.8
..LN199:
	.loc    1  177  is_stmt 1
        vmovupd   (%rcx,%r13), %xmm1                            #177.25
..LN200:
        vmovupd   %xmm1, (%r14,%r13)                            #177.8
..LN201:
	.loc    1  176  is_stmt 1
        vmovupd   16(%rbx,%r13), %xmm2                          #176.24
..LN202:
        vmovupd   %xmm2, 16(%r9,%r13)                           #176.8
..LN203:
	.loc    1  177  is_stmt 1
        vmovupd   16(%rcx,%r13), %xmm3                          #177.25
..LN204:
        vmovupd   %xmm3, 16(%r14,%r13)                          #177.8
..LN205:
	.loc    1  176  is_stmt 1
        vmovupd   32(%rbx,%r13), %xmm4                          #176.24
..LN206:
        vmovupd   %xmm4, 32(%r9,%r13)                           #176.8
..LN207:
	.loc    1  177  is_stmt 1
        vmovupd   32(%rcx,%r13), %xmm5                          #177.25
..LN208:
        vmovupd   %xmm5, 32(%r14,%r13)                          #177.8
..LN209:
	.loc    1  182  is_stmt 1
        lea       (%rax,%rax,8), %rcx                           #182.8
..LN210:
        shlq      $4, %rcx                                      #182.8
..LN211:
	.loc    1  180  is_stmt 1
        movq      %rcx, %rsi                                    #180.5
..LN212:
	.loc    1  182  is_stmt 1
        movq      %rcx, %rdi                                    #182.23
..LN213:
	.loc    1  180  is_stmt 1
        negq      %rsi                                          #180.5
..LN214:
	.loc    1  182  is_stmt 1
        subq      %r12, %rdi                                    #182.23
..LN215:
	.loc    1  180  is_stmt 1
        addq      %rsi, %rdi                                    #180.5
..LN216:
	.loc    1  182  is_stmt 1
        lea       (%r12,%rcx), %rdx                             #182.8
..LN217:
	.loc    1  180  is_stmt 1
        addq      %rsi, %rdx                                    #180.5
..LN218:
        xorl      %esi, %esi                                    #180.5
..LN219:
        cmpq      $144, %rdx                                    #180.5
..LN220:
        movl      $0, %edx                                      #180.5
..LN221:
        setg      %dl                                           #180.5
..LN222:
        cmpq      $144, %rdi                                    #180.5
..LN223:
        setg      %sil                                          #180.5
..LN224:
        orl       %esi, %edx                                    #180.5
..LN225:
        je        ..B1.91       # Prob 10%                      #180.5
..LN226:
                                # LOE rax rcx rbx r8 r9 r10 r11 r12 r13 r14 r15
..B1.28:                        # Preds ..B1.27
                                # Execution count [5.00e+00]
..LN227:
        vmovups   (%rcx,%r15), %ymm0                            #180.5
..LN228:
        vmovups   %ymm0, (%r11,%rcx)                            #180.5
..LN229:
        vmovups   32(%rcx,%r15), %ymm1                          #180.5
..LN230:
        vmovups   %ymm1, 32(%r11,%rcx)                          #180.5
..LN231:
        vmovups   64(%rcx,%r15), %ymm2                          #180.5
..LN232:
        vmovups   %ymm2, 64(%r11,%rcx)                          #180.5
..LN233:
        vmovups   96(%rcx,%r15), %ymm3                          #180.5
..LN234:
        vmovups   %ymm3, 96(%r11,%rcx)                          #180.5
..LN235:
        vmovups   128(%rcx,%r15), %xmm4                         #180.5
..LN236:
        vmovups   %xmm4, 128(%r11,%rcx)                         #180.5
..LN237:
                                # LOE rax rbx r8 r9 r10 r11 r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28 ..B1.91
                                # Execution count [5.00e+00]
..LN238:
	.loc    1  185  is_stmt 1
        vmovupd   (%r11), %ymm11                                #185.5
..LN239:
	.loc    1  172  is_stmt 1
        incq      %rax                                          #172.1
..LN240:
	.loc    1  185  is_stmt 1
        vmovupd   (%r9), %ymm2                                  #185.5
..LN241:
        vmovupd   48(%r11), %ymm7                               #185.5
..LN242:
        vmovupd   96(%r11), %ymm4                               #185.5
..LN243:
        vunpckhpd %ymm11, %ymm11, %ymm15                        #185.5
..LN244:
	.loc    1  172  is_stmt 1
        cmpq      $100000000, %rax                              #172.1
..LN245:
	.loc    1  185  is_stmt 1
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #185.5
..LN246:
        vunpckhpd %ymm7, %ymm7, %ymm14                          #185.5
..LN247:
        vmulpd    %ymm8, %ymm15, %ymm0                          #185.5
..LN248:
        vmulpd    %ymm8, %ymm14, %ymm13                         #185.5
..LN249:
        vmovupd   16(%r11), %ymm7                               #185.5
..LN250:
        vmovddup  (%r11), %ymm10                                #185.5
..LN251:
        vmovddup  48(%r11), %ymm9                               #185.5
..LN252:
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #185.5
..LN253:
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #185.5
..LN254:
        vunpckhpd %ymm4, %ymm4, %ymm6                           #185.5
..LN255:
        vmovupd   (%r14), %ymm4                                 #185.5
..LN256:
        vmulpd    %ymm8, %ymm6, %ymm8                           #185.5
..LN257:
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #185.5
..LN258:
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #185.5
..LN259:
        vmovupd   16(%r9), %ymm1                                #185.5
..LN260:
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #185.5
..LN261:
        vmulpd    %ymm3, %ymm15, %ymm15                         #185.5
..LN262:
        vmulpd    %ymm3, %ymm14, %ymm14                         #185.5
..LN263:
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #185.5
..LN264:
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #185.5
..LN265:
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #185.5
..LN266:
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #185.5
..LN267:
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #185.5
..LN268:
        vaddpd    %ymm11, %ymm12, %ymm13                        #185.5
..LN269:
        vblendpd  $12, 64(%r11), %ymm0, %ymm11                  #185.5
..LN270:
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #185.5
..LN271:
        vmovddup  %ymm11, %ymm0                                 #185.5
..LN272:
        vunpckhpd %ymm11, %ymm11, %ymm1                         #185.5
..LN273:
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #185.5
..LN274:
        vmulpd    %ymm11, %ymm1, %ymm11                         #185.5
..LN275:
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #185.5
..LN276:
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #185.5
..LN277:
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #185.5
..LN278:
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #185.5
..LN279:
        vmovupd   16(%r14), %ymm10                              #185.5
..LN280:
        vaddpd    %ymm13, %ymm11, %ymm11                        #185.5
..LN281:
        vaddpd    %ymm9, %ymm12, %ymm9                          #185.5
..LN282:
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #185.5
..LN283:
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #185.5
..LN284:
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #185.5
..LN285:
        vmulpd    %ymm14, %ymm1, %ymm1                          #185.5
..LN286:
        vmovddup  96(%r11), %ymm5                               #185.5
..LN287:
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #185.5
..LN288:
        vmulpd    %ymm3, %ymm6, %ymm2                           #185.5
..LN289:
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #185.5
..LN290:
        vmovupd   112(%r11), %ymm1                              #185.5
..LN291:
        vmovupd   %ymm11, (%r8,%r13)                            #185.5
..LN292:
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #185.5
..LN293:
        vaddpd    %ymm9, %ymm0, %ymm9                           #185.5
..LN294:
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #185.5
..LN295:
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #185.5
..LN296:
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #185.5
..LN297:
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #185.5
..LN298:
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #185.5
..LN299:
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #185.5
..LN300:
        vunpckhpd %ymm2, %ymm2, %ymm3                           #185.5
..LN301:
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #185.5
..LN302:
        vmulpd    %ymm7, %ymm3, %ymm4                           #185.5
..LN303:
        vaddpd    %ymm5, %ymm6, %ymm5                           #185.5
..LN304:
        vmovddup  %ymm2, %ymm6                                  #185.5
..LN305:
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #185.5
..LN306:
        vaddpd    %ymm5, %ymm6, %ymm8                           #185.5
..LN307:
        vmovupd   %xmm8, 32(%r8,%r13)                           #185.5
..LN308:
        vmovupd   %ymm9, (%r10,%r13)                            #185.5
..LN309:
        vextractf128 $1, %ymm8, 32(%r10,%r13)                   #185.5
..LN310:
	.loc    1  172  is_stmt 1
        jb        ..B1.27       # Prob 82%                      #172.1
..LN311:
                                # LOE rax rbx r8 r9 r10 r11 r12 r14 r15
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.00e+00]
..LN312:
	.loc    1  190  is_stmt 1
        xorl      %esi, %esi                                    #190.3
..LN313:
        lea       8(%rsp), %rdi                                 #190.3
..LN314:
        movq      336(%rdi), %r12                               #[spill]
..LN315:
        movq      344(%rdi), %r13                               #[spill]
..LN316:
        vzeroupper                                              #190.3
..LN317:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #190.3
..LN318:
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.00e+00]
..___tag_value_main.85:
..LN319:
	.loc    1  192  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #192.9
..___tag_value_main.86:
..LN320:
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.112:                       # Preds ..B1.31
                                # Execution count [1.00e+00]
..LN321:
        vmovsd    %xmm0, 208(%rsp)                              #192.9[spill]
..LN322:
                                # LOE rbx r12 r13 r14 r15
..B1.32:                        # Preds ..B1.112
                                # Execution count [1.00e+00]
..LN323:
	.loc    1  194  is_stmt 1
#       clock(void)
        call      clock                                         #194.6
..LN324:
                                # LOE rax rbx r12 r13 r14 r15
..B1.113:                       # Preds ..B1.32
                                # Execution count [1.00e+00]
..LN325:
        movq      %rax, 200(%rsp)                               #194.6[spill]
..LN326:
                                # LOE rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.113
                                # Execution count [0.00e+00]
..LN327:
	.loc    1  196  is_stmt 1
        xorl      %edx, %edx                                    #196.5
..LN328:
        movq      %r12, 344(%rsp)                               #196.5[spill]
..LN329:
        xorl      %eax, %eax                                    #196.5
..LN330:
        movq      %r13, 352(%rsp)                               #196.5[spill]
..LN331:
        movq      (%rsp), %r13                                  #196.5[spill]
..LN332:
        movq      336(%rsp), %r11                               #196.5[spill]
..LN333:
        movq      328(%rsp), %r9                                #196.5[spill]
..LN334:
        movq      256(%rsp), %r10                               #196.5[spill]
..LN335:
        movq      248(%rsp), %r12                               #196.5[spill]
..LN336:
                                # LOE rax rdx rbx r9 r10 r11 r12 r13 r14 r15
..B1.34:                        # Preds ..B1.36 ..B1.33
                                # Execution count [2.50e-02]
..L98:
                # optimization report
                # MEMOP WAS GENERATED FOR THIS LOOP
                # outer %s was not auto-vectorized: consider using SIMD directive
..LN337:
	.loc    1  204  is_stmt 1
..L97:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 3
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN338:
	.loc    1  198  is_stmt 1
..L96:
                # optimization report
                # %s was not vectorized: ASM code cannot be vectorized
..LN339:
	.loc    1  196  is_stmt 1
..LN340:
	.loc    1  200  is_stmt 1
        vmovupd   (%rax,%rbx), %xmm0                            #200.24
..LN341:
	.loc    1  201  is_stmt 1
        movq      264(%rsp), %rsi                               #201.25[spill]
..LN342:
	.loc    1  200  is_stmt 1
        vmovupd   %xmm0, (%rax,%r10)                            #200.8
..LN343:
	.loc    1  201  is_stmt 1
        vmovupd   (%rax,%rsi), %xmm1                            #201.25
..LN344:
        vmovupd   %xmm1, (%rax,%r14)                            #201.8
..LN345:
	.loc    1  200  is_stmt 1
        vmovupd   16(%rax,%rbx), %xmm2                          #200.24
..LN346:
        vmovupd   %xmm2, 16(%rax,%r10)                          #200.8
..LN347:
	.loc    1  201  is_stmt 1
        vmovupd   16(%rax,%rsi), %xmm3                          #201.25
..LN348:
        vmovupd   %xmm3, 16(%rax,%r14)                          #201.8
..LN349:
	.loc    1  200  is_stmt 1
        vmovupd   32(%rax,%rbx), %xmm4                          #200.24
..LN350:
        vmovupd   %xmm4, 32(%rax,%r10)                          #200.8
..LN351:
	.loc    1  201  is_stmt 1
        vmovupd   32(%rax,%rsi), %xmm5                          #201.25
..LN352:
        vmovupd   %xmm5, 32(%rax,%r14)                          #201.8
..LN353:
	.loc    1  206  is_stmt 1
        lea       (%rdx,%rdx,8), %rsi                           #206.8
..LN354:
        shlq      $4, %rsi                                      #206.8
..LN355:
	.loc    1  204  is_stmt 1
        movq      %rsi, %r8                                     #204.5
..LN356:
	.loc    1  206  is_stmt 1
        movq      %rsi, %rdi                                    #206.23
..LN357:
	.loc    1  204  is_stmt 1
        negq      %r8                                           #204.5
..LN358:
	.loc    1  206  is_stmt 1
        subq      %r13, %rdi                                    #206.23
..LN359:
	.loc    1  204  is_stmt 1
        addq      %r8, %rdi                                     #204.5
..LN360:
	.loc    1  206  is_stmt 1
        lea       (%r13,%rsi), %rcx                             #206.8
..LN361:
	.loc    1  204  is_stmt 1
        addq      %r8, %rcx                                     #204.5
..LN362:
        xorl      %r8d, %r8d                                    #204.5
..LN363:
        cmpq      $144, %rcx                                    #204.5
..LN364:
        movl      $0, %ecx                                      #204.5
..LN365:
        setg      %cl                                           #204.5
..LN366:
        cmpq      $144, %rdi                                    #204.5
..LN367:
        setg      %r8b                                          #204.5
..LN368:
        orl       %r8d, %ecx                                    #204.5
..LN369:
        je        ..B1.90       # Prob 10%                      #204.5
..LN370:
                                # LOE rax rdx rbx rsi r9 r10 r11 r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34
                                # Execution count [5.00e+00]
..LN371:
        vmovups   (%rsi,%r15), %ymm0                            #204.5
..LN372:
        vmovups   %ymm0, (%rsi,%r12)                            #204.5
..LN373:
        vmovups   32(%rsi,%r15), %ymm1                          #204.5
..LN374:
        vmovups   %ymm1, 32(%rsi,%r12)                          #204.5
..LN375:
        vmovups   64(%rsi,%r15), %ymm2                          #204.5
..LN376:
        vmovups   %ymm2, 64(%rsi,%r12)                          #204.5
..LN377:
        vmovups   96(%rsi,%r15), %ymm3                          #204.5
..LN378:
        vmovups   %ymm3, 96(%rsi,%r12)                          #204.5
..LN379:
        vmovups   128(%rsi,%r15), %xmm4                         #204.5
..LN380:
        vmovups   %xmm4, 128(%rsi,%r12)                         #204.5
..LN381:
                                # LOE rax rdx rbx r9 r10 r11 r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35 ..B1.90
                                # Execution count [5.00e+00]
..LN382:
	.loc    1  209  is_stmt 1
# # LLVM-MCA-BEGIN double_MVM_macro
..LN383:
	.loc    1  196  is_stmt 1
        incq      %rdx                                          #196.16
..LN384:
	.loc    1  210  is_stmt 1
        vmovupd   (%r12), %ymm11                                #210.9
..LN385:
        vmovupd   (%r10), %ymm2                                 #210.9
..LN386:
        vmovupd   48(%r12), %ymm7                               #210.9
..LN387:
        vmovupd   96(%r12), %ymm4                               #210.9
..LN388:
        vunpckhpd %ymm11, %ymm11, %ymm15                        #210.9
..LN389:
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #210.9
..LN390:
        vunpckhpd %ymm7, %ymm7, %ymm14                          #210.9
..LN391:
        vmulpd    %ymm8, %ymm15, %ymm0                          #210.9
..LN392:
        vmulpd    %ymm8, %ymm14, %ymm13                         #210.9
..LN393:
        vmovupd   16(%r12), %ymm7                               #210.9
..LN394:
        vmovddup  (%r12), %ymm10                                #210.9
..LN395:
        vmovddup  48(%r12), %ymm9                               #210.9
..LN396:
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #210.9
..LN397:
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #210.9
..LN398:
        vunpckhpd %ymm4, %ymm4, %ymm6                           #210.9
..LN399:
        vmovupd   (%r14), %ymm4                                 #210.9
..LN400:
        vmulpd    %ymm8, %ymm6, %ymm8                           #210.9
..LN401:
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #210.9
..LN402:
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #210.9
..LN403:
        vmovupd   16(%r10), %ymm1                               #210.9
..LN404:
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #210.9
..LN405:
        vmulpd    %ymm3, %ymm15, %ymm15                         #210.9
..LN406:
        vmulpd    %ymm3, %ymm14, %ymm14                         #210.9
..LN407:
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #210.9
..LN408:
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #210.9
..LN409:
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #210.9
..LN410:
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #210.9
..LN411:
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #210.9
..LN412:
        vaddpd    %ymm11, %ymm12, %ymm13                        #210.9
..LN413:
        vblendpd  $12, 64(%r12), %ymm0, %ymm11                  #210.9
..LN414:
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #210.9
..LN415:
        vmovddup  %ymm11, %ymm0                                 #210.9
..LN416:
        vunpckhpd %ymm11, %ymm11, %ymm1                         #210.9
..LN417:
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #210.9
..LN418:
        vmulpd    %ymm11, %ymm1, %ymm11                         #210.9
..LN419:
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #210.9
..LN420:
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #210.9
..LN421:
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #210.9
..LN422:
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #210.9
..LN423:
        vmovupd   16(%r14), %ymm10                              #210.9
..LN424:
        vaddpd    %ymm13, %ymm11, %ymm11                        #210.9
..LN425:
        vaddpd    %ymm9, %ymm12, %ymm9                          #210.9
..LN426:
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #210.9
..LN427:
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #210.9
..LN428:
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #210.9
..LN429:
        vmulpd    %ymm14, %ymm1, %ymm1                          #210.9
..LN430:
        vmovddup  96(%r12), %ymm5                               #210.9
..LN431:
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #210.9
..LN432:
        vmulpd    %ymm3, %ymm6, %ymm2                           #210.9
..LN433:
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #210.9
..LN434:
        vmovupd   112(%r12), %ymm1                              #210.9
..LN435:
        vmovupd   %ymm11, (%rax,%r9)                            #210.9
..LN436:
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #210.9
..LN437:
        vaddpd    %ymm9, %ymm0, %ymm9                           #210.9
..LN438:
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #210.9
..LN439:
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #210.9
..LN440:
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #210.9
..LN441:
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #210.9
..LN442:
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #210.9
..LN443:
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #210.9
..LN444:
        vunpckhpd %ymm2, %ymm2, %ymm3                           #210.9
..LN445:
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #210.9
..LN446:
        vmulpd    %ymm7, %ymm3, %ymm4                           #210.9
..LN447:
        vaddpd    %ymm5, %ymm6, %ymm5                           #210.9
..LN448:
        vmovddup  %ymm2, %ymm6                                  #210.9
..LN449:
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #210.9
..LN450:
        vaddpd    %ymm5, %ymm6, %ymm8                           #210.9
..LN451:
        vmovupd   %xmm8, 32(%rax,%r9)                           #210.9
..LN452:
        vmovupd   %ymm9, (%rax,%r11)                            #210.9
..LN453:
        vextractf128 $1, %ymm8, 32(%rax,%r11)                   #210.9
..LN454:
	.loc    1  211  is_stmt 1
# # LLVM-MCA-END
..LN455:
	.loc    1  196  is_stmt 1
        addq      $48, %rax                                     #196.16
..LN456:
        cmpq      $100000000, %rdx                              #196.12
..LN457:
        jl        ..B1.34       # Prob 82%                      #196.12
..LN458:
                                # LOE rax rdx rbx r9 r10 r11 r12 r13 r14 r15
..B1.37:                        # Preds ..B1.36
                                # Execution count [1.00e+00]
..LN459:
	.loc    1  215  is_stmt 1
        vzeroupper                                              #215.4
..LN460:
        movq      344(%rsp), %r12                               #[spill]
..LN461:
        movq      352(%rsp), %r13                               #[spill]
..LN462:
#       clock(void)
        call      clock                                         #215.4
..LN463:
                                # LOE rax rbx r12 r13 r14 r15
..B1.114:                       # Preds ..B1.37
                                # Execution count [1.00e+00]
..LN464:
        movq      %rax, 224(%rsp)                               #215.4[spill]
..LN465:
                                # LOE rbx r12 r13 r14 r15
..B1.38:                        # Preds ..B1.114
                                # Execution count [1.00e+00]
..___tag_value_main.102:
..LN466:
	.loc    1  217  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #217.9
..___tag_value_main.103:
..LN467:
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.115:                       # Preds ..B1.38
                                # Execution count [1.00e+00]
..LN468:
        vmovsd    %xmm0, 216(%rsp)                              #217.9[spill]
..LN469:
                                # LOE rbx r12 r13 r14 r15
..B1.39:                        # Preds ..B1.115
                                # Execution count [1.00e+00]
..LN470:
	.loc    1  219  is_stmt 1
        xorl      %esi, %esi                                    #219.3
..LN471:
        lea       160(%rsp), %rdi                               #219.3
..LN472:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #219.3
..LN473:
                                # LOE rbx r12 r13 r14 r15
..B1.40:                        # Preds ..B1.39
                                # Execution count [1.00e+00]
..LN474:
	.loc    1  220  is_stmt 1
        lea       176(%rsp), %rdi                               #220.3
..LN475:
        lea       160(%rsp), %rsi                               #220.3
..LN476:
        lea       8(%rsp), %rdx                                 #220.3
..___tag_value_main.106:
..LN477:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #220.3
..___tag_value_main.107:
..LN478:
                                # LOE rbx r12 r13 r14 r15
..B1.41:                        # Preds ..B1.40
                                # Execution count [1.00e+00]
..LN479:
	.loc    1  222  is_stmt 1
        movq      224(%rsp), %r8                                #222.5[spill]
..LN480:
        vxorpd    %xmm0, %xmm0, %xmm0                           #222.5
..LN481:
        subq      200(%rsp), %r8                                #222.5[spill]
..LN482:
        movl      $.L_2__STRING.1, %edi                         #222.5
..LN483:
        vcvtsi2sdq %r8, %xmm0, %xmm0                            #222.5
..LN484:
        xorl      %esi, %esi                                    #222.5
..LN485:
        movl      $.L_2__STRING.2, %edx                         #222.5
..LN486:
        movl      $1, %eax                                      #222.5
..LN487:
        vdivsd    .L_2il0floatpacket.0(%rip), %xmm0, %xmm0      #222.5
..___tag_value_main.110:
..LN488:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #222.5
..___tag_value_main.111:
..LN489:
                                # LOE rbx r12 r13 r14 r15
..B1.42:                        # Preds ..B1.41
                                # Execution count [1.00e+00]
..LN490:
	.loc    1  224  is_stmt 1
        vmovsd    216(%rsp), %xmm0                              #224.5[spill]
..LN491:
        movl      $.L_2__STRING.1, %edi                         #224.5
..LN492:
        xorl      %esi, %esi                                    #224.5
..LN493:
        movl      $.L_2__STRING.3, %edx                         #224.5
..LN494:
        movl      $1, %eax                                      #224.5
..LN495:
        vsubsd    208(%rsp), %xmm0, %xmm0                       #224.5[spill]
..___tag_value_main.113:
..LN496:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #224.5
..___tag_value_main.114:
..LN497:
                                # LOE rbx r12 r13 r14 r15
..B1.43:                        # Preds ..B1.42
                                # Execution count [1.00e+00]
..LN498:
	.loc    1  226  is_stmt 1
        vxorpd    %xmm1, %xmm1, %xmm1                           #226.5
..LN499:
        vxorpd    %xmm0, %xmm0, %xmm0                           #226.5
..LN500:
        vcvtsi2sdq 184(%rsp), %xmm1, %xmm1                      #226.5
..LN501:
        vcvtsi2sdq 176(%rsp), %xmm0, %xmm0                      #226.5
..LN502:
        movl      $.L_2__STRING.1, %edi                         #226.5
..LN503:
        xorl      %esi, %esi                                    #226.5
..LN504:
        movl      $.L_2__STRING.4, %edx                         #226.5
..LN505:
        movl      $1, %eax                                      #226.5
..LN506:
        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm1, %xmm0    #226.5
..___tag_value_main.116:
..LN507:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #226.5
..___tag_value_main.117:
..LN508:
                                # LOE rbx r12 r13 r14 r15
..B1.44:                        # Preds ..B1.43
                                # Execution count [0.00e+00]
..LN509:
	.loc    1  236  is_stmt 1
        movq      (%rsp), %r10                                  #236.3[spill]
..LN510:
        xorl      %esi, %esi                                    #236.3
..LN511:
        movq      256(%rsp), %r8                                #236.3[spill]
..LN512:
        movq      248(%rsp), %r9                                #236.3[spill]
..LN513:
                                # LOE rbx rsi r8 r9 r10 r12 r13 r14 r15
..B1.45:                        # Preds ..B1.47 ..B1.44
                                # Execution count [2.50e-02]
..L124:
                # optimization report
                # MEMOP WAS GENERATED FOR THIS LOOP
                # outer %s was not auto-vectorized: consider using SIMD directive
..LN514:
	.loc    1  245  is_stmt 1
..L123:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 3
..LN515:
	.loc    1  239  is_stmt 1
..L122:
                # optimization report
                # outer %s was not auto-vectorized: consider using SIMD directive
..LN516:
	.loc    1  236  is_stmt 1
..LN517:
	.loc    1  242  is_stmt 1
        movq      264(%rsp), %rdx                               #242.25[spill]
..LN518:
	.loc    1  241  is_stmt 1
        lea       (%rsi,%rsi,2), %r11                           #241.24
..LN519:
        shlq      $4, %r11                                      #241.24
..LN520:
	.loc    1  245  is_stmt 1
        xorl      %eax, %eax                                    #245.5
..LN521:
	.loc    1  241  is_stmt 1
        vmovupd   (%rbx,%r11), %xmm0                            #241.24
..LN522:
        vmovupd   %xmm0, (%r8,%r11)                             #241.8
..LN523:
	.loc    1  242  is_stmt 1
        vmovupd   (%rdx,%r11), %xmm1                            #242.25
..LN524:
        vmovupd   %xmm1, (%r14,%r11)                            #242.8
..LN525:
	.loc    1  241  is_stmt 1
        vmovupd   16(%rbx,%r11), %xmm2                          #241.24
..LN526:
        vmovupd   %xmm2, 16(%r8,%r11)                           #241.8
..LN527:
	.loc    1  242  is_stmt 1
        vmovupd   16(%rdx,%r11), %xmm3                          #242.25
..LN528:
        vmovupd   %xmm3, 16(%r14,%r11)                          #242.8
..LN529:
	.loc    1  241  is_stmt 1
        vmovupd   32(%rbx,%r11), %xmm4                          #241.24
..LN530:
        vmovupd   %xmm4, 32(%r8,%r11)                           #241.8
..LN531:
	.loc    1  242  is_stmt 1
        vmovupd   32(%rdx,%r11), %xmm5                          #242.25
..LN532:
        vmovupd   %xmm5, 32(%r14,%r11)                          #242.8
..LN533:
	.loc    1  247  is_stmt 1
        lea       (%rsi,%rsi,8), %rdx                           #247.8
..LN534:
        shlq      $4, %rdx                                      #247.8
..LN535:
	.loc    1  245  is_stmt 1
        movq      %rdx, %rcx                                    #245.5
..LN536:
        negq      %rcx                                          #245.5
..LN537:
	.loc    1  247  is_stmt 1
        lea       (%r10,%rdx), %rdi                             #247.8
..LN538:
	.loc    1  245  is_stmt 1
        addq      %rcx, %rdi                                    #245.5
..LN539:
        cmpq      $144, %rdi                                    #245.5
..LN540:
	.loc    1  247  is_stmt 1
        movq      %rdx, %rdi                                    #247.23
..LN541:
	.loc    1  245  is_stmt 1
        setg      %al                                           #245.5
..LN542:
	.loc    1  247  is_stmt 1
        subq      %r10, %rdi                                    #247.23
..LN543:
	.loc    1  245  is_stmt 1
        addq      %rcx, %rdi                                    #245.5
..LN544:
        xorl      %ecx, %ecx                                    #245.5
..LN545:
        cmpq      $144, %rdi                                    #245.5
..LN546:
        setg      %cl                                           #245.5
..LN547:
        orl       %ecx, %eax                                    #245.5
..LN548:
        je        ..B1.89       # Prob 10%                      #245.5
..LN549:
                                # LOE rdx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.46:                        # Preds ..B1.45
                                # Execution count [5.00e+00]
..LN550:
        vmovups   (%rdx,%r15), %ymm0                            #245.5
..LN551:
        vmovups   %ymm0, (%rdx,%r9)                             #245.5
..LN552:
        vmovups   32(%rdx,%r15), %ymm1                          #245.5
..LN553:
        vmovups   %ymm1, 32(%rdx,%r9)                           #245.5
..LN554:
        vmovups   64(%rdx,%r15), %ymm2                          #245.5
..LN555:
        vmovups   %ymm2, 64(%rdx,%r9)                           #245.5
..LN556:
        vmovups   96(%rdx,%r15), %ymm3                          #245.5
..LN557:
        vmovups   %ymm3, 96(%rdx,%r9)                           #245.5
..LN558:
        vmovups   128(%rdx,%r15), %xmm4                         #245.5
..LN559:
        vmovups   %xmm4, 128(%rdx,%r9)                          #245.5
..LN560:
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.47:                        # Preds ..B1.46 ..B1.89
                                # Execution count [5.00e+00]
..LN561:
	.loc    1  250  is_stmt 1
        vmovupd   (%r9), %xmm9                                  #250.3
..LN562:
        vmovupd   (%r8), %xmm6                                  #250.3
..LN563:
        vmovupd   16(%r9), %xmm7                                #250.3
..LN564:
        vmovupd   32(%r9), %xmm12                               #250.3
..LN565:
        vmovupd   64(%r9), %xmm15                               #250.3
..LN566:
        vunpckhpd %xmm9, %xmm9, %xmm11                          #250.3
..LN567:
	.loc    1  236  is_stmt 1
        incq      %rsi                                          #236.3
..LN568:
	.loc    1  250  is_stmt 1
        vshufpd   $1, %xmm6, %xmm6, %xmm10                      #250.3
..LN569:
	.loc    1  236  is_stmt 1
        cmpq      $100000000, %rsi                              #236.3
..LN570:
	.loc    1  250  is_stmt 1
        vmulpd    %xmm10, %xmm11, %xmm3                         #250.3
..LN571:
        vmovddup  (%r9), %xmm0                                  #250.3
..LN572:
        vfmaddsub231pd %xmm0, %xmm6, %xmm3                      #250.3
..LN573:
        vunpckhpd %xmm7, %xmm7, %xmm2                           #250.3
..LN574:
        vmovddup  16(%r9), %xmm1                                #250.3
..LN575:
        vmovupd   %xmm3, (%r13,%r11)                            #250.3
..LN576:
        vmovupd   16(%r8), %xmm5                                #250.3
..LN577:
        vshufpd   $1, %xmm5, %xmm5, %xmm8                       #250.3
..LN578:
        vmulpd    %xmm8, %xmm2, %xmm4                           #250.3
..LN579:
        vfmaddsub231pd %xmm1, %xmm5, %xmm4                      #250.3
..LN580:
        vmovupd   48(%r9), %xmm5                                #250.3
..LN581:
        vunpckhpd %xmm5, %xmm5, %xmm5                           #250.3
..LN582:
        vaddpd    %xmm4, %xmm3, %xmm6                           #250.3
..LN583:
        vmovupd   %xmm6, (%r13,%r11)                            #250.3
..LN584:
        vunpckhpd %xmm12, %xmm12, %xmm4                         #250.3
..LN585:
        vmovupd   32(%r8), %xmm10                               #250.3
..LN586:
        vshufpd   $1, %xmm10, %xmm10, %xmm9                     #250.3
..LN587:
        vmulpd    %xmm9, %xmm4, %xmm7                           #250.3
..LN588:
        vmovddup  32(%r9), %xmm3                                #250.3
..LN589:
        vfmaddsub231pd %xmm3, %xmm10, %xmm7                     #250.3
..LN590:
        vaddpd    %xmm7, %xmm6, %xmm8                           #250.3
..LN591:
        vmovupd   %xmm8, (%r13,%r11)                            #250.3
..LN592:
        vunpckhpd %xmm15, %xmm15, %xmm8                         #250.3
..LN593:
        vmovupd   (%r8), %xmm13                                 #250.3
..LN594:
        vshufpd   $1, %xmm13, %xmm13, %xmm14                    #250.3
..LN595:
        vmulpd    %xmm14, %xmm5, %xmm10                         #250.3
..LN596:
        vmovddup  48(%r9), %xmm6                                #250.3
..LN597:
        vfmaddsub231pd %xmm6, %xmm13, %xmm10                    #250.3
..LN598:
        vmovddup  64(%r9), %xmm7                                #250.3
..LN599:
        vmovupd   80(%r9), %xmm13                               #250.3
..LN600:
        vmovupd   %xmm10, 16(%r13,%r11)                         #250.3
..LN601:
        vmovupd   16(%r8), %xmm9                                #250.3
..LN602:
        vshufpd   $1, %xmm9, %xmm9, %xmm12                      #250.3
..LN603:
        vmulpd    %xmm12, %xmm8, %xmm14                         #250.3
..LN604:
        vfmaddsub231pd %xmm7, %xmm9, %xmm14                     #250.3
..LN605:
        vmovddup  80(%r9), %xmm9                                #250.3
..LN606:
        vaddpd    %xmm14, %xmm10, %xmm15                        #250.3
..LN607:
        vmovupd   %xmm15, 16(%r13,%r11)                         #250.3
..LN608:
        vunpckhpd %xmm13, %xmm13, %xmm10                        #250.3
..LN609:
        vmovupd   32(%r8), %xmm12                               #250.3
..LN610:
        vshufpd   $1, %xmm12, %xmm12, %xmm14                    #250.3
..LN611:
        vmulpd    %xmm14, %xmm10, %xmm13                        #250.3
..LN612:
        vfmaddsub231pd %xmm9, %xmm12, %xmm13                    #250.3
..LN613:
        vmovupd   96(%r9), %xmm12                               #250.3
..LN614:
        vmovddup  96(%r9), %xmm14                               #250.3
..LN615:
        vaddpd    %xmm13, %xmm15, %xmm15                        #250.3
..LN616:
        vmovupd   %xmm15, 16(%r13,%r11)                         #250.3
..LN617:
        vunpckhpd %xmm12, %xmm12, %xmm15                        #250.3
..LN618:
        vmovupd   (%r8), %xmm13                                 #250.3
..LN619:
        vshufpd   $1, %xmm13, %xmm13, %xmm12                    #250.3
..LN620:
        vmulpd    %xmm12, %xmm15, %xmm12                        #250.3
..LN621:
        vfmaddsub231pd %xmm14, %xmm13, %xmm12                   #250.3
..LN622:
        vmovupd   %xmm15, 208(%rsp)                             #250.3[spill]
..LN623:
        vmovupd   112(%r9), %xmm14                              #250.3
..LN624:
        vmovupd   %xmm12, 32(%r13,%r11)                         #250.3
..LN625:
        vunpckhpd %xmm14, %xmm14, %xmm13                        #250.3
..LN626:
        vmovupd   16(%r8), %xmm15                               #250.3
..LN627:
        vshufpd   $1, %xmm15, %xmm15, %xmm14                    #250.3
..LN628:
        vmulpd    %xmm14, %xmm13, %xmm14                        #250.3
..LN629:
        vmovupd   %xmm13, 272(%rsp)                             #250.3[spill]
..LN630:
        vmovddup  112(%r9), %xmm13                              #250.3
..LN631:
        vfmaddsub231pd %xmm13, %xmm15, %xmm14                   #250.3
..LN632:
        vaddpd    %xmm14, %xmm12, %xmm14                        #250.3
..LN633:
        vmovupd   128(%r9), %xmm12                              #250.3
..LN634:
        vmovupd   %xmm14, 32(%r13,%r11)                         #250.3
..LN635:
        vunpckhpd %xmm12, %xmm12, %xmm15                        #250.3
..LN636:
        vmovupd   32(%r8), %xmm13                               #250.3
..LN637:
        vshufpd   $1, %xmm13, %xmm13, %xmm12                    #250.3
..LN638:
        vmovupd   %xmm15, 288(%rsp)                             #250.3[spill]
..LN639:
        vmulpd    %xmm12, %xmm15, %xmm15                        #250.3
..LN640:
        vmovddup  128(%r9), %xmm12                              #250.3
..LN641:
        vfmaddsub231pd %xmm12, %xmm13, %xmm15                   #250.3
..LN642:
        vaddpd    %xmm15, %xmm14, %xmm13                        #250.3
..LN643:
        vmovupd   %xmm13, 32(%r13,%r11)                         #250.3
..LN644:
	.loc    1  251  is_stmt 1
        vmovupd   (%r14), %xmm13                                #251.3
..LN645:
        vshufpd   $1, %xmm13, %xmm13, %xmm14                    #251.3
..LN646:
        vmulpd    %xmm14, %xmm11, %xmm11                        #251.3
..LN647:
        vfmaddsub213pd %xmm11, %xmm13, %xmm0                    #251.3
..LN648:
        vmovupd   %xmm0, (%r12,%r11)                            #251.3
..LN649:
        vmovupd   16(%r14), %xmm13                              #251.3
..LN650:
        vshufpd   $1, %xmm13, %xmm13, %xmm11                    #251.3
..LN651:
        vmulpd    %xmm11, %xmm2, %xmm2                          #251.3
..LN652:
        vfmaddsub213pd %xmm2, %xmm13, %xmm1                     #251.3
..LN653:
        vaddpd    %xmm1, %xmm0, %xmm2                           #251.3
..LN654:
        vmovupd   %xmm2, (%r12,%r11)                            #251.3
..LN655:
        vmovupd   32(%r14), %xmm1                               #251.3
..LN656:
        vshufpd   $1, %xmm1, %xmm1, %xmm0                       #251.3
..LN657:
        vmulpd    %xmm0, %xmm4, %xmm0                           #251.3
..LN658:
        vfmaddsub213pd %xmm0, %xmm1, %xmm3                      #251.3
..LN659:
        vaddpd    %xmm3, %xmm2, %xmm1                           #251.3
..LN660:
        vmovupd   %xmm1, (%r12,%r11)                            #251.3
..LN661:
        vmovupd   (%r14), %xmm4                                 #251.3
..LN662:
        vshufpd   $1, %xmm4, %xmm4, %xmm3                       #251.3
..LN663:
        vmulpd    %xmm3, %xmm5, %xmm5                           #251.3
..LN664:
        vfmaddsub213pd %xmm5, %xmm4, %xmm6                      #251.3
..LN665:
        vmovddup  96(%r9), %xmm5                                #251.3
..LN666:
        vmovupd   %xmm6, 16(%r12,%r11)                          #251.3
..LN667:
        vmovupd   16(%r14), %xmm13                              #251.3
..LN668:
        vshufpd   $1, %xmm13, %xmm13, %xmm11                    #251.3
..LN669:
        vmulpd    %xmm11, %xmm8, %xmm8                          #251.3
..LN670:
        vfmaddsub213pd %xmm8, %xmm13, %xmm7                     #251.3
..LN671:
        vaddpd    %xmm7, %xmm6, %xmm14                          #251.3
..LN672:
        vmovupd   %xmm14, 16(%r12,%r11)                         #251.3
..LN673:
        vmovupd   32(%r14), %xmm7                               #251.3
..LN674:
        vshufpd   $1, %xmm7, %xmm7, %xmm6                       #251.3
..LN675:
        vmulpd    %xmm6, %xmm10, %xmm10                         #251.3
..LN676:
        vfmaddsub213pd %xmm10, %xmm7, %xmm9                     #251.3
..LN677:
        vmovddup  112(%r9), %xmm6                               #251.3
..LN678:
        vaddpd    %xmm9, %xmm14, %xmm9                          #251.3
..LN679:
        vmovupd   %xmm9, 16(%r12,%r11)                          #251.3
..LN680:
        vmovupd   (%r14), %xmm0                                 #251.3
..LN681:
        vshufpd   $1, %xmm0, %xmm0, %xmm15                      #251.3
..LN682:
        vmulpd    208(%rsp), %xmm15, %xmm1                      #251.3[spill]
..LN683:
        vfmaddsub213pd %xmm1, %xmm0, %xmm5                      #251.3
..LN684:
        vmovupd   %xmm5, 32(%r12,%r11)                          #251.3
..LN685:
        vmovupd   16(%r14), %xmm3                               #251.3
..LN686:
        vshufpd   $1, %xmm3, %xmm3, %xmm2                       #251.3
..LN687:
        vmulpd    272(%rsp), %xmm2, %xmm4                       #251.3[spill]
..LN688:
        vfmaddsub213pd %xmm4, %xmm3, %xmm6                      #251.3
..LN689:
        vaddpd    %xmm6, %xmm5, %xmm10                          #251.3
..LN690:
        vmovupd   %xmm10, 32(%r12,%r11)                         #251.3
..LN691:
        vmovupd   32(%r14), %xmm8                               #251.3
..LN692:
        vshufpd   $1, %xmm8, %xmm8, %xmm7                       #251.3
..LN693:
        vmulpd    288(%rsp), %xmm7, %xmm9                       #251.3[spill]
..LN694:
        vfmaddsub213pd %xmm9, %xmm8, %xmm12                     #251.3
..LN695:
        vaddpd    %xmm12, %xmm10, %xmm12                        #251.3
..LN696:
        vmovupd   %xmm12, 32(%r12,%r11)                         #251.3
..LN697:
	.loc    1  236  is_stmt 1
        jb        ..B1.45       # Prob 82%                      #236.3
..LN698:
                                # LOE rbx rsi r8 r9 r10 r12 r13 r14 r15
..B1.48:                        # Preds ..B1.47
                                # Execution count [1.00e+00]
..LN699:
	.loc    1  256  is_stmt 1
        xorl      %esi, %esi                                    #256.3
..LN700:
        lea       8(%rsp), %rdi                                 #256.3
..LN701:
        vzeroupper                                              #256.3
..LN702:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #256.3
..LN703:
                                # LOE rbx r12 r13 r14 r15
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.00e+00]
..___tag_value_main.131:
..LN704:
	.loc    1  258  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #258.9
..___tag_value_main.132:
..LN705:
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.116:                       # Preds ..B1.49
                                # Execution count [1.00e+00]
..LN706:
        vmovsd    %xmm0, 200(%rsp)                              #258.9[spill]
..LN707:
                                # LOE rbx r12 r13 r14 r15
..B1.50:                        # Preds ..B1.116
                                # Execution count [1.00e+00]
..LN708:
	.loc    1  260  is_stmt 1
#       clock(void)
        call      clock                                         #260.6
..LN709:
                                # LOE rax rbx r12 r13 r14 r15
..B1.117:                       # Preds ..B1.50
                                # Execution count [1.00e+00]
..LN710:
        movq      %rax, 208(%rsp)                               #260.6[spill]
..LN711:
                                # LOE rbx r12 r13 r14 r15
..B1.51:                        # Preds ..B1.117
                                # Execution count [0.00e+00]
..LN712:
	.loc    1  261  is_stmt 1
        movq      (%rsp), %r10                                  #261.6[spill]
..LN713:
        xorl      %esi, %esi                                    #261.6
..LN714:
        movq      256(%rsp), %r8                                #261.6[spill]
..LN715:
        movq      248(%rsp), %r9                                #261.6[spill]
..LN716:
                                # LOE rbx rsi r8 r9 r10 r12 r13 r14 r15
..B1.52:                        # Preds ..B1.54 ..B1.51
                                # Execution count [2.50e-02]
..L141:
                # optimization report
                # MEMOP WAS GENERATED FOR THIS LOOP
                # outer %s was not auto-vectorized: consider using SIMD directive
..LN717:
	.loc    1  269  is_stmt 1
..L140:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 3
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN718:
	.loc    1  263  is_stmt 1
..L139:
                # optimization report
                # %s was not vectorized: ASM code cannot be vectorized
..LN719:
	.loc    1  261  is_stmt 1
..LN720:
	.loc    1  266  is_stmt 1
        movq      264(%rsp), %rdx                               #266.25[spill]
..LN721:
	.loc    1  265  is_stmt 1
        lea       (%rsi,%rsi,2), %r11                           #265.24
..LN722:
        shlq      $4, %r11                                      #265.24
..LN723:
	.loc    1  269  is_stmt 1
        xorl      %eax, %eax                                    #269.5
..LN724:
	.loc    1  265  is_stmt 1
        vmovupd   (%rbx,%r11), %xmm0                            #265.24
..LN725:
        vmovupd   %xmm0, (%r8,%r11)                             #265.8
..LN726:
	.loc    1  266  is_stmt 1
        vmovupd   (%rdx,%r11), %xmm1                            #266.25
..LN727:
        vmovupd   %xmm1, (%r14,%r11)                            #266.8
..LN728:
	.loc    1  265  is_stmt 1
        vmovupd   16(%rbx,%r11), %xmm2                          #265.24
..LN729:
        vmovupd   %xmm2, 16(%r8,%r11)                           #265.8
..LN730:
	.loc    1  266  is_stmt 1
        vmovupd   16(%rdx,%r11), %xmm3                          #266.25
..LN731:
        vmovupd   %xmm3, 16(%r14,%r11)                          #266.8
..LN732:
	.loc    1  265  is_stmt 1
        vmovupd   32(%rbx,%r11), %xmm4                          #265.24
..LN733:
        vmovupd   %xmm4, 32(%r8,%r11)                           #265.8
..LN734:
	.loc    1  266  is_stmt 1
        vmovupd   32(%rdx,%r11), %xmm5                          #266.25
..LN735:
        vmovupd   %xmm5, 32(%r14,%r11)                          #266.8
..LN736:
	.loc    1  271  is_stmt 1
        lea       (%rsi,%rsi,8), %rdx                           #271.8
..LN737:
        shlq      $4, %rdx                                      #271.8
..LN738:
	.loc    1  269  is_stmt 1
        movq      %rdx, %rcx                                    #269.5
..LN739:
        negq      %rcx                                          #269.5
..LN740:
	.loc    1  271  is_stmt 1
        lea       (%r10,%rdx), %rdi                             #271.8
..LN741:
	.loc    1  269  is_stmt 1
        addq      %rcx, %rdi                                    #269.5
..LN742:
        cmpq      $144, %rdi                                    #269.5
..LN743:
	.loc    1  271  is_stmt 1
        movq      %rdx, %rdi                                    #271.23
..LN744:
	.loc    1  269  is_stmt 1
        setg      %al                                           #269.5
..LN745:
	.loc    1  271  is_stmt 1
        subq      %r10, %rdi                                    #271.23
..LN746:
	.loc    1  269  is_stmt 1
        addq      %rcx, %rdi                                    #269.5
..LN747:
        xorl      %ecx, %ecx                                    #269.5
..LN748:
        cmpq      $144, %rdi                                    #269.5
..LN749:
        setg      %cl                                           #269.5
..LN750:
        orl       %ecx, %eax                                    #269.5
..LN751:
        je        ..B1.88       # Prob 10%                      #269.5
..LN752:
                                # LOE rdx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.53:                        # Preds ..B1.52
                                # Execution count [5.00e+00]
..LN753:
        vmovups   (%rdx,%r15), %ymm0                            #269.5
..LN754:
        vmovups   %ymm0, (%rdx,%r9)                             #269.5
..LN755:
        vmovups   32(%rdx,%r15), %ymm1                          #269.5
..LN756:
        vmovups   %ymm1, 32(%rdx,%r9)                           #269.5
..LN757:
        vmovups   64(%rdx,%r15), %ymm2                          #269.5
..LN758:
        vmovups   %ymm2, 64(%rdx,%r9)                           #269.5
..LN759:
        vmovups   96(%rdx,%r15), %ymm3                          #269.5
..LN760:
        vmovups   %ymm3, 96(%rdx,%r9)                           #269.5
..LN761:
        vmovups   128(%rdx,%r15), %xmm4                         #269.5
..LN762:
        vmovups   %xmm4, 128(%rdx,%r9)                          #269.5
..LN763:
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.54:                        # Preds ..B1.53 ..B1.88
                                # Execution count [5.00e+00]
..LN764:
	.loc    1  274  is_stmt 1
# # LLVM-MCA-BEGIN _suNf_theta_T_multiply
..LN765:
	.loc    1  261  is_stmt 1
        incq      %rsi                                          #261.17
..LN766:
	.loc    1  275  is_stmt 1
        vmovupd   (%r9), %xmm9                                  #275.3
..LN767:
        vmovupd   (%r8), %xmm6                                  #275.3
..LN768:
        vmovupd   16(%r9), %xmm7                                #275.3
..LN769:
        vmovupd   32(%r9), %xmm12                               #275.3
..LN770:
        vmovupd   64(%r9), %xmm15                               #275.3
..LN771:
        vunpckhpd %xmm9, %xmm9, %xmm11                          #275.3
..LN772:
        vshufpd   $1, %xmm6, %xmm6, %xmm10                      #275.3
..LN773:
        vmulpd    %xmm10, %xmm11, %xmm3                         #275.3
..LN774:
        vmovddup  (%r9), %xmm0                                  #275.3
..LN775:
        vfmaddsub231pd %xmm0, %xmm6, %xmm3                      #275.3
..LN776:
        vunpckhpd %xmm7, %xmm7, %xmm2                           #275.3
..LN777:
        vmovddup  16(%r9), %xmm1                                #275.3
..LN778:
        vmovupd   %xmm3, (%r13,%r11)                            #275.3
..LN779:
        vmovupd   16(%r8), %xmm5                                #275.3
..LN780:
        vshufpd   $1, %xmm5, %xmm5, %xmm8                       #275.3
..LN781:
        vmulpd    %xmm8, %xmm2, %xmm4                           #275.3
..LN782:
        vfmaddsub231pd %xmm1, %xmm5, %xmm4                      #275.3
..LN783:
        vmovupd   48(%r9), %xmm5                                #275.3
..LN784:
        vunpckhpd %xmm5, %xmm5, %xmm5                           #275.3
..LN785:
        vaddpd    %xmm4, %xmm3, %xmm6                           #275.3
..LN786:
        vmovupd   %xmm6, (%r13,%r11)                            #275.3
..LN787:
        vunpckhpd %xmm12, %xmm12, %xmm4                         #275.3
..LN788:
        vmovupd   32(%r8), %xmm10                               #275.3
..LN789:
        vshufpd   $1, %xmm10, %xmm10, %xmm9                     #275.3
..LN790:
        vmulpd    %xmm9, %xmm4, %xmm7                           #275.3
..LN791:
        vmovddup  32(%r9), %xmm3                                #275.3
..LN792:
        vfmaddsub231pd %xmm3, %xmm10, %xmm7                     #275.3
..LN793:
        vaddpd    %xmm7, %xmm6, %xmm8                           #275.3
..LN794:
        vmovupd   %xmm8, (%r13,%r11)                            #275.3
..LN795:
        vunpckhpd %xmm15, %xmm15, %xmm8                         #275.3
..LN796:
        vmovupd   (%r8), %xmm13                                 #275.3
..LN797:
        vshufpd   $1, %xmm13, %xmm13, %xmm14                    #275.3
..LN798:
        vmulpd    %xmm14, %xmm5, %xmm10                         #275.3
..LN799:
        vmovddup  48(%r9), %xmm6                                #275.3
..LN800:
        vfmaddsub231pd %xmm6, %xmm13, %xmm10                    #275.3
..LN801:
        vmovddup  64(%r9), %xmm7                                #275.3
..LN802:
        vmovupd   80(%r9), %xmm13                               #275.3
..LN803:
        vmovupd   %xmm10, 16(%r13,%r11)                         #275.3
..LN804:
        vmovupd   16(%r8), %xmm9                                #275.3
..LN805:
        vshufpd   $1, %xmm9, %xmm9, %xmm12                      #275.3
..LN806:
        vmulpd    %xmm12, %xmm8, %xmm14                         #275.3
..LN807:
        vfmaddsub231pd %xmm7, %xmm9, %xmm14                     #275.3
..LN808:
        vmovddup  80(%r9), %xmm9                                #275.3
..LN809:
        vaddpd    %xmm14, %xmm10, %xmm15                        #275.3
..LN810:
        vmovupd   %xmm15, 16(%r13,%r11)                         #275.3
..LN811:
        vunpckhpd %xmm13, %xmm13, %xmm10                        #275.3
..LN812:
        vmovupd   32(%r8), %xmm12                               #275.3
..LN813:
        vshufpd   $1, %xmm12, %xmm12, %xmm14                    #275.3
..LN814:
        vmulpd    %xmm14, %xmm10, %xmm13                        #275.3
..LN815:
        vfmaddsub231pd %xmm9, %xmm12, %xmm13                    #275.3
..LN816:
        vmovupd   96(%r9), %xmm12                               #275.3
..LN817:
        vmovddup  96(%r9), %xmm14                               #275.3
..LN818:
        vaddpd    %xmm13, %xmm15, %xmm15                        #275.3
..LN819:
        vmovupd   %xmm15, 16(%r13,%r11)                         #275.3
..LN820:
        vunpckhpd %xmm12, %xmm12, %xmm15                        #275.3
..LN821:
        vmovupd   (%r8), %xmm13                                 #275.3
..LN822:
        vshufpd   $1, %xmm13, %xmm13, %xmm12                    #275.3
..LN823:
        vmulpd    %xmm12, %xmm15, %xmm12                        #275.3
..LN824:
        vfmaddsub231pd %xmm14, %xmm13, %xmm12                   #275.3
..LN825:
        vmovupd   %xmm15, 272(%rsp)                             #275.3[spill]
..LN826:
        vmovupd   112(%r9), %xmm14                              #275.3
..LN827:
        vmovupd   %xmm12, 32(%r13,%r11)                         #275.3
..LN828:
        vunpckhpd %xmm14, %xmm14, %xmm13                        #275.3
..LN829:
        vmovupd   16(%r8), %xmm15                               #275.3
..LN830:
        vshufpd   $1, %xmm15, %xmm15, %xmm14                    #275.3
..LN831:
        vmulpd    %xmm14, %xmm13, %xmm14                        #275.3
..LN832:
        vmovupd   %xmm13, 288(%rsp)                             #275.3[spill]
..LN833:
        vmovddup  112(%r9), %xmm13                              #275.3
..LN834:
        vfmaddsub231pd %xmm13, %xmm15, %xmm14                   #275.3
..LN835:
        vaddpd    %xmm14, %xmm12, %xmm14                        #275.3
..LN836:
        vmovupd   128(%r9), %xmm12                              #275.3
..LN837:
        vmovupd   %xmm14, 32(%r13,%r11)                         #275.3
..LN838:
        vunpckhpd %xmm12, %xmm12, %xmm15                        #275.3
..LN839:
        vmovupd   32(%r8), %xmm13                               #275.3
..LN840:
        vshufpd   $1, %xmm13, %xmm13, %xmm12                    #275.3
..LN841:
        vmovupd   %xmm15, 304(%rsp)                             #275.3[spill]
..LN842:
        vmulpd    %xmm12, %xmm15, %xmm15                        #275.3
..LN843:
        vmovddup  128(%r9), %xmm12                              #275.3
..LN844:
        vfmaddsub231pd %xmm12, %xmm13, %xmm15                   #275.3
..LN845:
        vaddpd    %xmm15, %xmm14, %xmm13                        #275.3
..LN846:
        vmovupd   %xmm13, 32(%r13,%r11)                         #275.3
..LN847:
	.loc    1  276  is_stmt 1
        vmovupd   (%r14), %xmm13                                #276.3
..LN848:
        vshufpd   $1, %xmm13, %xmm13, %xmm14                    #276.3
..LN849:
        vmulpd    %xmm14, %xmm11, %xmm11                        #276.3
..LN850:
        vfmaddsub213pd %xmm11, %xmm13, %xmm0                    #276.3
..LN851:
        vmovupd   %xmm0, (%r12,%r11)                            #276.3
..LN852:
        vmovupd   16(%r14), %xmm13                              #276.3
..LN853:
        vshufpd   $1, %xmm13, %xmm13, %xmm11                    #276.3
..LN854:
        vmulpd    %xmm11, %xmm2, %xmm2                          #276.3
..LN855:
        vfmaddsub213pd %xmm2, %xmm13, %xmm1                     #276.3
..LN856:
        vaddpd    %xmm1, %xmm0, %xmm2                           #276.3
..LN857:
        vmovupd   %xmm2, (%r12,%r11)                            #276.3
..LN858:
        vmovupd   32(%r14), %xmm1                               #276.3
..LN859:
        vshufpd   $1, %xmm1, %xmm1, %xmm0                       #276.3
..LN860:
        vmulpd    %xmm0, %xmm4, %xmm0                           #276.3
..LN861:
        vfmaddsub213pd %xmm0, %xmm1, %xmm3                      #276.3
..LN862:
        vaddpd    %xmm3, %xmm2, %xmm1                           #276.3
..LN863:
        vmovupd   %xmm1, (%r12,%r11)                            #276.3
..LN864:
        vmovupd   (%r14), %xmm4                                 #276.3
..LN865:
        vshufpd   $1, %xmm4, %xmm4, %xmm3                       #276.3
..LN866:
        vmulpd    %xmm3, %xmm5, %xmm5                           #276.3
..LN867:
        vfmaddsub213pd %xmm5, %xmm4, %xmm6                      #276.3
..LN868:
        vmovddup  96(%r9), %xmm5                                #276.3
..LN869:
        vmovupd   %xmm6, 16(%r12,%r11)                          #276.3
..LN870:
        vmovupd   16(%r14), %xmm13                              #276.3
..LN871:
        vshufpd   $1, %xmm13, %xmm13, %xmm11                    #276.3
..LN872:
        vmulpd    %xmm11, %xmm8, %xmm8                          #276.3
..LN873:
        vfmaddsub213pd %xmm8, %xmm13, %xmm7                     #276.3
..LN874:
        vaddpd    %xmm7, %xmm6, %xmm14                          #276.3
..LN875:
        vmovupd   %xmm14, 16(%r12,%r11)                         #276.3
..LN876:
        vmovupd   32(%r14), %xmm7                               #276.3
..LN877:
        vshufpd   $1, %xmm7, %xmm7, %xmm6                       #276.3
..LN878:
        vmulpd    %xmm6, %xmm10, %xmm10                         #276.3
..LN879:
        vfmaddsub213pd %xmm10, %xmm7, %xmm9                     #276.3
..LN880:
        vmovddup  112(%r9), %xmm6                               #276.3
..LN881:
        vaddpd    %xmm9, %xmm14, %xmm9                          #276.3
..LN882:
        vmovupd   %xmm9, 16(%r12,%r11)                          #276.3
..LN883:
        vmovupd   (%r14), %xmm0                                 #276.3
..LN884:
        vshufpd   $1, %xmm0, %xmm0, %xmm15                      #276.3
..LN885:
        vmulpd    272(%rsp), %xmm15, %xmm1                      #276.3[spill]
..LN886:
        vfmaddsub213pd %xmm1, %xmm0, %xmm5                      #276.3
..LN887:
        vmovupd   %xmm5, 32(%r12,%r11)                          #276.3
..LN888:
        vmovupd   16(%r14), %xmm3                               #276.3
..LN889:
        vshufpd   $1, %xmm3, %xmm3, %xmm2                       #276.3
..LN890:
        vmulpd    288(%rsp), %xmm2, %xmm4                       #276.3[spill]
..LN891:
        vfmaddsub213pd %xmm4, %xmm3, %xmm6                      #276.3
..LN892:
        vaddpd    %xmm6, %xmm5, %xmm10                          #276.3
..LN893:
        vmovupd   %xmm10, 32(%r12,%r11)                         #276.3
..LN894:
        vmovupd   32(%r14), %xmm8                               #276.3
..LN895:
        vshufpd   $1, %xmm8, %xmm8, %xmm7                       #276.3
..LN896:
        vmulpd    304(%rsp), %xmm7, %xmm9                       #276.3[spill]
..LN897:
        vfmaddsub213pd %xmm9, %xmm8, %xmm12                     #276.3
..LN898:
        vaddpd    %xmm12, %xmm10, %xmm12                        #276.3
..LN899:
        vmovupd   %xmm12, 32(%r12,%r11)                         #276.3
..LN900:
	.loc    1  277  is_stmt 1
# # LLVM-MCA-END
..LN901:
	.loc    1  261  is_stmt 1
        cmpq      $100000000, %rsi                              #261.13
..LN902:
        jl        ..B1.52       # Prob 82%                      #261.13
..LN903:
                                # LOE rbx rsi r8 r9 r10 r12 r13 r14 r15
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.00e+00]
..LN904:
	.loc    1  280  is_stmt 1
        vzeroupper                                              #280.6
..LN905:
#       clock(void)
        call      clock                                         #280.6
..LN906:
                                # LOE rax rbx r12 r13 r14 r15
..B1.118:                       # Preds ..B1.55
                                # Execution count [1.00e+00]
..LN907:
        movq      %rax, 216(%rsp)                               #280.6[spill]
..LN908:
                                # LOE rbx r12 r13 r14 r15
..B1.56:                        # Preds ..B1.118
                                # Execution count [1.00e+00]
..___tag_value_main.148:
..LN909:
	.loc    1  282  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #282.9
..___tag_value_main.149:
..LN910:
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.119:                       # Preds ..B1.56
                                # Execution count [1.00e+00]
..LN911:
        vmovsd    %xmm0, (%rsp)                                 #282.9[spill]
..LN912:
                                # LOE rbx r12 r13 r14 r15
..B1.57:                        # Preds ..B1.119
                                # Execution count [1.00e+00]
..LN913:
	.loc    1  284  is_stmt 1
        xorl      %esi, %esi                                    #284.3
..LN914:
        lea       160(%rsp), %rdi                               #284.3
..LN915:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #284.3
..LN916:
                                # LOE rbx r12 r13 r14 r15
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.00e+00]
..LN917:
	.loc    1  285  is_stmt 1
        lea       176(%rsp), %rdi                               #285.3
..LN918:
        lea       160(%rsp), %rsi                               #285.3
..LN919:
        lea       8(%rsp), %rdx                                 #285.3
..___tag_value_main.152:
..LN920:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #285.3
..___tag_value_main.153:
..LN921:
                                # LOE rbx r12 r13 r14 r15
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.00e+00]
..LN922:
	.loc    1  287  is_stmt 1
        movq      216(%rsp), %r8                                #287.5[spill]
..LN923:
        vxorpd    %xmm0, %xmm0, %xmm0                           #287.5
..LN924:
        subq      208(%rsp), %r8                                #287.5[spill]
..LN925:
        movl      $.L_2__STRING.5, %edi                         #287.5
..LN926:
        vcvtsi2sdq %r8, %xmm0, %xmm0                            #287.5
..LN927:
        xorl      %esi, %esi                                    #287.5
..LN928:
        movl      $.L_2__STRING.2, %edx                         #287.5
..LN929:
        movl      $1, %eax                                      #287.5
..LN930:
        vdivsd    .L_2il0floatpacket.0(%rip), %xmm0, %xmm0      #287.5
..___tag_value_main.156:
..LN931:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #287.5
..___tag_value_main.157:
..LN932:
                                # LOE rbx r12 r13 r14 r15
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.00e+00]
..LN933:
	.loc    1  289  is_stmt 1
        vmovsd    (%rsp), %xmm0                                 #289.5[spill]
..LN934:
        movl      $.L_2__STRING.5, %edi                         #289.5
..LN935:
        xorl      %esi, %esi                                    #289.5
..LN936:
        movl      $.L_2__STRING.3, %edx                         #289.5
..LN937:
        movl      $1, %eax                                      #289.5
..LN938:
        vsubsd    200(%rsp), %xmm0, %xmm0                       #289.5[spill]
..___tag_value_main.159:
..LN939:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #289.5
..___tag_value_main.160:
..LN940:
                                # LOE rbx r12 r13 r14 r15
..B1.61:                        # Preds ..B1.60
                                # Execution count [1.00e+00]
..LN941:
	.loc    1  291  is_stmt 1
        vxorpd    %xmm1, %xmm1, %xmm1                           #291.5
..LN942:
        vxorpd    %xmm0, %xmm0, %xmm0                           #291.5
..LN943:
        vcvtsi2sdq 184(%rsp), %xmm1, %xmm1                      #291.5
..LN944:
        vcvtsi2sdq 176(%rsp), %xmm0, %xmm0                      #291.5
..LN945:
        movl      $.L_2__STRING.5, %edi                         #291.5
..LN946:
        xorl      %esi, %esi                                    #291.5
..LN947:
        movl      $.L_2__STRING.4, %edx                         #291.5
..LN948:
        movl      $1, %eax                                      #291.5
..LN949:
        vfmadd231sd .L_2il0floatpacket.1(%rip), %xmm1, %xmm0    #291.5
..___tag_value_main.162:
..LN950:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #291.5
..___tag_value_main.163:
..LN951:
                                # LOE rbx r12 r13 r14 r15
..B1.62:                        # Preds ..B1.61
                                # Execution count [9.00e-01]
..LN952:
	.loc    1  300  is_stmt 1
        xorl      %edx, %edx                                    #300.6
..LN953:
        movq      %r14, 192(%rsp)                               #300.6[spill]
..LN954:
        xorl      %eax, %eax                                    #300.6
..LN955:
        movq      %rbx, 320(%rsp)                               #300.6[spill]
..LN956:
        movq      %r12, %rdi                                    #300.6
..LN957:
        movq      %r15, 24(%rsp)                                #300.6[spill]
..LN958:
        movq      %r13, %rcx                                    #300.6
..LN959:
        movq      336(%rsp), %r8                                #300.6[spill]
..LN960:
        movq      328(%rsp), %r9                                #300.6[spill]
..LN961:
                                # LOE rax rcx rdi r8 r9 edx
..B1.63:                        # Preds ..B1.71 ..B1.62
                                # Execution count [5.00e+00]
..L168:
                # optimization report
                # %s was not vectorized: loop with function call not considered an optimization candidate.
..LN962:
..LN963:
	.loc    1  302  is_stmt 1
        movq      %rax, 200(%rsp)                               #302.7[spill]
..LN964:
	.loc    1  306  is_stmt 1
        lea       (%r8,%rax), %rsi                              #306.10
..LN965:
	.loc    1  302  is_stmt 1
        movq      %rsi, 224(%rsp)                               #302.7[spill]
..LN966:
        xorb      %r12b, %r12b                                  #302.7
..LN967:
        movl      %edx, (%rsp)                                  #302.7[spill]
..LN968:
	.loc    1  304  is_stmt 1
        lea       (%r9,%rax), %r15                              #304.10
..LN969:
	.loc    1  302  is_stmt 1
        movq      %rdi, 344(%rsp)                               #302.7[spill]
..LN970:
	.loc    1  309  is_stmt 1
        lea       (%rcx,%rax), %r14                             #309.11
..LN971:
	.loc    1  302  is_stmt 1
        movq      %rcx, 352(%rsp)                               #302.7[spill]
..LN972:
	.loc    1  311  is_stmt 1
        lea       (%rdi,%rax), %rbx                             #311.11
..LN973:
	.loc    1  302  is_stmt 1
        xorl      %r13d, %r13d                                  #302.7
..LN974:
                                # LOE rbx r13 r14 r15 r12b
..B1.64:                        # Preds ..B1.70 ..B1.63
                                # Execution count [1.50e+01]
..L175:
                # optimization report
                # %s was not vectorized: compile time constraints prevent loop optimization. Consider using -O3.
..LN975:
..LN976:
	.loc    1  304  is_stmt 1
        vmovupd   (%r13,%r15), %xmm1                            #304.10
..LN977:
	.loc    1  309  is_stmt 1
        vmovupd   (%r13,%r14), %xmm4                            #309.11
..LN978:
	.loc    1  306  is_stmt 1
        movq      224(%rsp), %rax                               #306.10[spill]
..LN979:
	.loc    1  314  is_stmt 1
        vsubsd    %xmm4, %xmm1, %xmm5                           #314.10
..LN980:
	.loc    1  306  is_stmt 1
        vmovupd   (%r13,%rax), %xmm0                            #306.10
..LN981:
	.loc    1  314  is_stmt 1
        vdivsd    %xmm1, %xmm5, %xmm6                           #314.10
..LN982:
	.loc    1  307  is_stmt 1
        vunpckhpd %xmm0, %xmm0, %xmm3                           #307.10
..LN983:
	.loc    1  314  is_stmt 1
        vandpd    .L_2il0floatpacket.3(%rip), %xmm6, %xmm7      #314.10
..LN984:
	.loc    1  305  is_stmt 1
        vunpckhpd %xmm1, %xmm1, %xmm2                           #305.10
..LN985:
	.loc    1  306  is_stmt 1
        vmovsd    %xmm0, 280(%rsp)                              #306.10[spill]
..LN986:
	.loc    1  307  is_stmt 1
        vmovsd    %xmm3, 272(%rsp)                              #307.10[spill]
..LN987:
	.loc    1  311  is_stmt 1
        vmovupd   (%r13,%rbx), %xmm0                            #311.11
..LN988:
	.loc    1  314  is_stmt 1
        vcomisd   .L_2il0floatpacket.2(%rip), %xmm7             #314.39
..LN989:
        jbe       ..B1.87       # Prob 5%                       #314.39
..LN990:
                                # LOE rbx r13 r14 r15 r12b xmm0 xmm2 xmm4
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.42e+01]
..LN991:
        movl      $1, %edi                                      #314.3
..LN992:
                                # LOE rbx r13 r14 r15 edi r12b xmm0
..B1.66:                        # Preds ..B1.65 ..B1.87
                                # Execution count [1.50e+01]
..LN993:
        movl      $1, %esi                                      #314.3
..LN994:
        movl      $.L_2__STRING.6, %edx                         #314.3
..LN995:
        movl      $.L_2__STRING.7, %ecx                         #314.3
..LN996:
        vmovupd   %xmm0, 208(%rsp)                              #314.3[spill]
..___tag_value_main.179:
..LN997:
#       error(int, int, char *, char *)
        call      error                                         #314.3
..___tag_value_main.180:
..LN998:
                                # LOE rbx r13 r14 r15 r12b
..B1.67:                        # Preds ..B1.66
                                # Execution count [1.50e+01]
..LN999:
        vmovupd   208(%rsp), %xmm0                              #[spill]
..LN1000:
	.loc    1  315  is_stmt 1
        vmovsd    280(%rsp), %xmm2                              #315.10[spill]
..LN1001:
        vsubsd    %xmm0, %xmm2, %xmm1                           #315.10
..LN1002:
        vdivsd    %xmm2, %xmm1, %xmm3                           #315.10
..LN1003:
        vandpd    .L_2il0floatpacket.3(%rip), %xmm3, %xmm4      #315.10
..LN1004:
        vcomisd   .L_2il0floatpacket.2(%rip), %xmm4             #315.40
..LN1005:
        jbe       ..B1.86       # Prob 5%                       #315.40
..LN1006:
                                # LOE rbx r13 r14 r15 r12b xmm0
..B1.68:                        # Preds ..B1.67
                                # Execution count [1.42e+01]
..LN1007:
        movl      $1, %edi                                      #315.3
..LN1008:
                                # LOE rbx r13 r14 r15 edi r12b
..B1.69:                        # Preds ..B1.68 ..B1.86
                                # Execution count [1.50e+01]
..LN1009:
        movl      $1, %esi                                      #315.3
..LN1010:
        movl      $.L_2__STRING.8, %edx                         #315.3
..LN1011:
        movl      $.L_2__STRING.9, %ecx                         #315.3
..___tag_value_main.184:
..LN1012:
#       error(int, int, char *, char *)
        call      error                                         #315.3
..___tag_value_main.185:
..LN1013:
                                # LOE rbx r13 r14 r15 r12b
..B1.70:                        # Preds ..B1.69
                                # Execution count [1.50e+01]
..LN1014:
	.loc    1  302  is_stmt 1
        incb      %r12b                                         #302.17
..LN1015:
        addq      $16, %r13                                     #302.17
..LN1016:
        cmpb      $3, %r12b                                     #302.14
..LN1017:
        jl        ..B1.64       # Prob 66%                      #302.14
..LN1018:
                                # LOE rbx r13 r14 r15 r12b
..B1.71:                        # Preds ..B1.70
                                # Execution count [5.00e+00]
..LN1019:
        movl      (%rsp), %edx                                  #[spill]
..LN1020:
	.loc    1  300  is_stmt 1
        incl      %edx                                          #300.21
..LN1021:
        movq      200(%rsp), %rax                               #[spill]
..LN1022:
        addq      $48, %rax                                     #300.21
..LN1023:
        movq      344(%rsp), %rdi                               #[spill]
..LN1024:
        movq      352(%rsp), %rcx                               #[spill]
..LN1025:
        movq      336(%rsp), %r8                                #[spill]
..LN1026:
        movq      328(%rsp), %r9                                #[spill]
..LN1027:
        cmpl      $100000000, %edx                              #300.17
..LN1028:
        jl        ..B1.63       # Prob 82%                      #300.17
..LN1029:
                                # LOE rax rcx rdi r8 r9 edx
..B1.72:                        # Preds ..B1.71
                                # Execution count [1.00e+00]
..LN1030:
        movq      %rdi, %r12                                    #
..LN1031:
	.loc    1  330  is_stmt 1
        movq      248(%rsp), %rdi                               #330.3[spill]
..LN1032:
        movq      %rcx, %r13                                    #
..LN1033:
        movq      192(%rsp), %r14                               #[spill]
..LN1034:
        movq      320(%rsp), %rbx                               #[spill]
..LN1035:
        movq      24(%rsp), %r15                                #[spill]
..___tag_value_main.195:
..LN1036:
#       afree(void *)
        call      afree                                         #330.3
..___tag_value_main.196:
..LN1037:
                                # LOE rbx r12 r13 r14 r15
..B1.73:                        # Preds ..B1.72
                                # Execution count [1.00e+00]
..LN1038:
	.loc    1  331  is_stmt 1
        movq      256(%rsp), %rdi                               #331.3[spill]
..___tag_value_main.198:
..LN1039:
#       afree(void *)
        call      afree                                         #331.3
..___tag_value_main.199:
..LN1040:
                                # LOE rbx r12 r13 r14 r15
..B1.74:                        # Preds ..B1.73
                                # Execution count [1.00e+00]
..LN1041:
	.loc    1  332  is_stmt 1
        movq      %r14, %rdi                                    #332.3
..___tag_value_main.201:
..LN1042:
#       afree(void *)
        call      afree                                         #332.3
..___tag_value_main.202:
..LN1043:
                                # LOE rbx r12 r13 r15
..B1.75:                        # Preds ..B1.74
                                # Execution count [1.00e+00]
..LN1044:
	.loc    1  333  is_stmt 1
        movq      328(%rsp), %rdi                               #333.3[spill]
..___tag_value_main.203:
..LN1045:
#       afree(void *)
        call      afree                                         #333.3
..___tag_value_main.204:
..LN1046:
                                # LOE rbx r12 r13 r15
..B1.76:                        # Preds ..B1.75
                                # Execution count [1.00e+00]
..LN1047:
	.loc    1  334  is_stmt 1
        movq      336(%rsp), %rdi                               #334.3[spill]
..___tag_value_main.206:
..LN1048:
#       afree(void *)
        call      afree                                         #334.3
..___tag_value_main.207:
..LN1049:
                                # LOE rbx r12 r13 r15
..B1.77:                        # Preds ..B1.76
                                # Execution count [1.00e+00]
..LN1050:
	.loc    1  335  is_stmt 1
        movq      240(%rsp), %rdi                               #335.3[spill]
..___tag_value_main.209:
..LN1051:
#       afree(void *)
        call      afree                                         #335.3
..___tag_value_main.210:
..LN1052:
                                # LOE rbx r12 r13 r15
..B1.78:                        # Preds ..B1.77
                                # Execution count [1.00e+00]
..LN1053:
	.loc    1  336  is_stmt 1
        movq      232(%rsp), %rdi                               #336.3[spill]
..___tag_value_main.212:
..LN1054:
#       afree(void *)
        call      afree                                         #336.3
..___tag_value_main.213:
..LN1055:
                                # LOE rbx r12 r13 r15
..B1.79:                        # Preds ..B1.78
                                # Execution count [1.00e+00]
..LN1056:
	.loc    1  337  is_stmt 1
        movq      %r13, %rdi                                    #337.3
..___tag_value_main.215:
..LN1057:
#       afree(void *)
        call      afree                                         #337.3
..___tag_value_main.216:
..LN1058:
                                # LOE rbx r12 r15
..B1.80:                        # Preds ..B1.79
                                # Execution count [1.00e+00]
..LN1059:
	.loc    1  338  is_stmt 1
        movq      %r12, %rdi                                    #338.3
..___tag_value_main.217:
..LN1060:
#       afree(void *)
        call      afree                                         #338.3
..___tag_value_main.218:
..LN1061:
                                # LOE rbx r15
..B1.81:                        # Preds ..B1.80
                                # Execution count [1.00e+00]
..LN1062:
	.loc    1  339  is_stmt 1
        movq      %rbx, %rdi                                    #339.3
..___tag_value_main.219:
..LN1063:
#       afree(void *)
        call      afree                                         #339.3
..___tag_value_main.220:
..LN1064:
                                # LOE r15
..B1.82:                        # Preds ..B1.81
                                # Execution count [1.00e+00]
..LN1065:
	.loc    1  340  is_stmt 1
        movq      264(%rsp), %rdi                               #340.3[spill]
..___tag_value_main.221:
..LN1066:
#       afree(void *)
        call      afree                                         #340.3
..___tag_value_main.222:
..LN1067:
                                # LOE r15
..B1.83:                        # Preds ..B1.82
                                # Execution count [1.00e+00]
..LN1068:
	.loc    1  341  is_stmt 1
        movq      %r15, %rdi                                    #341.3
..___tag_value_main.224:
..LN1069:
#       afree(void *)
        call      afree                                         #341.3
..___tag_value_main.225:
..LN1070:
                                # LOE
..B1.84:                        # Preds ..B1.83
                                # Execution count [1.00e+00]
..LN1071:
	.loc    1  343  is_stmt 1
        movl      $.2.5_2_kmpc_loc_struct_pack.46, %edi         #343.10
..LN1072:
        xorl      %eax, %eax                                    #343.10
..___tag_value_main.226:
..LN1073:
        call      __kmpc_end                                    #343.10
..___tag_value_main.227:
..LN1074:
                                # LOE
..B1.85:                        # Preds ..B1.84
                                # Execution count [1.00e+00]
..LN1075:
        xorl      %eax, %eax                                    #343.10
..LN1076:
	.loc    1  343  epilogue_begin  is_stmt 1
        addq      $472, %rsp                                    #343.10
	.cfi_restore 3
..LN1077:
        popq      %rbx                                          #343.10
	.cfi_restore 15
..LN1078:
        popq      %r15                                          #343.10
	.cfi_restore 14
..LN1079:
        popq      %r14                                          #343.10
	.cfi_restore 13
..LN1080:
        popq      %r13                                          #343.10
	.cfi_restore 12
..LN1081:
        popq      %r12                                          #343.10
..LN1082:
        movq      %rbp, %rsp                                    #343.10
..LN1083:
        popq      %rbp                                          #343.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN1084:
        ret                                                     #343.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
..LN1085:
                                # LOE
..B1.86:                        # Preds ..B1.67
                                # Execution count [7.50e-01]: Infreq
..LN1086:
	.loc    1  312  is_stmt 1
        vunpckhpd %xmm0, %xmm0, %xmm0                           #312.11
..LN1087:
	.loc    1  315  is_stmt 1
        vmovsd    272(%rsp), %xmm2                              #315.52[spill]
..LN1088:
        vsubsd    %xmm0, %xmm2, %xmm1                           #315.52
..LN1089:
        vdivsd    %xmm2, %xmm1, %xmm3                           #315.52
..LN1090:
        vandpd    .L_2il0floatpacket.3(%rip), %xmm3, %xmm4      #315.52
..LN1091:
        vcmpgtsd  .L_2il0floatpacket.2(%rip), %xmm4, %xmm5      #315.82
..LN1092:
        vmovd     %xmm5, %edi                                   #315.82
..LN1093:
        negl      %edi                                          #315.82
..LN1094:
        jmp       ..B1.69       # Prob 100%                     #315.82
..LN1095:
                                # LOE rbx r13 r14 r15 edi r12b
..B1.87:                        # Preds ..B1.64
                                # Execution count [7.50e-01]: Infreq
..LN1096:
	.loc    1  310  is_stmt 1
        vunpckhpd %xmm4, %xmm4, %xmm1                           #310.11
..LN1097:
	.loc    1  314  is_stmt 1
        vsubsd    %xmm1, %xmm2, %xmm3                           #314.51
..LN1098:
        vdivsd    %xmm2, %xmm3, %xmm2                           #314.51
..LN1099:
        vandpd    .L_2il0floatpacket.3(%rip), %xmm2, %xmm4      #314.51
..LN1100:
        vcmpgtsd  .L_2il0floatpacket.2(%rip), %xmm4, %xmm5      #314.81
..LN1101:
        vmovd     %xmm5, %edi                                   #314.81
..LN1102:
        negl      %edi                                          #314.81
..LN1103:
        jmp       ..B1.66       # Prob 100%                     #314.81
..LN1104:
                                # LOE rbx r13 r14 r15 edi r12b xmm0
..B1.88:                        # Preds ..B1.52
                                # Execution count [5.00e+00]: Infreq
..L244:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 9
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN1105:
	.loc    1  269  is_stmt 1
..LN1106:
	.loc    1  271  is_stmt 1
        vmovupd   (%r15,%rdx), %xmm0                            #271.23
..LN1107:
        vmovupd   %xmm0, (%r9,%rdx)                             #271.8
..LN1108:
        vmovupd   16(%r15,%rdx), %xmm1                          #271.23
..LN1109:
        vmovupd   %xmm1, 16(%r9,%rdx)                           #271.8
..LN1110:
        vmovupd   32(%r15,%rdx), %xmm2                          #271.23
..LN1111:
        vmovupd   %xmm2, 32(%r9,%rdx)                           #271.8
..LN1112:
        vmovupd   48(%r15,%rdx), %xmm3                          #271.23
..LN1113:
        vmovupd   %xmm3, 48(%r9,%rdx)                           #271.8
..LN1114:
        vmovupd   64(%r15,%rdx), %xmm4                          #271.23
..LN1115:
        vmovupd   %xmm4, 64(%r9,%rdx)                           #271.8
..LN1116:
        vmovupd   80(%r15,%rdx), %xmm5                          #271.23
..LN1117:
        vmovupd   %xmm5, 80(%r9,%rdx)                           #271.8
..LN1118:
        vmovupd   96(%r15,%rdx), %xmm6                          #271.23
..LN1119:
        vmovupd   %xmm6, 96(%r9,%rdx)                           #271.8
..LN1120:
        vmovupd   112(%r15,%rdx), %xmm7                         #271.23
..LN1121:
        vmovupd   %xmm7, 112(%r9,%rdx)                          #271.8
..LN1122:
        vmovupd   128(%r15,%rdx), %xmm8                         #271.23
..LN1123:
        vmovupd   %xmm8, 128(%r9,%rdx)                          #271.8
..LN1124:
        jmp       ..B1.54       # Prob 100%                     #271.8
..LN1125:
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.89:                        # Preds ..B1.45
                                # Execution count [5.00e+00]: Infreq
..L245:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 9
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN1126:
	.loc    1  245  is_stmt 1
..LN1127:
	.loc    1  247  is_stmt 1
        vmovupd   (%r15,%rdx), %xmm0                            #247.23
..LN1128:
        vmovupd   %xmm0, (%r9,%rdx)                             #247.8
..LN1129:
        vmovupd   16(%r15,%rdx), %xmm1                          #247.23
..LN1130:
        vmovupd   %xmm1, 16(%r9,%rdx)                           #247.8
..LN1131:
        vmovupd   32(%r15,%rdx), %xmm2                          #247.23
..LN1132:
        vmovupd   %xmm2, 32(%r9,%rdx)                           #247.8
..LN1133:
        vmovupd   48(%r15,%rdx), %xmm3                          #247.23
..LN1134:
        vmovupd   %xmm3, 48(%r9,%rdx)                           #247.8
..LN1135:
        vmovupd   64(%r15,%rdx), %xmm4                          #247.23
..LN1136:
        vmovupd   %xmm4, 64(%r9,%rdx)                           #247.8
..LN1137:
        vmovupd   80(%r15,%rdx), %xmm5                          #247.23
..LN1138:
        vmovupd   %xmm5, 80(%r9,%rdx)                           #247.8
..LN1139:
        vmovupd   96(%r15,%rdx), %xmm6                          #247.23
..LN1140:
        vmovupd   %xmm6, 96(%r9,%rdx)                           #247.8
..LN1141:
        vmovupd   112(%r15,%rdx), %xmm7                         #247.23
..LN1142:
        vmovupd   %xmm7, 112(%r9,%rdx)                          #247.8
..LN1143:
        vmovupd   128(%r15,%rdx), %xmm8                         #247.23
..LN1144:
        vmovupd   %xmm8, 128(%r9,%rdx)                          #247.8
..LN1145:
        jmp       ..B1.47       # Prob 100%                     #247.8
..LN1146:
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.90:                        # Preds ..B1.34
                                # Execution count [5.00e+00]: Infreq
..L246:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 9
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN1147:
	.loc    1  204  is_stmt 1
..LN1148:
	.loc    1  206  is_stmt 1
        vmovupd   (%r15,%rsi), %xmm0                            #206.23
..LN1149:
        vmovupd   %xmm0, (%r12,%rsi)                            #206.8
..LN1150:
        vmovupd   16(%r15,%rsi), %xmm1                          #206.23
..LN1151:
        vmovupd   %xmm1, 16(%r12,%rsi)                          #206.8
..LN1152:
        vmovupd   32(%r15,%rsi), %xmm2                          #206.23
..LN1153:
        vmovupd   %xmm2, 32(%r12,%rsi)                          #206.8
..LN1154:
        vmovupd   48(%r15,%rsi), %xmm3                          #206.23
..LN1155:
        vmovupd   %xmm3, 48(%r12,%rsi)                          #206.8
..LN1156:
        vmovupd   64(%r15,%rsi), %xmm4                          #206.23
..LN1157:
        vmovupd   %xmm4, 64(%r12,%rsi)                          #206.8
..LN1158:
        vmovupd   80(%r15,%rsi), %xmm5                          #206.23
..LN1159:
        vmovupd   %xmm5, 80(%r12,%rsi)                          #206.8
..LN1160:
        vmovupd   96(%r15,%rsi), %xmm6                          #206.23
..LN1161:
        vmovupd   %xmm6, 96(%r12,%rsi)                          #206.8
..LN1162:
        vmovupd   112(%r15,%rsi), %xmm7                         #206.23
..LN1163:
        vmovupd   %xmm7, 112(%r12,%rsi)                         #206.8
..LN1164:
        vmovupd   128(%r15,%rsi), %xmm8                         #206.23
..LN1165:
        vmovupd   %xmm8, 128(%r12,%rsi)                         #206.8
..LN1166:
        jmp       ..B1.36       # Prob 100%                     #206.8
..LN1167:
                                # LOE rax rdx rbx r9 r10 r11 r12 r13 r14 r15
..B1.91:                        # Preds ..B1.27
                                # Execution count [5.00e+00]: Infreq
..L247:
                # optimization report
                # LOOP WAS COMPLETELY UNROLLED BY 9
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN1168:
	.loc    1  180  is_stmt 1
..LN1169:
	.loc    1  182  is_stmt 1
        vmovupd   (%r15,%rcx), %xmm0                            #182.23
..LN1170:
        vmovupd   %xmm0, (%r11,%rcx)                            #182.8
..LN1171:
        vmovupd   16(%r15,%rcx), %xmm1                          #182.23
..LN1172:
        vmovupd   %xmm1, 16(%r11,%rcx)                          #182.8
..LN1173:
        vmovupd   32(%r15,%rcx), %xmm2                          #182.23
..LN1174:
        vmovupd   %xmm2, 32(%r11,%rcx)                          #182.8
..LN1175:
        vmovupd   48(%r15,%rcx), %xmm3                          #182.23
..LN1176:
        vmovupd   %xmm3, 48(%r11,%rcx)                          #182.8
..LN1177:
        vmovupd   64(%r15,%rcx), %xmm4                          #182.23
..LN1178:
        vmovupd   %xmm4, 64(%r11,%rcx)                          #182.8
..LN1179:
        vmovupd   80(%r15,%rcx), %xmm5                          #182.23
..LN1180:
        vmovupd   %xmm5, 80(%r11,%rcx)                          #182.8
..LN1181:
        vmovupd   96(%r15,%rcx), %xmm6                          #182.23
..LN1182:
        vmovupd   %xmm6, 96(%r11,%rcx)                          #182.8
..LN1183:
        vmovupd   112(%r15,%rcx), %xmm7                         #182.23
..LN1184:
        vmovupd   %xmm7, 112(%r11,%rcx)                         #182.8
..LN1185:
        vmovupd   128(%r15,%rcx), %xmm8                         #182.23
..LN1186:
        vmovupd   %xmm8, 128(%r11,%rcx)                         #182.8
..LN1187:
        jmp       ..B1.29       # Prob 100%                     #182.8
..LN1188:
                                # LOE rax rbx r8 r9 r10 r11 r12 r13 r14 r15
..B1.92:                        # Preds ..B1.4
                                # Execution count [5.10e-02]: Infreq
..LN1189:
	.loc    1  121  is_stmt 1
        movl      $il0_peep_printf_format_0, %edi               #121.5
..LN1190:
        call      puts                                          #121.5
..LN1191:
        jmp       ..B1.5        # Prob 100%                     #121.5
        .align    16,0x90
..LN1192:
                                # LOE
..LN1193:
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.1194:
.LNmain:
	.data
	.align 4
	.align 4
.2.5_2_kmpc_loc_struct_pack.35:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.34
	.align 4
.2.5_2__kmpc_loc_pack.34:
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
	.byte	57
	.byte	57
	.byte	59
	.byte	57
	.byte	57
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.5_2_kmpc_loc_struct_pack.46:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.45
	.align 4
.2.5_2__kmpc_loc_pack.45:
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
	.byte	51
	.byte	59
	.byte	51
	.byte	52
	.byte	51
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
	.file   7 "/opt/ohpc/pub/oneAPI/compiler/2021.2.0/linux/bin/intel64/../../compiler/include/icc/immintrin.h"
	.file   8 "/opt/ohpc/pub/oneAPI/compiler/2021.2.0/linux/bin/intel64/../../compiler/include/icc/emmintrin.h"
	.file   9 "/opt/ohpc/pub/oneAPI/compiler/2021.2.0/linux/bin/intel64/../../compiler/include/icc/stddef.h"
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
..___tag_value_double_MVM_non_macro.252:
..L253:
                                                        #348.1
..LN1195:
	.loc    1  348  prologue_end  is_stmt 1
..LN1196:
	.loc    1  354  is_stmt 1
        vmovupd   (%rdx), %ymm11                                #354.35
..LN1197:
	.loc    1  369  is_stmt 1
        vmovupd   (%rcx), %ymm2                                 #369.35
..LN1198:
	.loc    1  359  is_stmt 1
        vmovupd   48(%rdx), %ymm7                               #359.36
..LN1199:
	.loc    1  364  is_stmt 1
        vmovupd   96(%rdx), %ymm4                               #364.35
..LN1200:
	.loc    1  356  is_stmt 1
        vunpckhpd %ymm11, %ymm11, %ymm15                        #356.10
..LN1201:
	.loc    1  370  is_stmt 1
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #370.10
..LN1202:
	.loc    1  361  is_stmt 1
        vunpckhpd %ymm7, %ymm7, %ymm14                          #361.10
..LN1203:
	.loc    1  383  is_stmt 1
        vmulpd    %ymm8, %ymm15, %ymm0                          #383.11
..LN1204:
	.loc    1  387  is_stmt 1
        vmulpd    %ymm8, %ymm14, %ymm13                         #387.11
..LN1205:
	.loc    1  399  is_stmt 1
        vmovupd   16(%rdx), %ymm7                               #399.37
..LN1206:
	.loc    1  355  is_stmt 1
        vmovddup  (%rdx), %ymm10                                #355.10
..LN1207:
	.loc    1  360  is_stmt 1
        vmovddup  48(%rdx), %ymm9                               #360.10
..LN1208:
	.loc    1  384  is_stmt 1
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #384.11
..LN1209:
	.loc    1  388  is_stmt 1
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #388.11
..LN1210:
	.loc    1  366  is_stmt 1
        vunpckhpd %ymm4, %ymm4, %ymm6                           #366.10
..LN1211:
	.loc    1  373  is_stmt 1
        vmovupd   (%r8), %ymm4                                  #373.35
..LN1212:
	.loc    1  453  is_stmt 1
        vmulpd    %ymm8, %ymm6, %ymm8                           #453.11
..LN1213:
	.loc    1  393  is_stmt 1
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #393.11
..LN1214:
	.loc    1  395  is_stmt 1
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #395.11
..LN1215:
	.loc    1  404  is_stmt 1
        vmovupd   16(%rcx), %ymm1                               #404.37
..LN1216:
	.loc    1  374  is_stmt 1
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #374.11
..LN1217:
	.loc    1  421  is_stmt 1
        vmulpd    %ymm3, %ymm15, %ymm15                         #421.10
..LN1218:
	.loc    1  425  is_stmt 1
        vmulpd    %ymm3, %ymm14, %ymm14                         #425.10
..LN1219:
	.loc    1  422  is_stmt 1
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #422.10
..LN1220:
	.loc    1  426  is_stmt 1
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #426.10
..LN1221:
	.loc    1  392  is_stmt 1
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #392.11
..LN1222:
	.loc    1  400  is_stmt 1
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #400.11
..LN1223:
	.loc    1  405  is_stmt 1
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #405.11
..LN1224:
	.loc    1  396  is_stmt 1
        vaddpd    %ymm11, %ymm12, %ymm13                        #396.11
..LN1225:
	.loc    1  402  is_stmt 1
        vblendpd  $12, 64(%rdx), %ymm0, %ymm11                  #402.11
..LN1226:
	.loc    1  406  is_stmt 1
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #406.11
..LN1227:
	.loc    1  408  is_stmt 1
        vmovddup  %ymm11, %ymm0                                 #408.11
..LN1228:
	.loc    1  409  is_stmt 1
        vunpckhpd %ymm11, %ymm11, %ymm1                         #409.11
..LN1229:
	.loc    1  410  is_stmt 1
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #410.11
..LN1230:
	.loc    1  412  is_stmt 1
        vmulpd    %ymm11, %ymm1, %ymm11                         #412.11
..LN1231:
	.loc    1  413  is_stmt 1
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #413.11
..LN1232:
	.loc    1  430  is_stmt 1
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #430.11
..LN1233:
	.loc    1  431  is_stmt 1
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #431.10
..LN1234:
	.loc    1  433  is_stmt 1
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #433.10
..LN1235:
	.loc    1  437  is_stmt 1
        vmovupd   16(%r8), %ymm10                               #437.37
..LN1236:
	.loc    1  416  is_stmt 1
        vaddpd    %ymm13, %ymm11, %ymm11                        #416.11
..LN1237:
	.loc    1  434  is_stmt 1
        vaddpd    %ymm9, %ymm12, %ymm9                          #434.10
..LN1238:
	.loc    1  438  is_stmt 1
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #438.11
..LN1239:
	.loc    1  439  is_stmt 1
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #439.11
..LN1240:
	.loc    1  441  is_stmt 1
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #441.11
..LN1241:
	.loc    1  442  is_stmt 1
        vmulpd    %ymm14, %ymm1, %ymm1                          #442.11
..LN1242:
	.loc    1  365  is_stmt 1
        vmovddup  96(%rdx), %ymm5                               #365.10
..LN1243:
	.loc    1  454  is_stmt 1
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #454.10
..LN1244:
	.loc    1  459  is_stmt 1
        vmulpd    %ymm3, %ymm6, %ymm2                           #459.10
..LN1245:
	.loc    1  443  is_stmt 1
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #443.11
..LN1246:
	.loc    1  471  is_stmt 1
        vmovupd   112(%rdx), %ymm1                              #471.36
..LN1247:
	.loc    1  491  is_stmt 1
        vmovupd   %ymm11, (%rdi)                                #491.29
..LN1248:
	.loc    1  460  is_stmt 1
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #460.10
..LN1249:
	.loc    1  446  is_stmt 1
        vaddpd    %ymm9, %ymm0, %ymm9                           #446.10
..LN1250:
	.loc    1  472  is_stmt 1
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #472.11
..LN1251:
	.loc    1  465  is_stmt 1
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #465.10
..LN1252:
	.loc    1  473  is_stmt 1
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #473.10
..LN1253:
	.loc    1  477  is_stmt 1
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #477.10
..LN1254:
	.loc    1  464  is_stmt 1
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #464.10
..LN1255:
	.loc    1  467  is_stmt 1
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #467.10
..LN1256:
	.loc    1  475  is_stmt 1
        vunpckhpd %ymm2, %ymm2, %ymm3                           #475.11
..LN1257:
	.loc    1  478  is_stmt 1
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #478.11
..LN1258:
	.loc    1  480  is_stmt 1
        vmulpd    %ymm7, %ymm3, %ymm4                           #480.10
..LN1259:
	.loc    1  468  is_stmt 1
        vaddpd    %ymm5, %ymm6, %ymm5                           #468.10
..LN1260:
	.loc    1  474  is_stmt 1
        vmovddup  %ymm2, %ymm6                                  #474.11
..LN1261:
	.loc    1  481  is_stmt 1
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #481.10
..LN1262:
	.loc    1  483  is_stmt 1
        vaddpd    %ymm5, %ymm6, %ymm8                           #483.10
..LN1263:
	.loc    1  492  is_stmt 1
        vmovupd   %xmm8, 192(%rdi)                              #492.26
..LN1264:
	.loc    1  494  is_stmt 1
        vmovupd   %ymm9, (%rsi)                                 #494.29
..LN1265:
	.loc    1  495  is_stmt 1
        vextractf128 $1, %ymm8, 192(%rsi)                       #495.26
..LN1266:
	.loc    1  496  is_stmt 1
        vzeroupper                                              #496.1
..LN1267:
	.loc    1  496  epilogue_begin  is_stmt 1
        ret                                                     #496.1
        .align    16,0x90
..LN1268:
                                # LOE
..LN1269:
	.cfi_endproc
# mark_end;
	.type	double_MVM_non_macro,@function
	.size	double_MVM_non_macro,.-double_MVM_non_macro
..LNdouble_MVM_non_macro.1270:
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
..L258:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	22
	.long	..L259 - ..L258
	.long	48
	.long	..L260 - ..L258
	.long	311
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	1
	.quad	..L53
	.long	28
	.long	5
	.quad	..L57
	.long	28
	.long	19
	.quad	..L66
	.long	28
	.long	36
	.quad	..L82
	.long	28
	.long	53
	.quad	..L81
	.long	28
	.long	67
	.quad	..L80
	.long	28
	.long	75
	.quad	..L98
	.long	28
	.long	89
	.quad	..L97
	.long	28
	.long	103
	.quad	..L96
	.long	28
	.long	120
	.quad	..L124
	.long	28
	.long	134
	.quad	..L123
	.long	28
	.long	148
	.quad	..L122
	.long	28
	.long	156
	.quad	..L141
	.long	28
	.long	170
	.quad	..L140
	.long	28
	.long	184
	.quad	..L139
	.long	28
	.long	201
	.quad	..L168
	.long	28
	.long	215
	.quad	..L175
	.long	28
	.long	229
	.quad	..L244
	.long	28
	.long	243
	.quad	..L245
	.long	28
	.long	260
	.quad	..L246
	.long	28
	.long	277
	.quad	..L247
	.long	28
	.long	294
..L259:
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
..L260:
	.long	-2045771008
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
	.long	-2146431743
	.long	-2139062142
	.long	-2139062144
	.long	117949568
	.long	-2139062256
	.long	218546304
	.long	-2139062256
	.long	-2139062144
	.long	-998209408
	.long	-2146431737
	.long	-2139062142
	.long	-2139062144
	.long	268944512
	.long	-2139062256
	.long	-2138652544
	.long	-1333755776
	.long	25198721
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269289352
	.long	-2139061632
	.long	-2139062144
	.long	130318464
	.long	-2139090937
	.long	113279104
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269289412
	.long	-2139061632
	.long	-2139062144
	.long	130318464
	.long	-2139090928
	.long	-2034204544
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
	.long	268935296
	.long	-2139062256
	.long	-2137866110
	.long	-1870626688
	.long	25198720
	.long	-2139090928
	.long	-1832877440
	.long	-2139062144
	.long	-2139062128
	.long	-2146430975
	.long	-1065189248
	.long	-2139062126
	.long	-2139058048
	.long	269484416
	.long	-2105507712
	.long	-2139057472
	.long	-2138013568
	.word	32896
	.byte	1
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .debug_info
	.section .debug_info
.debug_info_seg:
	.align 1
	.4byte 0x000005ef
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
	.4byte .debug_str+0xc4
//	DW_AT_language:
	.byte 0x01
//	DW_AT_use_UTF8:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..L3
//	DW_AT_high_pc:
	.8byte ..LNdouble_MVM_non_macro.1270-..L3
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
	.byte 0x62
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x10e
	.4byte .debug_str+0x10e
//	DW_AT_frame_base:
	.2byte 0x7702
	.byte 0x00
//	DW_AT_low_pc:
	.8byte ..L3
//	DW_AT_high_pc:
	.8byte ..LNmain.1194-..L3
	.byte 0x01
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x64
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x64
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x65
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006e
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x153
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x158
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_AT_location:
	.2byte 0x6301
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x15d
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x162
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x167
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x16c
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x171
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x176
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x17b
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_AT_location:
	.2byte 0x6501
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x180
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x186
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x18c
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x67
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x192
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x67
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a0
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x68
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
	.byte 0x69
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a7
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x6a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1af
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x6d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3174
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000003aa
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x6d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3274
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000003aa
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x6e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1ca
//	DW_AT_type:
	.4byte 0x000003c7
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x08
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x6e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00646e65
//	DW_AT_type:
	.4byte 0x000003c7
//	DW_AT_location:
	.4byte 0x01a09103
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x6e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1fe
//	DW_AT_type:
	.4byte 0x000003c7
//	DW_AT_location:
	.4byte 0x01b09103
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x70
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00317477
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x70
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00327477
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x75
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x00000402
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x20
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x7b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x7075
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000341
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x7b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3376
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000341
//	DW_AT_location:
	.2byte 0x5f01
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00696863
//	DW_AT_type:
	.4byte 0x00000372
//	DW_AT_location:
	.2byte 0x5901
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x215
//	DW_AT_type:
	.4byte 0x00000372
//	DW_AT_location:
	.2byte 0x5801
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x21a
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x21f
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x224
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x229
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00697370
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x22e
//	DW_AT_type:
	.4byte 0x00000372
//	DW_AT_location:
	.2byte 0x5e01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x233
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x23c
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3176
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000372
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3276
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000372
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x246
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x25e
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x264
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x26a
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x270
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x276
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6b01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x27c
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x282
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x288
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x28e
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x295
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x29c
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2a3
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2aa
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b1
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b8
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6801
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2bf
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6f01
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2c6
//	DW_AT_type:
	.4byte 0x00000454
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2e0
//	DW_AT_type:
	.4byte 0x00000454
//	DW_TAG_lexical_block:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0x77
//	DW_AT_decl_file:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x77
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2e9
//	DW_AT_type:
	.4byte 0x0000047f
	.byte 0x00
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x0000032f
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x77
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0x113
//	DW_AT_type:
	.4byte 0x0000033a
//	DW_TAG_base_type:
	.byte 0x0b
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x07
//	DW_AT_name:
	.4byte .debug_str+0x11e
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x00000346
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x59
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x12c
//	DW_AT_type:
	.4byte 0x00000351
//	DW_TAG_structure_type:
	.byte 0x0c
//	DW_AT_decl_line:
	.byte 0x57
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_byte_size:
	.byte 0x90
//	DW_TAG_member:
	.byte 0x0d
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
	.4byte 0x00000362
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x0000036b
//	DW_AT_byte_size:
	.byte 0x90
//	DW_TAG_subrange_type:
	.byte 0x0f
//	DW_AT_upper_bound:
	.byte 0x08
	.byte 0x00
//	DW_TAG_base_type:
	.byte 0x0b
//	DW_AT_byte_size:
	.byte 0x10
//	DW_AT_encoding:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x131
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x00000377
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x4f
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x140
//	DW_AT_type:
	.4byte 0x00000382
//	DW_TAG_structure_type:
	.byte 0x0c
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_byte_size:
	.byte 0x30
//	DW_TAG_member:
	.byte 0x0d
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
	.4byte 0x00000393
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x0000036b
//	DW_AT_byte_size:
	.byte 0x30
//	DW_TAG_subrange_type:
	.byte 0x0f
//	DW_AT_upper_bound:
	.byte 0x02
	.byte 0x00
//	DW_TAG_base_type:
	.byte 0x0b
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x14c
//	DW_TAG_base_type:
	.byte 0x0b
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x19a
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x3b
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x1b8
//	DW_AT_type:
	.4byte 0x000003b5
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x90
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x1c0
//	DW_AT_type:
	.4byte 0x000003c0
//	DW_TAG_base_type:
	.byte 0x0b
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x127
//	DW_TAG_structure_type:
	.byte 0x10
//	DW_AT_decl_line:
	.byte 0x1e
//	DW_AT_decl_file:
	.byte 0x06
//	DW_AT_byte_size:
	.byte 0x10
//	DW_AT_name:
	.4byte .debug_str+0x1d0
//	DW_TAG_member:
	.byte 0x11
//	DW_AT_decl_line:
	.byte 0x20
//	DW_AT_decl_file:
	.byte 0x06
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x1d8
//	DW_AT_type:
	.4byte 0x000003ec
//	DW_TAG_member:
	.byte 0x11
//	DW_AT_decl_line:
	.byte 0x21
//	DW_AT_decl_file:
	.byte 0x06
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x08
//	DW_AT_name:
	.4byte .debug_str+0x1e8
//	DW_AT_type:
	.4byte 0x000003f7
	.byte 0x00
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x94
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x1df
//	DW_AT_type:
	.4byte 0x000003c0
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x96
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x1f0
//	DW_AT_type:
	.4byte 0x000003c0
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x81
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0x204
//	DW_AT_type:
	.4byte 0x0000040d
//	DW_TAG_structure_type:
	.byte 0x0c
//	DW_AT_decl_line:
	.byte 0x7f
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_byte_size:
	.byte 0x80
//	DW_TAG_member:
	.byte 0x11
//	DW_AT_decl_line:
	.byte 0x80
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x20e
//	DW_AT_type:
	.4byte 0x00000420
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x0000032f
//	DW_AT_byte_size:
	.byte 0x80
//	DW_TAG_subrange_type:
	.byte 0x0f
//	DW_AT_upper_bound:
	.byte 0x0f
	.byte 0x00
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x20
//	DW_AT_decl_file:
	.byte 0x07
//	DW_AT_name:
	.4byte .debug_str+0x24c
//	DW_AT_type:
	.4byte 0x00000434
//	DW_TAG_structure_type:
	.byte 0x10
//	DW_AT_decl_line:
	.byte 0x1e
//	DW_AT_decl_file:
	.byte 0x07
//	DW_AT_byte_size:
	.byte 0x20
//	DW_AT_name:
	.4byte .debug_str+0x24c
//	DW_TAG_member:
	.byte 0x11
//	DW_AT_decl_line:
	.byte 0x1f
//	DW_AT_decl_file:
	.byte 0x07
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x254
//	DW_AT_type:
	.4byte 0x0000044b
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_AT_byte_size:
	.byte 0x20
//	DW_TAG_subrange_type:
	.byte 0x0f
//	DW_AT_upper_bound:
	.byte 0x03
	.byte 0x00
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x38
//	DW_AT_decl_file:
	.byte 0x08
//	DW_AT_name:
	.4byte .debug_str+0x2ce
//	DW_AT_type:
	.4byte 0x0000045f
//	DW_TAG_structure_type:
	.byte 0x10
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x08
//	DW_AT_byte_size:
	.byte 0x10
//	DW_AT_name:
	.4byte .debug_str+0x2ce
//	DW_TAG_member:
	.byte 0x11
//	DW_AT_decl_line:
	.byte 0x37
//	DW_AT_decl_file:
	.byte 0x08
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0x2d6
//	DW_AT_type:
	.4byte 0x00000476
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x0000039c
//	DW_AT_byte_size:
	.byte 0x10
//	DW_TAG_subrange_type:
	.byte 0x0f
//	DW_AT_upper_bound:
	.byte 0x01
	.byte 0x00
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x2f
//	DW_AT_decl_file:
	.byte 0x09
//	DW_AT_name:
	.4byte .debug_str+0x2ef
//	DW_AT_type:
	.4byte 0x0000033a
//	DW_TAG_subprogram:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x015b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2f6
	.4byte .debug_str+0x2f6
//	DW_AT_low_pc:
	.8byte ..L253
//	DW_AT_high_pc:
	.8byte ..LNdouble_MVM_non_macro.1270-..L253
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x015b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000372
//	DW_AT_name:
	.4byte 0x00696863
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_formal_parameter:
	.byte 0x14
//	DW_AT_decl_line:
	.2byte 0x015b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000372
//	DW_AT_name:
	.4byte .debug_str+0x215
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_formal_parameter:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x015b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000005de
//	DW_AT_name:
	.2byte 0x7075
	.byte 0x00
//	DW_AT_location:
	.2byte 0x5101
//	DW_TAG_formal_parameter:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x015b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000005e8
//	DW_AT_name:
	.4byte 0x00697370
//	DW_AT_location:
	.2byte 0x5201
//	DW_TAG_formal_parameter:
	.byte 0x14
//	DW_AT_decl_line:
	.2byte 0x015b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000005e8
//	DW_AT_name:
	.4byte .debug_str+0x22e
//	DW_AT_location:
	.2byte 0x5801
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x246
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x25e
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x264
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x26a
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x270
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x276
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6b01
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x27c
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x282
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x288
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x28e
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x295
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x29c
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2a3
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2aa
//	DW_AT_type:
	.4byte 0x00000429
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b1
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b8
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6801
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2bf
//	DW_AT_type:
	.4byte 0x00000429
//	DW_AT_location:
	.2byte 0x6f01
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2c6
//	DW_AT_type:
	.4byte 0x00000454
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2e0
//	DW_AT_type:
	.4byte 0x00000454
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x000005e3
//	DW_TAG_const_type:
	.byte 0x17
//	DW_AT_type:
	.4byte 0x00000346
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x000005ed
//	DW_TAG_const_type:
	.byte 0x17
//	DW_AT_type:
	.4byte 0x00000377
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
	.2byte 0x0000
	.byte 0x09
	.byte 0x0f
	.byte 0x00
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0a
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
	.byte 0x0b
	.byte 0x24
	.byte 0x00
	.byte 0x0b
	.byte 0x0b
	.byte 0x3e
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.2byte 0x0000
	.byte 0x0c
	.byte 0x13
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x0b
	.byte 0x0b
	.2byte 0x0000
	.byte 0x0d
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
	.byte 0x0e
	.byte 0x01
	.byte 0x01
	.byte 0x49
	.byte 0x13
	.byte 0x0b
	.byte 0x0b
	.2byte 0x0000
	.byte 0x0f
	.byte 0x21
	.byte 0x00
	.byte 0x2f
	.byte 0x0b
	.2byte 0x0000
	.byte 0x10
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
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x12
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
	.byte 0x13
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
	.byte 0x0e
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x15
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
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x17
	.byte 0x26
	.byte 0x00
	.byte 0x49
	.byte 0x13
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
	.8byte 0x2063697373616c43
	.8byte 0x6c70706120726f66
	.8byte 0x736e6f6974616369
	.8byte 0x676e696e6e757220
	.8byte 0x65746e49206e6f20
	.8byte 0x2c3436202952286c
	.8byte 0x6e6f697372655620
	.8byte 0x2e322e3132303220
	.8byte 0x20646c6975422030
	.8byte 0x3832323031323032
	.8byte 0x0a3030303030305f
	.byte 0x00
	.8byte 0x324f2d202e20492d
	.8byte 0x6d6e65706f712d20
	.8byte 0x686372616d2d2070
	.8byte 0x76612d65726f633d
	.8byte 0x6e75746d2d203278
	.8byte 0x612d65726f633d65
	.8byte 0x2d20672d20327876
	.8byte 0x6f2d206d6c2d2053
	.8byte 0x2e324f5f63636920
	.2byte 0x0073
	.4byte 0x6e69616d
	.byte 0x00
	.8byte 0x616d5f7570635f5f
	.2byte 0x6b73
	.byte 0x00
	.8byte 0x64656e6769736e75
	.4byte 0x6e6f6c20
	.2byte 0x0067
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
	.8byte 0x5f7465735f757063
	.2byte 0x0074
	.4byte 0x69625f5f
	.2byte 0x7374
	.byte 0x00
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
	.8byte 0x79706f635f697370
	.byte 0x00
	.8byte 0x706f635f32697370
	.2byte 0x0079
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
	.4byte 0x70635f5f
	.2byte 0x0075
	.4byte 0x657a6973
	.2byte 0x745f
	.byte 0x00
	.8byte 0x4d5f656c62756f64
	.8byte 0x6d5f6e6f6e5f4d56
	.4byte 0x6f726361
	.byte 0x00
	.section .text
.LNDBG_TXe:
# End
