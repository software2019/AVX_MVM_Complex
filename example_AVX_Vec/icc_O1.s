	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler Classic for applications running on Intel(R) 64, Version 2021.2.0 Build 2021";
# mark_description "0228_000000";
# mark_description "-I . -O1 -qopenmp -march=core-avx2 -mtune=core-avx2 -g -S -lm -o icc_O1.s";
	.file "avx_complex_vec_align_load.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;

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
        andq      $-32, %rsp                                    #99.1
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
        subq      $376, %rsp                                    #99.1
..LN9:
        pushq     $3                                            #99.1
..LN10:
        popq      %rdi                                          #99.1
..LN11:
        xorl      %esi, %esi                                    #99.1
..LN12:
        call      __intel_new_feature_proc_init                 #99.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
..LN13:
                                # LOE
..B1.107:                       # Preds ..B1.1
                                # Execution count [0.00e+00]
..LN14:
        vstmxcsr  (%rsp)                                        #99.1
..LN15:
        movl      $.2.5_2_kmpc_loc_struct_pack.35, %edi         #99.1
..LN16:
        xorl      %esi, %esi                                    #99.1
..LN17:
        orl       $32832, (%rsp)                                #99.1
..LN18:
        xorl      %eax, %eax                                    #99.1
..LN19:
        vldmxcsr  (%rsp)                                        #99.1
..___tag_value_main.13:
..LN20:
        call      __kmpc_begin                                  #99.1
..___tag_value_main.14:
..LN21:
                                # LOE
..B1.2:                         # Preds ..B1.107
                                # Execution count [1.00e+00]
..LN22:
	.loc    1  118  prologue_end  is_stmt 1
        xorl      %eax, %eax                                    #118.1
..LN23:
        lea       152(%rsp), %rdi                               #118.1
..LN24:
        pushq     $16                                           #118.1
..LN25:
        popq      %rcx                                          #118.1
..LN26:
        rep   stosq
..LN27:
                                # LOE
..B1.3:                         # Preds ..B1.2
                                # Execution count [5.00e-01]
..LN28:
	.loc    1  120  is_stmt 1
        xorl      %edi, %edi                                    #120.4
..LN29:
        movl      $128, %esi                                    #120.4
..LN30:
	.loc    1  119  is_stmt 1
        lea       152(%rsp), %rax                               #119.1
..LN31:
        orl       $1, (%rax)                                    #119.1
..LN32:
	.loc    1  120  is_stmt 1
        lea       (%rax), %rdx                                  #120.4
..___tag_value_main.15:
..LN33:
#       sched_setaffinity(__pid_t, size_t, const cpu_set_t *)
        call      sched_setaffinity                             #120.4
..___tag_value_main.16:
..LN34:
                                # LOE eax
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
..LN35:
        cmpl      $-1, %eax                                     #120.47
..LN36:
        je        ..B1.104      # Prob 5%                       #120.47
..LN37:
                                # LOE
..B1.5:                         # Preds ..B1.104 ..B1.4
                                # Execution count [1.00e+00]
..LN38:
	.loc    1  127  is_stmt 1
        movq      $0x35a4e9000, %rdi                            #127.8
..LN39:
        pushq     $8                                            #127.8
..LN40:
        popq      %rsi                                          #127.8
..___tag_value_main.17:
..LN41:
#       amalloc(size_t, int)
        call      amalloc                                       #127.8
..___tag_value_main.18:
..LN42:
                                # LOE rax
..B1.109:                       # Preds ..B1.5
                                # Execution count [1.00e+00]
..LN43:
        movq      %rax, %r12                                    #127.8
..LN44:
                                # LOE r12
..B1.6:                         # Preds ..B1.109
                                # Execution count [1.00e+00]
..LN45:
	.loc    1  128  is_stmt 1
        movq      $0x35a4e9000, %rdi                            #128.8
..LN46:
        pushq     $8                                            #128.8
..LN47:
        popq      %rsi                                          #128.8
..___tag_value_main.19:
..LN48:
#       amalloc(size_t, int)
        call      amalloc                                       #128.8
..___tag_value_main.20:
..LN49:
                                # LOE rax r12
..B1.110:                       # Preds ..B1.6
                                # Execution count [1.00e+00]
..LN50:
        movq      %rax, 8(%rsp)                                 #128.8[spill]
..LN51:
                                # LOE r12
..B1.7:                         # Preds ..B1.110
                                # Execution count [1.00e+00]
..LN52:
	.loc    1  130  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #130.8
..LN53:
        pushq     $8                                            #130.8
..LN54:
        popq      %rsi                                          #130.8
..___tag_value_main.22:
..LN55:
#       amalloc(size_t, int)
        call      amalloc                                       #130.8
..___tag_value_main.23:
..LN56:
                                # LOE rax r12
..B1.111:                       # Preds ..B1.7
                                # Execution count [1.00e+00]
..LN57:
        movq      %rax, 24(%rsp)                                #130.8[spill]
..LN58:
                                # LOE r12
..B1.8:                         # Preds ..B1.111
                                # Execution count [1.00e+00]
..LN59:
	.loc    1  131  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #131.8
..LN60:
        pushq     $8                                            #131.8
..LN61:
        popq      %rsi                                          #131.8
..___tag_value_main.25:
..LN62:
#       amalloc(size_t, int)
        call      amalloc                                       #131.8
..___tag_value_main.26:
..LN63:
                                # LOE rax r12
..B1.112:                       # Preds ..B1.8
                                # Execution count [1.00e+00]
..LN64:
        movq      %rax, 16(%rsp)                                #131.8[spill]
..LN65:
                                # LOE r12
..B1.9:                         # Preds ..B1.112
                                # Execution count [1.00e+00]
..LN66:
	.loc    1  132  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #132.9
..LN67:
        pushq     $8                                            #132.9
..LN68:
        popq      %rsi                                          #132.9
..___tag_value_main.28:
..LN69:
#       amalloc(size_t, int)
        call      amalloc                                       #132.9
..___tag_value_main.29:
..LN70:
                                # LOE rax r12
..B1.113:                       # Preds ..B1.9
                                # Execution count [1.00e+00]
..LN71:
        movq      %rax, %rbx                                    #132.9
..LN72:
                                # LOE rbx r12
..B1.10:                        # Preds ..B1.113
                                # Execution count [1.00e+00]
..LN73:
	.loc    1  133  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #133.10
..LN74:
        pushq     $8                                            #133.10
..LN75:
        popq      %rsi                                          #133.10
..___tag_value_main.30:
..LN76:
#       amalloc(size_t, int)
        call      amalloc                                       #133.10
..___tag_value_main.31:
..LN77:
                                # LOE rax rbx r12
..B1.114:                       # Preds ..B1.10
                                # Execution count [1.00e+00]
..LN78:
        movq      %rax, (%rsp)                                  #133.10[spill]
..LN79:
                                # LOE rbx r12
..B1.11:                        # Preds ..B1.114
                                # Execution count [1.00e+00]
..LN80:
	.loc    1  134  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #134.9
..LN81:
        pushq     $8                                            #134.9
..LN82:
        popq      %rsi                                          #134.9
..___tag_value_main.33:
..LN83:
#       amalloc(size_t, int)
        call      amalloc                                       #134.9
..___tag_value_main.34:
..LN84:
                                # LOE rax rbx r12
..B1.115:                       # Preds ..B1.11
                                # Execution count [1.00e+00]
..LN85:
        movq      %rax, 56(%rsp)                                #134.9[spill]
..LN86:
                                # LOE rbx r12
..B1.12:                        # Preds ..B1.115
                                # Execution count [1.00e+00]
..LN87:
	.loc    1  135  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #135.10
..LN88:
        pushq     $8                                            #135.10
..LN89:
        popq      %rsi                                          #135.10
..___tag_value_main.36:
..LN90:
#       amalloc(size_t, int)
        call      amalloc                                       #135.10
..___tag_value_main.37:
..LN91:
                                # LOE rax rbx r12
..B1.116:                       # Preds ..B1.12
                                # Execution count [1.00e+00]
..LN92:
        movq      %rax, 48(%rsp)                                #135.10[spill]
..LN93:
                                # LOE rbx r12
..B1.13:                        # Preds ..B1.116
                                # Execution count [1.00e+00]
..LN94:
	.loc    1  136  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #136.10
..LN95:
        pushq     $8                                            #136.10
..LN96:
        popq      %rsi                                          #136.10
..___tag_value_main.39:
..LN97:
#       amalloc(size_t, int)
        call      amalloc                                       #136.10
..___tag_value_main.40:
..LN98:
                                # LOE rax rbx r12
..B1.117:                       # Preds ..B1.13
                                # Execution count [1.00e+00]
..LN99:
        movq      %rax, 352(%rsp)                               #136.10[spill]
..LN100:
                                # LOE rbx r12
..B1.14:                        # Preds ..B1.117
                                # Execution count [1.00e+00]
..LN101:
	.loc    1  137  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #137.10
..LN102:
        pushq     $8                                            #137.10
..LN103:
        popq      %rsi                                          #137.10
..___tag_value_main.42:
..LN104:
#       amalloc(size_t, int)
        call      amalloc                                       #137.10
..___tag_value_main.43:
..LN105:
                                # LOE rax rbx r12
..B1.118:                       # Preds ..B1.14
                                # Execution count [1.00e+00]
..LN106:
        movq      %rax, 344(%rsp)                               #137.10[spill]
..LN107:
                                # LOE rbx r12
..B1.15:                        # Preds ..B1.118
                                # Execution count [1.00e+00]
..LN108:
	.loc    1  138  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #138.10
..LN109:
        pushq     $8                                            #138.10
..LN110:
        popq      %rsi                                          #138.10
..___tag_value_main.45:
..LN111:
#       amalloc(size_t, int)
        call      amalloc                                       #138.10
..___tag_value_main.46:
..LN112:
                                # LOE rax rbx r12
..B1.119:                       # Preds ..B1.15
                                # Execution count [1.00e+00]
..LN113:
        movq      %rax, 72(%rsp)                                #138.10[spill]
..LN114:
                                # LOE rbx r12
..B1.16:                        # Preds ..B1.119
                                # Execution count [1.00e+00]
..LN115:
	.loc    1  139  is_stmt 1
        movq      $0x11e1a3000, %rdi                            #139.10
..LN116:
        pushq     $8                                            #139.10
..LN117:
        popq      %rsi                                          #139.10
..___tag_value_main.48:
..LN118:
#       amalloc(size_t, int)
        call      amalloc                                       #139.10
..___tag_value_main.49:
..LN119:
                                # LOE rax rbx r12
..B1.120:                       # Preds ..B1.16
                                # Execution count [1.00e+00]
..LN120:
        movq      %rax, 64(%rsp)                                #139.10[spill]
..LN121:
                                # LOE rbx r12
..B1.17:                        # Preds ..B1.120
                                # Execution count [8.47e-01]
..LN122:
	.loc    1  151  is_stmt 1
        movl      $0, 32(%rsp)                                  #151.7[spill]
..LN123:
        movq      $0, 40(%rsp)                                  #151.7[spill]
..LN124:
        movq      8(%rsp), %r15                                 #151.7[spill]
..LN125:
                                # LOE rbx r12 r15
..B1.18:                        # Preds ..B1.25 ..B1.17
                                # Execution count [4.70e+00]
..LN126:
	.loc    1  155  is_stmt 1
        movq      24(%rsp), %rax                                #155.8[spill]
..LN127:
	.loc    1  153  is_stmt 1
        xorb      %r14b, %r14b                                  #153.9
..LN128:
	.loc    1  155  is_stmt 1
        movq      40(%rsp), %rsi                                #155.8[spill]
..LN129:
	.loc    1  153  is_stmt 1
        xorl      %r13d, %r13d                                  #153.9
..LN130:
	.loc    1  156  is_stmt 1
        movq      16(%rsp), %rcx                                #156.8[spill]
..LN131:
	.loc    1  155  is_stmt 1
        lea       (%rax,%rsi), %rdx                             #155.8
..LN132:
        movq      %rdx, 88(%rsp)                                #155.8[spill]
..LN133:
	.loc    1  156  is_stmt 1
        lea       (%rcx,%rsi), %r8                              #156.8
..LN134:
        movq      %r8, 80(%rsp)                                 #156.8[spill]
..LN135:
                                # LOE rbx r12 r13 r15 r14b
..B1.19:                        # Preds ..B1.21 ..B1.18
                                # Execution count [1.41e+01]
..LN136:
	.loc    1  155  is_stmt 1
        pushq     $5                                            #155.22
..LN137:
        popq      %rdi                                          #155.22
..___tag_value_main.59:
..LN138:
#       my_rand(const int)
        call      my_rand                                       #155.22
..___tag_value_main.60:
..LN139:
                                # LOE rbx r12 r13 r15 r14b xmm0 xmm1
..B1.121:                       # Preds ..B1.19
                                # Execution count [1.41e+01]
..LN140:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #155.22
..LN141:
                                # LOE rbx r12 r13 r15 r14b xmm0
..B1.20:                        # Preds ..B1.121
                                # Execution count [1.41e+01]
..LN142:
        movq      88(%rsp), %rax                                #155.8[spill]
..LN143:
	.loc    1  156  is_stmt 1
        pushq     $5                                            #156.22
..LN144:
        popq      %rdi                                          #156.22
..LN145:
	.loc    1  155  is_stmt 1
        vmovupd   %xmm0, (%r13,%rax)                            #155.8
..___tag_value_main.62:
..LN146:
	.loc    1  156  is_stmt 1
#       my_rand(const int)
        call      my_rand                                       #156.22
..___tag_value_main.63:
..LN147:
                                # LOE rbx r12 r13 r15 r14b xmm0 xmm1
..B1.122:                       # Preds ..B1.20
                                # Execution count [1.41e+01]
..LN148:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #156.22
..LN149:
                                # LOE rbx r12 r13 r15 r14b xmm0
..B1.21:                        # Preds ..B1.122
                                # Execution count [1.41e+01]
..LN150:
        movq      80(%rsp), %rax                                #156.8[spill]
..LN151:
	.loc    1  153  is_stmt 1
        incb      %r14b                                         #153.19
..LN152:
	.loc    1  156  is_stmt 1
        vmovupd   %xmm0, (%r13,%rax)                            #156.8
..LN153:
	.loc    1  153  is_stmt 1
        addq      $16, %r13                                     #153.19
..LN154:
        cmpb      $3, %r14b                                     #153.16
..LN155:
        jl        ..B1.19       # Prob 66%                      #153.16
..LN156:
                                # LOE rbx r12 r13 r15 r14b
..B1.22:                        # Preds ..B1.21
                                # Execution count [4.70e+00]
..LN157:
	.loc    1  159  is_stmt 1
        xorb      %r14b, %r14b                                  #159.9
..LN158:
        xorl      %r13d, %r13d                                  #159.9
..LN159:
                                # LOE rbx r12 r13 r15 r14b
..B1.23:                        # Preds ..B1.24 ..B1.22
                                # Execution count [4.23e+01]
..LN160:
	.loc    1  161  is_stmt 1
        pushq     $5                                            #161.22
..LN161:
        popq      %rdi                                          #161.22
..___tag_value_main.65:
..LN162:
#       my_rand(const int)
        call      my_rand                                       #161.22
..___tag_value_main.66:
..LN163:
                                # LOE rbx r12 r13 r15 r14b xmm0 xmm1
..B1.123:                       # Preds ..B1.23
                                # Execution count [4.23e+01]
..LN164:
        vunpcklpd %xmm1, %xmm0, %xmm0                           #161.22
..LN165:
                                # LOE rbx r12 r13 r15 r14b xmm0
..B1.24:                        # Preds ..B1.123
                                # Execution count [4.23e+01]
..LN166:
	.loc    1  159  is_stmt 1
        incb      %r14b                                         #159.19
..LN167:
	.loc    1  161  is_stmt 1
        vmovupd   %xmm0, (%r13,%r15)                            #161.8
..LN168:
	.loc    1  159  is_stmt 1
        addq      $16, %r13                                     #159.19
..LN169:
        cmpb      $9, %r14b                                     #159.16
..LN170:
        jl        ..B1.23       # Prob 88%                      #159.16
..LN171:
                                # LOE rbx r12 r13 r15 r14b
..B1.25:                        # Preds ..B1.24
                                # Execution count [4.70e+00]
..LN172:
	.loc    1  151  is_stmt 1
        movl      32(%rsp), %eax                                #151.18[spill]
..LN173:
        addq      $144, %r15                                    #151.18
..LN174:
        incl      %eax                                          #151.18
..LN175:
        addq      $48, 40(%rsp)                                 #151.18[spill]
..LN176:
        movl      %eax, 32(%rsp)                                #151.18[spill]
..LN177:
        cmpl      $100000000, %eax                              #151.14
..LN178:
        jl        ..B1.18       # Prob 82%                      #151.14
..LN179:
                                # LOE rbx r12 r15
..B1.26:                        # Preds ..B1.25
                                # Execution count [9.00e-01]
..LN180:
	.loc    1  172  is_stmt 1
        xorl      %edx, %edx                                    #172.5
..LN181:
        xorl      %ecx, %ecx                                    #172.5
..LN182:
        xorl      %eax, %eax                                    #172.5
..LN183:
                                # LOE rax rdx rbx r12 ecx
..B1.27:                        # Preds ..B1.31 ..B1.26
                                # Execution count [5.00e+00]
..LN184:
	.loc    1  176  is_stmt 1
        movq      24(%rsp), %rsi                                #176.24[spill]
..LN185:
	.loc    1  174  is_stmt 1
        xorb      %r14b, %r14b                                  #174.9
..LN186:
	.loc    1  177  is_stmt 1
        movq      (%rsp), %r8                                   #177.8[spill]
..LN187:
	.loc    1  176  is_stmt 1
        lea       (%rbx,%rdx), %r13                             #176.8
..LN188:
	.loc    1  177  is_stmt 1
        movq      16(%rsp), %r9                                 #177.25[spill]
..LN189:
	.loc    1  176  is_stmt 1
        lea       (%rsi,%rdx), %r11                             #176.24
..LN190:
	.loc    1  174  is_stmt 1
        xorl      %esi, %esi                                    #174.9
..LN191:
	.loc    1  177  is_stmt 1
        lea       (%r8,%rdx), %r10                              #177.8
..LN192:
        lea       (%r9,%rdx), %r8                               #177.25
..LN193:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.28:                        # Preds ..B1.28 ..B1.27
                                # Execution count [1.50e+01]
..LN194:
	.loc    1  176  is_stmt 1
        vmovupd   (%rsi,%r11), %xmm0                            #176.24
..LN195:
        vmovupd   %xmm0, (%rsi,%r13)                            #176.8
..LN196:
	.loc    1  174  is_stmt 1
        incb      %r14b                                         #174.19
..LN197:
	.loc    1  177  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm1                             #177.25
..LN198:
        vmovupd   %xmm1, (%rsi,%r10)                            #177.8
..LN199:
	.loc    1  174  is_stmt 1
        addq      $16, %rsi                                     #174.19
..LN200:
        cmpb      $3, %r14b                                     #174.16
..LN201:
        jl        ..B1.28       # Prob 66%                      #174.16
..LN202:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.29:                        # Preds ..B1.28
                                # Execution count [5.00e+00]
..LN203:
	.loc    1  182  is_stmt 1
        movq      8(%rsp), %rsi                                 #182.23[spill]
..LN204:
	.loc    1  180  is_stmt 1
        xorb      %r10b, %r10b                                  #180.9
..LN205:
	.loc    1  182  is_stmt 1
        lea       (%r12,%rax), %r9                              #182.8
..LN206:
        lea       (%rsi,%rax), %r8                              #182.23
..LN207:
	.loc    1  180  is_stmt 1
        xorl      %esi, %esi                                    #180.9
..LN208:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [4.50e+01]
..LN209:
	.loc    1  182  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm0                             #182.23
..LN210:
	.loc    1  180  is_stmt 1
        incb      %r10b                                         #180.19
..LN211:
	.loc    1  182  is_stmt 1
        vmovupd   %xmm0, (%rsi,%r9)                             #182.8
..LN212:
	.loc    1  180  is_stmt 1
        addq      $16, %rsi                                     #180.19
..LN213:
        cmpb      $9, %r10b                                     #180.16
..LN214:
        jl        ..B1.30       # Prob 88%                      #180.16
..LN215:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.31:                        # Preds ..B1.30
                                # Execution count [5.00e+00]
..LN216:
	.loc    1  185  is_stmt 1
        lea       (%r12), %rsi                                  #185.5
..LN217:
        vmovupd   (%rsi), %ymm11                                #185.5
..LN218:
	.loc    1  172  is_stmt 1
        incl      %ecx                                          #172.16
..LN219:
	.loc    1  185  is_stmt 1
        vmovupd   (%rbx), %ymm2                                 #185.5
..LN220:
        vmovupd   48(%rsi), %ymm7                               #185.5
..LN221:
        vmovupd   96(%rsi), %ymm4                               #185.5
..LN222:
        vunpckhpd %ymm11, %ymm11, %ymm15                        #185.5
..LN223:
	.loc    1  172  is_stmt 1
        addq      $144, %rax                                    #172.16
..LN224:
	.loc    1  185  is_stmt 1
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #185.5
..LN225:
        vunpckhpd %ymm7, %ymm7, %ymm14                          #185.5
..LN226:
        vmulpd    %ymm8, %ymm15, %ymm0                          #185.5
..LN227:
        vmulpd    %ymm8, %ymm14, %ymm13                         #185.5
..LN228:
        vmovupd   16(%rsi), %ymm7                               #185.5
..LN229:
        vmovddup  (%rsi), %ymm10                                #185.5
..LN230:
        vmovddup  48(%rsi), %ymm9                               #185.5
..LN231:
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #185.5
..LN232:
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #185.5
..LN233:
        movq      (%rsp), %rsi                                  #185.5[spill]
..LN234:
        vunpckhpd %ymm4, %ymm4, %ymm6                           #185.5
..LN235:
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #185.5
..LN236:
        vmovupd   (%rsi), %ymm4                                 #185.5
..LN237:
        vmulpd    %ymm8, %ymm6, %ymm8                           #185.5
..LN238:
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #185.5
..LN239:
        vmovupd   16(%rbx), %ymm1                               #185.5
..LN240:
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #185.5
..LN241:
        vmulpd    %ymm3, %ymm15, %ymm15                         #185.5
..LN242:
        vmulpd    %ymm3, %ymm14, %ymm14                         #185.5
..LN243:
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #185.5
..LN244:
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #185.5
..LN245:
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #185.5
..LN246:
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #185.5
..LN247:
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #185.5
..LN248:
        vaddpd    %ymm11, %ymm12, %ymm13                        #185.5
..LN249:
        vblendpd  $12, 64(%r12), %ymm0, %ymm11                  #185.5
..LN250:
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #185.5
..LN251:
        vmovddup  %ymm11, %ymm0                                 #185.5
..LN252:
        vunpckhpd %ymm11, %ymm11, %ymm1                         #185.5
..LN253:
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #185.5
..LN254:
        vmulpd    %ymm11, %ymm1, %ymm11                         #185.5
..LN255:
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #185.5
..LN256:
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #185.5
..LN257:
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #185.5
..LN258:
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #185.5
..LN259:
        vmovupd   16(%rsi), %ymm10                              #185.5
..LN260:
        vaddpd    %ymm13, %ymm11, %ymm11                        #185.5
..LN261:
        vaddpd    %ymm9, %ymm12, %ymm9                          #185.5
..LN262:
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #185.5
..LN263:
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #185.5
..LN264:
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #185.5
..LN265:
        vmulpd    %ymm14, %ymm1, %ymm1                          #185.5
..LN266:
        vmovddup  96(%r12), %ymm5                               #185.5
..LN267:
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #185.5
..LN268:
        vmulpd    %ymm3, %ymm6, %ymm2                           #185.5
..LN269:
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #185.5
..LN270:
        vmovupd   112(%r12), %ymm1                              #185.5
..LN271:
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #185.5
..LN272:
        vaddpd    %ymm9, %ymm0, %ymm9                           #185.5
..LN273:
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #185.5
..LN274:
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #185.5
..LN275:
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #185.5
..LN276:
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #185.5
..LN277:
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #185.5
..LN278:
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #185.5
..LN279:
        vunpckhpd %ymm2, %ymm2, %ymm3                           #185.5
..LN280:
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #185.5
..LN281:
        vmulpd    %ymm7, %ymm3, %ymm4                           #185.5
..LN282:
        vaddpd    %ymm5, %ymm6, %ymm5                           #185.5
..LN283:
        vmovddup  %ymm2, %ymm6                                  #185.5
..LN284:
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #185.5
..LN285:
        vaddpd    %ymm5, %ymm6, %ymm8                           #185.5
..LN286:
        movq      56(%rsp), %r8                                 #185.5[spill]
..LN287:
        movq      48(%rsp), %r9                                 #185.5[spill]
..LN288:
        vmovupd   %ymm11, (%rdx,%r8)                            #185.5
..LN289:
        vmovupd   %xmm8, 32(%rdx,%r8)                           #185.5
..LN290:
        vmovupd   %ymm9, (%rdx,%r9)                             #185.5
..LN291:
        vextractf128 $1, %ymm8, 32(%rdx,%r9)                    #185.5
..LN292:
	.loc    1  172  is_stmt 1
        addq      $48, %rdx                                     #172.16
..LN293:
        cmpl      $100000000, %ecx                              #172.12
..LN294:
        jl        ..B1.27       # Prob 82%                      #172.12
..LN295:
                                # LOE rax rdx rbx r12 ecx
..B1.32:                        # Preds ..B1.31
                                # Execution count [1.00e+00]
..LN296:
	.loc    1  190  is_stmt 1
        xorl      %esi, %esi                                    #190.3
..LN297:
        lea       80(%rsp), %rdi                                #190.3
..LN298:
        vzeroupper                                              #190.3
..___tag_value_main.77:
..LN299:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #190.3
..___tag_value_main.78:
..LN300:
                                # LOE rbx r12
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.00e+00]
..___tag_value_main.79:
..LN301:
	.loc    1  192  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #192.9
..___tag_value_main.80:
..LN302:
                                # LOE rbx r12 xmm0
..B1.124:                       # Preds ..B1.33
                                # Execution count [1.00e+00]
..LN303:
        vmovsd    %xmm0, 120(%rsp)                              #192.9[spill]
..LN304:
                                # LOE rbx r12
..B1.34:                        # Preds ..B1.124
                                # Execution count [1.00e+00]
..___tag_value_main.81:
..LN305:
	.loc    1  194  is_stmt 1
#       clock(void)
        call      clock                                         #194.6
..___tag_value_main.82:
..LN306:
                                # LOE rax rbx r12
..B1.125:                       # Preds ..B1.34
                                # Execution count [1.00e+00]
..LN307:
        movq      %rax, 112(%rsp)                               #194.6[spill]
..LN308:
                                # LOE rbx r12
..B1.35:                        # Preds ..B1.125
                                # Execution count [9.00e-01]
..LN309:
	.loc    1  196  is_stmt 1
        xorl      %edx, %edx                                    #196.5
..LN310:
        xorl      %ecx, %ecx                                    #196.5
..LN311:
        xorl      %eax, %eax                                    #196.5
..LN312:
                                # LOE rax rdx rbx r12 ecx
..B1.36:                        # Preds ..B1.40 ..B1.35
                                # Execution count [5.00e+00]
..LN313:
	.loc    1  200  is_stmt 1
        movq      24(%rsp), %rsi                                #200.24[spill]
..LN314:
	.loc    1  198  is_stmt 1
        xorb      %r14b, %r14b                                  #198.9
..LN315:
	.loc    1  201  is_stmt 1
        movq      (%rsp), %r8                                   #201.8[spill]
..LN316:
	.loc    1  200  is_stmt 1
        lea       (%rbx,%rdx), %r13                             #200.8
..LN317:
	.loc    1  201  is_stmt 1
        movq      16(%rsp), %r9                                 #201.25[spill]
..LN318:
	.loc    1  200  is_stmt 1
        lea       (%rsi,%rdx), %r11                             #200.24
..LN319:
	.loc    1  198  is_stmt 1
        xorl      %esi, %esi                                    #198.9
..LN320:
	.loc    1  201  is_stmt 1
        lea       (%r8,%rdx), %r10                              #201.8
..LN321:
        lea       (%r9,%rdx), %r8                               #201.25
..LN322:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.37:                        # Preds ..B1.37 ..B1.36
                                # Execution count [1.50e+01]
..LN323:
	.loc    1  200  is_stmt 1
        vmovupd   (%rsi,%r11), %xmm0                            #200.24
..LN324:
        vmovupd   %xmm0, (%rsi,%r13)                            #200.8
..LN325:
	.loc    1  198  is_stmt 1
        incb      %r14b                                         #198.19
..LN326:
	.loc    1  201  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm1                             #201.25
..LN327:
        vmovupd   %xmm1, (%rsi,%r10)                            #201.8
..LN328:
	.loc    1  198  is_stmt 1
        addq      $16, %rsi                                     #198.19
..LN329:
        cmpb      $3, %r14b                                     #198.16
..LN330:
        jl        ..B1.37       # Prob 66%                      #198.16
..LN331:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.38:                        # Preds ..B1.37
                                # Execution count [5.00e+00]
..LN332:
	.loc    1  206  is_stmt 1
        movq      8(%rsp), %rsi                                 #206.23[spill]
..LN333:
	.loc    1  204  is_stmt 1
        xorb      %r10b, %r10b                                  #204.9
..LN334:
	.loc    1  206  is_stmt 1
        lea       (%r12,%rax), %r9                              #206.8
..LN335:
        lea       (%rsi,%rax), %r8                              #206.23
..LN336:
	.loc    1  204  is_stmt 1
        xorl      %esi, %esi                                    #204.9
..LN337:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.39:                        # Preds ..B1.39 ..B1.38
                                # Execution count [4.50e+01]
..LN338:
	.loc    1  206  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm0                             #206.23
..LN339:
	.loc    1  204  is_stmt 1
        incb      %r10b                                         #204.19
..LN340:
	.loc    1  206  is_stmt 1
        vmovupd   %xmm0, (%rsi,%r9)                             #206.8
..LN341:
	.loc    1  204  is_stmt 1
        addq      $16, %rsi                                     #204.19
..LN342:
        cmpb      $9, %r10b                                     #204.16
..LN343:
        jl        ..B1.39       # Prob 88%                      #204.16
..LN344:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.40:                        # Preds ..B1.39
                                # Execution count [5.00e+00]
..LN345:
	.loc    1  209  is_stmt 1
# # LLVM-MCA-BEGIN double_MVM_macro
..LN346:
	.loc    1  196  is_stmt 1
        incl      %ecx                                          #196.16
..LN347:
	.loc    1  210  is_stmt 1
        lea       (%r12), %rsi                                  #210.9
..LN348:
        vmovupd   (%rsi), %ymm11                                #210.9
..LN349:
	.loc    1  196  is_stmt 1
        addq      $144, %rax                                    #196.16
..LN350:
	.loc    1  210  is_stmt 1
        vmovupd   (%rbx), %ymm2                                 #210.9
..LN351:
        vmovupd   48(%rsi), %ymm7                               #210.9
..LN352:
        vmovupd   96(%rsi), %ymm4                               #210.9
..LN353:
        vunpckhpd %ymm11, %ymm11, %ymm15                        #210.9
..LN354:
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #210.9
..LN355:
        vunpckhpd %ymm7, %ymm7, %ymm14                          #210.9
..LN356:
        vmulpd    %ymm8, %ymm15, %ymm0                          #210.9
..LN357:
        vmulpd    %ymm8, %ymm14, %ymm13                         #210.9
..LN358:
        vmovupd   16(%rsi), %ymm7                               #210.9
..LN359:
        vmovddup  (%rsi), %ymm10                                #210.9
..LN360:
        vmovddup  48(%rsi), %ymm9                               #210.9
..LN361:
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #210.9
..LN362:
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #210.9
..LN363:
        movq      (%rsp), %rsi                                  #210.9[spill]
..LN364:
        vunpckhpd %ymm4, %ymm4, %ymm6                           #210.9
..LN365:
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #210.9
..LN366:
        vmovupd   (%rsi), %ymm4                                 #210.9
..LN367:
        vmulpd    %ymm8, %ymm6, %ymm8                           #210.9
..LN368:
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #210.9
..LN369:
        vmovupd   16(%rbx), %ymm1                               #210.9
..LN370:
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #210.9
..LN371:
        vmulpd    %ymm3, %ymm15, %ymm15                         #210.9
..LN372:
        vmulpd    %ymm3, %ymm14, %ymm14                         #210.9
..LN373:
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #210.9
..LN374:
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #210.9
..LN375:
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #210.9
..LN376:
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #210.9
..LN377:
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #210.9
..LN378:
        vaddpd    %ymm11, %ymm12, %ymm13                        #210.9
..LN379:
        vblendpd  $12, 64(%r12), %ymm0, %ymm11                  #210.9
..LN380:
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #210.9
..LN381:
        vmovddup  %ymm11, %ymm0                                 #210.9
..LN382:
        vunpckhpd %ymm11, %ymm11, %ymm1                         #210.9
..LN383:
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #210.9
..LN384:
        vmulpd    %ymm11, %ymm1, %ymm11                         #210.9
..LN385:
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #210.9
..LN386:
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #210.9
..LN387:
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #210.9
..LN388:
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #210.9
..LN389:
        vmovupd   16(%rsi), %ymm10                              #210.9
..LN390:
        vaddpd    %ymm13, %ymm11, %ymm11                        #210.9
..LN391:
        vaddpd    %ymm9, %ymm12, %ymm9                          #210.9
..LN392:
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #210.9
..LN393:
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #210.9
..LN394:
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #210.9
..LN395:
        vmulpd    %ymm14, %ymm1, %ymm1                          #210.9
..LN396:
        vmovddup  96(%r12), %ymm5                               #210.9
..LN397:
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #210.9
..LN398:
        vmulpd    %ymm3, %ymm6, %ymm2                           #210.9
..LN399:
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #210.9
..LN400:
        vmovupd   112(%r12), %ymm1                              #210.9
..LN401:
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #210.9
..LN402:
        vaddpd    %ymm9, %ymm0, %ymm9                           #210.9
..LN403:
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #210.9
..LN404:
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #210.9
..LN405:
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #210.9
..LN406:
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #210.9
..LN407:
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #210.9
..LN408:
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #210.9
..LN409:
        vunpckhpd %ymm2, %ymm2, %ymm3                           #210.9
..LN410:
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #210.9
..LN411:
        vmulpd    %ymm7, %ymm3, %ymm4                           #210.9
..LN412:
        vaddpd    %ymm5, %ymm6, %ymm5                           #210.9
..LN413:
        vmovddup  %ymm2, %ymm6                                  #210.9
..LN414:
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #210.9
..LN415:
        vaddpd    %ymm5, %ymm6, %ymm8                           #210.9
..LN416:
        movq      56(%rsp), %r8                                 #210.9[spill]
..LN417:
        movq      48(%rsp), %r9                                 #210.9[spill]
..LN418:
        vmovupd   %ymm11, (%rdx,%r8)                            #210.9
..LN419:
        vmovupd   %xmm8, 32(%rdx,%r8)                           #210.9
..LN420:
        vmovupd   %ymm9, (%rdx,%r9)                             #210.9
..LN421:
        vextractf128 $1, %ymm8, 32(%rdx,%r9)                    #210.9
..LN422:
	.loc    1  211  is_stmt 1
# # LLVM-MCA-END
..LN423:
	.loc    1  196  is_stmt 1
        addq      $48, %rdx                                     #196.16
..LN424:
        cmpl      $100000000, %ecx                              #196.12
..LN425:
        jl        ..B1.36       # Prob 82%                      #196.12
..LN426:
                                # LOE rax rdx rbx r12 ecx
..B1.41:                        # Preds ..B1.40
                                # Execution count [1.00e+00]
..LN427:
	.loc    1  215  is_stmt 1
        vzeroupper                                              #215.4
..___tag_value_main.92:
..LN428:
#       clock(void)
        call      clock                                         #215.4
..___tag_value_main.93:
..LN429:
                                # LOE rax rbx r12
..B1.126:                       # Preds ..B1.41
                                # Execution count [1.00e+00]
..LN430:
        movq      %rax, %r13                                    #215.4
..LN431:
                                # LOE rbx r12 r13
..B1.42:                        # Preds ..B1.126
                                # Execution count [1.00e+00]
..___tag_value_main.94:
..LN432:
	.loc    1  217  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #217.9
..___tag_value_main.95:
..LN433:
                                # LOE rbx r12 r13 xmm0
..B1.127:                       # Preds ..B1.42
                                # Execution count [1.00e+00]
..LN434:
        vmovsd    %xmm0, 128(%rsp)                              #217.9[spill]
..LN435:
                                # LOE rbx r12 r13
..B1.43:                        # Preds ..B1.127
                                # Execution count [1.00e+00]
..LN436:
	.loc    1  219  is_stmt 1
        xorl      %esi, %esi                                    #219.3
..LN437:
        lea       96(%rsp), %rdi                                #219.3
..___tag_value_main.97:
..LN438:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #219.3
..___tag_value_main.98:
..LN439:
                                # LOE rbx r12 r13
..B1.44:                        # Preds ..B1.43
                                # Execution count [1.00e+00]
..LN440:
	.loc    1  220  is_stmt 1
        lea       32(%rsp), %rdi                                #220.3
..LN441:
        lea       64(%rdi), %rsi                                #220.3
..LN442:
        lea       -16(%rsi), %rdx                               #220.3
..___tag_value_main.99:
..LN443:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #220.3
..___tag_value_main.100:
..LN444:
                                # LOE rbx r12 r13
..B1.45:                        # Preds ..B1.44
                                # Execution count [1.00e+00]
..LN445:
	.loc    1  222  is_stmt 1
        subq      112(%rsp), %r13                               #222.5[spill]
..LN446:
        vxorpd    %xmm0, %xmm0, %xmm0                           #222.5
..LN447:
        vcvtsi2sdq %r13, %xmm0, %xmm0                           #222.5
..LN448:
        movl      $.L_2__STRING.1, %edi                         #222.5
..LN449:
        xorl      %esi, %esi                                    #222.5
..LN450:
        movl      $.L_2__STRING.2, %edx                         #222.5
..LN451:
        xorl      %eax, %eax                                    #222.5
..LN452:
        incl      %eax                                          #222.5
..LN453:
        vdivsd    .L_2il0floatpacket.0(%rip), %xmm0, %xmm0      #222.5
..___tag_value_main.102:
..LN454:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #222.5
..___tag_value_main.103:
..LN455:
                                # LOE rbx r12
..B1.46:                        # Preds ..B1.45
                                # Execution count [1.00e+00]
..LN456:
	.loc    1  224  is_stmt 1
        vmovsd    128(%rsp), %xmm0                              #224.5[spill]
..LN457:
        movl      $.L_2__STRING.1, %edi                         #224.5
..LN458:
        xorl      %esi, %esi                                    #224.5
..LN459:
        movl      $.L_2__STRING.3, %edx                         #224.5
..LN460:
        xorl      %eax, %eax                                    #224.5
..LN461:
        incl      %eax                                          #224.5
..LN462:
        vsubsd    120(%rsp), %xmm0, %xmm0                       #224.5[spill]
..___tag_value_main.105:
..LN463:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #224.5
..___tag_value_main.106:
..LN464:
                                # LOE rbx r12
..B1.47:                        # Preds ..B1.46
                                # Execution count [1.00e+00]
..LN465:
	.loc    1  226  is_stmt 1
        vxorpd    %xmm0, %xmm0, %xmm0                           #226.5
..LN466:
        vxorpd    %xmm1, %xmm1, %xmm1                           #226.5
..LN467:
        vcvtsi2sdq 40(%rsp), %xmm0, %xmm0                       #226.5
..LN468:
        vcvtsi2sdq 32(%rsp), %xmm1, %xmm1                       #226.5
..LN469:
        movl      $.L_2__STRING.1, %edi                         #226.5
..LN470:
        xorl      %esi, %esi                                    #226.5
..LN471:
        movl      $.L_2__STRING.4, %edx                         #226.5
..LN472:
        xorl      %eax, %eax                                    #226.5
..LN473:
        incl      %eax                                          #226.5
..LN474:
        vfmadd132sd .L_2il0floatpacket.1(%rip), %xmm1, %xmm0    #226.5
..___tag_value_main.108:
..LN475:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #226.5
..___tag_value_main.109:
..LN476:
                                # LOE rbx r12
..B1.48:                        # Preds ..B1.47
                                # Execution count [9.00e-01]
..LN477:
	.loc    1  236  is_stmt 1
        xorl      %edx, %edx                                    #236.7
..LN478:
        xorl      %ecx, %ecx                                    #236.7
..LN479:
        xorl      %eax, %eax                                    #236.7
..LN480:
                                # LOE rax rdx rbx r12 ecx
..B1.49:                        # Preds ..B1.53 ..B1.48
                                # Execution count [5.00e+00]
..LN481:
	.loc    1  241  is_stmt 1
        movq      24(%rsp), %rsi                                #241.24[spill]
..LN482:
	.loc    1  239  is_stmt 1
        xorb      %r14b, %r14b                                  #239.9
..LN483:
	.loc    1  242  is_stmt 1
        movq      (%rsp), %r8                                   #242.8[spill]
..LN484:
	.loc    1  241  is_stmt 1
        lea       (%rbx,%rdx), %r13                             #241.8
..LN485:
	.loc    1  242  is_stmt 1
        movq      16(%rsp), %r9                                 #242.25[spill]
..LN486:
	.loc    1  241  is_stmt 1
        lea       (%rsi,%rdx), %r11                             #241.24
..LN487:
	.loc    1  239  is_stmt 1
        xorl      %esi, %esi                                    #239.9
..LN488:
	.loc    1  242  is_stmt 1
        lea       (%r8,%rdx), %r10                              #242.8
..LN489:
        lea       (%r9,%rdx), %r8                               #242.25
..LN490:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.50:                        # Preds ..B1.50 ..B1.49
                                # Execution count [1.50e+01]
..LN491:
	.loc    1  241  is_stmt 1
        vmovupd   (%rsi,%r11), %xmm0                            #241.24
..LN492:
        vmovupd   %xmm0, (%rsi,%r13)                            #241.8
..LN493:
	.loc    1  239  is_stmt 1
        incb      %r14b                                         #239.19
..LN494:
	.loc    1  242  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm1                             #242.25
..LN495:
        vmovupd   %xmm1, (%rsi,%r10)                            #242.8
..LN496:
	.loc    1  239  is_stmt 1
        addq      $16, %rsi                                     #239.19
..LN497:
        cmpb      $3, %r14b                                     #239.16
..LN498:
        jl        ..B1.50       # Prob 66%                      #239.16
..LN499:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.51:                        # Preds ..B1.50
                                # Execution count [5.00e+00]
..LN500:
	.loc    1  247  is_stmt 1
        movq      8(%rsp), %rsi                                 #247.23[spill]
..LN501:
	.loc    1  245  is_stmt 1
        xorb      %r10b, %r10b                                  #245.9
..LN502:
	.loc    1  247  is_stmt 1
        lea       (%r12,%rax), %r9                              #247.8
..LN503:
        lea       (%rsi,%rax), %r8                              #247.23
..LN504:
	.loc    1  245  is_stmt 1
        xorl      %esi, %esi                                    #245.9
..LN505:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.52:                        # Preds ..B1.52 ..B1.51
                                # Execution count [4.50e+01]
..LN506:
	.loc    1  247  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm0                             #247.23
..LN507:
	.loc    1  245  is_stmt 1
        incb      %r10b                                         #245.19
..LN508:
	.loc    1  247  is_stmt 1
        vmovupd   %xmm0, (%rsi,%r9)                             #247.8
..LN509:
	.loc    1  245  is_stmt 1
        addq      $16, %rsi                                     #245.19
..LN510:
        cmpb      $9, %r10b                                     #245.16
..LN511:
        jl        ..B1.52       # Prob 88%                      #245.16
..LN512:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.53:                        # Preds ..B1.52
                                # Execution count [5.00e+00]
..LN513:
	.loc    1  250  is_stmt 1
        lea       (%r12), %r10                                  #250.3
..LN514:
        vmovupd   (%r10), %xmm11                                #250.3
..LN515:
        vmovupd   (%rbx), %xmm9                                 #250.3
..LN516:
        vmovupd   16(%r10), %xmm2                               #250.3
..LN517:
        vunpckhpd %xmm9, %xmm9, %xmm8                           #250.3
..LN518:
	.loc    1  236  is_stmt 1
        incl      %ecx                                          #236.18
..LN519:
	.loc    1  250  is_stmt 1
        vshufpd   $1, %xmm11, %xmm11, %xmm0                     #250.3
..LN520:
	.loc    1  236  is_stmt 1
        addq      $144, %rax                                    #236.18
..LN521:
	.loc    1  250  is_stmt 1
        vmulpd    %xmm0, %xmm8, %xmm7                           #250.3
..LN522:
        vmovddup  (%rbx), %xmm3                                 #250.3
..LN523:
        vfmaddsub213pd %xmm7, %xmm11, %xmm3                     #250.3
..LN524:
        vshufpd   $1, %xmm2, %xmm2, %xmm1                       #250.3
..LN525:
        movq      72(%rsp), %rsi                                #250.3[spill]
..LN526:
	.loc    1  251  is_stmt 1
        movq      (%rsp), %r8                                   #251.3[spill]
..LN527:
        movq      64(%rsp), %r9                                 #251.3[spill]
..LN528:
	.loc    1  250  is_stmt 1
        lea       (%rdx,%rsi), %rdi                             #250.3
..LN529:
        vmovupd   %xmm3, (%rdi)                                 #250.3
..LN530:
        vmovupd   16(%rbx), %xmm5                               #250.3
..LN531:
        vunpckhpd %xmm5, %xmm5, %xmm6                           #250.3
..LN532:
        vmulpd    %xmm1, %xmm6, %xmm4                           #250.3
..LN533:
        vmovddup  16(%rbx), %xmm14                              #250.3
..LN534:
        vfmaddsub213pd %xmm4, %xmm2, %xmm14                     #250.3
..LN535:
        vmovupd   32(%r10), %xmm4                               #250.3
..LN536:
        vaddpd    %xmm14, %xmm3, %xmm7                          #250.3
..LN537:
        vmovupd   %xmm7, (%rdi)                                 #250.3
..LN538:
        vshufpd   $1, %xmm4, %xmm4, %xmm3                       #250.3
..LN539:
        vmovupd   32(%rbx), %xmm10                              #250.3
..LN540:
        vunpckhpd %xmm10, %xmm10, %xmm9                         #250.3
..LN541:
        vmulpd    %xmm3, %xmm9, %xmm8                           #250.3
..LN542:
        vmovddup  32(%rbx), %xmm5                               #250.3
..LN543:
        vfmaddsub213pd %xmm8, %xmm4, %xmm5                      #250.3
..LN544:
        vmovupd   64(%r10), %xmm8                               #250.3
..LN545:
        vaddpd    %xmm5, %xmm7, %xmm6                           #250.3
..LN546:
        vmovupd   48(%r10), %xmm5                               #250.3
..LN547:
        vmovupd   %xmm6, (%rdi)                                 #250.3
..LN548:
        vshufpd   $1, %xmm5, %xmm5, %xmm6                       #250.3
..LN549:
        vmovupd   (%rbx), %xmm12                                #250.3
..LN550:
        vunpckhpd %xmm12, %xmm12, %xmm13                        #250.3
..LN551:
        vmulpd    %xmm6, %xmm13, %xmm15                         #250.3
..LN552:
        vmovddup  (%rbx), %xmm10                                #250.3
..LN553:
        vfmaddsub213pd %xmm15, %xmm5, %xmm10                    #250.3
..LN554:
        vshufpd   $1, %xmm8, %xmm8, %xmm7                       #250.3
..LN555:
        vmovupd   %xmm10, 16(%rdi)                              #250.3
..LN556:
        vmovupd   16(%rbx), %xmm14                              #250.3
..LN557:
        vunpckhpd %xmm14, %xmm14, %xmm9                         #250.3
..LN558:
        vmulpd    %xmm7, %xmm9, %xmm12                          #250.3
..LN559:
        vmovddup  16(%rbx), %xmm13                              #250.3
..LN560:
        vfmaddsub213pd %xmm12, %xmm8, %xmm13                    #250.3
..LN561:
        vaddpd    %xmm13, %xmm10, %xmm15                        #250.3
..LN562:
        vmovupd   80(%r10), %xmm10                              #250.3
..LN563:
        vmovupd   %xmm15, 16(%rdi)                              #250.3
..LN564:
        vshufpd   $1, %xmm10, %xmm10, %xmm9                     #250.3
..LN565:
        vmovupd   32(%rbx), %xmm14                              #250.3
..LN566:
        vunpckhpd %xmm14, %xmm14, %xmm12                        #250.3
..LN567:
        vmulpd    %xmm9, %xmm12, %xmm14                         #250.3
..LN568:
        vmovddup  32(%rbx), %xmm13                              #250.3
..LN569:
        vfmaddsub213pd %xmm14, %xmm10, %xmm13                   #250.3
..LN570:
        vmovupd   96(%r10), %xmm14                              #250.3
..LN571:
        vaddpd    %xmm13, %xmm15, %xmm15                        #250.3
..LN572:
        vmovupd   %xmm15, 16(%rdi)                              #250.3
..LN573:
        vmovupd   (%rbx), %xmm13                                #250.3
..LN574:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #250.3
..LN575:
        vshufpd   $1, %xmm14, %xmm14, %xmm13                    #250.3
..LN576:
        vmulpd    %xmm13, %xmm15, %xmm15                        #250.3
..LN577:
        vmovddup  (%rbx), %xmm12                                #250.3
..LN578:
        vfmaddsub213pd %xmm15, %xmm14, %xmm12                   #250.3
..LN579:
        vmovupd   112(%r10), %xmm15                             #250.3
..LN580:
        vmovupd   %xmm13, 112(%rsp)                             #250.3[spill]
..LN581:
        vmovupd   %xmm12, 32(%rdi)                              #250.3
..LN582:
        vshufpd   $1, %xmm15, %xmm15, %xmm13                    #250.3
..LN583:
        vmovupd   16(%rbx), %xmm14                              #250.3
..LN584:
        vunpckhpd %xmm14, %xmm14, %xmm14                        #250.3
..LN585:
        vmulpd    %xmm13, %xmm14, %xmm14                        #250.3
..LN586:
        lea       128(%rsp), %r11                               #250.3
..LN587:
        vmovupd   %xmm13, (%r11)                                #250.3[spill]
..LN588:
        vmovddup  16(%rbx), %xmm13                              #250.3
..LN589:
        vfmaddsub213pd %xmm14, %xmm15, %xmm13                   #250.3
..LN590:
        vmovupd   128(%r10), %xmm14                             #250.3
..LN591:
        vshufpd   $1, %xmm14, %xmm14, %xmm15                    #250.3
..LN592:
        vaddpd    %xmm13, %xmm12, %xmm13                        #250.3
..LN593:
        vmovupd   %xmm13, 32(%rdi)                              #250.3
..LN594:
        lea       288(%rsp), %r14                               #250.3
..LN595:
        vmovupd   %xmm15, (%r14)                                #250.3[spill]
..LN596:
        vmovupd   32(%rbx), %xmm12                              #250.3
..LN597:
        vunpckhpd %xmm12, %xmm12, %xmm12                        #250.3
..LN598:
        vmulpd    %xmm15, %xmm12, %xmm12                        #250.3
..LN599:
        vmovddup  32(%rbx), %xmm15                              #250.3
..LN600:
        vfmaddsub213pd %xmm12, %xmm14, %xmm15                   #250.3
..LN601:
        vaddpd    %xmm15, %xmm13, %xmm13                        #250.3
..LN602:
        vmovupd   %xmm13, 32(%rdi)                              #250.3
..LN603:
	.loc    1  251  is_stmt 1
        vmovupd   (%r8), %xmm13                                 #251.3
..LN604:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #251.3
..LN605:
        vmulpd    %xmm0, %xmm15, %xmm0                          #251.3
..LN606:
        vmovddup  (%r8), %xmm12                                 #251.3
..LN607:
        vfmaddsub213pd %xmm0, %xmm11, %xmm12                    #251.3
..LN608:
        lea       (%rdx,%r9), %rsi                              #251.3
..LN609:
        vmovupd   %xmm12, (%rsi)                                #251.3
..LN610:
        vmovupd   16(%r8), %xmm11                               #251.3
..LN611:
        vunpckhpd %xmm11, %xmm11, %xmm11                        #251.3
..LN612:
        vmulpd    %xmm1, %xmm11, %xmm1                          #251.3
..LN613:
        vmovddup  16(%r8), %xmm0                                #251.3
..LN614:
        vfmaddsub213pd %xmm1, %xmm2, %xmm0                      #251.3
..LN615:
        vaddpd    %xmm0, %xmm12, %xmm0                          #251.3
..LN616:
        vmovupd   %xmm0, (%rsi)                                 #251.3
..LN617:
        vmovupd   32(%r8), %xmm2                                #251.3
..LN618:
        vunpckhpd %xmm2, %xmm2, %xmm2                           #251.3
..LN619:
        vmulpd    %xmm3, %xmm2, %xmm3                           #251.3
..LN620:
        vmovddup  32(%r8), %xmm1                                #251.3
..LN621:
        vfmaddsub213pd %xmm3, %xmm4, %xmm1                      #251.3
..LN622:
        vaddpd    %xmm1, %xmm0, %xmm4                           #251.3
..LN623:
        vmovupd   %xmm4, (%rsi)                                 #251.3
..LN624:
        vmovupd   (%r8), %xmm11                                 #251.3
..LN625:
        vunpckhpd %xmm11, %xmm11, %xmm12                        #251.3
..LN626:
        vmulpd    %xmm6, %xmm12, %xmm6                          #251.3
..LN627:
        vmovddup  (%r8), %xmm15                                 #251.3
..LN628:
        vfmaddsub213pd %xmm6, %xmm5, %xmm15                     #251.3
..LN629:
        vmovupd   %xmm15, 16(%rsi)                              #251.3
..LN630:
        vmovupd   16(%r8), %xmm5                                #251.3
..LN631:
        vunpckhpd %xmm5, %xmm5, %xmm13                          #251.3
..LN632:
        vmulpd    %xmm7, %xmm13, %xmm7                          #251.3
..LN633:
        vmovddup  16(%r8), %xmm0                                #251.3
..LN634:
        vfmaddsub213pd %xmm7, %xmm8, %xmm0                      #251.3
..LN635:
        vaddpd    %xmm0, %xmm15, %xmm0                          #251.3
..LN636:
        vmovupd   %xmm0, 16(%rsi)                               #251.3
..LN637:
        vmovupd   32(%r8), %xmm8                                #251.3
..LN638:
        vunpckhpd %xmm8, %xmm8, %xmm8                           #251.3
..LN639:
        vmulpd    %xmm9, %xmm8, %xmm9                           #251.3
..LN640:
        vmovddup  32(%r8), %xmm1                                #251.3
..LN641:
        vfmaddsub213pd %xmm9, %xmm10, %xmm1                     #251.3
..LN642:
        vaddpd    %xmm1, %xmm0, %xmm10                          #251.3
..LN643:
        vmovupd   %xmm10, 16(%rsi)                              #251.3
..LN644:
        vmovupd   (%r8), %xmm0                                  #251.3
..LN645:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #251.3
..LN646:
        vmulpd    112(%rsp), %xmm1, %xmm2                       #251.3[spill]
..LN647:
        vmovddup  (%r8), %xmm6                                  #251.3
..LN648:
        vfmaddsub132pd 96(%r10), %xmm2, %xmm6                   #251.3
..LN649:
        vmovupd   %xmm6, 32(%rsi)                               #251.3
..LN650:
        vmovupd   16(%r8), %xmm3                                #251.3
..LN651:
        vunpckhpd %xmm3, %xmm3, %xmm4                           #251.3
..LN652:
        vmulpd    (%r11), %xmm4, %xmm5                          #251.3[spill]
..LN653:
        vmovddup  16(%r8), %xmm7                                #251.3
..LN654:
        vfmaddsub132pd 112(%r10), %xmm5, %xmm7                  #251.3
..LN655:
        vaddpd    %xmm7, %xmm6, %xmm11                          #251.3
..LN656:
        vmovupd   %xmm11, 32(%rsi)                              #251.3
..LN657:
        vmovupd   32(%r8), %xmm8                                #251.3
..LN658:
        vunpckhpd %xmm8, %xmm8, %xmm9                           #251.3
..LN659:
        vmulpd    (%r14), %xmm9, %xmm10                         #251.3[spill]
..LN660:
        vmovddup  32(%r8), %xmm12                               #251.3
..LN661:
        vfmaddsub213pd %xmm10, %xmm14, %xmm12                   #251.3
..LN662:
        vaddpd    %xmm12, %xmm11, %xmm14                        #251.3
..LN663:
        vmovupd   %xmm14, 32(%rsi)                              #251.3
..LN664:
	.loc    1  236  is_stmt 1
        addq      $48, %rdx                                     #236.18
..LN665:
        cmpl      $100000000, %ecx                              #236.14
..LN666:
        jl        ..B1.49       # Prob 82%                      #236.14
..LN667:
                                # LOE rax rdx rbx r12 ecx
..B1.54:                        # Preds ..B1.53
                                # Execution count [1.00e+00]
..LN668:
	.loc    1  256  is_stmt 1
        xorl      %esi, %esi                                    #256.3
..LN669:
        lea       80(%rsp), %rdi                                #256.3
..___tag_value_main.123:
..LN670:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #256.3
..___tag_value_main.124:
..LN671:
                                # LOE rbx r12
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.00e+00]
..___tag_value_main.125:
..LN672:
	.loc    1  258  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #258.9
..___tag_value_main.126:
..LN673:
                                # LOE rbx r12 xmm0
..B1.128:                       # Preds ..B1.55
                                # Execution count [1.00e+00]
..LN674:
        vmovsd    %xmm0, 144(%rsp)                              #258.9[spill]
..LN675:
                                # LOE rbx r12
..B1.56:                        # Preds ..B1.128
                                # Execution count [1.00e+00]
..___tag_value_main.127:
..LN676:
	.loc    1  260  is_stmt 1
#       clock(void)
        call      clock                                         #260.6
..___tag_value_main.128:
..LN677:
                                # LOE rax rbx r12
..B1.129:                       # Preds ..B1.56
                                # Execution count [1.00e+00]
..LN678:
        movq      %rax, 280(%rsp)                               #260.6[spill]
..LN679:
                                # LOE rbx r12
..B1.57:                        # Preds ..B1.129
                                # Execution count [9.00e-01]
..LN680:
	.loc    1  261  is_stmt 1
        xorl      %edx, %edx                                    #261.6
..LN681:
        xorl      %ecx, %ecx                                    #261.6
..LN682:
        xorl      %eax, %eax                                    #261.6
..LN683:
                                # LOE rax rdx rbx r12 ecx
..B1.58:                        # Preds ..B1.62 ..B1.57
                                # Execution count [5.00e+00]
..LN684:
	.loc    1  265  is_stmt 1
        movq      24(%rsp), %rsi                                #265.24[spill]
..LN685:
	.loc    1  263  is_stmt 1
        xorb      %r14b, %r14b                                  #263.9
..LN686:
	.loc    1  266  is_stmt 1
        movq      (%rsp), %r8                                   #266.8[spill]
..LN687:
	.loc    1  265  is_stmt 1
        lea       (%rbx,%rdx), %r13                             #265.8
..LN688:
	.loc    1  266  is_stmt 1
        movq      16(%rsp), %r9                                 #266.25[spill]
..LN689:
	.loc    1  265  is_stmt 1
        lea       (%rsi,%rdx), %r11                             #265.24
..LN690:
	.loc    1  263  is_stmt 1
        xorl      %esi, %esi                                    #263.9
..LN691:
	.loc    1  266  is_stmt 1
        lea       (%r8,%rdx), %r10                              #266.8
..LN692:
        lea       (%r9,%rdx), %r8                               #266.25
..LN693:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.59:                        # Preds ..B1.59 ..B1.58
                                # Execution count [1.50e+01]
..LN694:
	.loc    1  265  is_stmt 1
        vmovupd   (%rsi,%r11), %xmm0                            #265.24
..LN695:
        vmovupd   %xmm0, (%rsi,%r13)                            #265.8
..LN696:
	.loc    1  263  is_stmt 1
        incb      %r14b                                         #263.19
..LN697:
	.loc    1  266  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm1                             #266.25
..LN698:
        vmovupd   %xmm1, (%rsi,%r10)                            #266.8
..LN699:
	.loc    1  263  is_stmt 1
        addq      $16, %rsi                                     #263.19
..LN700:
        cmpb      $3, %r14b                                     #263.16
..LN701:
        jl        ..B1.59       # Prob 66%                      #263.16
..LN702:
                                # LOE rax rdx rbx rsi r8 r10 r11 r12 r13 ecx r14b
..B1.60:                        # Preds ..B1.59
                                # Execution count [5.00e+00]
..LN703:
	.loc    1  271  is_stmt 1
        movq      8(%rsp), %rsi                                 #271.23[spill]
..LN704:
	.loc    1  269  is_stmt 1
        xorb      %r10b, %r10b                                  #269.9
..LN705:
	.loc    1  271  is_stmt 1
        lea       (%r12,%rax), %r9                              #271.8
..LN706:
        lea       (%rsi,%rax), %r8                              #271.23
..LN707:
	.loc    1  269  is_stmt 1
        xorl      %esi, %esi                                    #269.9
..LN708:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.61:                        # Preds ..B1.61 ..B1.60
                                # Execution count [4.50e+01]
..LN709:
	.loc    1  271  is_stmt 1
        vmovupd   (%rsi,%r8), %xmm0                             #271.23
..LN710:
	.loc    1  269  is_stmt 1
        incb      %r10b                                         #269.19
..LN711:
	.loc    1  271  is_stmt 1
        vmovupd   %xmm0, (%rsi,%r9)                             #271.8
..LN712:
	.loc    1  269  is_stmt 1
        addq      $16, %rsi                                     #269.19
..LN713:
        cmpb      $9, %r10b                                     #269.16
..LN714:
        jl        ..B1.61       # Prob 88%                      #269.16
..LN715:
                                # LOE rax rdx rbx rsi r8 r9 r12 ecx r10b
..B1.62:                        # Preds ..B1.61
                                # Execution count [5.00e+00]
..LN716:
	.loc    1  274  is_stmt 1
# # LLVM-MCA-BEGIN _suNf_theta_T_multiply
..LN717:
	.loc    1  261  is_stmt 1
        incl      %ecx                                          #261.17
..LN718:
	.loc    1  275  is_stmt 1
        lea       (%r12), %r10                                  #275.3
..LN719:
        vmovupd   (%r10), %xmm11                                #275.3
..LN720:
        vmovupd   (%rbx), %xmm9                                 #275.3
..LN721:
        vmovupd   16(%r10), %xmm2                               #275.3
..LN722:
        vunpckhpd %xmm9, %xmm9, %xmm8                           #275.3
..LN723:
	.loc    1  261  is_stmt 1
        addq      $144, %rax                                    #261.17
..LN724:
	.loc    1  275  is_stmt 1
        vshufpd   $1, %xmm11, %xmm11, %xmm0                     #275.3
..LN725:
        vmulpd    %xmm0, %xmm8, %xmm7                           #275.3
..LN726:
        vmovddup  (%rbx), %xmm3                                 #275.3
..LN727:
        vfmaddsub213pd %xmm7, %xmm11, %xmm3                     #275.3
..LN728:
        vshufpd   $1, %xmm2, %xmm2, %xmm1                       #275.3
..LN729:
        movq      72(%rsp), %rsi                                #275.3[spill]
..LN730:
	.loc    1  276  is_stmt 1
        movq      (%rsp), %r8                                   #276.3[spill]
..LN731:
        movq      64(%rsp), %r9                                 #276.3[spill]
..LN732:
	.loc    1  275  is_stmt 1
        lea       (%rdx,%rsi), %rdi                             #275.3
..LN733:
        vmovupd   %xmm3, (%rdi)                                 #275.3
..LN734:
        vmovupd   16(%rbx), %xmm5                               #275.3
..LN735:
        vunpckhpd %xmm5, %xmm5, %xmm6                           #275.3
..LN736:
        vmulpd    %xmm1, %xmm6, %xmm4                           #275.3
..LN737:
        vmovddup  16(%rbx), %xmm14                              #275.3
..LN738:
        vfmaddsub213pd %xmm4, %xmm2, %xmm14                     #275.3
..LN739:
        vmovupd   32(%r10), %xmm4                               #275.3
..LN740:
        vaddpd    %xmm14, %xmm3, %xmm7                          #275.3
..LN741:
        vmovupd   %xmm7, (%rdi)                                 #275.3
..LN742:
        vshufpd   $1, %xmm4, %xmm4, %xmm3                       #275.3
..LN743:
        vmovupd   32(%rbx), %xmm10                              #275.3
..LN744:
        vunpckhpd %xmm10, %xmm10, %xmm9                         #275.3
..LN745:
        vmulpd    %xmm3, %xmm9, %xmm8                           #275.3
..LN746:
        vmovddup  32(%rbx), %xmm5                               #275.3
..LN747:
        vfmaddsub213pd %xmm8, %xmm4, %xmm5                      #275.3
..LN748:
        vmovupd   64(%r10), %xmm8                               #275.3
..LN749:
        vaddpd    %xmm5, %xmm7, %xmm6                           #275.3
..LN750:
        vmovupd   48(%r10), %xmm5                               #275.3
..LN751:
        vmovupd   %xmm6, (%rdi)                                 #275.3
..LN752:
        vshufpd   $1, %xmm5, %xmm5, %xmm6                       #275.3
..LN753:
        vmovupd   (%rbx), %xmm12                                #275.3
..LN754:
        vunpckhpd %xmm12, %xmm12, %xmm13                        #275.3
..LN755:
        vmulpd    %xmm6, %xmm13, %xmm15                         #275.3
..LN756:
        vmovddup  (%rbx), %xmm10                                #275.3
..LN757:
        vfmaddsub213pd %xmm15, %xmm5, %xmm10                    #275.3
..LN758:
        vshufpd   $1, %xmm8, %xmm8, %xmm7                       #275.3
..LN759:
        vmovupd   %xmm10, 16(%rdi)                              #275.3
..LN760:
        vmovupd   16(%rbx), %xmm14                              #275.3
..LN761:
        vunpckhpd %xmm14, %xmm14, %xmm9                         #275.3
..LN762:
        vmulpd    %xmm7, %xmm9, %xmm12                          #275.3
..LN763:
        vmovddup  16(%rbx), %xmm13                              #275.3
..LN764:
        vfmaddsub213pd %xmm12, %xmm8, %xmm13                    #275.3
..LN765:
        vaddpd    %xmm13, %xmm10, %xmm15                        #275.3
..LN766:
        vmovupd   80(%r10), %xmm10                              #275.3
..LN767:
        vmovupd   %xmm15, 16(%rdi)                              #275.3
..LN768:
        vshufpd   $1, %xmm10, %xmm10, %xmm9                     #275.3
..LN769:
        vmovupd   32(%rbx), %xmm14                              #275.3
..LN770:
        vunpckhpd %xmm14, %xmm14, %xmm12                        #275.3
..LN771:
        vmulpd    %xmm9, %xmm12, %xmm14                         #275.3
..LN772:
        vmovddup  32(%rbx), %xmm13                              #275.3
..LN773:
        vfmaddsub213pd %xmm14, %xmm10, %xmm13                   #275.3
..LN774:
        vmovupd   96(%r10), %xmm14                              #275.3
..LN775:
        vaddpd    %xmm13, %xmm15, %xmm15                        #275.3
..LN776:
        vmovupd   %xmm15, 16(%rdi)                              #275.3
..LN777:
        vmovupd   (%rbx), %xmm13                                #275.3
..LN778:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #275.3
..LN779:
        vshufpd   $1, %xmm14, %xmm14, %xmm13                    #275.3
..LN780:
        vmulpd    %xmm13, %xmm15, %xmm15                        #275.3
..LN781:
        vmovddup  (%rbx), %xmm12                                #275.3
..LN782:
        vfmaddsub213pd %xmm15, %xmm14, %xmm12                   #275.3
..LN783:
        vmovupd   112(%r10), %xmm15                             #275.3
..LN784:
        vmovupd   %xmm13, 112(%rsp)                             #275.3[spill]
..LN785:
        vmovupd   %xmm12, 32(%rdi)                              #275.3
..LN786:
        vshufpd   $1, %xmm15, %xmm15, %xmm13                    #275.3
..LN787:
        vmovupd   16(%rbx), %xmm14                              #275.3
..LN788:
        vunpckhpd %xmm14, %xmm14, %xmm14                        #275.3
..LN789:
        vmulpd    %xmm13, %xmm14, %xmm14                        #275.3
..LN790:
        lea       128(%rsp), %r11                               #275.3
..LN791:
        vmovupd   %xmm13, (%r11)                                #275.3[spill]
..LN792:
        vmovddup  16(%rbx), %xmm13                              #275.3
..LN793:
        vfmaddsub213pd %xmm14, %xmm15, %xmm13                   #275.3
..LN794:
        vmovupd   128(%r10), %xmm14                             #275.3
..LN795:
        vshufpd   $1, %xmm14, %xmm14, %xmm15                    #275.3
..LN796:
        vaddpd    %xmm13, %xmm12, %xmm13                        #275.3
..LN797:
        vmovupd   %xmm13, 32(%rdi)                              #275.3
..LN798:
        lea       288(%rsp), %r14                               #275.3
..LN799:
        vmovupd   %xmm15, (%r14)                                #275.3[spill]
..LN800:
        vmovupd   32(%rbx), %xmm12                              #275.3
..LN801:
        vunpckhpd %xmm12, %xmm12, %xmm12                        #275.3
..LN802:
        vmulpd    %xmm15, %xmm12, %xmm12                        #275.3
..LN803:
        vmovddup  32(%rbx), %xmm15                              #275.3
..LN804:
        vfmaddsub213pd %xmm12, %xmm14, %xmm15                   #275.3
..LN805:
        vaddpd    %xmm15, %xmm13, %xmm13                        #275.3
..LN806:
        vmovupd   %xmm13, 32(%rdi)                              #275.3
..LN807:
	.loc    1  276  is_stmt 1
        vmovupd   (%r8), %xmm13                                 #276.3
..LN808:
        vunpckhpd %xmm13, %xmm13, %xmm15                        #276.3
..LN809:
        vmulpd    %xmm0, %xmm15, %xmm0                          #276.3
..LN810:
        vmovddup  (%r8), %xmm12                                 #276.3
..LN811:
        vfmaddsub213pd %xmm0, %xmm11, %xmm12                    #276.3
..LN812:
        lea       (%rdx,%r9), %rsi                              #276.3
..LN813:
        vmovupd   %xmm12, (%rsi)                                #276.3
..LN814:
        vmovupd   16(%r8), %xmm11                               #276.3
..LN815:
        vunpckhpd %xmm11, %xmm11, %xmm11                        #276.3
..LN816:
        vmulpd    %xmm1, %xmm11, %xmm1                          #276.3
..LN817:
        vmovddup  16(%r8), %xmm0                                #276.3
..LN818:
        vfmaddsub213pd %xmm1, %xmm2, %xmm0                      #276.3
..LN819:
        vaddpd    %xmm0, %xmm12, %xmm0                          #276.3
..LN820:
        vmovupd   %xmm0, (%rsi)                                 #276.3
..LN821:
        vmovupd   32(%r8), %xmm2                                #276.3
..LN822:
        vunpckhpd %xmm2, %xmm2, %xmm2                           #276.3
..LN823:
        vmulpd    %xmm3, %xmm2, %xmm3                           #276.3
..LN824:
        vmovddup  32(%r8), %xmm1                                #276.3
..LN825:
        vfmaddsub213pd %xmm3, %xmm4, %xmm1                      #276.3
..LN826:
        vaddpd    %xmm1, %xmm0, %xmm4                           #276.3
..LN827:
        vmovupd   %xmm4, (%rsi)                                 #276.3
..LN828:
        vmovupd   (%r8), %xmm11                                 #276.3
..LN829:
        vunpckhpd %xmm11, %xmm11, %xmm12                        #276.3
..LN830:
        vmulpd    %xmm6, %xmm12, %xmm6                          #276.3
..LN831:
        vmovddup  (%r8), %xmm15                                 #276.3
..LN832:
        vfmaddsub213pd %xmm6, %xmm5, %xmm15                     #276.3
..LN833:
        vmovupd   %xmm15, 16(%rsi)                              #276.3
..LN834:
        vmovupd   16(%r8), %xmm5                                #276.3
..LN835:
        vunpckhpd %xmm5, %xmm5, %xmm13                          #276.3
..LN836:
        vmulpd    %xmm7, %xmm13, %xmm7                          #276.3
..LN837:
        vmovddup  16(%r8), %xmm0                                #276.3
..LN838:
        vfmaddsub213pd %xmm7, %xmm8, %xmm0                      #276.3
..LN839:
        vaddpd    %xmm0, %xmm15, %xmm0                          #276.3
..LN840:
        vmovupd   %xmm0, 16(%rsi)                               #276.3
..LN841:
        vmovupd   32(%r8), %xmm8                                #276.3
..LN842:
        vunpckhpd %xmm8, %xmm8, %xmm8                           #276.3
..LN843:
        vmulpd    %xmm9, %xmm8, %xmm9                           #276.3
..LN844:
        vmovddup  32(%r8), %xmm1                                #276.3
..LN845:
        vfmaddsub213pd %xmm9, %xmm10, %xmm1                     #276.3
..LN846:
        vaddpd    %xmm1, %xmm0, %xmm10                          #276.3
..LN847:
        vmovupd   %xmm10, 16(%rsi)                              #276.3
..LN848:
        vmovupd   (%r8), %xmm0                                  #276.3
..LN849:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #276.3
..LN850:
        vmulpd    112(%rsp), %xmm1, %xmm2                       #276.3[spill]
..LN851:
        vmovddup  (%r8), %xmm6                                  #276.3
..LN852:
        vfmaddsub132pd 96(%r10), %xmm2, %xmm6                   #276.3
..LN853:
        vmovupd   %xmm6, 32(%rsi)                               #276.3
..LN854:
        vmovupd   16(%r8), %xmm3                                #276.3
..LN855:
        vunpckhpd %xmm3, %xmm3, %xmm4                           #276.3
..LN856:
        vmulpd    (%r11), %xmm4, %xmm5                          #276.3[spill]
..LN857:
        vmovddup  16(%r8), %xmm7                                #276.3
..LN858:
        vfmaddsub132pd 112(%r10), %xmm5, %xmm7                  #276.3
..LN859:
        vaddpd    %xmm7, %xmm6, %xmm11                          #276.3
..LN860:
        vmovupd   %xmm11, 32(%rsi)                              #276.3
..LN861:
        vmovupd   32(%r8), %xmm8                                #276.3
..LN862:
        vunpckhpd %xmm8, %xmm8, %xmm9                           #276.3
..LN863:
        vmulpd    (%r14), %xmm9, %xmm10                         #276.3[spill]
..LN864:
        vmovddup  32(%r8), %xmm12                               #276.3
..LN865:
        vfmaddsub213pd %xmm10, %xmm14, %xmm12                   #276.3
..LN866:
        vaddpd    %xmm12, %xmm11, %xmm14                        #276.3
..LN867:
        vmovupd   %xmm14, 32(%rsi)                              #276.3
..LN868:
	.loc    1  261  is_stmt 1
        addq      $48, %rdx                                     #261.17
..LN869:
	.loc    1  277  is_stmt 1
# # LLVM-MCA-END
..LN870:
	.loc    1  261  is_stmt 1
        cmpl      $100000000, %ecx                              #261.13
..LN871:
        jl        ..B1.58       # Prob 82%                      #261.13
..LN872:
                                # LOE rax rdx rbx r12 ecx
..B1.63:                        # Preds ..B1.62
                                # Execution count [1.00e+00]
..___tag_value_main.144:
..LN873:
	.loc    1  280  is_stmt 1
#       clock(void)
        call      clock                                         #280.6
..___tag_value_main.145:
..LN874:
                                # LOE rax rbx r12
..B1.130:                       # Preds ..B1.63
                                # Execution count [1.00e+00]
..LN875:
        movq      %rax, %r13                                    #280.6
..LN876:
                                # LOE rbx r12 r13
..B1.64:                        # Preds ..B1.130
                                # Execution count [1.00e+00]
..___tag_value_main.146:
..LN877:
	.loc    1  282  is_stmt 1
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #282.9
..___tag_value_main.147:
..LN878:
                                # LOE rbx r12 r13 xmm0
..B1.131:                       # Preds ..B1.64
                                # Execution count [1.00e+00]
..LN879:
        vmovsd    %xmm0, 112(%rsp)                              #282.9[spill]
..LN880:
                                # LOE rbx r12 r13
..B1.65:                        # Preds ..B1.131
                                # Execution count [1.00e+00]
..LN881:
	.loc    1  284  is_stmt 1
        xorl      %esi, %esi                                    #284.3
..LN882:
        lea       96(%rsp), %rdi                                #284.3
..___tag_value_main.149:
..LN883:
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #284.3
..___tag_value_main.150:
..LN884:
                                # LOE rbx r12 r13
..B1.66:                        # Preds ..B1.65
                                # Execution count [1.00e+00]
..LN885:
	.loc    1  285  is_stmt 1
        lea       32(%rsp), %rdi                                #285.3
..LN886:
        lea       64(%rdi), %rsi                                #285.3
..LN887:
        lea       -16(%rsi), %rdx                               #285.3
..___tag_value_main.151:
..LN888:
#       timeval_subtract(struct timeval *, struct timeval *, struct timeval *)
        call      timeval_subtract                              #285.3
..___tag_value_main.152:
..LN889:
                                # LOE rbx r12 r13
..B1.67:                        # Preds ..B1.66
                                # Execution count [1.00e+00]
..LN890:
	.loc    1  287  is_stmt 1
        subq      280(%rsp), %r13                               #287.5[spill]
..LN891:
        vxorpd    %xmm0, %xmm0, %xmm0                           #287.5
..LN892:
        vcvtsi2sdq %r13, %xmm0, %xmm0                           #287.5
..LN893:
        movl      $.L_2__STRING.5, %edi                         #287.5
..LN894:
        xorl      %esi, %esi                                    #287.5
..LN895:
        movl      $.L_2__STRING.2, %edx                         #287.5
..LN896:
        xorl      %eax, %eax                                    #287.5
..LN897:
        incl      %eax                                          #287.5
..LN898:
        vdivsd    .L_2il0floatpacket.0(%rip), %xmm0, %xmm0      #287.5
..___tag_value_main.154:
..LN899:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #287.5
..___tag_value_main.155:
..LN900:
                                # LOE rbx r12
..B1.68:                        # Preds ..B1.67
                                # Execution count [1.00e+00]
..LN901:
	.loc    1  289  is_stmt 1
        vmovsd    112(%rsp), %xmm0                              #289.5[spill]
..LN902:
        movl      $.L_2__STRING.5, %edi                         #289.5
..LN903:
        xorl      %esi, %esi                                    #289.5
..LN904:
        movl      $.L_2__STRING.3, %edx                         #289.5
..LN905:
        xorl      %eax, %eax                                    #289.5
..LN906:
        incl      %eax                                          #289.5
..LN907:
        vsubsd    144(%rsp), %xmm0, %xmm0                       #289.5[spill]
..___tag_value_main.157:
..LN908:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #289.5
..___tag_value_main.158:
..LN909:
                                # LOE rbx r12
..B1.69:                        # Preds ..B1.68
                                # Execution count [1.00e+00]
..LN910:
	.loc    1  291  is_stmt 1
        vxorpd    %xmm0, %xmm0, %xmm0                           #291.5
..LN911:
        vxorpd    %xmm1, %xmm1, %xmm1                           #291.5
..LN912:
        vcvtsi2sdq 40(%rsp), %xmm0, %xmm0                       #291.5
..LN913:
        vcvtsi2sdq 32(%rsp), %xmm1, %xmm1                       #291.5
..LN914:
        movl      $.L_2__STRING.5, %edi                         #291.5
..LN915:
        xorl      %esi, %esi                                    #291.5
..LN916:
        movl      $.L_2__STRING.4, %edx                         #291.5
..LN917:
        xorl      %eax, %eax                                    #291.5
..LN918:
        incl      %eax                                          #291.5
..LN919:
        vfmadd132sd .L_2il0floatpacket.1(%rip), %xmm1, %xmm0    #291.5
..___tag_value_main.160:
..LN920:
#       lprintf(char *, int, char *, ...)
        call      lprintf                                       #291.5
..___tag_value_main.161:
..LN921:
                                # LOE rbx r12
..B1.70:                        # Preds ..B1.69
                                # Execution count [9.00e-01]
..LN922:
	.loc    1  300  is_stmt 1
        movl      $0, 144(%rsp)                                 #300.6[spill]
..LN923:
        movq      $0, 136(%rsp)                                 #300.6[spill]
..LN924:
                                # LOE rbx r12
..B1.71:                        # Preds ..B1.87 ..B1.70
                                # Execution count [5.00e+00]
..LN925:
	.loc    1  304  is_stmt 1
        movq      136(%rsp), %r9                                #304.10[spill]
..LN926:
	.loc    1  302  is_stmt 1
        xorb      %r15b, %r15b                                  #302.7
..LN927:
	.loc    1  306  is_stmt 1
        movq      48(%rsp), %rax                                #306.10[spill]
..LN928:
	.loc    1  302  is_stmt 1
        xorl      %r13d, %r13d                                  #302.7
..LN929:
	.loc    1  309  is_stmt 1
        movq      72(%rsp), %rcx                                #309.11[spill]
..LN930:
	.loc    1  311  is_stmt 1
        movq      64(%rsp), %r8                                 #311.11[spill]
..LN931:
	.loc    1  304  is_stmt 1
        movq      56(%rsp), %r14                                #304.10[spill]
..LN932:
	.loc    1  306  is_stmt 1
        lea       (%rax,%r9), %rdx                              #306.10
..LN933:
        movq      %rdx, 128(%rsp)                               #306.10[spill]
..LN934:
	.loc    1  309  is_stmt 1
        lea       (%rcx,%r9), %rsi                              #309.11
..LN935:
        movq      %rsi, 120(%rsp)                               #309.11[spill]
..LN936:
	.loc    1  311  is_stmt 1
        lea       (%r8,%r9), %r10                               #311.11
..LN937:
        movq      %r10, 112(%rsp)                               #311.11[spill]
..LN938:
	.loc    1  304  is_stmt 1
        addq      %r9, %r14                                     #304.10
..LN939:
                                # LOE rbx r12 r13 r14 r15b
..B1.72:                        # Preds ..B1.86 ..B1.71
                                # Execution count [1.50e+01]
..LN940:
        vmovupd   (%r13,%r14), %xmm0                            #304.10
..LN941:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #304.10
..___tag_value_main.172:
..LN942:
#       creal(double __complex__)
        call      creal                                         #304.10
..___tag_value_main.173:
..LN943:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.132:                       # Preds ..B1.72
                                # Execution count [1.50e+01]
..LN944:
        vmovsd    %xmm0, 336(%rsp)                              #304.10[spill]
..LN945:
                                # LOE rbx r12 r13 r14 r15b
..B1.73:                        # Preds ..B1.132
                                # Execution count [1.50e+01]
..LN946:
	.loc    1  305  is_stmt 1
        vmovupd   (%r13,%r14), %xmm0                            #305.10
..LN947:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #305.10
..___tag_value_main.175:
..LN948:
#       cimag(double __complex__)
        call      cimag                                         #305.10
..___tag_value_main.176:
..LN949:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.133:                       # Preds ..B1.73
                                # Execution count [1.50e+01]
..LN950:
        vmovsd    %xmm0, 304(%rsp)                              #305.10[spill]
..LN951:
                                # LOE rbx r12 r13 r14 r15b
..B1.74:                        # Preds ..B1.133
                                # Execution count [1.50e+01]
..LN952:
	.loc    1  306  is_stmt 1
        movq      128(%rsp), %rax                               #306.10[spill]
..LN953:
        vmovupd   (%r13,%rax), %xmm0                            #306.10
..LN954:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #306.10
..___tag_value_main.179:
..LN955:
#       creal(double __complex__)
        call      creal                                         #306.10
..___tag_value_main.180:
..LN956:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.134:                       # Preds ..B1.74
                                # Execution count [1.50e+01]
..LN957:
        vmovsd    %xmm0, 328(%rsp)                              #306.10[spill]
..LN958:
                                # LOE rbx r12 r13 r14 r15b
..B1.75:                        # Preds ..B1.134
                                # Execution count [1.50e+01]
..LN959:
	.loc    1  307  is_stmt 1
        movq      128(%rsp), %rax                               #307.10[spill]
..LN960:
        vmovupd   (%r13,%rax), %xmm0                            #307.10
..LN961:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #307.10
..___tag_value_main.183:
..LN962:
#       cimag(double __complex__)
        call      cimag                                         #307.10
..___tag_value_main.184:
..LN963:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.135:                       # Preds ..B1.75
                                # Execution count [1.50e+01]
..LN964:
        vmovsd    %xmm0, 296(%rsp)                              #307.10[spill]
..LN965:
                                # LOE rbx r12 r13 r14 r15b
..B1.76:                        # Preds ..B1.135
                                # Execution count [1.50e+01]
..LN966:
	.loc    1  309  is_stmt 1
        movq      120(%rsp), %rax                               #309.11[spill]
..LN967:
        vmovupd   (%r13,%rax), %xmm0                            #309.11
..LN968:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #309.11
..___tag_value_main.187:
..LN969:
#       creal(double __complex__)
        call      creal                                         #309.11
..___tag_value_main.188:
..LN970:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.136:                       # Preds ..B1.76
                                # Execution count [1.50e+01]
..LN971:
        vmovsd    %xmm0, 320(%rsp)                              #309.11[spill]
..LN972:
                                # LOE rbx r12 r13 r14 r15b
..B1.77:                        # Preds ..B1.136
                                # Execution count [1.50e+01]
..LN973:
	.loc    1  310  is_stmt 1
        movq      120(%rsp), %rax                               #310.11[spill]
..LN974:
        vmovupd   (%r13,%rax), %xmm0                            #310.11
..LN975:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #310.11
..___tag_value_main.191:
..LN976:
#       cimag(double __complex__)
        call      cimag                                         #310.11
..___tag_value_main.192:
..LN977:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.137:                       # Preds ..B1.77
                                # Execution count [1.50e+01]
..LN978:
        vmovsd    %xmm0, 288(%rsp)                              #310.11[spill]
..LN979:
                                # LOE rbx r12 r13 r14 r15b
..B1.78:                        # Preds ..B1.137
                                # Execution count [1.50e+01]
..LN980:
	.loc    1  311  is_stmt 1
        movq      112(%rsp), %rax                               #311.11[spill]
..LN981:
        vmovupd   (%r13,%rax), %xmm0                            #311.11
..LN982:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #311.11
..___tag_value_main.195:
..LN983:
#       creal(double __complex__)
        call      creal                                         #311.11
..___tag_value_main.196:
..LN984:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.138:                       # Preds ..B1.78
                                # Execution count [1.50e+01]
..LN985:
        vmovsd    %xmm0, 312(%rsp)                              #311.11[spill]
..LN986:
                                # LOE rbx r12 r13 r14 r15b
..B1.79:                        # Preds ..B1.138
                                # Execution count [1.50e+01]
..LN987:
	.loc    1  312  is_stmt 1
        movq      112(%rsp), %rax                               #312.11[spill]
..LN988:
        vmovupd   (%r13,%rax), %xmm0                            #312.11
..LN989:
        vunpckhpd %xmm0, %xmm0, %xmm1                           #312.11
..___tag_value_main.199:
..LN990:
#       cimag(double __complex__)
        call      cimag                                         #312.11
..___tag_value_main.200:
..LN991:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.139:                       # Preds ..B1.79
                                # Execution count [1.50e+01]
..LN992:
        vmovsd    %xmm0, 280(%rsp)                              #312.11[spill]
..LN993:
                                # LOE rbx r12 r13 r14 r15b
..B1.80:                        # Preds ..B1.139
                                # Execution count [1.50e+01]
..LN994:
	.loc    1  314  is_stmt 1
        vmovsd    336(%rsp), %xmm1                              #314.10[spill]
..LN995:
        vsubsd    320(%rsp), %xmm1, %xmm0                       #314.10[spill]
..LN996:
        vdivsd    %xmm1, %xmm0, %xmm0                           #314.10
..___tag_value_main.204:
..LN997:
#       fabs(double)
        call      fabs                                          #314.10
..___tag_value_main.205:
..LN998:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.140:                       # Preds ..B1.80
                                # Execution count [1.50e+01]
..LN999:
        vcomisd   .L_2il0floatpacket.2(%rip), %xmm0             #314.39
..LN1000:
        jbe       ..B1.103      # Prob 5%                       #314.39
..LN1001:
                                # LOE rbx r12 r13 r14 r15b
..B1.81:                        # Preds ..B1.140
                                # Execution count [1.42e+01]
..LN1002:
        xorl      %edi, %edi                                    #314.3
..LN1003:
        incl      %edi                                          #314.3
..LN1004:
                                # LOE rbx r12 r13 r14 edi r15b
..B1.82:                        # Preds ..B1.81 ..B1.143
                                # Execution count [1.50e+01]
..LN1005:
        xorl      %esi, %esi                                    #314.3
..LN1006:
        incl      %esi                                          #314.3
..LN1007:
        movl      $.L_2__STRING.6, %edx                         #314.3
..LN1008:
        movl      $.L_2__STRING.7, %ecx                         #314.3
..___tag_value_main.206:
..LN1009:
#       error(int, int, char *, char *)
        call      error                                         #314.3
..___tag_value_main.207:
..LN1010:
                                # LOE rbx r12 r13 r14 r15b
..B1.83:                        # Preds ..B1.82
                                # Execution count [1.50e+01]
..LN1011:
	.loc    1  315  is_stmt 1
        vmovsd    328(%rsp), %xmm1                              #315.10[spill]
..LN1012:
        vsubsd    312(%rsp), %xmm1, %xmm0                       #315.10[spill]
..LN1013:
        vdivsd    %xmm1, %xmm0, %xmm0                           #315.10
..___tag_value_main.210:
..LN1014:
#       fabs(double)
        call      fabs                                          #315.10
..___tag_value_main.211:
..LN1015:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.141:                       # Preds ..B1.83
                                # Execution count [1.50e+01]
..LN1016:
        vcomisd   .L_2il0floatpacket.2(%rip), %xmm0             #315.40
..LN1017:
        jbe       ..B1.102      # Prob 5%                       #315.40
..LN1018:
                                # LOE rbx r12 r13 r14 r15b
..B1.84:                        # Preds ..B1.141
                                # Execution count [1.42e+01]
..LN1019:
        xorl      %edi, %edi                                    #315.3
..LN1020:
        incl      %edi                                          #315.3
..LN1021:
                                # LOE rbx r12 r13 r14 edi r15b
..B1.85:                        # Preds ..B1.84 ..B1.142
                                # Execution count [1.50e+01]
..LN1022:
        xorl      %esi, %esi                                    #315.3
..LN1023:
        incl      %esi                                          #315.3
..LN1024:
        movl      $.L_2__STRING.8, %edx                         #315.3
..LN1025:
        movl      $.L_2__STRING.9, %ecx                         #315.3
..___tag_value_main.212:
..LN1026:
#       error(int, int, char *, char *)
        call      error                                         #315.3
..___tag_value_main.213:
..LN1027:
                                # LOE rbx r12 r13 r14 r15b
..B1.86:                        # Preds ..B1.85
                                # Execution count [1.50e+01]
..LN1028:
	.loc    1  302  is_stmt 1
        incb      %r15b                                         #302.17
..LN1029:
        addq      $16, %r13                                     #302.17
..LN1030:
        cmpb      $3, %r15b                                     #302.14
..LN1031:
        jl        ..B1.72       # Prob 66%                      #302.14
..LN1032:
                                # LOE rbx r12 r13 r14 r15b
..B1.87:                        # Preds ..B1.86
                                # Execution count [5.00e+00]
..LN1033:
	.loc    1  300  is_stmt 1
        lea       144(%rsp), %rdx                               #300.21
..LN1034:
        movl      (%rdx), %eax                                  #300.21[spill]
..LN1035:
        incl      %eax                                          #300.21
..LN1036:
        addq      $48, 136(%rsp)                                #300.21[spill]
..LN1037:
        movl      %eax, (%rdx)                                  #300.21[spill]
..LN1038:
        cmpl      $100000000, %eax                              #300.17
..LN1039:
        jl        ..B1.71       # Prob 82%                      #300.17
..LN1040:
                                # LOE rbx r12
..B1.88:                        # Preds ..B1.87
                                # Execution count [1.00e+00]
..LN1041:
	.loc    1  330  is_stmt 1
        movq      %r12, %rdi                                    #330.3
..___tag_value_main.217:
..LN1042:
#       afree(void *)
        call      afree                                         #330.3
..___tag_value_main.218:
..LN1043:
                                # LOE rbx
..B1.89:                        # Preds ..B1.88
                                # Execution count [1.00e+00]
..LN1044:
	.loc    1  331  is_stmt 1
        movq      %rbx, %rdi                                    #331.3
..___tag_value_main.219:
..LN1045:
#       afree(void *)
        call      afree                                         #331.3
..___tag_value_main.220:
..LN1046:
                                # LOE
..B1.90:                        # Preds ..B1.89
                                # Execution count [1.00e+00]
..LN1047:
	.loc    1  332  is_stmt 1
        movq      (%rsp), %rdi                                  #332.3[spill]
..___tag_value_main.221:
..LN1048:
#       afree(void *)
        call      afree                                         #332.3
..___tag_value_main.222:
..LN1049:
                                # LOE
..B1.91:                        # Preds ..B1.90
                                # Execution count [1.00e+00]
..LN1050:
	.loc    1  333  is_stmt 1
        movq      56(%rsp), %rdi                                #333.3[spill]
..___tag_value_main.224:
..LN1051:
#       afree(void *)
        call      afree                                         #333.3
..___tag_value_main.225:
..LN1052:
                                # LOE
..B1.92:                        # Preds ..B1.91
                                # Execution count [1.00e+00]
..LN1053:
	.loc    1  334  is_stmt 1
        movq      48(%rsp), %rdi                                #334.3[spill]
..___tag_value_main.227:
..LN1054:
#       afree(void *)
        call      afree                                         #334.3
..___tag_value_main.228:
..LN1055:
                                # LOE
..B1.93:                        # Preds ..B1.92
                                # Execution count [1.00e+00]
..LN1056:
	.loc    1  335  is_stmt 1
        movq      352(%rsp), %rdi                               #335.3[spill]
..___tag_value_main.230:
..LN1057:
#       afree(void *)
        call      afree                                         #335.3
..___tag_value_main.231:
..LN1058:
                                # LOE
..B1.94:                        # Preds ..B1.93
                                # Execution count [1.00e+00]
..LN1059:
	.loc    1  336  is_stmt 1
        movq      344(%rsp), %rdi                               #336.3[spill]
..___tag_value_main.233:
..LN1060:
#       afree(void *)
        call      afree                                         #336.3
..___tag_value_main.234:
..LN1061:
                                # LOE
..B1.95:                        # Preds ..B1.94
                                # Execution count [1.00e+00]
..LN1062:
	.loc    1  337  is_stmt 1
        movq      72(%rsp), %rdi                                #337.3[spill]
..___tag_value_main.236:
..LN1063:
#       afree(void *)
        call      afree                                         #337.3
..___tag_value_main.237:
..LN1064:
                                # LOE
..B1.96:                        # Preds ..B1.95
                                # Execution count [1.00e+00]
..LN1065:
	.loc    1  338  is_stmt 1
        movq      64(%rsp), %rdi                                #338.3[spill]
..___tag_value_main.239:
..LN1066:
#       afree(void *)
        call      afree                                         #338.3
..___tag_value_main.240:
..LN1067:
                                # LOE
..B1.97:                        # Preds ..B1.96
                                # Execution count [1.00e+00]
..LN1068:
	.loc    1  339  is_stmt 1
        movq      24(%rsp), %rdi                                #339.3[spill]
..___tag_value_main.242:
..LN1069:
#       afree(void *)
        call      afree                                         #339.3
..___tag_value_main.243:
..LN1070:
                                # LOE
..B1.98:                        # Preds ..B1.97
                                # Execution count [1.00e+00]
..LN1071:
	.loc    1  340  is_stmt 1
        movq      16(%rsp), %rdi                                #340.3[spill]
..___tag_value_main.245:
..LN1072:
#       afree(void *)
        call      afree                                         #340.3
..___tag_value_main.246:
..LN1073:
                                # LOE
..B1.99:                        # Preds ..B1.98
                                # Execution count [1.00e+00]
..LN1074:
	.loc    1  341  is_stmt 1
        movq      8(%rsp), %rdi                                 #341.3[spill]
..___tag_value_main.248:
..LN1075:
#       afree(void *)
        call      afree                                         #341.3
..___tag_value_main.249:
..LN1076:
                                # LOE
..B1.100:                       # Preds ..B1.99
                                # Execution count [1.00e+00]
..LN1077:
	.loc    1  343  is_stmt 1
        movl      $.2.5_2_kmpc_loc_struct_pack.46, %edi         #343.10
..LN1078:
        xorl      %eax, %eax                                    #343.10
..___tag_value_main.251:
..LN1079:
        call      __kmpc_end                                    #343.10
..___tag_value_main.252:
..LN1080:
                                # LOE
..B1.101:                       # Preds ..B1.100
                                # Execution count [1.00e+00]
..LN1081:
        xorl      %eax, %eax                                    #343.10
..LN1082:
	.loc    1  343  epilogue_begin  is_stmt 1
        addq      $376, %rsp                                    #343.10
..LN1083:
        popq      %rbx                                          #343.10
..LN1084:
        popq      %r15                                          #343.10
..LN1085:
        popq      %r14                                          #343.10
..LN1086:
        popq      %r13                                          #343.10
..LN1087:
        popq      %r12                                          #343.10
..LN1088:
        movq      %rbp, %rsp                                    #343.10
..LN1089:
        popq      %rbp                                          #343.10
	.cfi_def_cfa 7, 8
..LN1090:
        ret                                                     #343.10
	.cfi_def_cfa 6, 16
..LN1091:
                                # LOE
..B1.102:                       # Preds ..B1.141
                                # Execution count [7.50e-01]: Infreq
..LN1092:
	.loc    1  315  is_stmt 1
        vmovsd    296(%rsp), %xmm1                              #315.52[spill]
..LN1093:
        vsubsd    280(%rsp), %xmm1, %xmm0                       #315.52[spill]
..LN1094:
        vdivsd    %xmm1, %xmm0, %xmm0                           #315.52
..___tag_value_main.258:
..LN1095:
#       fabs(double)
        call      fabs                                          #315.52
..___tag_value_main.259:
..LN1096:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.142:                       # Preds ..B1.102
                                # Execution count [7.50e-01]: Infreq
..LN1097:
        vcmpgtsd  .L_2il0floatpacket.2(%rip), %xmm0, %xmm1      #315.82
..LN1098:
        vmovd     %xmm1, %edi                                   #315.82
..LN1099:
        negl      %edi                                          #315.82
..LN1100:
        jmp       ..B1.85       # Prob 100%                     #315.82
..LN1101:
                                # LOE rbx r12 r13 r14 edi r15b
..B1.103:                       # Preds ..B1.140
                                # Execution count [7.50e-01]: Infreq
..LN1102:
	.loc    1  314  is_stmt 1
        vmovsd    304(%rsp), %xmm1                              #314.51[spill]
..LN1103:
        vsubsd    288(%rsp), %xmm1, %xmm0                       #314.51[spill]
..LN1104:
        vdivsd    %xmm1, %xmm0, %xmm0                           #314.51
..___tag_value_main.262:
..LN1105:
#       fabs(double)
        call      fabs                                          #314.51
..___tag_value_main.263:
..LN1106:
                                # LOE rbx r12 r13 r14 r15b xmm0
..B1.143:                       # Preds ..B1.103
                                # Execution count [7.50e-01]: Infreq
..LN1107:
        vcmpgtsd  .L_2il0floatpacket.2(%rip), %xmm0, %xmm1      #314.81
..LN1108:
        vmovd     %xmm1, %edi                                   #314.81
..LN1109:
        negl      %edi                                          #314.81
..LN1110:
        jmp       ..B1.82       # Prob 100%                     #314.81
..LN1111:
                                # LOE rbx r12 r13 r14 edi r15b
..B1.104:                       # Preds ..B1.4
                                # Execution count [5.10e-02]: Infreq
..LN1112:
	.loc    1  121  is_stmt 1
        movl      $.L_2__STRING.0, %edi                         #121.5
..LN1113:
        xorl      %eax, %eax                                    #121.5
..___tag_value_main.264:
..LN1114:
#       printf(const char *__restrict__, ...)
        call      printf                                        #121.5
..___tag_value_main.265:
..LN1115:
        jmp       ..B1.5        # Prob 100%                     #121.5
..LN1116:
                                # LOE
..LN1117:
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.1118:
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
..___tag_value_double_MVM_non_macro.270:
..L271:
                                                        #348.1
..LN1119:
	.loc    1  348  is_stmt 1
        pushq     %rbp                                          #348.1
	.cfi_def_cfa_offset 16
..LN1120:
        movq      %rsp, %rbp                                    #348.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN1121:
	.loc    1  354  prologue_end  is_stmt 1
        vmovupd   (%rdx), %ymm11                                #354.35
..LN1122:
	.loc    1  369  is_stmt 1
        vmovupd   (%rcx), %ymm2                                 #369.35
..LN1123:
	.loc    1  359  is_stmt 1
        vmovupd   48(%rdx), %ymm7                               #359.36
..LN1124:
	.loc    1  364  is_stmt 1
        vmovupd   96(%rdx), %ymm4                               #364.35
..LN1125:
	.loc    1  356  is_stmt 1
        vunpckhpd %ymm11, %ymm11, %ymm15                        #356.10
..LN1126:
	.loc    1  370  is_stmt 1
        vshufpd   $5, %ymm2, %ymm2, %ymm8                       #370.10
..LN1127:
	.loc    1  361  is_stmt 1
        vunpckhpd %ymm7, %ymm7, %ymm14                          #361.10
..LN1128:
	.loc    1  383  is_stmt 1
        vmulpd    %ymm8, %ymm15, %ymm0                          #383.11
..LN1129:
	.loc    1  387  is_stmt 1
        vmulpd    %ymm8, %ymm14, %ymm13                         #387.11
..LN1130:
	.loc    1  399  is_stmt 1
        vmovupd   16(%rdx), %ymm7                               #399.37
..LN1131:
	.loc    1  355  is_stmt 1
        vmovddup  (%rdx), %ymm10                                #355.10
..LN1132:
	.loc    1  360  is_stmt 1
        vmovddup  48(%rdx), %ymm9                               #360.10
..LN1133:
	.loc    1  384  is_stmt 1
        vfmaddsub231pd %ymm10, %ymm2, %ymm0                     #384.11
..LN1134:
	.loc    1  388  is_stmt 1
        vfmaddsub231pd %ymm9, %ymm2, %ymm13                     #388.11
..LN1135:
	.loc    1  366  is_stmt 1
        vunpckhpd %ymm4, %ymm4, %ymm6                           #366.10
..LN1136:
	.loc    1  373  is_stmt 1
        vmovupd   (%r8), %ymm4                                  #373.35
..LN1137:
	.loc    1  453  is_stmt 1
        vmulpd    %ymm8, %ymm6, %ymm8                           #453.11
..LN1138:
	.loc    1  393  is_stmt 1
        vperm2f128 $1, %ymm0, %ymm0, %ymm1                      #393.11
..LN1139:
	.loc    1  395  is_stmt 1
        vblendpd  $12, %ymm13, %ymm1, %ymm11                    #395.11
..LN1140:
	.loc    1  404  is_stmt 1
        vmovupd   16(%rcx), %ymm1                               #404.37
..LN1141:
	.loc    1  374  is_stmt 1
        vshufpd   $5, %ymm4, %ymm4, %ymm3                       #374.11
..LN1142:
	.loc    1  421  is_stmt 1
        vmulpd    %ymm3, %ymm15, %ymm15                         #421.10
..LN1143:
	.loc    1  425  is_stmt 1
        vmulpd    %ymm3, %ymm14, %ymm14                         #425.10
..LN1144:
	.loc    1  422  is_stmt 1
        vfmaddsub213pd %ymm15, %ymm4, %ymm10                    #422.10
..LN1145:
	.loc    1  426  is_stmt 1
        vfmaddsub213pd %ymm14, %ymm4, %ymm9                     #426.10
..LN1146:
	.loc    1  392  is_stmt 1
        vperm2f128 $2, %ymm0, %ymm13, %ymm12                    #392.11
..LN1147:
	.loc    1  400  is_stmt 1
        vperm2f128 $1, %ymm7, %ymm7, %ymm0                      #400.11
..LN1148:
	.loc    1  405  is_stmt 1
        vperm2f128 $1, %ymm1, %ymm1, %ymm7                      #405.11
..LN1149:
	.loc    1  396  is_stmt 1
        vaddpd    %ymm11, %ymm12, %ymm13                        #396.11
..LN1150:
	.loc    1  402  is_stmt 1
        vblendpd  $12, 64(%rdx), %ymm0, %ymm11                  #402.11
..LN1151:
	.loc    1  406  is_stmt 1
        vblendpd  $12, %ymm1, %ymm7, %ymm12                     #406.11
..LN1152:
	.loc    1  408  is_stmt 1
        vmovddup  %ymm11, %ymm0                                 #408.11
..LN1153:
	.loc    1  409  is_stmt 1
        vunpckhpd %ymm11, %ymm11, %ymm1                         #409.11
..LN1154:
	.loc    1  410  is_stmt 1
        vshufpd   $5, %ymm12, %ymm12, %ymm11                    #410.11
..LN1155:
	.loc    1  412  is_stmt 1
        vmulpd    %ymm11, %ymm1, %ymm11                         #412.11
..LN1156:
	.loc    1  413  is_stmt 1
        vfmaddsub231pd %ymm0, %ymm12, %ymm11                    #413.11
..LN1157:
	.loc    1  430  is_stmt 1
        vperm2f128 $2, %ymm10, %ymm9, %ymm12                    #430.11
..LN1158:
	.loc    1  431  is_stmt 1
        vperm2f128 $1, %ymm10, %ymm10, %ymm10                   #431.10
..LN1159:
	.loc    1  433  is_stmt 1
        vblendpd  $12, %ymm9, %ymm10, %ymm9                     #433.10
..LN1160:
	.loc    1  437  is_stmt 1
        vmovupd   16(%r8), %ymm10                               #437.37
..LN1161:
	.loc    1  416  is_stmt 1
        vaddpd    %ymm13, %ymm11, %ymm11                        #416.11
..LN1162:
	.loc    1  434  is_stmt 1
        vaddpd    %ymm9, %ymm12, %ymm9                          #434.10
..LN1163:
	.loc    1  438  is_stmt 1
        vperm2f128 $1, %ymm10, %ymm10, %ymm13                   #438.11
..LN1164:
	.loc    1  439  is_stmt 1
        vblendpd  $12, %ymm10, %ymm13, %ymm15                   #439.11
..LN1165:
	.loc    1  441  is_stmt 1
        vshufpd   $5, %ymm15, %ymm15, %ymm14                    #441.11
..LN1166:
	.loc    1  442  is_stmt 1
        vmulpd    %ymm14, %ymm1, %ymm1                          #442.11
..LN1167:
	.loc    1  365  is_stmt 1
        vmovddup  96(%rdx), %ymm5                               #365.10
..LN1168:
	.loc    1  454  is_stmt 1
        vfmaddsub231pd %ymm5, %ymm2, %ymm8                      #454.10
..LN1169:
	.loc    1  459  is_stmt 1
        vmulpd    %ymm3, %ymm6, %ymm2                           #459.10
..LN1170:
	.loc    1  443  is_stmt 1
        vfmaddsub213pd %ymm1, %ymm15, %ymm0                     #443.11
..LN1171:
	.loc    1  471  is_stmt 1
        vmovupd   112(%rdx), %ymm1                              #471.36
..LN1172:
	.loc    1  491  is_stmt 1
        vmovupd   %ymm11, (%rdi)                                #491.29
..LN1173:
	.loc    1  460  is_stmt 1
        vfmaddsub213pd %ymm2, %ymm4, %ymm5                      #460.10
..LN1174:
	.loc    1  446  is_stmt 1
        vaddpd    %ymm9, %ymm0, %ymm9                           #446.10
..LN1175:
	.loc    1  472  is_stmt 1
        vperm2f128 $1, %ymm1, %ymm1, %ymm0                      #472.11
..LN1176:
	.loc    1  465  is_stmt 1
        vperm2f128 $1, %ymm8, %ymm8, %ymm3                      #465.10
..LN1177:
	.loc    1  473  is_stmt 1
        vblendpd  $12, %ymm1, %ymm0, %ymm2                      #473.10
..LN1178:
	.loc    1  477  is_stmt 1
        vblendpd  $12, %ymm10, %ymm7, %ymm10                    #477.10
..LN1179:
	.loc    1  464  is_stmt 1
        vperm2f128 $2, %ymm8, %ymm5, %ymm6                      #464.10
..LN1180:
	.loc    1  467  is_stmt 1
        vblendpd  $12, %ymm5, %ymm3, %ymm5                      #467.10
..LN1181:
	.loc    1  475  is_stmt 1
        vunpckhpd %ymm2, %ymm2, %ymm3                           #475.11
..LN1182:
	.loc    1  478  is_stmt 1
        vshufpd   $5, %ymm10, %ymm10, %ymm7                     #478.11
..LN1183:
	.loc    1  480  is_stmt 1
        vmulpd    %ymm7, %ymm3, %ymm4                           #480.10
..LN1184:
	.loc    1  468  is_stmt 1
        vaddpd    %ymm5, %ymm6, %ymm5                           #468.10
..LN1185:
	.loc    1  474  is_stmt 1
        vmovddup  %ymm2, %ymm6                                  #474.11
..LN1186:
	.loc    1  481  is_stmt 1
        vfmaddsub213pd %ymm4, %ymm10, %ymm6                     #481.10
..LN1187:
	.loc    1  483  is_stmt 1
        vaddpd    %ymm5, %ymm6, %ymm8                           #483.10
..LN1188:
	.loc    1  492  is_stmt 1
        vmovupd   %xmm8, 192(%rdi)                              #492.26
..LN1189:
	.loc    1  494  is_stmt 1
        vmovupd   %ymm9, (%rsi)                                 #494.29
..LN1190:
	.loc    1  495  is_stmt 1
        vextractf128 $1, %ymm8, 192(%rsi)                       #495.26
..LN1191:
	.loc    1  496  is_stmt 1
        vzeroupper                                              #496.1
..LN1192:
	.loc    1  496  epilogue_begin  is_stmt 1
        leave                                                   #496.1
..LN1193:
        ret                                                     #496.1
..LN1194:
                                # LOE
..LN1195:
	.cfi_endproc
# mark_end;
	.type	double_MVM_non_macro,@function
	.size	double_MVM_non_macro,.-double_MVM_non_macro
..LNdouble_MVM_non_macro.1196:
.LNdouble_MVM_non_macro:
	.data
# -- End  double_MVM_non_macro
	.section .rodata, "a"
	.align 8
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
	.align 4
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
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.0:
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
	.long	667182
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,52
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .debug_info
	.section .debug_info
.debug_info_seg:
	.align 1
	.4byte 0x000005f6
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
	.8byte ..LNdouble_MVM_non_macro.1196-..L3
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
	.8byte ..LNmain.1118-..L3
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
	.4byte 0x000003a3
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x158
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x15d
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x162
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x167
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x16c
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x171
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x176
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x17b
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x180
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x186
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x18c
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x67
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x192
//	DW_AT_type:
	.4byte 0x000003aa
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x67
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a0
//	DW_AT_type:
	.4byte 0x000003aa
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
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x69
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a7
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x06
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
	.4byte 0x000003b1
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x6d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3274
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000003b1
//	DW_AT_location:
	.2byte 0x5d01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x6e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1ca
//	DW_AT_type:
	.4byte 0x000003ce
//	DW_AT_location:
	.4byte 0x00d09103
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x6e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00646e65
//	DW_AT_type:
	.4byte 0x000003ce
//	DW_AT_location:
	.4byte 0x00e09103
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x6e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1fe
//	DW_AT_type:
	.4byte 0x000003ce
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x20
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x70
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00317477
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x70
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00327477
//	DW_AT_type:
	.4byte 0x000003a3
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x75
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x00000409
//	DW_AT_location:
	.4byte 0x01989103
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
	.4byte 0x00000348
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
	.4byte 0x00000348
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00696863
//	DW_AT_type:
	.4byte 0x00000379
//	DW_AT_location:
	.2byte 0x5e01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x215
//	DW_AT_type:
	.4byte 0x00000379
//	DW_AT_location:
	.2byte 0x5001
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x21a
//	DW_AT_type:
	.4byte 0x00000379
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x21f
//	DW_AT_type:
	.4byte 0x00000379
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x224
//	DW_AT_type:
	.4byte 0x00000379
//	DW_AT_location:
	.2byte 0x5201
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x229
//	DW_AT_type:
	.4byte 0x00000379
//	DW_AT_location:
	.2byte 0x5801
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00697370
//	DW_AT_type:
	.4byte 0x00000379
//	DW_AT_location:
	.2byte 0x5301
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x22e
//	DW_AT_type:
	.4byte 0x00000379
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x233
//	DW_AT_type:
	.4byte 0x00000379
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x23c
//	DW_AT_type:
	.4byte 0x00000379
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
	.4byte 0x00000379
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3276
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000379
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x246
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x25e
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x264
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x26a
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x270
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x276
//	DW_AT_type:
	.4byte 0x00000430
//	DW_AT_location:
	.2byte 0x6b01
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x27c
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x282
//	DW_AT_type:
	.4byte 0x00000430
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x288
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x28e
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x295
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x29c
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2a3
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2aa
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b1
//	DW_AT_type:
	.4byte 0x00000430
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b8
//	DW_AT_type:
	.4byte 0x00000430
//	DW_AT_location:
	.2byte 0x6801
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2bf
//	DW_AT_type:
	.4byte 0x00000430
//	DW_AT_location:
	.2byte 0x6f01
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x8e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2c6
//	DW_AT_type:
	.4byte 0x0000045b
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2e0
//	DW_AT_type:
	.4byte 0x0000045b
//	DW_TAG_lexical_block:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0x77
//	DW_AT_decl_file:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x77
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2e9
//	DW_AT_type:
	.4byte 0x00000486
	.byte 0x00
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x00000336
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x77
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0x113
//	DW_AT_type:
	.4byte 0x00000341
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
	.4byte 0x0000034d
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x59
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x12c
//	DW_AT_type:
	.4byte 0x00000358
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
	.4byte 0x00000369
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x00000372
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
	.4byte 0x0000037e
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x4f
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x140
//	DW_AT_type:
	.4byte 0x00000389
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
	.4byte 0x0000039a
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x00000372
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
	.4byte 0x000003bc
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x90
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x1c0
//	DW_AT_type:
	.4byte 0x000003c7
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
	.4byte 0x000003f3
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
	.4byte 0x000003fe
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
	.4byte 0x000003c7
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x96
//	DW_AT_decl_file:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x1f0
//	DW_AT_type:
	.4byte 0x000003c7
//	DW_TAG_typedef:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x81
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0x204
//	DW_AT_type:
	.4byte 0x00000414
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
	.4byte 0x00000427
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x00000336
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
	.4byte 0x0000043b
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
	.4byte 0x00000452
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x000003a3
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
	.4byte 0x00000466
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
	.4byte 0x0000047d
	.byte 0x00
//	DW_TAG_array_type:
	.byte 0x0e
//	DW_AT_type:
	.4byte 0x000003a3
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
	.4byte 0x00000341
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
	.8byte ..L271
//	DW_AT_high_pc:
	.8byte ..LNdouble_MVM_non_macro.1196-..L271
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x015b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000379
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
	.4byte 0x00000379
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
	.4byte 0x000005e5
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
	.4byte 0x000005ef
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
	.4byte 0x000005ef
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
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x25e
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x264
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x26a
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x270
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x276
//	DW_AT_type:
	.4byte 0x00000430
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
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x282
//	DW_AT_type:
	.4byte 0x00000430
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
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x28e
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x295
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x29c
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2a3
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x15
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2aa
//	DW_AT_type:
	.4byte 0x00000430
//	DW_TAG_variable:
	.byte 0x16
//	DW_AT_decl_line:
	.2byte 0x015d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x2b1
//	DW_AT_type:
	.4byte 0x00000430
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
	.4byte 0x00000430
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
	.4byte 0x00000430
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
	.4byte 0x0000045b
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
	.4byte 0x0000045b
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x000005ea
//	DW_TAG_const_type:
	.byte 0x17
//	DW_AT_type:
	.4byte 0x0000034d
//	DW_TAG_pointer_type:
	.byte 0x09
//	DW_AT_type:
	.4byte 0x000005f4
//	DW_TAG_const_type:
	.byte 0x17
//	DW_AT_type:
	.4byte 0x0000037e
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
	.byte 0x02
	.byte 0x18
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
	.8byte 0x314f2d202e20492d
	.8byte 0x6d6e65706f712d20
	.8byte 0x686372616d2d2070
	.8byte 0x76612d65726f633d
	.8byte 0x6e75746d2d203278
	.8byte 0x612d65726f633d65
	.8byte 0x2d20672d20327876
	.8byte 0x6f2d206d6c2d2053
	.8byte 0x2e314f5f63636920
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
