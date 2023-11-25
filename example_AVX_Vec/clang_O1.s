	.text
	.file	"avx_complex_vec_align_load.c"
	.file	0 "/home/mrahman/AVX_MVM_Complex/example_AVX_Vec" "avx_complex_vec_align_load.c" md5 0xfac792a3dc112de9eb6abf65dde9971d
	.file	1 "/usr/include/bits" "sched.h" md5 0x011fbc95a8077d6469ccb4d6c57438d3
	.file	2 "/home/mrahman" "spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/avxintrin.h" md5 0x6fc4b4933de8dca02ac56d49379e05d0
	.file	3 "/home/mrahman" "spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/emmintrin.h" md5 0x3b885b350ea7fd76ea9c80227854a50a
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI0_0:
	.quad	0x412e848000000000              # double 1.0E+6
.LCPI0_1:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI0_3:
	.quad	0x3cd203af9ee75616              # double 1.0000000000000001E-15
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	0 99 0                          # avx_complex_vec_align_load.c:99:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$384, %rsp                      # imm = 0x180
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
.Ltmp1:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	.loc	0 118 1 prologue_end            # avx_complex_vec_align_load.c:118:1
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%ymm0, 224(%rsp)
	vmovapd	%ymm0, 320(%rsp)
	vmovapd	%ymm0, 288(%rsp)
	vmovapd	%ymm0, 256(%rsp)
.Ltmp2:
	#DEBUG_VALUE: __cpu <- 0
	.loc	0 119 1                         # avx_complex_vec_align_load.c:119:1
	orb	$1, 224(%rsp)
	leaq	224(%rsp), %rdx
.Ltmp3:
	.loc	0 120 4                         # avx_complex_vec_align_load.c:120:4
	movl	$128, %esi
	xorl	%edi, %edi
	vzeroupper
	callq	sched_setaffinity
.Ltmp4:
	.loc	0 120 44 is_stmt 0              # avx_complex_vec_align_load.c:120:44
	cmpl	$-1, %eax
.Ltmp5:
	.loc	0 120 4                         # avx_complex_vec_align_load.c:120:4
	jne	.LBB0_2
.Ltmp6:
# %bb.1:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	.loc	0 121 5 is_stmt 1               # avx_complex_vec_align_load.c:121:5
	movl	$.Lstr, %edi
	callq	puts@PLT
.Ltmp7:
.LBB0_2:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	.loc	0 0 5 is_stmt 0                 # avx_complex_vec_align_load.c:0:5
	movabsq	$14400000000, %r14              # imm = 0x35A4E9000
	.loc	0 127 8 is_stmt 1               # avx_complex_vec_align_load.c:127:8
	movq	%r14, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp8:
	.loc	0 0 8 is_stmt 0                 # avx_complex_vec_align_load.c:0:8
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.Ltmp9:
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	.loc	0 128 8 is_stmt 1               # avx_complex_vec_align_load.c:128:8
	movq	%r14, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp10:
	movq	%rax, %r13
.Ltmp11:
	#DEBUG_VALUE: main:v3 <- $r13
	.loc	0 0 8 is_stmt 0                 # avx_complex_vec_align_load.c:0:8
	movabsq	$4800000000, %r12               # imm = 0x11E1A3000
	.loc	0 130 8 is_stmt 1               # avx_complex_vec_align_load.c:130:8
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp12:
	movq	%rax, %r14
.Ltmp13:
	#DEBUG_VALUE: main:v1 <- $r14
	.loc	0 131 8                         # avx_complex_vec_align_load.c:131:8
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp14:
	movq	%rax, %rbx
.Ltmp15:
	#DEBUG_VALUE: main:v2 <- $rbx
	.loc	0 132 9                         # avx_complex_vec_align_load.c:132:9
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp16:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.Ltmp17:
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 133 10 is_stmt 1              # avx_complex_vec_align_load.c:133:10
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp18:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.Ltmp19:
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	.loc	0 134 9 is_stmt 1               # avx_complex_vec_align_load.c:134:9
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp20:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	movq	%rax, 152(%rsp)                 # 8-byte Spill
.Ltmp21:
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	.loc	0 135 10 is_stmt 1              # avx_complex_vec_align_load.c:135:10
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp22:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 144(%rsp)                 # 8-byte Spill
.Ltmp23:
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	.loc	0 136 10 is_stmt 1              # avx_complex_vec_align_load.c:136:10
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp24:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 184(%rsp)                 # 8-byte Spill
.Ltmp25:
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	.loc	0 137 10 is_stmt 1              # avx_complex_vec_align_load.c:137:10
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp26:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 176(%rsp)                 # 8-byte Spill
.Ltmp27:
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	.loc	0 138 10 is_stmt 1              # avx_complex_vec_align_load.c:138:10
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp28:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 72(%rsp)                  # 8-byte Spill
.Ltmp29:
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	.loc	0 139 10 is_stmt 1              # avx_complex_vec_align_load.c:139:10
	movq	%r12, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp30:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.Ltmp31:
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- 0
	movq	%r14, 120(%rsp)                 # 8-byte Spill
.Ltmp32:
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	.loc	0 151 3 is_stmt 1               # avx_complex_vec_align_load.c:151:3
	addq	$8, %r14
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
.Ltmp33:
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	leaq	8(%rbx), %r15
	movq	%r13, 128(%rsp)                 # 8-byte Spill
.Ltmp34:
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	addq	$8, %r13
	xorl	%r12d, %r12d
.Ltmp35:
	.p2align	4, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:j <- 0
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	xorl	%ebx, %ebx
.Ltmp36:
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r14, $rsp
	.loc	0 155 22 is_stmt 1              # avx_complex_vec_align_load.c:155:22
	movl	$5, %edi
	callq	my_rand
.Ltmp37:
	.loc	0 155 20 is_stmt 0              # avx_complex_vec_align_load.c:155:20
	vmovsd	%xmm0, -8(%r14,%rbx)
	vmovsd	%xmm1, (%r14,%rbx)
	.loc	0 156 22 is_stmt 1              # avx_complex_vec_align_load.c:156:22
	movl	$5, %edi
	callq	my_rand
.Ltmp38:
	.loc	0 156 20 is_stmt 0              # avx_complex_vec_align_load.c:156:20
	vmovsd	%xmm0, -8(%r15,%rbx)
	vmovsd	%xmm1, (%r15,%rbx)
.Ltmp39:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r14, $rsp
	.loc	0 153 15 is_stmt 1              # avx_complex_vec_align_load.c:153:15
	addq	$16, %rbx
	cmpq	$48, %rbx
.Ltmp40:
	.loc	0 153 5 is_stmt 0               # avx_complex_vec_align_load.c:153:5
	jne	.LBB0_4
.Ltmp41:
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r12
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	xorl	%ebx, %ebx
.Ltmp42:
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_stack_value] $r13, $rsp
	.loc	0 161 22 is_stmt 1              # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp43:
	.loc	0 161 20 is_stmt 0              # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -8(%r13,%rbx)
	vmovsd	%xmm1, (%r13,%rbx)
.Ltmp44:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r13, $rsp
	.loc	0 159 15 is_stmt 1              # avx_complex_vec_align_load.c:159:15
	addq	$16, %rbx
	cmpq	$144, %rbx
.Ltmp45:
	.loc	0 159 5 is_stmt 0               # avx_complex_vec_align_load.c:159:5
	jne	.LBB0_6
.Ltmp46:
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r12
	.loc	0 151 19 is_stmt 1              # avx_complex_vec_align_load.c:151:19
	incq	%r12
.Ltmp47:
	#DEBUG_VALUE: main:i <- $r12
	.loc	0 151 3 is_stmt 0               # avx_complex_vec_align_load.c:151:3
	addq	$48, %r14
	addq	$48, %r15
	addq	$144, %r13
.Ltmp48:
	.loc	0 151 13                        # avx_complex_vec_align_load.c:151:13
	cmpq	$100000000, %r12                # imm = 0x5F5E100
.Ltmp49:
	.loc	0 151 3                         # avx_complex_vec_align_load.c:151:3
	jne	.LBB0_3
.Ltmp50:
# %bb.8:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:i <- 0
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	120(%rsp), %rax                 # 8-byte Reload
.Ltmp51:
	#DEBUG_VALUE: main:v1 <- $rax
	.loc	0 172 1 is_stmt 1               # avx_complex_vec_align_load.c:172:1
	leaq	8(%rax), %r9
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp52:
	#DEBUG_VALUE: main:psi <- $r11
	leaq	8(%r11), %rcx
	movq	112(%rsp), %rax                 # 8-byte Reload
.Ltmp53:
	#DEBUG_VALUE: main:v2 <- $rax
	leaq	8(%rax), %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp54:
	#DEBUG_VALUE: main:psi2 <- $rax
	leaq	8(%rax), %rsi
	movq	128(%rsp), %rax                 # 8-byte Reload
.Ltmp55:
	#DEBUG_VALUE: main:v3 <- $rax
	leaq	8(%rax), %rdi
	movq	48(%rsp), %r10                  # 8-byte Reload
.Ltmp56:
	#DEBUG_VALUE: main:up <- $r10
	leaq	8(%r10), %rbx
	xorl	%r8d, %r8d
	movq	152(%rsp), %r15                 # 8-byte Reload
.Ltmp57:
	#DEBUG_VALUE: main:chi <- $r15
	.loc	0 0 1 is_stmt 0                 # avx_complex_vec_align_load.c:0:1
	movq	144(%rsp), %r12                 # 8-byte Reload
.Ltmp58:
	#DEBUG_VALUE: main:chi2 <- $r12
	.p2align	4, 0x90
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_12 Depth 2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r10
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- $r11
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r8
	#DEBUG_VALUE: main:j <- 0
	xorl	%eax, %eax
.Ltmp59:
	.p2align	4, 0x90
.LBB0_10:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r10
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- $r11
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r8
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r9, $rsp
	.loc	0 176 23 is_stmt 1              # avx_complex_vec_align_load.c:176:23
	vmovups	-8(%r9,%rax), %xmm0
	.loc	0 176 21 is_stmt 0              # avx_complex_vec_align_load.c:176:21
	vmovups	%xmm0, -8(%rcx,%rax)
	.loc	0 177 24 is_stmt 1              # avx_complex_vec_align_load.c:177:24
	vmovupd	-8(%rdx,%rax), %xmm0
	.loc	0 177 22 is_stmt 0              # avx_complex_vec_align_load.c:177:22
	vmovupd	%xmm0, -8(%rsi,%rax)
.Ltmp60:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r9, $rsp
	.loc	0 174 15 is_stmt 1              # avx_complex_vec_align_load.c:174:15
	addq	$16, %rax
	cmpq	$48, %rax
.Ltmp61:
	.loc	0 174 5 is_stmt 0               # avx_complex_vec_align_load.c:174:5
	jne	.LBB0_10
.Ltmp62:
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r10
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- $r11
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r8
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	xorl	%eax, %eax
.Ltmp63:
	.p2align	4, 0x90
.LBB0_12:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r10
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- $r11
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r8
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_stack_value] $rdi, $rsp
	.loc	0 182 22 is_stmt 1              # avx_complex_vec_align_load.c:182:22
	vmovupd	-8(%rdi,%rax), %xmm0
	.loc	0 182 20 is_stmt 0              # avx_complex_vec_align_load.c:182:20
	vmovupd	%xmm0, -8(%rbx,%rax)
.Ltmp64:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rsp
	.loc	0 180 15 is_stmt 1              # avx_complex_vec_align_load.c:180:15
	addq	$16, %rax
	cmpq	$144, %rax
.Ltmp65:
	.loc	0 180 5 is_stmt 0               # avx_complex_vec_align_load.c:180:5
	jne	.LBB0_12
.Ltmp66:
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r10
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- $r11
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r8
	.loc	0 185 5 is_stmt 1               # avx_complex_vec_align_load.c:185:5
	vmovapd	(%r10), %ymm0
.Ltmp67:
	#DEBUG_VALUE: main:temp1 <- $ymm0
	vmovddup	%ymm0, %ymm8                    # ymm8 = ymm0[0,0,2,2]
.Ltmp68:
	#DEBUG_VALUE: main:temp6 <- $ymm8
	vpermilpd	$15, %ymm0, %ymm10      # ymm10 = ymm0[1,1,3,3]
.Ltmp69:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmovupd	48(%r10), %ymm0
.Ltmp70:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	vmovddup	%ymm0, %ymm9                    # ymm9 = ymm0[0,0,2,2]
.Ltmp71:
	#DEBUG_VALUE: main:temp7 <- $ymm9
	vpermilpd	$15, %ymm0, %ymm11      # ymm11 = ymm0[1,1,3,3]
.Ltmp72:
	#DEBUG_VALUE: main:temp2 <- $ymm11
	vmovapd	96(%r10), %ymm1
.Ltmp73:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovddup	%ymm1, %ymm0                    # ymm0 = ymm1[0,0,2,2]
.Ltmp74:
	#DEBUG_VALUE: main:temp8 <- $ymm0
	vpermilpd	$15, %ymm1, %ymm1       # ymm1 = ymm1[1,1,3,3]
.Ltmp75:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovapd	(%r11), %ymm3
.Ltmp76:
	#DEBUG_VALUE: main:temp4 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm5        # ymm5 = ymm3[1,0,3,2]
.Ltmp77:
	#DEBUG_VALUE: main:temp9 <- $ymm5
	.loc	0 0 5 is_stmt 0                 # avx_complex_vec_align_load.c:0:5
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp78:
	#DEBUG_VALUE: main:psi2 <- $rax
	.loc	0 185 5                         # avx_complex_vec_align_load.c:185:5
	vmovapd	(%rax), %ymm2
.Ltmp79:
	#DEBUG_VALUE: main:temp5 <- $ymm2
	vpermilpd	$5, %ymm2, %ymm4        # ymm4 = ymm2[1,0,3,2]
.Ltmp80:
	#DEBUG_VALUE: main:temp10 <- $ymm4
	vmulpd	%ymm5, %ymm10, %ymm6
.Ltmp81:
	#DEBUG_VALUE: main:temp12 <- $ymm6
	vfmaddsub231pd	%ymm3, %ymm8, %ymm6     # ymm6 = (ymm8 * ymm3) +/- ymm6
.Ltmp82:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmulpd	%ymm5, %ymm11, %ymm7
.Ltmp83:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	vfmaddsub231pd	%ymm3, %ymm9, %ymm7     # ymm7 = (ymm9 * ymm3) +/- ymm7
.Ltmp84:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	vinsertf128	$1, %xmm7, %ymm6, %ymm12
.Ltmp85:
	#DEBUG_VALUE: main:temp13 <- $ymm12
	#DEBUG_VALUE: main:temp11 <- undef
	vperm2f128	$49, %ymm7, %ymm6, %ymm6 # ymm6 = ymm6[2,3],ymm7[2,3]
.Ltmp86:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vaddpd	%ymm6, %ymm12, %ymm6
.Ltmp87:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmovupd	16(%r10), %ymm7
.Ltmp88:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	#DEBUG_VALUE: main:temp12 <- undef
	#DEBUG_VALUE: main:temp13 <- undef
	vperm2f128	$49, 64(%r10), %ymm7, %ymm12 # ymm12 = ymm7[2,3],mem[2,3]
.Ltmp89:
	#DEBUG_VALUE: main:temp12 <- $ymm12
	vmovupd	16(%r11), %ymm7
.Ltmp90:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	#DEBUG_VALUE: main:temp16 <- undef
	vpermpd	$238, %ymm7, %ymm13             # ymm13 = ymm7[2,3,2,3]
.Ltmp91:
	#DEBUG_VALUE: main:temp13 <- $ymm13
	vmovddup	%ymm12, %ymm14                  # ymm14 = ymm12[0,0,2,2]
.Ltmp92:
	#DEBUG_VALUE: main:temp15 <- $ymm14
	vpermilpd	$15, %ymm12, %ymm12     # ymm12 = ymm12[1,1,3,3]
.Ltmp93:
	#DEBUG_VALUE: main:temp12 <- $ymm12
	vpermpd	$187, %ymm7, %ymm15             # ymm15 = ymm7[3,2,3,2]
.Ltmp94:
	#DEBUG_VALUE: main:temp14 <- $ymm15
	vmulpd	%ymm15, %ymm12, %ymm15
.Ltmp95:
	#DEBUG_VALUE: main:temp14 <- $ymm15
	vfmaddsub231pd	%ymm13, %ymm14, %ymm15  # ymm15 = (ymm14 * ymm13) +/- ymm15
.Ltmp96:
	#DEBUG_VALUE: main:temp13 <- $ymm15
	vaddpd	%ymm6, %ymm15, %ymm6
.Ltmp97:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmulpd	%ymm4, %ymm10, %ymm10
.Ltmp98:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vfmaddsub231pd	%ymm8, %ymm2, %ymm10    # ymm10 = (ymm2 * ymm8) +/- ymm10
.Ltmp99:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmulpd	%ymm4, %ymm11, %ymm8
.Ltmp100:
	#DEBUG_VALUE: main:temp2 <- $ymm8
	vfmaddsub231pd	%ymm9, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm9) +/- ymm8
.Ltmp101:
	#DEBUG_VALUE: main:temp7 <- $ymm8
	vinsertf128	$1, %xmm8, %ymm10, %ymm9
.Ltmp102:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp1 <- undef
	vperm2f128	$49, %ymm8, %ymm10, %ymm8 # ymm8 = ymm10[2,3],ymm8[2,3]
.Ltmp103:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vaddpd	%ymm8, %ymm9, %ymm8
.Ltmp104:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmovupd	16(%rax), %ymm9
.Ltmp105:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp14 <- undef
	vpermpd	$238, %ymm9, %ymm10             # ymm10 = ymm9[2,3,2,3]
.Ltmp106:
	#DEBUG_VALUE: main:temp14 <- $ymm10
	vpermpd	$187, %ymm9, %ymm11             # ymm11 = ymm9[3,2,3,2]
.Ltmp107:
	#DEBUG_VALUE: main:temp17 <- $ymm11
	vmulpd	%ymm11, %ymm12, %ymm11
.Ltmp108:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vfmaddsub231pd	%ymm10, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm10) +/- ymm11
.Ltmp109:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vaddpd	%ymm11, %ymm8, %ymm8
.Ltmp110:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmulpd	%ymm5, %ymm1, %ymm5
.Ltmp111:
	#DEBUG_VALUE: main:temp12 <- $ymm5
	vfmaddsub231pd	%ymm3, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm3) +/- ymm5
.Ltmp112:
	#DEBUG_VALUE: main:temp4 <- $ymm5
	vmulpd	%ymm4, %ymm1, %ymm1
.Ltmp113:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vfmaddsub231pd	%ymm2, %ymm0, %ymm1     # ymm1 = (ymm0 * ymm2) +/- ymm1
.Ltmp114:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vinsertf128	$1, %xmm1, %ymm5, %ymm0
.Ltmp115:
	#DEBUG_VALUE: main:temp5 <- $ymm0
	#DEBUG_VALUE: main:temp4 <- undef
	vperm2f128	$49, %ymm1, %ymm5, %ymm1 # ymm1 = ymm5[2,3],ymm1[2,3]
.Ltmp116:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
.Ltmp117:
	#DEBUG_VALUE: main:temp3 <- $ymm0
	#DEBUG_VALUE: main:temp10 <- undef
	#DEBUG_VALUE: main:temp9 <- undef
	vbroadcastsd	128(%r10), %ymm1
.Ltmp118:
	#DEBUG_VALUE: main:temp10 <- $ymm1
	vbroadcastsd	136(%r10), %ymm2
.Ltmp119:
	#DEBUG_VALUE: main:temp12 <- $ymm2
	vperm2f128	$49, %ymm9, %ymm7, %ymm3 # ymm3 = ymm7[2,3],ymm9[2,3]
.Ltmp120:
	#DEBUG_VALUE: main:temp9 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm4        # ymm4 = ymm3[1,0,3,2]
.Ltmp121:
	#DEBUG_VALUE: main:temp13 <- $ymm4
	vmulpd	%ymm2, %ymm4, %ymm2
.Ltmp122:
	#DEBUG_VALUE: main:temp2 <- $ymm2
	vfmaddsub231pd	%ymm1, %ymm3, %ymm2     # ymm2 = (ymm3 * ymm1) +/- ymm2
.Ltmp123:
	#DEBUG_VALUE: main:temp7 <- $ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
.Ltmp124:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	#DEBUG_VALUE: main:chi2_3rd <- undef
	movq	%r8, %rax
.Ltmp125:
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rax
	vmovupd	%ymm6, (%r15,%rax)
	vmovapd	%xmm0, 32(%r15,%rax)
	vmovupd	%ymm8, (%r12,%rax)
	vextractf128	$1, %ymm0, 32(%r12,%rax)
.Ltmp126:
	.loc	0 172 17 is_stmt 1              # avx_complex_vec_align_load.c:172:17
	incq	%r8
.Ltmp127:
	#DEBUG_VALUE: main:i <- $r8
	.loc	0 172 1 is_stmt 0               # avx_complex_vec_align_load.c:172:1
	addq	$48, %r9
	addq	$48, %rcx
	addq	$48, %rdx
	addq	$48, %rsi
	addq	$144, %rdi
	addq	$144, %rbx
.Ltmp128:
	.loc	0 172 11                        # avx_complex_vec_align_load.c:172:11
	cmpq	$100000000, %r8                 # imm = 0x5F5E100
.Ltmp129:
	.loc	0 172 1                         # avx_complex_vec_align_load.c:172:1
	jne	.LBB0_9
.Ltmp130:
# %bb.14:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r10
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- $r11
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r8
	#DEBUG_VALUE: main:temp1 <- $ymm8
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:temp7 <- $ymm2
	#DEBUG_VALUE: main:temp9 <- $ymm3
	#DEBUG_VALUE: main:temp10 <- $ymm1
	#DEBUG_VALUE: main:temp11 <- $ymm6
	#DEBUG_VALUE: main:temp13 <- $ymm4
	#DEBUG_VALUE: main:temp15 <- $ymm14
	#DEBUG_VALUE: main:temp14 <- $ymm10
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	.loc	0 0 1                           # avx_complex_vec_align_load.c:0:1
	xorl	%r14d, %r14d
	leaq	192(%rsp), %rdi
	.loc	0 190 3 is_stmt 1               # avx_complex_vec_align_load.c:190:3
	xorl	%esi, %esi
	vzeroupper
.Ltmp131:
	callq	gettimeofday
.Ltmp132:
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 192 9                         # avx_complex_vec_align_load.c:192:9
	callq	omp_get_wtime
.Ltmp133:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 104(%rsp)                # 8-byte Spill
.Ltmp134:
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 104] [$rsp+0]
	.loc	0 194 6 is_stmt 1               # avx_complex_vec_align_load.c:194:6
	callq	clock
.Ltmp135:
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	movq	40(%rsp), %r10                  # 8-byte Reload
.Ltmp136:
	#DEBUG_VALUE: main:psi <- $r10
	movq	48(%rsp), %r9                   # 8-byte Reload
.Ltmp137:
	#DEBUG_VALUE: main:up <- $r9
	.loc	0 194 6                         # avx_complex_vec_align_load.c:194:6
	movq	%rax, %r13
.Ltmp138:
	#DEBUG_VALUE: main:t1 <- $r13
	#DEBUG_VALUE: main:i <- 0
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	120(%rsp), %rax                 # 8-byte Reload
.Ltmp139:
	#DEBUG_VALUE: main:v1 <- $rax
	.loc	0 196 1 is_stmt 1               # avx_complex_vec_align_load.c:196:1
	leaq	8(%rax), %r8
	leaq	8(%r10), %rcx
	movq	112(%rsp), %rax                 # 8-byte Reload
.Ltmp140:
	#DEBUG_VALUE: main:v2 <- $rax
	leaq	8(%rax), %rdx
	movq	32(%rsp), %r11                  # 8-byte Reload
.Ltmp141:
	#DEBUG_VALUE: main:psi2 <- $r11
	leaq	8(%r11), %rsi
	movq	128(%rsp), %rax                 # 8-byte Reload
.Ltmp142:
	#DEBUG_VALUE: main:v3 <- $rax
	leaq	8(%rax), %rdi
	leaq	8(%r9), %rbx
.Ltmp143:
	.p2align	4, 0x90
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $r13
	#DEBUG_VALUE: main:i <- $r14
	#DEBUG_VALUE: main:j <- 0
	.loc	0 0 1 is_stmt 0                 # avx_complex_vec_align_load.c:0:1
	xorl	%eax, %eax
.Ltmp144:
	.p2align	4, 0x90
.LBB0_16:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $r13
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r8, $rsp
	.loc	0 200 23 is_stmt 1              # avx_complex_vec_align_load.c:200:23
	vmovups	-8(%r8,%rax), %xmm0
	.loc	0 200 21 is_stmt 0              # avx_complex_vec_align_load.c:200:21
	vmovups	%xmm0, -8(%rcx,%rax)
	.loc	0 201 24 is_stmt 1              # avx_complex_vec_align_load.c:201:24
	vmovupd	-8(%rdx,%rax), %xmm0
	.loc	0 201 22 is_stmt 0              # avx_complex_vec_align_load.c:201:22
	vmovupd	%xmm0, -8(%rsi,%rax)
.Ltmp145:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r8, $rsp
	.loc	0 198 15 is_stmt 1              # avx_complex_vec_align_load.c:198:15
	addq	$16, %rax
	cmpq	$48, %rax
.Ltmp146:
	.loc	0 198 5 is_stmt 0               # avx_complex_vec_align_load.c:198:5
	jne	.LBB0_16
.Ltmp147:
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $r13
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	xorl	%eax, %eax
.Ltmp148:
	.p2align	4, 0x90
.LBB0_18:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $r13
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_stack_value] $rdi, $rsp
	.loc	0 206 22 is_stmt 1              # avx_complex_vec_align_load.c:206:22
	vmovupd	-8(%rdi,%rax), %xmm0
	.loc	0 206 20 is_stmt 0              # avx_complex_vec_align_load.c:206:20
	vmovupd	%xmm0, -8(%rbx,%rax)
.Ltmp149:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rsp
	.loc	0 204 15 is_stmt 1              # avx_complex_vec_align_load.c:204:15
	addq	$16, %rax
	cmpq	$144, %rax
.Ltmp150:
	.loc	0 204 5 is_stmt 0               # avx_complex_vec_align_load.c:204:5
	jne	.LBB0_18
.Ltmp151:
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $r13
	.loc	0 209 5 is_stmt 1               # avx_complex_vec_align_load.c:209:5
	#APP
	# LLVM-MCA-BEGIN double_MVM_macro
	#NO_APP
.Ltmp152:
	.loc	0 210 9                         # avx_complex_vec_align_load.c:210:9
	vmovapd	(%r9), %ymm0
.Ltmp153:
	#DEBUG_VALUE: main:temp1 <- $ymm0
	vmovddup	%ymm0, %ymm8                    # ymm8 = ymm0[0,0,2,2]
.Ltmp154:
	#DEBUG_VALUE: main:temp6 <- $ymm8
	vpermilpd	$15, %ymm0, %ymm10      # ymm10 = ymm0[1,1,3,3]
.Ltmp155:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmovupd	48(%r9), %ymm0
.Ltmp156:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	vmovddup	%ymm0, %ymm9                    # ymm9 = ymm0[0,0,2,2]
.Ltmp157:
	#DEBUG_VALUE: main:temp7 <- $ymm9
	vpermilpd	$15, %ymm0, %ymm11      # ymm11 = ymm0[1,1,3,3]
.Ltmp158:
	#DEBUG_VALUE: main:temp2 <- $ymm11
	vmovapd	96(%r9), %ymm1
.Ltmp159:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovddup	%ymm1, %ymm0                    # ymm0 = ymm1[0,0,2,2]
.Ltmp160:
	#DEBUG_VALUE: main:temp8 <- $ymm0
	vpermilpd	$15, %ymm1, %ymm1       # ymm1 = ymm1[1,1,3,3]
.Ltmp161:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovapd	(%r10), %ymm3
.Ltmp162:
	#DEBUG_VALUE: main:temp4 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm5        # ymm5 = ymm3[1,0,3,2]
.Ltmp163:
	#DEBUG_VALUE: main:temp9 <- $ymm5
	vmovapd	(%r11), %ymm2
.Ltmp164:
	#DEBUG_VALUE: main:temp5 <- $ymm2
	vpermilpd	$5, %ymm2, %ymm4        # ymm4 = ymm2[1,0,3,2]
.Ltmp165:
	#DEBUG_VALUE: main:temp10 <- $ymm4
	vmulpd	%ymm5, %ymm10, %ymm6
.Ltmp166:
	#DEBUG_VALUE: main:temp12 <- $ymm6
	vfmaddsub231pd	%ymm3, %ymm8, %ymm6     # ymm6 = (ymm8 * ymm3) +/- ymm6
.Ltmp167:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmulpd	%ymm5, %ymm11, %ymm7
.Ltmp168:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	vfmaddsub231pd	%ymm3, %ymm9, %ymm7     # ymm7 = (ymm9 * ymm3) +/- ymm7
.Ltmp169:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	vinsertf128	$1, %xmm7, %ymm6, %ymm12
.Ltmp170:
	#DEBUG_VALUE: main:temp13 <- $ymm12
	#DEBUG_VALUE: main:temp11 <- undef
	vperm2f128	$49, %ymm7, %ymm6, %ymm6 # ymm6 = ymm6[2,3],ymm7[2,3]
.Ltmp171:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	#DEBUG_VALUE: main:temp11 <- undef
	vmovupd	16(%r9), %ymm7
.Ltmp172:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	#DEBUG_VALUE: main:temp12 <- undef
	#DEBUG_VALUE: main:temp13 <- undef
	vperm2f128	$49, 64(%r9), %ymm7, %ymm13 # ymm13 = ymm7[2,3],mem[2,3]
.Ltmp173:
	#DEBUG_VALUE: main:temp12 <- $ymm13
	vaddpd	%ymm6, %ymm12, %ymm6
.Ltmp174:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmovupd	16(%r10), %ymm7
.Ltmp175:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	#DEBUG_VALUE: main:temp16 <- undef
	vpermpd	$238, %ymm7, %ymm12             # ymm12 = ymm7[2,3,2,3]
.Ltmp176:
	#DEBUG_VALUE: main:temp13 <- $ymm12
	vmovddup	%ymm13, %ymm14                  # ymm14 = ymm13[0,0,2,2]
.Ltmp177:
	#DEBUG_VALUE: main:temp15 <- $ymm14
	vpermilpd	$15, %ymm13, %ymm13     # ymm13 = ymm13[1,1,3,3]
.Ltmp178:
	#DEBUG_VALUE: main:temp12 <- $ymm13
	vpermpd	$187, %ymm7, %ymm15             # ymm15 = ymm7[3,2,3,2]
.Ltmp179:
	#DEBUG_VALUE: main:temp14 <- $ymm15
	vmulpd	%ymm15, %ymm13, %ymm15
.Ltmp180:
	#DEBUG_VALUE: main:temp14 <- $ymm15
	vfmaddsub231pd	%ymm12, %ymm14, %ymm15  # ymm15 = (ymm14 * ymm12) +/- ymm15
.Ltmp181:
	#DEBUG_VALUE: main:temp13 <- $ymm15
	vaddpd	%ymm6, %ymm15, %ymm6
.Ltmp182:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmulpd	%ymm4, %ymm10, %ymm10
.Ltmp183:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vfmaddsub231pd	%ymm8, %ymm2, %ymm10    # ymm10 = (ymm2 * ymm8) +/- ymm10
.Ltmp184:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmulpd	%ymm4, %ymm11, %ymm8
.Ltmp185:
	#DEBUG_VALUE: main:temp2 <- $ymm8
	vfmaddsub231pd	%ymm9, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm9) +/- ymm8
.Ltmp186:
	#DEBUG_VALUE: main:temp7 <- $ymm8
	vinsertf128	$1, %xmm8, %ymm10, %ymm9
.Ltmp187:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp1 <- undef
	vperm2f128	$49, %ymm8, %ymm10, %ymm8 # ymm8 = ymm10[2,3],ymm8[2,3]
.Ltmp188:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vaddpd	%ymm8, %ymm9, %ymm8
.Ltmp189:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmovupd	16(%r11), %ymm9
.Ltmp190:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp14 <- undef
	vpermpd	$238, %ymm9, %ymm10             # ymm10 = ymm9[2,3,2,3]
.Ltmp191:
	#DEBUG_VALUE: main:temp14 <- $ymm10
	vpermpd	$187, %ymm9, %ymm11             # ymm11 = ymm9[3,2,3,2]
.Ltmp192:
	#DEBUG_VALUE: main:temp17 <- $ymm11
	vmulpd	%ymm11, %ymm13, %ymm11
.Ltmp193:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vfmaddsub231pd	%ymm10, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm10) +/- ymm11
.Ltmp194:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vaddpd	%ymm11, %ymm8, %ymm8
.Ltmp195:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmulpd	%ymm5, %ymm1, %ymm5
.Ltmp196:
	#DEBUG_VALUE: main:temp12 <- $ymm5
	vfmaddsub231pd	%ymm3, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm3) +/- ymm5
.Ltmp197:
	#DEBUG_VALUE: main:temp4 <- $ymm5
	vmulpd	%ymm4, %ymm1, %ymm1
.Ltmp198:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vfmaddsub231pd	%ymm2, %ymm0, %ymm1     # ymm1 = (ymm0 * ymm2) +/- ymm1
.Ltmp199:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vinsertf128	$1, %xmm1, %ymm5, %ymm0
.Ltmp200:
	#DEBUG_VALUE: main:temp5 <- $ymm0
	#DEBUG_VALUE: main:temp4 <- undef
	vperm2f128	$49, %ymm1, %ymm5, %ymm1 # ymm1 = ymm5[2,3],ymm1[2,3]
.Ltmp201:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
.Ltmp202:
	#DEBUG_VALUE: main:temp3 <- $ymm0
	#DEBUG_VALUE: main:temp10 <- undef
	#DEBUG_VALUE: main:temp9 <- undef
	vbroadcastsd	128(%r9), %ymm1
.Ltmp203:
	#DEBUG_VALUE: main:temp10 <- $ymm1
	vbroadcastsd	136(%r9), %ymm2
.Ltmp204:
	#DEBUG_VALUE: main:temp12 <- $ymm2
	vperm2f128	$49, %ymm9, %ymm7, %ymm3 # ymm3 = ymm7[2,3],ymm9[2,3]
.Ltmp205:
	#DEBUG_VALUE: main:temp9 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm4        # ymm4 = ymm3[1,0,3,2]
.Ltmp206:
	#DEBUG_VALUE: main:temp13 <- $ymm4
	vmulpd	%ymm2, %ymm4, %ymm2
.Ltmp207:
	#DEBUG_VALUE: main:temp2 <- $ymm2
	vfmaddsub231pd	%ymm1, %ymm3, %ymm2     # ymm2 = (ymm3 * ymm1) +/- ymm2
.Ltmp208:
	#DEBUG_VALUE: main:temp7 <- $ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
.Ltmp209:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	#DEBUG_VALUE: main:chi2_3rd <- undef
	movq	%r14, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rax
	vmovupd	%ymm6, (%r15,%rax)
	vmovapd	%xmm0, 32(%r15,%rax)
	vmovupd	%ymm8, (%r12,%rax)
	vextractf128	$1, %ymm0, 32(%r12,%rax)
.Ltmp210:
	.loc	0 211 5                         # avx_complex_vec_align_load.c:211:5
	#APP
	# LLVM-MCA-END
	#NO_APP
.Ltmp211:
	.loc	0 196 17                        # avx_complex_vec_align_load.c:196:17
	incq	%r14
.Ltmp212:
	#DEBUG_VALUE: main:i <- $r14
	.loc	0 196 1 is_stmt 0               # avx_complex_vec_align_load.c:196:1
	addq	$48, %r8
	addq	$48, %rcx
	addq	$48, %rdx
	addq	$48, %rsi
	addq	$144, %rdi
	addq	$144, %rbx
.Ltmp213:
	.loc	0 196 11                        # avx_complex_vec_align_load.c:196:11
	cmpq	$100000000, %r14                # imm = 0x5F5E100
.Ltmp214:
	.loc	0 196 1                         # avx_complex_vec_align_load.c:196:1
	jne	.LBB0_15
.Ltmp215:
# %bb.20:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r15
	#DEBUG_VALUE: main:chi2 <- $r12
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	#DEBUG_VALUE: main:temp1 <- $ymm8
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:temp7 <- $ymm2
	#DEBUG_VALUE: main:temp9 <- $ymm3
	#DEBUG_VALUE: main:temp10 <- $ymm1
	#DEBUG_VALUE: main:temp11 <- $ymm6
	#DEBUG_VALUE: main:temp13 <- $ymm4
	#DEBUG_VALUE: main:temp15 <- $ymm14
	#DEBUG_VALUE: main:temp14 <- $ymm10
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $r13
	.loc	0 215 4 is_stmt 1               # avx_complex_vec_align_load.c:215:4
	vzeroupper
.Ltmp216:
	callq	clock
.Ltmp217:
	movq	%rax, %rbx
.Ltmp218:
	#DEBUG_VALUE: main:t2 <- $rbx
	.loc	0 217 9                         # avx_complex_vec_align_load.c:217:9
	callq	omp_get_wtime
.Ltmp219:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
.Ltmp220:
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	leaq	208(%rsp), %r14
.Ltmp221:
	.loc	0 219 3 is_stmt 1               # avx_complex_vec_align_load.c:219:3
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp222:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	leaq	160(%rsp), %rdi
	leaq	192(%rsp), %rdx
	.loc	0 220 3 is_stmt 1               # avx_complex_vec_align_load.c:220:3
	movq	%r14, %rsi
	callq	timeval_subtract
.Ltmp223:
	.loc	0 222 80                        # avx_complex_vec_align_load.c:222:80
	subq	%r13, %rbx
.Ltmp224:
	.loc	0 222 77 is_stmt 0              # avx_complex_vec_align_load.c:222:77
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsi2sd	%rbx, %xmm7, %xmm0
	.loc	0 222 84                        # avx_complex_vec_align_load.c:222:84
	vdivsd	.LCPI0_0(%rip), %xmm0, %xmm0
	.loc	0 222 5                         # avx_complex_vec_align_load.c:222:5
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp225:
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	vmovsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp226:
	#DEBUG_VALUE: main:wt2 <- $xmm0
	.loc	0 224 80 is_stmt 1              # avx_complex_vec_align_load.c:224:80
	vsubsd	104(%rsp), %xmm0, %xmm0         # 8-byte Folded Reload
.Ltmp227:
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 224 5 is_stmt 0               # avx_complex_vec_align_load.c:224:5
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp228:
	.loc	0 226 79 is_stmt 1              # avx_complex_vec_align_load.c:226:79
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	160(%rsp), %xmm7, %xmm1
	.loc	0 226 96 is_stmt 0              # avx_complex_vec_align_load.c:226:96
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	168(%rsp), %xmm7, %xmm0
	.loc	0 226 94                        # avx_complex_vec_align_load.c:226:94
	vfmadd132sd	.LCPI0_1(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	.loc	0 226 5                         # avx_complex_vec_align_load.c:226:5
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp229:
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	xorl	%r9d, %r9d
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp230:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp231:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp232:
	#DEBUG_VALUE: main:up <- $rcx
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:i <- 0
	movq	120(%rsp), %rax                 # 8-byte Reload
.Ltmp233:
	#DEBUG_VALUE: main:v1 <- $rax
	.loc	0 236 3 is_stmt 1               # avx_complex_vec_align_load.c:236:3
	leaq	8(%rax), %rdi
	leaq	8(%r11), %rdx
	movq	112(%rsp), %rax                 # 8-byte Reload
.Ltmp234:
	#DEBUG_VALUE: main:v2 <- $rax
	leaq	8(%rax), %rbx
	leaq	8(%rsi), %r13
.Ltmp235:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	128(%rsp), %rax                 # 8-byte Reload
.Ltmp236:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 236 3                         # avx_complex_vec_align_load.c:236:3
	leaq	8(%rax), %r12
.Ltmp237:
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	leaq	8(%rcx), %r14
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp238:
	#DEBUG_VALUE: main:chi5 <- $r8
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp239:
	#DEBUG_VALUE: main:chi6 <- $r10
	.p2align	4, 0x90
.LBB0_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:j <- 0
	xorl	%eax, %eax
.Ltmp240:
	.p2align	4, 0x90
.LBB0_22:                               #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rdi, $rsp
	.loc	0 241 23 is_stmt 1              # avx_complex_vec_align_load.c:241:23
	vmovups	-8(%rdi,%rax), %xmm0
	.loc	0 241 21 is_stmt 0              # avx_complex_vec_align_load.c:241:21
	vmovups	%xmm0, -8(%rdx,%rax)
	.loc	0 242 24 is_stmt 1              # avx_complex_vec_align_load.c:242:24
	vmovupd	-8(%rbx,%rax), %xmm0
	.loc	0 242 22 is_stmt 0              # avx_complex_vec_align_load.c:242:22
	vmovupd	%xmm0, -8(%r13,%rax)
.Ltmp241:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rsp
	.loc	0 239 15 is_stmt 1              # avx_complex_vec_align_load.c:239:15
	addq	$16, %rax
	cmpq	$48, %rax
.Ltmp242:
	.loc	0 239 5 is_stmt 0               # avx_complex_vec_align_load.c:239:5
	jne	.LBB0_22
.Ltmp243:
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	xorl	%eax, %eax
.Ltmp244:
	.p2align	4, 0x90
.LBB0_24:                               #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_stack_value] $r12, $rsp
	.loc	0 247 22 is_stmt 1              # avx_complex_vec_align_load.c:247:22
	vmovupd	-8(%r12,%rax), %xmm0
	.loc	0 247 20 is_stmt 0              # avx_complex_vec_align_load.c:247:20
	vmovupd	%xmm0, -8(%r14,%rax)
.Ltmp245:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r12, $rsp
	.loc	0 245 15 is_stmt 1              # avx_complex_vec_align_load.c:245:15
	addq	$16, %rax
	cmpq	$144, %rax
.Ltmp246:
	.loc	0 245 5 is_stmt 0               # avx_complex_vec_align_load.c:245:5
	jne	.LBB0_24
.Ltmp247:
# %bb.25:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	.loc	0 250 3 is_stmt 1               # avx_complex_vec_align_load.c:250:3
	vmovsd	(%rcx), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%rcx), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%r11), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%r11), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	jp	.LBB0_26
.Ltmp248:
.LBB0_28:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	leaq	(%r9,%r9,2), %rax
	shlq	$4, %rax
	vmovsd	%xmm0, (%r8,%rax)
	vmovsd	%xmm1, 8(%r8,%rax)
	leaq	(%r8,%rax), %r15
	vmovsd	16(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_29
.Ltmp249:
.LBB0_31:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	leaq	(%r8,%rax), %rbx
	addq	$8, %rbx
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r15)
	vmovsd	%xmm1, (%rbx)
	vmovsd	32(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_32
.Ltmp250:
.LBB0_34:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r15)
	vmovsd	%xmm1, (%rbx)
	vmovsd	48(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%r11), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%r11), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_35
.Ltmp251:
.LBB0_37:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovsd	%xmm0, 16(%r8,%rax)
	vmovsd	%xmm1, 24(%r8,%rax)
	vmovsd	64(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_38
.Ltmp252:
.LBB0_40:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	leaq	(%r8,%rax), %rbx
	addq	$16, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	80(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_41
.Ltmp253:
.LBB0_43:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	96(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%r11), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%r11), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_44
.Ltmp254:
.LBB0_46:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovsd	%xmm0, 32(%r8,%rax)
	vmovsd	%xmm1, 40(%r8,%rax)
	vmovsd	112(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_47
.Ltmp255:
.LBB0_49:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	leaq	(%r8,%rax), %rbx
	addq	$32, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	128(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_50
.Ltmp256:
.LBB0_52:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovsd	(%rcx), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%rcx), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_53
.Ltmp257:
.LBB0_55:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovsd	%xmm0, (%r10,%rax)
	vmovsd	%xmm1, 8(%r10,%rax)
	leaq	(%r10,%rax), %r15
	vmovsd	16(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_56
.Ltmp258:
.LBB0_58:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	leaq	(%r10,%rax), %rbx
	addq	$8, %rbx
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r15)
	vmovsd	%xmm1, (%rbx)
	vmovsd	32(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_59
.Ltmp259:
.LBB0_61:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r15)
	vmovsd	%xmm1, (%rbx)
	vmovsd	48(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_62
.Ltmp260:
.LBB0_64:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovsd	%xmm0, 16(%r10,%rax)
	vmovsd	%xmm1, 24(%r10,%rax)
	vmovsd	64(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_65
.Ltmp261:
.LBB0_67:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	leaq	(%r10,%rax), %rbx
	addq	$16, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	80(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_68
.Ltmp262:
.LBB0_70:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	96(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_71
.Ltmp263:
.LBB0_73:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovsd	%xmm0, 32(%r10,%rax)
	vmovsd	%xmm1, 40(%r10,%rax)
	vmovsd	112(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_74
.Ltmp264:
.LBB0_76:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	leaq	(%r10,%rax), %rbx
	addq	$32, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	128(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_77
.Ltmp265:
.LBB0_79:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
.Ltmp266:
	.loc	0 236 19                        # avx_complex_vec_align_load.c:236:19
	incq	%r9
.Ltmp267:
	#DEBUG_VALUE: main:i <- $r9
	.loc	0 236 3 is_stmt 0               # avx_complex_vec_align_load.c:236:3
	addq	$48, %rdi
	addq	$48, %rdx
	movq	104(%rsp), %rbx                 # 8-byte Reload
	addq	$48, %rbx
	addq	$48, %r13
	addq	$144, %r12
	addq	$144, %r14
.Ltmp268:
	.loc	0 236 13                        # avx_complex_vec_align_load.c:236:13
	cmpq	$100000000, %r9                 # imm = 0x5F5E100
.Ltmp269:
	.loc	0 236 3                         # avx_complex_vec_align_load.c:236:3
	jne	.LBB0_21
	jmp	.LBB0_80
.Ltmp270:
.LBB0_26:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	.loc	0 250 3 is_stmt 1               # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_28
.Ltmp271:
# %bb.27:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	#DEBUG_VALUE: main:i <- $r9
.Ltmp272:
	#DEBUG_VALUE: main:i <- $rbx
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	callq	__muldc3
.Ltmp273:
	#DEBUG_VALUE: main:i <- $rbx
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp274:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp275:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp276:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp277:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp278:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_28
.Ltmp279:
.LBB0_29:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_31
.Ltmp280:
# %bb.30:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp281:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp282:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp283:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp284:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp285:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp286:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_31
.Ltmp287:
.LBB0_32:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_34
.Ltmp288:
# %bb.33:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp289:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	80(%rsp), %r9                   # 8-byte Reload
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp290:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp291:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp292:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp293:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp294:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_34
.Ltmp295:
.LBB0_35:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_37
.Ltmp296:
# %bb.36:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp297:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp298:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp299:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp300:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp301:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp302:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_37
.Ltmp303:
.LBB0_38:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_40
.Ltmp304:
# %bb.39:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp305:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp306:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp307:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp308:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp309:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp310:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_40
.Ltmp311:
.LBB0_41:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_43
.Ltmp312:
# %bb.42:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r15
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp313:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%r15, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp314:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp315:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp316:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp317:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp318:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_43
.Ltmp319:
.LBB0_44:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_46
.Ltmp320:
# %bb.45:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp321:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp322:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp323:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp324:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp325:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp326:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_46
.Ltmp327:
.LBB0_47:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_49
.Ltmp328:
# %bb.48:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp329:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp330:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp331:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp332:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp333:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp334:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_49
.Ltmp335:
.LBB0_50:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_52
.Ltmp336:
# %bb.51:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r15
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp337:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%r15, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp338:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp339:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp340:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp341:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp342:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_52
.Ltmp343:
.LBB0_53:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3 is_stmt 1               # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_55
.Ltmp344:
# %bb.54:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp345:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp346:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp347:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp348:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp349:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp350:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_55
.Ltmp351:
.LBB0_56:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_58
.Ltmp352:
# %bb.57:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp353:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp354:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp355:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp356:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp357:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp358:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_58
.Ltmp359:
.LBB0_59:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_61
.Ltmp360:
# %bb.60:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp361:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	80(%rsp), %r9                   # 8-byte Reload
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp362:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp363:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp364:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp365:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp366:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_61
.Ltmp367:
.LBB0_62:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_64
.Ltmp368:
# %bb.63:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp369:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp370:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp371:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp372:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp373:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp374:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_64
.Ltmp375:
.LBB0_65:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_67
.Ltmp376:
# %bb.66:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp377:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp378:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp379:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp380:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp381:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp382:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_67
.Ltmp383:
.LBB0_68:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_70
.Ltmp384:
# %bb.69:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r15
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp385:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%r15, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp386:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp387:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp388:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp389:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp390:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_70
.Ltmp391:
.LBB0_71:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_73
.Ltmp392:
# %bb.72:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp393:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp394:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp395:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp396:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp397:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp398:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_73
.Ltmp399:
.LBB0_74:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_76
.Ltmp400:
# %bb.75:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp401:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp402:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp403:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp404:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp405:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp406:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_76
.Ltmp407:
.LBB0_77:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_79
.Ltmp408:
# %bb.78:                               #   in Loop: Header=BB0_21 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r15
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp409:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	%r15, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp410:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp411:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp412:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp413:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp414:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_79
.Ltmp415:
.LBB0_80:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	leaq	192(%rsp), %rdi
	.loc	0 256 3 is_stmt 1               # avx_complex_vec_align_load.c:256:3
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp416:
	.loc	0 258 9                         # avx_complex_vec_align_load.c:258:9
	callq	omp_get_wtime
.Ltmp417:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
.Ltmp418:
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 260 6 is_stmt 1               # avx_complex_vec_align_load.c:260:6
	callq	clock
.Ltmp419:
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	xorl	%r9d, %r9d
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp420:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp421:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp422:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp423:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp424:
	#DEBUG_VALUE: main:up <- $rcx
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.Ltmp425:
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:i <- 0
	movq	120(%rsp), %rdi                 # 8-byte Reload
.Ltmp426:
	#DEBUG_VALUE: main:v1 <- $rdi
	.loc	0 261 2 is_stmt 1               # avx_complex_vec_align_load.c:261:2
	addq	$8, %rdi
.Ltmp427:
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	movq	%r11, %rdx
	addq	$8, %rdx
	movq	112(%rsp), %rbx                 # 8-byte Reload
.Ltmp428:
	#DEBUG_VALUE: main:v2 <- $rbx
	addq	$8, %rbx
.Ltmp429:
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	movq	%rsi, %r14
	addq	$8, %r14
	movq	128(%rsp), %r15                 # 8-byte Reload
.Ltmp430:
	#DEBUG_VALUE: main:v3 <- $r15
	addq	$8, %r15
.Ltmp431:
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	movq	%rcx, %r12
	addq	$8, %r12
.Ltmp432:
	.p2align	4, 0x90
.LBB0_81:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_84 Depth 2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:j <- 0
	.loc	0 0 2 is_stmt 0                 # avx_complex_vec_align_load.c:0:2
	xorl	%eax, %eax
.Ltmp433:
	.p2align	4, 0x90
.LBB0_82:                               #   Parent Loop BB0_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rdi, $rsp
	.loc	0 265 23 is_stmt 1              # avx_complex_vec_align_load.c:265:23
	vmovups	-8(%rdi,%rax), %xmm0
	.loc	0 265 21 is_stmt 0              # avx_complex_vec_align_load.c:265:21
	vmovups	%xmm0, -8(%rdx,%rax)
	.loc	0 266 24 is_stmt 1              # avx_complex_vec_align_load.c:266:24
	vmovupd	-8(%rbx,%rax), %xmm0
	.loc	0 266 22 is_stmt 0              # avx_complex_vec_align_load.c:266:22
	vmovupd	%xmm0, -8(%r14,%rax)
.Ltmp434:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 120, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rdi, $rsp
	.loc	0 263 15 is_stmt 1              # avx_complex_vec_align_load.c:263:15
	addq	$16, %rax
	cmpq	$48, %rax
.Ltmp435:
	.loc	0 263 5 is_stmt 0               # avx_complex_vec_align_load.c:263:5
	jne	.LBB0_82
.Ltmp436:
# %bb.83:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	xorl	%eax, %eax
.Ltmp437:
	.p2align	4, 0x90
.LBB0_84:                               #   Parent Loop BB0_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_stack_value] $r15, $rsp
	.loc	0 271 22 is_stmt 1              # avx_complex_vec_align_load.c:271:22
	vmovupd	-8(%r15,%rax), %xmm0
	.loc	0 271 20 is_stmt 0              # avx_complex_vec_align_load.c:271:20
	vmovupd	%xmm0, -8(%r12,%rax)
.Ltmp438:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 128, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15, $rsp
	.loc	0 269 15 is_stmt 1              # avx_complex_vec_align_load.c:269:15
	addq	$16, %rax
	cmpq	$144, %rax
.Ltmp439:
	.loc	0 269 5 is_stmt 0               # avx_complex_vec_align_load.c:269:5
	jne	.LBB0_84
.Ltmp440:
# %bb.85:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 274 3 is_stmt 1               # avx_complex_vec_align_load.c:274:3
	#APP
	# LLVM-MCA-BEGIN _suNf_theta_T_multiply
	#NO_APP
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovsd	(%rcx), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%rcx), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%r11), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%r11), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	jp	.LBB0_86
.Ltmp441:
.LBB0_88:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	leaq	(%r9,%r9,2), %rax
	shlq	$4, %rax
	vmovsd	%xmm0, (%r8,%rax)
	vmovsd	%xmm1, 8(%r8,%rax)
	leaq	(%r8,%rax), %r13
	vmovsd	16(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_89
.Ltmp442:
.LBB0_91:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	leaq	(%r8,%rax), %rbx
	addq	$8, %rbx
	vaddsd	(%r13), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r13)
	vmovsd	%xmm1, (%rbx)
	vmovsd	32(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_92
.Ltmp443:
.LBB0_94:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vaddsd	(%r13), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r13)
	vmovsd	%xmm1, (%rbx)
	vmovsd	48(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%r11), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%r11), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_95
.Ltmp444:
.LBB0_97:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovsd	%xmm0, 16(%r8,%rax)
	vmovsd	%xmm1, 24(%r8,%rax)
	vmovsd	64(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_98
.Ltmp445:
.LBB0_100:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	leaq	(%r8,%rax), %rbx
	addq	$16, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	80(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_101
.Ltmp446:
.LBB0_103:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	96(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%r11), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%r11), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_104
.Ltmp447:
.LBB0_106:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovsd	%xmm0, 32(%r8,%rax)
	vmovsd	%xmm1, 40(%r8,%rax)
	vmovsd	112(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_107
.Ltmp448:
.LBB0_109:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	leaq	(%r8,%rax), %rbx
	addq	$32, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	128(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%r11), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%r11), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_110
.Ltmp449:
.LBB0_112:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovsd	(%rcx), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%rcx), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_113
.Ltmp450:
.LBB0_115:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovsd	%xmm0, (%r10,%rax)
	vmovsd	%xmm1, 8(%r10,%rax)
	leaq	(%r10,%rax), %r13
	vmovsd	16(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_116
.Ltmp451:
.LBB0_118:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	leaq	(%r10,%rax), %rbx
	addq	$8, %rbx
	vaddsd	(%r13), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r13)
	vmovsd	%xmm1, (%rbx)
	vmovsd	32(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_119
.Ltmp452:
.LBB0_121:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vaddsd	(%r13), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%r13)
	vmovsd	%xmm1, (%rbx)
	vmovsd	48(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_122
.Ltmp453:
.LBB0_124:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovsd	%xmm0, 16(%r10,%rax)
	vmovsd	%xmm1, 24(%r10,%rax)
	vmovsd	64(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_125
.Ltmp454:
.LBB0_127:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	leaq	(%r10,%rax), %rbx
	addq	$16, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	80(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%rcx), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_128
.Ltmp455:
.LBB0_130:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	96(%rcx), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_131
.Ltmp456:
.LBB0_133:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovsd	%xmm0, 32(%r10,%rax)
	vmovsd	%xmm1, 40(%r10,%rax)
	vmovsd	112(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_134
.Ltmp457:
.LBB0_136:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	leaq	(%r10,%rax), %rbx
	addq	$32, %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	vmovsd	128(%rcx), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%rcx), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_137
.Ltmp458:
.LBB0_139:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm1, %xmm1
	vmovsd	%xmm0, (%rbx)
	vmovsd	%xmm1, 8(%rbx)
	.loc	0 277 3                         # avx_complex_vec_align_load.c:277:3
	#APP
	# LLVM-MCA-END
	#NO_APP
.Ltmp459:
	.loc	0 261 18                        # avx_complex_vec_align_load.c:261:18
	incq	%r9
.Ltmp460:
	#DEBUG_VALUE: main:i <- $r9
	.loc	0 261 2 is_stmt 0               # avx_complex_vec_align_load.c:261:2
	addq	$48, %rdi
	addq	$48, %rdx
	movq	104(%rsp), %rbx                 # 8-byte Reload
	addq	$48, %rbx
	addq	$48, %r14
	addq	$144, %r15
	addq	$144, %r12
.Ltmp461:
	.loc	0 261 12                        # avx_complex_vec_align_load.c:261:12
	cmpq	$100000000, %r9                 # imm = 0x5F5E100
.Ltmp462:
	.loc	0 261 2                         # avx_complex_vec_align_load.c:261:2
	jne	.LBB0_81
	jmp	.LBB0_140
.Ltmp463:
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6 is_stmt 1               # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_88
.Ltmp464:
# %bb.87:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	#DEBUG_VALUE: main:i <- $r9
.Ltmp465:
	#DEBUG_VALUE: main:i <- $rbx
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	callq	__muldc3
.Ltmp466:
	#DEBUG_VALUE: main:i <- $rbx
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp467:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp468:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp469:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp470:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp471:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_88
.Ltmp472:
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_91
.Ltmp473:
# %bb.90:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp474:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp475:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp476:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp477:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp478:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp479:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_91
.Ltmp480:
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_94
.Ltmp481:
# %bb.93:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, 136(%rsp)                  # 8-byte Spill
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp482:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	136(%rsp), %r9                  # 8-byte Reload
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp483:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp484:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp485:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp486:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp487:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_94
.Ltmp488:
.LBB0_95:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_97
.Ltmp489:
# %bb.96:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp490:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp491:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp492:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp493:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp494:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp495:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_97
.Ltmp496:
.LBB0_98:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_100
.Ltmp497:
# %bb.99:                               #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp498:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp499:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp500:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp501:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp502:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp503:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_100
.Ltmp504:
.LBB0_101:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_103
.Ltmp505:
# %bb.102:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r13
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp506:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp507:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp508:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp509:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp510:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp511:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_103
.Ltmp512:
.LBB0_104:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_106
.Ltmp513:
# %bb.105:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp514:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp515:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp516:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp517:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp518:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp519:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_106
.Ltmp520:
.LBB0_107:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_109
.Ltmp521:
# %bb.108:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp522:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp523:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp524:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp525:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp526:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp527:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_109
.Ltmp528:
.LBB0_110:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_112
.Ltmp529:
# %bb.111:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r13
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp530:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp531:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp532:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp533:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp534:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp535:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_112
.Ltmp536:
.LBB0_113:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6 is_stmt 1               # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_115
.Ltmp537:
# %bb.114:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp538:
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp539:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp540:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp541:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp542:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp543:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_115
.Ltmp544:
.LBB0_116:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_118
.Ltmp545:
# %bb.117:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp546:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp547:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp548:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp549:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp550:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp551:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_118
.Ltmp552:
.LBB0_119:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_121
.Ltmp553:
# %bb.120:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, 136(%rsp)                  # 8-byte Spill
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp554:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	136(%rsp), %r9                  # 8-byte Reload
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp555:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp556:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp557:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp558:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp559:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_121
.Ltmp560:
.LBB0_122:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_124
.Ltmp561:
# %bb.123:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp562:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp563:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp564:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp565:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp566:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp567:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_124
.Ltmp568:
.LBB0_125:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_127
.Ltmp569:
# %bb.126:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp570:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp571:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp572:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp573:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp574:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp575:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_127
.Ltmp576:
.LBB0_128:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_130
.Ltmp577:
# %bb.129:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r13
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp578:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp579:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp580:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp581:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp582:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp583:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_130
.Ltmp584:
.LBB0_131:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_133
.Ltmp585:
# %bb.132:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp586:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp587:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp588:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp589:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp590:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp591:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_133
.Ltmp592:
.LBB0_134:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_136
.Ltmp593:
# %bb.135:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %rbx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp594:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp595:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp596:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp597:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp598:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp599:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_136
.Ltmp600:
.LBB0_137:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_139
.Ltmp601:
# %bb.138:                              #   in Loop: Header=BB0_81 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%r9, %r13
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	__muldc3
.Ltmp602:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %r9
	movq	64(%rsp), %r10                  # 8-byte Reload
.Ltmp603:
	#DEBUG_VALUE: main:chi6 <- $r10
	movq	72(%rsp), %r8                   # 8-byte Reload
.Ltmp604:
	#DEBUG_VALUE: main:chi5 <- $r8
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp605:
	#DEBUG_VALUE: main:psi2 <- $rsi
	movq	40(%rsp), %r11                  # 8-byte Reload
.Ltmp606:
	#DEBUG_VALUE: main:psi <- $r11
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp607:
	#DEBUG_VALUE: main:up <- $rcx
	jmp	.LBB0_139
.Ltmp608:
.LBB0_140:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 88] [$rsp+0]
	movq	%r8, %r12
	movq	%r10, %rbx
	.loc	0 282 6 is_stmt 1               # avx_complex_vec_align_load.c:282:6
	callq	clock
.Ltmp609:
	movq	%rax, %r15
.Ltmp610:
	#DEBUG_VALUE: main:t2 <- $r15
	.loc	0 284 9                         # avx_complex_vec_align_load.c:284:9
	callq	omp_get_wtime
.Ltmp611:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 104(%rsp)                # 8-byte Spill
.Ltmp612:
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 104] [$rsp+0]
	xorl	%r14d, %r14d
	leaq	208(%rsp), %r13
	.loc	0 286 3 is_stmt 1               # avx_complex_vec_align_load.c:286:3
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp613:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	leaq	160(%rsp), %rdi
	leaq	192(%rsp), %rdx
	.loc	0 287 3 is_stmt 1               # avx_complex_vec_align_load.c:287:3
	movq	%r13, %rsi
	callq	timeval_subtract
.Ltmp614:
	.loc	0 289 87                        # avx_complex_vec_align_load.c:289:87
	subq	88(%rsp), %r15                  # 8-byte Folded Reload
.Ltmp615:
	.loc	0 289 84 is_stmt 0              # avx_complex_vec_align_load.c:289:84
	vcvtsi2sd	%r15, %xmm7, %xmm0
	.loc	0 289 91                        # avx_complex_vec_align_load.c:289:91
	vdivsd	.LCPI0_0(%rip), %xmm0, %xmm0
	.loc	0 289 5                         # avx_complex_vec_align_load.c:289:5
	movl	$.L.str.5, %edi
	movl	$.L.str.2, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp616:
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	vmovsd	104(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp617:
	#DEBUG_VALUE: main:wt2 <- $xmm0
	.loc	0 291 87 is_stmt 1              # avx_complex_vec_align_load.c:291:87
	vsubsd	56(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
.Ltmp618:
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 104] [$rsp+0]
	.loc	0 291 5 is_stmt 0               # avx_complex_vec_align_load.c:291:5
	movl	$.L.str.5, %edi
	movl	$.L.str.3, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp619:
	.loc	0 293 86 is_stmt 1              # avx_complex_vec_align_load.c:293:86
	vcvtsi2sdq	160(%rsp), %xmm7, %xmm1
	.loc	0 293 103 is_stmt 0             # avx_complex_vec_align_load.c:293:103
	vcvtsi2sdq	168(%rsp), %xmm7, %xmm0
	.loc	0 293 101                       # avx_complex_vec_align_load.c:293:101
	vfmadd132sd	.LCPI0_1(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	.loc	0 293 5                         # avx_complex_vec_align_load.c:293:5
	movl	$.L.str.5, %edi
	movl	$.L.str.4, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp620:
	#DEBUG_VALUE: main:i <- 0
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	movq	152(%rsp), %rax                 # 8-byte Reload
.Ltmp621:
	#DEBUG_VALUE: main:chi <- $rax
	.loc	0 302 1 is_stmt 1               # avx_complex_vec_align_load.c:302:1
	addq	$8, %rax
.Ltmp622:
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	.loc	0 0 1 is_stmt 0                 # avx_complex_vec_align_load.c:0:1
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.Ltmp623:
	#DEBUG_VALUE: main:t1 <- undef
	movq	144(%rsp), %r13                 # 8-byte Reload
.Ltmp624:
	#DEBUG_VALUE: main:chi2 <- $r13
	.loc	0 302 1                         # avx_complex_vec_align_load.c:302:1
	addq	$8, %r13
.Ltmp625:
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	addq	$8, %r12
	addq	$8, %rbx
	vmovapd	.LCPI0_2(%rip), %xmm2           # xmm2 = [NaN,NaN]
	vmovsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	jmp	.LBB0_141
.Ltmp626:
	.p2align	4, 0x90
.LBB0_147:                              #   in Loop: Header=BB0_141 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 0 1                           # avx_complex_vec_align_load.c:0:1
	movq	96(%rsp), %r14                  # 8-byte Reload
.Ltmp627:
	#DEBUG_VALUE: main:i <- $r14
	.loc	0 302 22                        # avx_complex_vec_align_load.c:302:22
	incq	%r14
.Ltmp628:
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	.loc	0 302 1                         # avx_complex_vec_align_load.c:302:1
	addq	$48, 88(%rsp)                   # 8-byte Folded Spill
	addq	$48, %r13
	addq	$48, %r12
	addq	$48, %rbx
.Ltmp629:
	.loc	0 302 15                        # avx_complex_vec_align_load.c:302:15
	cmpq	$100000000, %r14                # imm = 0x5F5E100
.Ltmp630:
	.loc	0 302 1                         # avx_complex_vec_align_load.c:302:1
	je	.LBB0_148
.Ltmp631:
.LBB0_141:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_142 Depth 2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	#DEBUG_VALUE: main:j <- 0
	.loc	0 0 1                           # avx_complex_vec_align_load.c:0:1
	movq	%r14, 96(%rsp)                  # 8-byte Spill
.Ltmp632:
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	xorl	%r14d, %r14d
	jmp	.LBB0_142
.Ltmp633:
	.p2align	4, 0x90
.LBB0_146:                              #   in Loop: Header=BB0_142 Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 317 48 is_stmt 1              # avx_complex_vec_align_load.c:317:48
	movzbl	%r15b, %edi
	.loc	0 317 3 is_stmt 0               # avx_complex_vec_align_load.c:317:3
	movl	$.L.str.8, %edx
	movl	$.L.str.9, %ecx
	movl	$1, %esi
	callq	error
.Ltmp634:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm2           # xmm2 = [NaN,NaN]
.Ltmp635:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 88, DW_OP_deref, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 152, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rsp, $rsp
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	.loc	0 304 13 is_stmt 1              # avx_complex_vec_align_load.c:304:13
	addq	$16, %r14
	cmpq	$48, %r14
.Ltmp636:
	.loc	0 304 3 is_stmt 0               # avx_complex_vec_align_load.c:304:3
	je	.LBB0_147
.Ltmp637:
.LBB0_142:                              #   Parent Loop BB0_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 88, DW_OP_deref, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 152, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rsp, $rsp
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	88(%rsp), %rax                  # 8-byte Reload
.Ltmp638:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 152, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rax, $rsp
	.loc	0 306 10 is_stmt 1              # avx_complex_vec_align_load.c:306:10
	vmovsd	-8(%rax,%r14), %xmm0            # xmm0 = mem[0],zero
.Ltmp639:
	#DEBUG_VALUE: main:j <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 88, DW_OP_deref, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 152, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rsp, $rsp
	#DEBUG_VALUE: main:res1 <- $xmm0
	#DEBUG_VALUE: main:res2 <- undef
	#DEBUG_VALUE: main:res3 <- undef
	#DEBUG_VALUE: main:res4 <- undef
	#DEBUG_VALUE: main:res9 <- undef
	#DEBUG_VALUE: main:res10 <- undef
	#DEBUG_VALUE: main:res11 <- undef
	#DEBUG_VALUE: main:res12 <- undef
	.loc	0 316 10                        # avx_complex_vec_align_load.c:316:10
	vsubsd	-8(%r12,%r14), %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp640:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.file	4 "/home/mrahman" "spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h" md5 0x6fd65eb3b4a7b3155f2d8a97ce299f7d
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp641:
	.loc	4 0 35 is_stmt 0                # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:0:35
	movb	$1, %r15b
.Ltmp642:
	.loc	0 316 37 is_stmt 1              # avx_complex_vec_align_load.c:316:37
	vucomisd	%xmm3, %xmm0
	movb	$1, %al
	.loc	0 316 47 is_stmt 0              # avx_complex_vec_align_load.c:316:47
	ja	.LBB0_144
.Ltmp643:
# %bb.143:                              #   in Loop: Header=BB0_142 Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 0 47                          # avx_complex_vec_align_load.c:0:47
	movq	88(%rsp), %rax                  # 8-byte Reload
	vmovsd	(%rax,%r14), %xmm0              # xmm0 = mem[0],zero
.Ltmp644:
	#DEBUG_VALUE: main:res2 <- $xmm0
	#DEBUG_VALUE: main:res10 <- undef
	.loc	0 316 51                        # avx_complex_vec_align_load.c:316:51
	vsubsd	(%r12,%r14), %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp645:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp646:
	.loc	0 316 79                        # avx_complex_vec_align_load.c:316:79
	vucomisd	%xmm3, %xmm0
	seta	%al
.Ltmp647:
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 0 0 is_stmt 0                 # avx_complex_vec_align_load.c:0:0
	vmovsd	-8(%r13,%r14), %xmm0            # xmm0 = mem[0],zero
.Ltmp648:
	#DEBUG_VALUE: main:res3 <- $xmm0
	vmovsd	%xmm0, 104(%rsp)                # 8-byte Spill
	vmovsd	(%r13,%r14), %xmm0              # xmm0 = mem[0],zero
.Ltmp649:
	#DEBUG_VALUE: main:res4 <- $xmm0
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	vmovsd	-8(%rbx,%r14), %xmm0            # xmm0 = mem[0],zero
.Ltmp650:
	#DEBUG_VALUE: main:res11 <- $xmm0
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	vmovsd	(%rbx,%r14), %xmm0              # xmm0 = mem[0],zero
.Ltmp651:
	#DEBUG_VALUE: main:res12 <- $xmm0
	vmovsd	%xmm0, 80(%rsp)                 # 8-byte Spill
	.loc	0 316 47                        # avx_complex_vec_align_load.c:316:47
	movzbl	%al, %edi
	.loc	0 316 3                         # avx_complex_vec_align_load.c:316:3
	movl	$.L.str.6, %edx
	movl	$.L.str.7, %ecx
	movl	$1, %esi
	callq	error
.Ltmp652:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm2           # xmm2 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm1           # xmm1 = [NaN,NaN]
	vmovsd	104(%rsp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.loc	0 317 10 is_stmt 1              # avx_complex_vec_align_load.c:317:10
	vsubsd	56(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp653:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp654:
	.loc	0 317 38                        # avx_complex_vec_align_load.c:317:38
	vucomisd	%xmm2, %xmm0
	.loc	0 317 48 is_stmt 0              # avx_complex_vec_align_load.c:317:48
	ja	.LBB0_146
.Ltmp655:
# %bb.145:                              #   in Loop: Header=BB0_142 Depth=2
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- $xmm3
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 0 48                          # avx_complex_vec_align_load.c:0:48
	vmovsd	24(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
.Ltmp656:
	#DEBUG_VALUE: main:res4 <- $xmm3
	.loc	0 317 52                        # avx_complex_vec_align_load.c:317:52
	vsubsd	80(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp657:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp658:
	.loc	0 317 80                        # avx_complex_vec_align_load.c:317:80
	vucomisd	%xmm2, %xmm0
	seta	%r15b
	jmp	.LBB0_146
.Ltmp659:
.LBB0_148:
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- $r14
	.loc	0 0 80 is_stmt 0                # avx_complex_vec_align_load.c:0:80
	movq	48(%rsp), %rdi                  # 8-byte Reload
.Ltmp660:
	#DEBUG_VALUE: main:up <- $rdi
	.loc	0 332 3 is_stmt 1               # avx_complex_vec_align_load.c:332:3
	callq	afree
.Ltmp661:
	#DEBUG_VALUE: main:up <- [DW_OP_plus_uconst 48] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	40(%rsp), %rdi                  # 8-byte Reload
.Ltmp662:
	#DEBUG_VALUE: main:psi <- $rdi
	.loc	0 333 3 is_stmt 1               # avx_complex_vec_align_load.c:333:3
	callq	afree
.Ltmp663:
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp664:
	#DEBUG_VALUE: main:psi2 <- $rdi
	.loc	0 334 3 is_stmt 1               # avx_complex_vec_align_load.c:334:3
	callq	afree
.Ltmp665:
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 32] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	152(%rsp), %rdi                 # 8-byte Reload
.Ltmp666:
	#DEBUG_VALUE: main:chi <- $rdi
	.loc	0 335 3 is_stmt 1               # avx_complex_vec_align_load.c:335:3
	callq	afree
.Ltmp667:
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 152] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	144(%rsp), %rdi                 # 8-byte Reload
.Ltmp668:
	#DEBUG_VALUE: main:chi2 <- $rdi
	.loc	0 336 3 is_stmt 1               # avx_complex_vec_align_load.c:336:3
	callq	afree
.Ltmp669:
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 144] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	184(%rsp), %rdi                 # 8-byte Reload
.Ltmp670:
	#DEBUG_VALUE: main:chi3 <- $rdi
	.loc	0 337 3 is_stmt 1               # avx_complex_vec_align_load.c:337:3
	callq	afree
.Ltmp671:
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 184] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	176(%rsp), %rdi                 # 8-byte Reload
.Ltmp672:
	#DEBUG_VALUE: main:chi4 <- $rdi
	.loc	0 338 3 is_stmt 1               # avx_complex_vec_align_load.c:338:3
	callq	afree
.Ltmp673:
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 176] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	72(%rsp), %rdi                  # 8-byte Reload
.Ltmp674:
	#DEBUG_VALUE: main:chi5 <- $rdi
	.loc	0 339 3 is_stmt 1               # avx_complex_vec_align_load.c:339:3
	callq	afree
.Ltmp675:
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 72] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	64(%rsp), %rdi                  # 8-byte Reload
.Ltmp676:
	#DEBUG_VALUE: main:chi6 <- $rdi
	.loc	0 340 3 is_stmt 1               # avx_complex_vec_align_load.c:340:3
	callq	afree
.Ltmp677:
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 64] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	120(%rsp), %rdi                 # 8-byte Reload
.Ltmp678:
	#DEBUG_VALUE: main:v1 <- $rdi
	.loc	0 341 3 is_stmt 1               # avx_complex_vec_align_load.c:341:3
	callq	afree
.Ltmp679:
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 120] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	112(%rsp), %rdi                 # 8-byte Reload
.Ltmp680:
	#DEBUG_VALUE: main:v2 <- $rdi
	.loc	0 342 3 is_stmt 1               # avx_complex_vec_align_load.c:342:3
	callq	afree
.Ltmp681:
	#DEBUG_VALUE: main:v2 <- [DW_OP_plus_uconst 112] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	128(%rsp), %rdi                 # 8-byte Reload
.Ltmp682:
	#DEBUG_VALUE: main:v3 <- $rdi
	.loc	0 343 3 is_stmt 1               # avx_complex_vec_align_load.c:343:3
	callq	afree
.Ltmp683:
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 128] [$rsp+0]
	.loc	0 345 3                         # avx_complex_vec_align_load.c:345:3
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
.Ltmp684:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
.Ltmp685:
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp686:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.file	5 "/usr/include" "sched.h" md5 0xa2f1576c6805216e27836d1e6d1e5148
	.file	6 "/usr/include/bits" "types.h" md5 0x77efac6352c67c8f56830ba4c854379f
	.file	7 "/home/mrahman" "spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/stddef.h" md5 0x2499dd2361b915724b073282bea3a7bc
	.file	8 "." "memory.h" md5 0x47e4976794683f6631feec121b57de5e
	.file	9 "." "header.h" md5 0x925140ea2827af20dd16cfab71f1dc4f
	.file	10 "/usr/include/sys" "time.h" md5 0x3b3cbcac52b1954fa045aa74bfcd1a38
	.file	11 "/usr/include/bits" "time.h" md5 0x7275d681a2390320bc78ae3cf595b8d2
	.file	12 "/home/mrahman" "spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/omp.h" md5 0x09a8f9a8e0e6ef7adf745177c76222c9
	.file	13 "/usr/include" "time.h" md5 0x4ef673804b6295b70412ee624b546c3c
	.file	14 "." "logger.h" md5 0x033f83dcdca70a743f57f79613f761e7
	.file	15 "." "error.h" md5 0x74fef2513053e5fe7cce23bd6a9620d4
                                        # -- End function
	.globl	double_MVM_non_macro            # -- Begin function double_MVM_non_macro
	.p2align	4, 0x90
	.type	double_MVM_non_macro,@function
double_MVM_non_macro:                   # @double_MVM_non_macro
.Lfunc_begin1:
	.loc	0 350 0                         # avx_complex_vec_align_load.c:350:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: double_MVM_non_macro:chi <- $rdi
	#DEBUG_VALUE: double_MVM_non_macro:chi2 <- $rsi
	#DEBUG_VALUE: double_MVM_non_macro:up <- $rdx
	#DEBUG_VALUE: double_MVM_non_macro:psi <- $rcx
	#DEBUG_VALUE: double_MVM_non_macro:psi2 <- $r8
	.loc	0 356 10 prologue_end           # avx_complex_vec_align_load.c:356:10
	vmovapd	(%rdx), %ymm0
.Ltmp687:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm0
	.loc	0 357 10                        # avx_complex_vec_align_load.c:357:10
	vmovddup	%ymm0, %ymm8                    # ymm8 = ymm0[0,0,2,2]
.Ltmp688:
	#DEBUG_VALUE: double_MVM_non_macro:temp6 <- $ymm8
	.loc	0 358 10                        # avx_complex_vec_align_load.c:358:10
	vpermilpd	$15, %ymm0, %ymm10      # ymm10 = ymm0[1,1,3,3]
.Ltmp689:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm10
	.loc	0 361 10                        # avx_complex_vec_align_load.c:361:10
	vmovupd	48(%rdx), %ymm0
.Ltmp690:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm0
	.loc	0 362 10                        # avx_complex_vec_align_load.c:362:10
	vmovddup	%ymm0, %ymm9                    # ymm9 = ymm0[0,0,2,2]
.Ltmp691:
	#DEBUG_VALUE: double_MVM_non_macro:temp7 <- $ymm9
	.loc	0 363 10                        # avx_complex_vec_align_load.c:363:10
	vpermilpd	$15, %ymm0, %ymm11      # ymm11 = ymm0[1,1,3,3]
.Ltmp692:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm11
	.loc	0 366 10                        # avx_complex_vec_align_load.c:366:10
	vmovapd	96(%rdx), %ymm1
.Ltmp693:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 367 10                        # avx_complex_vec_align_load.c:367:10
	vmovddup	%ymm1, %ymm0                    # ymm0 = ymm1[0,0,2,2]
.Ltmp694:
	#DEBUG_VALUE: double_MVM_non_macro:temp8 <- $ymm0
	.loc	0 368 10                        # avx_complex_vec_align_load.c:368:10
	vpermilpd	$15, %ymm1, %ymm1       # ymm1 = ymm1[1,1,3,3]
.Ltmp695:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 371 10                        # avx_complex_vec_align_load.c:371:10
	vmovapd	(%rcx), %ymm3
.Ltmp696:
	#DEBUG_VALUE: double_MVM_non_macro:temp4 <- $ymm3
	.loc	0 372 10                        # avx_complex_vec_align_load.c:372:10
	vpermilpd	$5, %ymm3, %ymm5        # ymm5 = ymm3[1,0,3,2]
.Ltmp697:
	#DEBUG_VALUE: double_MVM_non_macro:temp9 <- $ymm5
	.loc	0 375 10                        # avx_complex_vec_align_load.c:375:10
	vmovapd	(%r8), %ymm2
.Ltmp698:
	#DEBUG_VALUE: double_MVM_non_macro:temp5 <- $ymm2
	.loc	0 376 11                        # avx_complex_vec_align_load.c:376:11
	vpermilpd	$5, %ymm2, %ymm4        # ymm4 = ymm2[1,0,3,2]
.Ltmp699:
	#DEBUG_VALUE: double_MVM_non_macro:temp10 <- $ymm4
	.loc	0 385 11                        # avx_complex_vec_align_load.c:385:11
	vmulpd	%ymm5, %ymm10, %ymm6
.Ltmp700:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm6
	.loc	0 386 11                        # avx_complex_vec_align_load.c:386:11
	vfmaddsub231pd	%ymm3, %ymm8, %ymm6     # ymm6 = (ymm8 * ymm3) +/- ymm6
.Ltmp701:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm6
	.loc	0 389 11                        # avx_complex_vec_align_load.c:389:11
	vmulpd	%ymm5, %ymm11, %ymm7
.Ltmp702:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm7
	.loc	0 390 11                        # avx_complex_vec_align_load.c:390:11
	vfmaddsub231pd	%ymm3, %ymm9, %ymm7     # ymm7 = (ymm9 * ymm3) +/- ymm7
.Ltmp703:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm7
	.loc	0 394 11                        # avx_complex_vec_align_load.c:394:11
	vinsertf128	$1, %xmm7, %ymm6, %ymm12
.Ltmp704:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm12
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- undef
	.loc	0 397 11                        # avx_complex_vec_align_load.c:397:11
	vperm2f128	$49, %ymm7, %ymm6, %ymm6 # ymm6 = ymm6[2,3],ymm7[2,3]
.Ltmp705:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm6
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- undef
	.loc	0 401 11                        # avx_complex_vec_align_load.c:401:11
	vmovupd	16(%rdx), %ymm7
.Ltmp706:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm7
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- undef
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- undef
	.loc	0 404 11                        # avx_complex_vec_align_load.c:404:11
	vperm2f128	$49, 64(%rdx), %ymm7, %ymm7 # ymm7 = ymm7[2,3],mem[2,3]
.Ltmp707:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm7
	.loc	0 398 11                        # avx_complex_vec_align_load.c:398:11
	vaddpd	%ymm6, %ymm12, %ymm12
.Ltmp708:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm12
	.loc	0 406 11                        # avx_complex_vec_align_load.c:406:11
	vmovupd	16(%rcx), %ymm6
.Ltmp709:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm6
	#DEBUG_VALUE: double_MVM_non_macro:temp16 <- undef
	.loc	0 408 11                        # avx_complex_vec_align_load.c:408:11
	vpermpd	$238, %ymm6, %ymm13             # ymm13 = ymm6[2,3,2,3]
.Ltmp710:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm13
	.loc	0 410 11                        # avx_complex_vec_align_load.c:410:11
	vmovddup	%ymm7, %ymm14                   # ymm14 = ymm7[0,0,2,2]
.Ltmp711:
	#DEBUG_VALUE: double_MVM_non_macro:temp15 <- $ymm14
	.loc	0 411 11                        # avx_complex_vec_align_load.c:411:11
	vpermilpd	$15, %ymm7, %ymm15      # ymm15 = ymm7[1,1,3,3]
.Ltmp712:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm15
	.loc	0 412 11                        # avx_complex_vec_align_load.c:412:11
	vpermpd	$187, %ymm6, %ymm7              # ymm7 = ymm6[3,2,3,2]
.Ltmp713:
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- $ymm7
	.loc	0 414 11                        # avx_complex_vec_align_load.c:414:11
	vmulpd	%ymm7, %ymm15, %ymm7
.Ltmp714:
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- $ymm7
	.loc	0 415 11                        # avx_complex_vec_align_load.c:415:11
	vfmaddsub231pd	%ymm13, %ymm14, %ymm7   # ymm7 = (ymm14 * ymm13) +/- ymm7
.Ltmp715:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm7
	.loc	0 418 11                        # avx_complex_vec_align_load.c:418:11
	vaddpd	%ymm7, %ymm12, %ymm7
.Ltmp716:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm7
	.loc	0 423 10                        # avx_complex_vec_align_load.c:423:10
	vmulpd	%ymm4, %ymm10, %ymm10
.Ltmp717:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm10
	.loc	0 424 10                        # avx_complex_vec_align_load.c:424:10
	vfmaddsub231pd	%ymm8, %ymm2, %ymm10    # ymm10 = (ymm2 * ymm8) +/- ymm10
.Ltmp718:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm10
	.loc	0 427 10                        # avx_complex_vec_align_load.c:427:10
	vmulpd	%ymm4, %ymm11, %ymm8
.Ltmp719:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm8
	.loc	0 428 10                        # avx_complex_vec_align_load.c:428:10
	vfmaddsub231pd	%ymm9, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm9) +/- ymm8
.Ltmp720:
	#DEBUG_VALUE: double_MVM_non_macro:temp7 <- $ymm8
	.loc	0 432 11                        # avx_complex_vec_align_load.c:432:11
	vinsertf128	$1, %xmm8, %ymm10, %ymm9
.Ltmp721:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm9
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- undef
	.loc	0 435 10                        # avx_complex_vec_align_load.c:435:10
	vperm2f128	$49, %ymm8, %ymm10, %ymm8 # ymm8 = ymm10[2,3],ymm8[2,3]
.Ltmp722:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm8
	.loc	0 436 10                        # avx_complex_vec_align_load.c:436:10
	vaddpd	%ymm8, %ymm9, %ymm8
.Ltmp723:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm8
	.loc	0 439 11                        # avx_complex_vec_align_load.c:439:11
	vmovupd	16(%r8), %ymm9
.Ltmp724:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm9
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- undef
	.loc	0 441 11                        # avx_complex_vec_align_load.c:441:11
	vpermpd	$238, %ymm9, %ymm10             # ymm10 = ymm9[2,3,2,3]
.Ltmp725:
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- $ymm10
	.loc	0 443 11                        # avx_complex_vec_align_load.c:443:11
	vpermpd	$187, %ymm9, %ymm11             # ymm11 = ymm9[3,2,3,2]
.Ltmp726:
	#DEBUG_VALUE: double_MVM_non_macro:temp17 <- $ymm11
	.loc	0 444 11                        # avx_complex_vec_align_load.c:444:11
	vmulpd	%ymm11, %ymm15, %ymm11
.Ltmp727:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm11
	.loc	0 445 11                        # avx_complex_vec_align_load.c:445:11
	vfmaddsub231pd	%ymm10, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm10) +/- ymm11
.Ltmp728:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm11
	.loc	0 448 10                        # avx_complex_vec_align_load.c:448:10
	vaddpd	%ymm11, %ymm8, %ymm8
.Ltmp729:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm8
	.loc	0 455 11                        # avx_complex_vec_align_load.c:455:11
	vmulpd	%ymm5, %ymm1, %ymm5
.Ltmp730:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm5
	.loc	0 456 10                        # avx_complex_vec_align_load.c:456:10
	vfmaddsub231pd	%ymm3, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm3) +/- ymm5
.Ltmp731:
	#DEBUG_VALUE: double_MVM_non_macro:temp4 <- $ymm5
	.loc	0 461 10                        # avx_complex_vec_align_load.c:461:10
	vmulpd	%ymm4, %ymm1, %ymm1
.Ltmp732:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 462 10                        # avx_complex_vec_align_load.c:462:10
	vfmaddsub231pd	%ymm2, %ymm0, %ymm1     # ymm1 = (ymm0 * ymm2) +/- ymm1
.Ltmp733:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 466 10                        # avx_complex_vec_align_load.c:466:10
	vinsertf128	$1, %xmm1, %ymm5, %ymm0
.Ltmp734:
	#DEBUG_VALUE: double_MVM_non_macro:temp5 <- $ymm0
	#DEBUG_VALUE: double_MVM_non_macro:temp4 <- undef
	.loc	0 469 10                        # avx_complex_vec_align_load.c:469:10
	vperm2f128	$49, %ymm1, %ymm5, %ymm1 # ymm1 = ymm5[2,3],ymm1[2,3]
.Ltmp735:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 470 10                        # avx_complex_vec_align_load.c:470:10
	vaddpd	%ymm1, %ymm0, %ymm0
.Ltmp736:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm0
	#DEBUG_VALUE: double_MVM_non_macro:temp10 <- undef
	#DEBUG_VALUE: double_MVM_non_macro:temp9 <- undef
	.loc	0 476 11                        # avx_complex_vec_align_load.c:476:11
	vbroadcastsd	128(%rdx), %ymm1
.Ltmp737:
	#DEBUG_VALUE: double_MVM_non_macro:temp10 <- $ymm1
	.loc	0 477 11                        # avx_complex_vec_align_load.c:477:11
	vbroadcastsd	136(%rdx), %ymm2
.Ltmp738:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm2
	.loc	0 479 10                        # avx_complex_vec_align_load.c:479:10
	vperm2f128	$49, %ymm9, %ymm6, %ymm3 # ymm3 = ymm6[2,3],ymm9[2,3]
.Ltmp739:
	#DEBUG_VALUE: double_MVM_non_macro:temp9 <- $ymm3
	.loc	0 480 11                        # avx_complex_vec_align_load.c:480:11
	vpermilpd	$5, %ymm3, %ymm4        # ymm4 = ymm3[1,0,3,2]
.Ltmp740:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm4
	.loc	0 482 10                        # avx_complex_vec_align_load.c:482:10
	vmulpd	%ymm2, %ymm4, %ymm2
.Ltmp741:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm2
	.loc	0 483 10                        # avx_complex_vec_align_load.c:483:10
	vfmaddsub231pd	%ymm1, %ymm3, %ymm2     # ymm2 = (ymm3 * ymm1) +/- ymm2
.Ltmp742:
	#DEBUG_VALUE: double_MVM_non_macro:temp7 <- $ymm2
	.loc	0 485 10                        # avx_complex_vec_align_load.c:485:10
	vaddpd	%ymm2, %ymm0, %ymm0
.Ltmp743:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm0
	#DEBUG_VALUE: double_MVM_non_macro:chi_3rd <- $xmm0
	#DEBUG_VALUE: double_MVM_non_macro:chi2_3rd <- undef
	.loc	0 493 2                         # avx_complex_vec_align_load.c:493:2
	vmovupd	%ymm7, (%rdi)
	.loc	0 494 2                         # avx_complex_vec_align_load.c:494:2
	vmovapd	%xmm0, 192(%rdi)
	.loc	0 496 2                         # avx_complex_vec_align_load.c:496:2
	vmovupd	%ymm8, (%rsi)
	.loc	0 497 2                         # avx_complex_vec_align_load.c:497:2
	vextractf128	$1, %ymm0, 192(%rsi)
	.loc	0 498 1                         # avx_complex_vec_align_load.c:498:1
	vzeroupper
.Ltmp744:
	retq
.Ltmp745:
.Lfunc_end1:
	.size	double_MVM_non_macro, .Lfunc_end1-double_MVM_non_macro
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"MVM_MACRO"
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CPU time (clock)                = %12.4g sec\n"
	.size	.L.str.2, 46

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"wall clock time (omp_get_wtime) = %12.4g sec\n"
	.size	.L.str.3, 46

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"wall clock time (gettimeofday)  = %12.4g sec\n\n"
	.size	.L.str.4, 47

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"THETA_T_MULTIPLY"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"First Vector in double_MVM_macro and theta_T_multiply"
	.size	.L.str.6, 54

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" are not equal ==> Test Failed!"
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Second Vector in double_MVM_macro and theta_T_multiply"
	.size	.L.str.8, 55

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" are not equal ==>Test Failed!"
	.size	.L.str.9, 31

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"WARNING: Could not set CPU Affinity, continuing..."
	.size	.Lstr, 51

	.file	16 "." "suN_types.h" md5 0x303491ccd64dc1d3adf69fdf8cbe9189
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	61                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
	.long	.Ldebug_loc24-.Lloclists_table_base0
	.long	.Ldebug_loc25-.Lloclists_table_base0
	.long	.Ldebug_loc26-.Lloclists_table_base0
	.long	.Ldebug_loc27-.Lloclists_table_base0
	.long	.Ldebug_loc28-.Lloclists_table_base0
	.long	.Ldebug_loc29-.Lloclists_table_base0
	.long	.Ldebug_loc30-.Lloclists_table_base0
	.long	.Ldebug_loc31-.Lloclists_table_base0
	.long	.Ldebug_loc32-.Lloclists_table_base0
	.long	.Ldebug_loc33-.Lloclists_table_base0
	.long	.Ldebug_loc34-.Lloclists_table_base0
	.long	.Ldebug_loc35-.Lloclists_table_base0
	.long	.Ldebug_loc36-.Lloclists_table_base0
	.long	.Ldebug_loc37-.Lloclists_table_base0
	.long	.Ldebug_loc38-.Lloclists_table_base0
	.long	.Ldebug_loc39-.Lloclists_table_base0
	.long	.Ldebug_loc40-.Lloclists_table_base0
	.long	.Ldebug_loc41-.Lloclists_table_base0
	.long	.Ldebug_loc42-.Lloclists_table_base0
	.long	.Ldebug_loc43-.Lloclists_table_base0
	.long	.Ldebug_loc44-.Lloclists_table_base0
	.long	.Ldebug_loc45-.Lloclists_table_base0
	.long	.Ldebug_loc46-.Lloclists_table_base0
	.long	.Ldebug_loc47-.Lloclists_table_base0
	.long	.Ldebug_loc48-.Lloclists_table_base0
	.long	.Ldebug_loc49-.Lloclists_table_base0
	.long	.Ldebug_loc50-.Lloclists_table_base0
	.long	.Ldebug_loc51-.Lloclists_table_base0
	.long	.Ldebug_loc52-.Lloclists_table_base0
	.long	.Ldebug_loc53-.Lloclists_table_base0
	.long	.Ldebug_loc54-.Lloclists_table_base0
	.long	.Ldebug_loc55-.Lloclists_table_base0
	.long	.Ldebug_loc56-.Lloclists_table_base0
	.long	.Ldebug_loc57-.Lloclists_table_base0
	.long	.Ldebug_loc58-.Lloclists_table_base0
	.long	.Ldebug_loc59-.Lloclists_table_base0
	.long	.Ldebug_loc60-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp639-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp640-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp644-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp645-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp633-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	232                             # 104
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp648-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp633-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp650-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp656-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp659-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp633-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp650-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp651-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp659-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp633-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp651-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp652-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp659-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	10                              # Loc expr size
	.byte	158                             # DW_OP_implicit_value
	.byte	8                               # 8
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               #  
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp232-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp278-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp278-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp286-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp286-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp302-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp302-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp318-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp318-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp326-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp334-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp335-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp350-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp350-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp358-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp358-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp366-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp366-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp374-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp374-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp382-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp382-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp390-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp390-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp398-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp398-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp406-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp406-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp415-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp415-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp424-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp424-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp471-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp471-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp472-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp479-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp479-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp480-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp487-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp487-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp488-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp488-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp503-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp503-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp504-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp511-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp511-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp512-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp519-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp519-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp520-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp535-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp535-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp543-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp543-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp551-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp551-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp552-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp552-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp560-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp567-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp567-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp575-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp575-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp583-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp583-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp584-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp584-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp591-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp591-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp599-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp599-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp607-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp607-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp660-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp660-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp661-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp661-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp431-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp431-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp682-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp682-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp683-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp683-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp234-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp426-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp426-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp427-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp427-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp678-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp679-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp679-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp234-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp234-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp428-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp428-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp680-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp680-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp681-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp681-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp277-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp293-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp301-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp301-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp309-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp309-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp317-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp325-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp325-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp335-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp341-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp349-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp349-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp357-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp357-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp365-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp365-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp373-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp373-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp381-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp381-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp389-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp389-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp397-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp397-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp415-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp415-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp472-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp478-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp478-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp480-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp486-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp486-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp488-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp488-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp494-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp502-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp502-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp504-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp510-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp510-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp512-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp518-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp518-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp520-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp526-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp526-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp534-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp534-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp542-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp542-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp552-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp552-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp558-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp558-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp560-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp566-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp566-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp574-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp574-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp582-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp582-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp584-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp584-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp590-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp590-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp598-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp598-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp606-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp606-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp662-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp662-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp663-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp663-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp230-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp284-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp308-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp316-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp332-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp332-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp335-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp340-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp348-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp348-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp356-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp356-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp364-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp364-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp372-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp372-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp388-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp388-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp404-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp404-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp415-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp415-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp422-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp422-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp469-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp469-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp472-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp477-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp480-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp485-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp488-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp488-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp493-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp493-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp501-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp504-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp509-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp512-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp517-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp517-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp520-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp525-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp525-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp533-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp533-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp549-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp549-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp552-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp552-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp557-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp557-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp560-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp565-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp565-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp573-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp573-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp581-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp584-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp584-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp589-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp589-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp597-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp597-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp605-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp605-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp664-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp664-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp665-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp665-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp621-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp621-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp666-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp666-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp667-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp667-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp624-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp624-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp625-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp625-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp668-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp668-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp669-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp669-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp670-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	184                             # 184
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp670-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp671-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp671-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	184                             # 184
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	176                             # 176
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp673-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp673-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	176                             # 176
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp238-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp283-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp283-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp291-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp299-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp307-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp323-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp331-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp331-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp335-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp339-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp339-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp347-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp347-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp355-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp355-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp363-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp371-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp371-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp379-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp379-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp403-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp411-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp415-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp415-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp421-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp468-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp468-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp472-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp476-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp480-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp484-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp484-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp488-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp488-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp492-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp492-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp500-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp500-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp504-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp508-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp508-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp512-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp516-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp516-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp520-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp524-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp540-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp540-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp548-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp548-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp552-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp552-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp556-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp556-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp560-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp564-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp564-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp572-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp572-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp580-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp580-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp584-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp584-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp588-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp588-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp596-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp596-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp675-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp675-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp274-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp274-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp282-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp282-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp298-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp298-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp314-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp314-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp322-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp322-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp330-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp330-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp335-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp338-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp346-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp346-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp362-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp362-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp370-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp370-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp386-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp386-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp394-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp394-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp410-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp410-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp415-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp415-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp472-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp475-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp475-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp480-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp483-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp488-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp488-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp491-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp491-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp499-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp499-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp504-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp507-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp507-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp512-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp515-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp515-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp520-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp539-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp539-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp547-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp552-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp552-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp555-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp555-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp560-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp560-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp563-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp563-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp571-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp579-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp579-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp584-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp584-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp587-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp587-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp603-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp676-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp676-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp677-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp677-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp232-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp248-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp272-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp415-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp416-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp425-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp465-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp609-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp620-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp626-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp626-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp627-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp627-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp632-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp632-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp659-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp659-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp685-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	14                              # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	17                              # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	18                              # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	14                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	17                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	18                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	18                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp240-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp243-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp245-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp245-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin0         #   ending offset
	.byte	18                              # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp433-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp433-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp434-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp434-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp436-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp438-.Lfunc_begin0         #   ending offset
	.byte	15                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp438-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp440-.Lfunc_begin0         #   ending offset
	.byte	18                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp637-.Lfunc_begin0         #   ending offset
	.byte	19                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp637-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp638-.Lfunc_begin0         #   ending offset
	.byte	16                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp638-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp639-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp643-.Lfunc_begin0         #   ending offset
	.byte	16                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp186-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp209-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp205-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	110                             # DW_OP_reg30
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp204-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	110                             # DW_OP_reg30
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp181-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp206-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	111                             # DW_OP_reg31
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	111                             # DW_OP_reg31
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp191-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	232                             # 104
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp418-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp626-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp425-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp623-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp218-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp610-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp615-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp226-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp227-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp227-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp612-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp617-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	232                             # 104
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp617-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp618-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp618-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp626-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	232                             # 104
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp641-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp687-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp689-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp689-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp721-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp722-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp688-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp719-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp690-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp692-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp692-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp719-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp719-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp741-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp742-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp743-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp691-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp722-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp742-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp693-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp736-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp743-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp694-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp696-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp731-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp731-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp697-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp730-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp739-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp699-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp737-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp700-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp701-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp703-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp706-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp707-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp712-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp712-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp727-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp730-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp730-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp731-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp738-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp741-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp701-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp704-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp708-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp716-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp716-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp702-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp703-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp706-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp709-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp710-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp710-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp715-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	110                             # DW_OP_reg30
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp715-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp716-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp721-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp740-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp740-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp711-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	111                             # DW_OP_reg31
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp713-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp715-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp725-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp726-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp743-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	1                               # DW_CHILDREN_yes
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	73                              # DW_TAG_call_site_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	126                             # DW_AT_call_value
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x93d DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x8 DW_TAG_typedef
	.long	47                              # DW_AT_type
	.byte	4                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2f:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x33:0x5 DW_TAG_pointer_type
	.long	39                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x38:0x5 DW_TAG_pointer_type
	.long	61                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x3d:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x41:0x9 DW_TAG_typedef
	.long	74                              # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	32                              # DW_AT_alignment
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4a:0xc DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.long	61                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4f:0x6 DW_TAG_subrange_type
	.long	86                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x56:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x5a:0x8 DW_TAG_typedef
	.long	74                              # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x62:0x9 DW_TAG_typedef
	.long	107                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	16                              # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x6b:0xc DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.long	61                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x70:0x6 DW_TAG_subrange_type
	.long	86                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x77:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	3                               # DW_AT_encoding
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x7b:0x5 DW_TAG_pointer_type
	.long	128                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x80:0x5 DW_TAG_const_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x85:0x5 DW_TAG_pointer_type
	.long	138                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x8a:0x5 DW_TAG_const_type
	.long	143                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x8f:0x12 DW_TAG_structure_type
	.byte	13                              # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	3105                            # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x95:0xb DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	161                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	3106                            # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa1:0x9 DW_TAG_typedef
	.long	74                              # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xaa:0x5 DW_TAG_pointer_type
	.long	175                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xaf:0x12 DW_TAG_structure_type
	.byte	14                              # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	3238                            # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb5:0xb DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	161                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	3239                            # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xc1:0x5 DW_TAG_pointer_type
	.long	98                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0xc6:0x14 DW_TAG_subprogram
	.byte	15                              # DW_AT_linkage_name
	.byte	16                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	61                              # DW_AT_type
                                        # DW_AT_inline
	.byte	13                              # Abbrev [13] 0xd0:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xda:0x599 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
                                        # DW_AT_call_all_calls
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.long	1675                            # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xe9:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	119
	.ascii	"\300\001"
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	1807                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xf5:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	119
	.ascii	"\320\001"
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	1807                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x101:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	119
	.ascii	"\240\001"
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	1807                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x10d:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	119
	.ascii	"\340\001"
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	1705                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x119:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_const_value
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	1675                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x122:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x12b:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x134:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x13d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x146:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x14f:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x158:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x161:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x16a:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x173:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x17c:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x185:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0x18e:0xc DW_TAG_variable
	.ascii	"\200\302\327/"                 # DW_AT_const_value
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	1675                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x19a:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.long	1675                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1a3:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	1675                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1ac:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	2274                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1b5:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	2274                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1be:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1c7:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1d0:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1d9:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1e2:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1eb:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1f4:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1fd:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x206:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x20f:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x218:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	1675                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x221:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	1675                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x22a:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x233:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x23c:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x245:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x24e:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x257:0x9 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x260:0x9 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x269:0x9 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x272:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x27b:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x284:0x9 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x28d:0x9 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x296:0x9 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x29f:0x9 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2a8:0x9 DW_TAG_variable
	.byte	36                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2b1:0x9 DW_TAG_variable
	.byte	37                              # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2ba:0x9 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	98                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2c3:0x9 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2cc:0x9 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	1909                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2d5:0x9 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	1909                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2de:0x9 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	61                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2e7:0x8 DW_TAG_variable
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	2352                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2ef:0x8 DW_TAG_variable
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	2352                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2f7:0x8 DW_TAG_variable
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2ff:0x8 DW_TAG_variable
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x307:0x8 DW_TAG_variable
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x30f:0x8 DW_TAG_variable
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	98                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x317:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp3-.Ltmp2                   # DW_AT_high_pc
	.byte	18                              # Abbrev [18] 0x31d:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	1687                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x327:0x15 DW_TAG_inlined_subroutine
	.long	198                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp642-.Ltmp640               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	316                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x335:0x6 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.long	208                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x33c:0x16 DW_TAG_inlined_subroutine
	.long	198                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp646-.Ltmp645               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	316                             # DW_AT_call_line
	.byte	51                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x34a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.long	208                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x352:0x16 DW_TAG_inlined_subroutine
	.long	198                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp654-.Ltmp653               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x360:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.long	208                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x368:0x16 DW_TAG_inlined_subroutine
	.long	198                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp658-.Ltmp657               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	52                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x376:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.long	208                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x37e:0x1a DW_TAG_call_site
	.long	1651                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x384:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	25                              # Abbrev [25] 0x389:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	16
	.ascii	"\200\001"
	.byte	25                              # Abbrev [25] 0x390:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	3                               # DW_AT_call_value
	.byte	119
	.ascii	"\340\001"
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x398:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x39e:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x3a3:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3aa:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x3b0:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x3b5:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3bc:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x3c2:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x3c7:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3ce:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x3d4:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x3d9:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3e0:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x3e6:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x3eb:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3f2:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x3f8:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x3fd:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x404:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x40a:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x40f:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x416:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x41c:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x421:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x428:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x42e:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x433:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x43a:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x440:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x445:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x44c:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x452:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x457:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x45e:0x12 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x464:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	25                              # Abbrev [25] 0x469:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x470:0xc DW_TAG_call_site
	.long	1759                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x476:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x47c:0xc DW_TAG_call_site
	.long	1759                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x482:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x488:0xc DW_TAG_call_site
	.long	1759                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x48e:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x494:0x13 DW_TAG_call_site
	.long	1778                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x49a:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	25                              # Abbrev [25] 0x49f:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	119
	.ascii	"\300\001"
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4a7:0x6 DW_TAG_call_site
	.long	1893                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x4ad:0x6 DW_TAG_call_site
	.long	1901                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x4b3:0x6 DW_TAG_call_site
	.long	1901                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x4b9:0x6 DW_TAG_call_site
	.long	1893                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4bf:0x12 DW_TAG_call_site
	.long	1778                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x4c5:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	25                              # Abbrev [25] 0x4ca:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x4d1:0x1b DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x4d7:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	25                              # Abbrev [25] 0x4dd:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	3                               # DW_AT_call_value
	.byte	119
	.ascii	"\300\001"
	.byte	25                              # Abbrev [25] 0x4e4:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	119
	.ascii	"\240\001"
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x4ec:0xc DW_TAG_call_site
	.long	1949                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x4f2:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x4f8:0x15 DW_TAG_call_site
	.long	1949                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x4fe:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	25                              # Abbrev [25] 0x503:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.byte	5                               # DW_AT_call_value
	.byte	119
	.asciz	"\350"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x50d:0xc DW_TAG_call_site
	.long	1949                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x513:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x519:0x13 DW_TAG_call_site
	.long	1778                            # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x51f:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	25                              # Abbrev [25] 0x524:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	119
	.ascii	"\300\001"
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x52c:0x6 DW_TAG_call_site
	.long	1893                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x532:0x6 DW_TAG_call_site
	.long	1901                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x538:0x6 DW_TAG_call_site
	.long	1901                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x53e:0x6 DW_TAG_call_site
	.long	1893                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x544:0x12 DW_TAG_call_site
	.long	1778                            # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x54a:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	25                              # Abbrev [25] 0x54f:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	125
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x556:0x1b DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x55c:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	125
	.byte	0
	.byte	25                              # Abbrev [25] 0x562:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	3                               # DW_AT_call_value
	.byte	119
	.ascii	"\300\001"
	.byte	25                              # Abbrev [25] 0x569:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	119
	.ascii	"\240\001"
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x571:0xc DW_TAG_call_site
	.long	1949                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x577:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x57d:0x14 DW_TAG_call_site
	.long	1949                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x583:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	25                              # Abbrev [25] 0x588:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.byte	4                               # DW_AT_call_value
	.byte	119
	.byte	56
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x591:0xc DW_TAG_call_site
	.long	1949                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x597:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x59d:0xc DW_TAG_call_site
	.long	1983                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5a3:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5a9:0xc DW_TAG_call_site
	.long	1983                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5af:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5b5:0xf DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5bb:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	119
	.byte	48
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5c4:0xf DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5ca:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	119
	.byte	40
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5d3:0xf DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5d9:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	119
	.byte	32
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5e2:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5e8:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.ascii	"\230\001"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5f2:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5f8:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.ascii	"\220\001"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x602:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x608:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.ascii	"\270\001"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x612:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x618:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.ascii	"\260\001"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x622:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x628:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.asciz	"\310"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x632:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x638:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.asciz	"\300"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x642:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x648:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.asciz	"\370"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x652:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x658:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.asciz	"\360"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x662:0x10 DW_TAG_call_site
	.long	2008                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x668:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	119
	.ascii	"\200\001"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x673:0x18 DW_TAG_subprogram
	.byte	18                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1675                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x67b:0x5 DW_TAG_formal_parameter
	.long	1679                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x680:0x5 DW_TAG_formal_parameter
	.long	1687                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x685:0x5 DW_TAG_formal_parameter
	.long	1695                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x68b:0x4 DW_TAG_base_type
	.byte	19                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x68f:0x8 DW_TAG_typedef
	.long	1675                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x697:0x8 DW_TAG_typedef
	.long	47                              # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x69f:0x5 DW_TAG_pointer_type
	.long	1700                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6a4:0x5 DW_TAG_const_type
	.long	1705                            # DW_AT_type
	.byte	2                               # Abbrev [2] 0x6a9:0x8 DW_TAG_typedef
	.long	1713                            # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x6b1:0xe DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x6b5:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	1727                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x6bf:0xc DW_TAG_array_type
	.long	39                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6c4:0x6 DW_TAG_subrange_type
	.long	86                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x6cb:0x13 DW_TAG_subprogram
	.byte	24                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1758                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x6d3:0x5 DW_TAG_formal_parameter
	.long	1687                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x6d8:0x5 DW_TAG_formal_parameter
	.long	1675                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x6de:0x1 DW_TAG_pointer_type
	.byte	27                              # Abbrev [27] 0x6df:0xe DW_TAG_subprogram
	.byte	25                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	119                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x6e7:0x5 DW_TAG_formal_parameter
	.long	1773                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6ed:0x5 DW_TAG_const_type
	.long	1675                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x6f2:0x13 DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1675                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x6fa:0x5 DW_TAG_formal_parameter
	.long	1797                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x6ff:0x5 DW_TAG_formal_parameter
	.long	1851                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x705:0x5 DW_TAG_restrict_type
	.long	1802                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x70a:0x5 DW_TAG_pointer_type
	.long	1807                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x70f:0x18 DW_TAG_structure_type
	.byte	32                              # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x714:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	1831                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	30                              # Abbrev [30] 0x71d:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	1843                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x727:0x8 DW_TAG_typedef
	.long	1839                            # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x72f:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x733:0x8 DW_TAG_typedef
	.long	1839                            # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x73b:0x8 DW_TAG_typedef
	.long	1859                            # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x743:0x5 DW_TAG_restrict_type
	.long	1864                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x748:0x5 DW_TAG_pointer_type
	.long	1869                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x74d:0x18 DW_TAG_structure_type
	.byte	35                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x752:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	1675                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	30                              # Abbrev [30] 0x75b:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	1675                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x765:0x8 DW_TAG_subprogram
	.byte	37                              # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	61                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	35                              # Abbrev [35] 0x76d:0x8 DW_TAG_subprogram
	.byte	38                              # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1909                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	2                               # Abbrev [2] 0x775:0x8 DW_TAG_typedef
	.long	1917                            # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x77d:0x8 DW_TAG_typedef
	.long	1839                            # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x785:0x18 DW_TAG_subprogram
	.byte	41                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1675                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x78d:0x5 DW_TAG_formal_parameter
	.long	1802                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x792:0x5 DW_TAG_formal_parameter
	.long	1802                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x797:0x5 DW_TAG_formal_parameter
	.long	1802                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x79d:0x19 DW_TAG_subprogram
	.byte	42                              # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1675                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x7a5:0x5 DW_TAG_formal_parameter
	.long	1974                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7aa:0x5 DW_TAG_formal_parameter
	.long	1675                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7af:0x5 DW_TAG_formal_parameter
	.long	1974                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x7b4:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x7b6:0x5 DW_TAG_pointer_type
	.long	1979                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x7bb:0x4 DW_TAG_base_type
	.byte	43                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	37                              # Abbrev [37] 0x7bf:0x19 DW_TAG_subprogram
	.byte	44                              # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x7c3:0x5 DW_TAG_formal_parameter
	.long	1675                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7c8:0x5 DW_TAG_formal_parameter
	.long	1675                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7cd:0x5 DW_TAG_formal_parameter
	.long	1974                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7d2:0x5 DW_TAG_formal_parameter
	.long	1974                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x7d8:0xa DW_TAG_subprogram
	.byte	45                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x7dc:0x5 DW_TAG_formal_parameter
	.long	1758                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x7e2:0x100 DW_TAG_subprogram
	.byte	56                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	39                              # Abbrev [39] 0x7ee:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x7f9:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2313                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x804:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2356                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x80f:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2366                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x81a:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2366                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x825:0xa DW_TAG_variable
	.byte	44                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x82f:0xa DW_TAG_variable
	.byte	45                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x839:0xa DW_TAG_variable
	.byte	46                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x843:0xa DW_TAG_variable
	.byte	47                              # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x84d:0xa DW_TAG_variable
	.byte	48                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x857:0xa DW_TAG_variable
	.byte	49                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x861:0xa DW_TAG_variable
	.byte	50                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x86b:0xa DW_TAG_variable
	.byte	51                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x875:0xa DW_TAG_variable
	.byte	52                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x87f:0xa DW_TAG_variable
	.byte	53                              # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x889:0xa DW_TAG_variable
	.byte	54                              # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x893:0xa DW_TAG_variable
	.byte	55                              # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x89d:0xa DW_TAG_variable
	.byte	56                              # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x8a7:0xa DW_TAG_variable
	.byte	57                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x8b1:0xa DW_TAG_variable
	.byte	58                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x8bb:0xa DW_TAG_variable
	.byte	59                              # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x8c5:0xa DW_TAG_variable
	.byte	60                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	352                             # DW_AT_decl_line
	.long	98                              # DW_AT_type
	.byte	41                              # Abbrev [41] 0x8cf:0x9 DW_TAG_variable
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	41                              # Abbrev [41] 0x8d8:0x9 DW_TAG_variable
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	352                             # DW_AT_decl_line
	.long	98                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x8e2:0x5 DW_TAG_pointer_type
	.long	2279                            # DW_AT_type
	.byte	2                               # Abbrev [2] 0x8e7:0x8 DW_TAG_typedef
	.long	2287                            # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x8ef:0xe DW_TAG_structure_type
	.byte	144                             # DW_AT_byte_size
	.byte	16                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x8f3:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	2301                            # DW_AT_type
	.byte	16                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x8fd:0xc DW_TAG_array_type
	.long	119                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x902:0x6 DW_TAG_subrange_type
	.long	86                              # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x909:0x5 DW_TAG_pointer_type
	.long	2318                            # DW_AT_type
	.byte	2                               # Abbrev [2] 0x90e:0x8 DW_TAG_typedef
	.long	2326                            # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x916:0xe DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	16                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x91a:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	2340                            # DW_AT_type
	.byte	16                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x924:0xc DW_TAG_array_type
	.long	119                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x929:0x6 DW_TAG_subrange_type
	.long	86                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x930:0x4 DW_TAG_base_type
	.byte	108                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x934:0x5 DW_TAG_pointer_type
	.long	2361                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x939:0x5 DW_TAG_const_type
	.long	2279                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x93e:0x5 DW_TAG_pointer_type
	.long	2371                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x943:0x5 DW_TAG_const_type
	.long	2318                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	460                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.1"          # string offset=0
.Linfo_string1:
	.asciz	"avx_complex_vec_align_load.c"  # string offset=21
.Linfo_string2:
	.asciz	"/home/mrahman/AVX_MVM_Complex/example_AVX_Vec" # string offset=50
.Linfo_string3:
	.asciz	"unsigned long"                 # string offset=96
.Linfo_string4:
	.asciz	"__cpu_mask"                    # string offset=110
.Linfo_string5:
	.asciz	"double"                        # string offset=121
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=128
.Linfo_string7:
	.asciz	"__m256d"                       # string offset=148
.Linfo_string8:
	.asciz	"__v4df"                        # string offset=156
.Linfo_string9:
	.asciz	"__m128d"                       # string offset=163
.Linfo_string10:
	.asciz	"complex"                       # string offset=171
.Linfo_string11:
	.asciz	"__v"                           # string offset=179
.Linfo_string12:
	.asciz	"__m256d_u"                     # string offset=183
.Linfo_string13:
	.asciz	"__loadu_pd"                    # string offset=193
.Linfo_string14:
	.asciz	"__storeu_pd"                   # string offset=204
.Linfo_string15:
	.asciz	"_ZL9__tg_fabsd"                # string offset=216
.Linfo_string16:
	.asciz	"__tg_fabs"                     # string offset=231
.Linfo_string17:
	.asciz	"__x"                           # string offset=241
.Linfo_string18:
	.asciz	"sched_setaffinity"             # string offset=245
.Linfo_string19:
	.asciz	"int"                           # string offset=263
.Linfo_string20:
	.asciz	"__pid_t"                       # string offset=267
.Linfo_string21:
	.asciz	"size_t"                        # string offset=275
.Linfo_string22:
	.asciz	"__bits"                        # string offset=282
.Linfo_string23:
	.asciz	"cpu_set_t"                     # string offset=289
.Linfo_string24:
	.asciz	"amalloc"                       # string offset=299
.Linfo_string25:
	.asciz	"my_rand"                       # string offset=307
.Linfo_string26:
	.asciz	"gettimeofday"                  # string offset=315
.Linfo_string27:
	.asciz	"tv_sec"                        # string offset=328
.Linfo_string28:
	.asciz	"long"                          # string offset=335
.Linfo_string29:
	.asciz	"__time_t"                      # string offset=340
.Linfo_string30:
	.asciz	"tv_usec"                       # string offset=349
.Linfo_string31:
	.asciz	"__suseconds_t"                 # string offset=357
.Linfo_string32:
	.asciz	"timeval"                       # string offset=371
.Linfo_string33:
	.asciz	"tz_minuteswest"                # string offset=379
.Linfo_string34:
	.asciz	"tz_dsttime"                    # string offset=394
.Linfo_string35:
	.asciz	"timezone"                      # string offset=405
.Linfo_string36:
	.asciz	"__timezone_ptr_t"              # string offset=414
.Linfo_string37:
	.asciz	"omp_get_wtime"                 # string offset=431
.Linfo_string38:
	.asciz	"clock"                         # string offset=445
.Linfo_string39:
	.asciz	"__clock_t"                     # string offset=451
.Linfo_string40:
	.asciz	"clock_t"                       # string offset=461
.Linfo_string41:
	.asciz	"timeval_subtract"              # string offset=469
.Linfo_string42:
	.asciz	"lprintf"                       # string offset=486
.Linfo_string43:
	.asciz	"char"                          # string offset=494
.Linfo_string44:
	.asciz	"error"                         # string offset=499
.Linfo_string45:
	.asciz	"afree"                         # string offset=505
.Linfo_string46:
	.asciz	"main"                          # string offset=511
.Linfo_string47:
	.asciz	"double_MVM_non_macro"          # string offset=516
.Linfo_string48:
	.asciz	"start"                         # string offset=537
.Linfo_string49:
	.asciz	"end"                           # string offset=543
.Linfo_string50:
	.asciz	"etime"                         # string offset=547
.Linfo_string51:
	.asciz	"mask"                          # string offset=553
.Linfo_string52:
	.asciz	"n"                             # string offset=558
.Linfo_string53:
	.asciz	"res1"                          # string offset=560
.Linfo_string54:
	.asciz	"res2"                          # string offset=565
.Linfo_string55:
	.asciz	"res3"                          # string offset=570
.Linfo_string56:
	.asciz	"res4"                          # string offset=575
.Linfo_string57:
	.asciz	"res5"                          # string offset=580
.Linfo_string58:
	.asciz	"res6"                          # string offset=585
.Linfo_string59:
	.asciz	"res7"                          # string offset=590
.Linfo_string60:
	.asciz	"res8"                          # string offset=595
.Linfo_string61:
	.asciz	"res9"                          # string offset=600
.Linfo_string62:
	.asciz	"res10"                         # string offset=605
.Linfo_string63:
	.asciz	"res11"                         # string offset=611
.Linfo_string64:
	.asciz	"res12"                         # string offset=617
.Linfo_string65:
	.asciz	"in"                            # string offset=623
.Linfo_string66:
	.asciz	"n_times"                       # string offset=626
.Linfo_string67:
	.asciz	"n_warmup"                      # string offset=634
.Linfo_string68:
	.asciz	"__cpu"                         # string offset=643
.Linfo_string69:
	.asciz	"up"                            # string offset=649
.Linfo_string70:
	.asciz	"c"                             # string offset=652
.Linfo_string71:
	.asciz	"suNf"                          # string offset=654
.Linfo_string72:
	.asciz	"v3"                            # string offset=659
.Linfo_string73:
	.asciz	"v1"                            # string offset=662
.Linfo_string74:
	.asciz	"suNf_vector"                   # string offset=665
.Linfo_string75:
	.asciz	"v2"                            # string offset=677
.Linfo_string76:
	.asciz	"psi"                           # string offset=680
.Linfo_string77:
	.asciz	"psi2"                          # string offset=684
.Linfo_string78:
	.asciz	"chi"                           # string offset=689
.Linfo_string79:
	.asciz	"chi2"                          # string offset=693
.Linfo_string80:
	.asciz	"chi3"                          # string offset=698
.Linfo_string81:
	.asciz	"chi4"                          # string offset=703
.Linfo_string82:
	.asciz	"chi5"                          # string offset=708
.Linfo_string83:
	.asciz	"chi6"                          # string offset=713
.Linfo_string84:
	.asciz	"i"                             # string offset=718
.Linfo_string85:
	.asciz	"j"                             # string offset=720
.Linfo_string86:
	.asciz	"temp1"                         # string offset=722
.Linfo_string87:
	.asciz	"temp6"                         # string offset=728
.Linfo_string88:
	.asciz	"temp2"                         # string offset=734
.Linfo_string89:
	.asciz	"temp7"                         # string offset=740
.Linfo_string90:
	.asciz	"temp3"                         # string offset=746
.Linfo_string91:
	.asciz	"temp8"                         # string offset=752
.Linfo_string92:
	.asciz	"temp4"                         # string offset=758
.Linfo_string93:
	.asciz	"temp9"                         # string offset=764
.Linfo_string94:
	.asciz	"temp5"                         # string offset=770
.Linfo_string95:
	.asciz	"temp10"                        # string offset=776
.Linfo_string96:
	.asciz	"temp12"                        # string offset=783
.Linfo_string97:
	.asciz	"temp11"                        # string offset=790
.Linfo_string98:
	.asciz	"temp13"                        # string offset=797
.Linfo_string99:
	.asciz	"temp15"                        # string offset=804
.Linfo_string100:
	.asciz	"temp14"                        # string offset=811
.Linfo_string101:
	.asciz	"temp17"                        # string offset=818
.Linfo_string102:
	.asciz	"chi_3rd"                       # string offset=825
.Linfo_string103:
	.asciz	"wt1"                           # string offset=833
.Linfo_string104:
	.asciz	"t1"                            # string offset=837
.Linfo_string105:
	.asciz	"t2"                            # string offset=840
.Linfo_string106:
	.asciz	"wt2"                           # string offset=843
.Linfo_string107:
	.asciz	"elapsed"                       # string offset=847
.Linfo_string108:
	.asciz	"float"                         # string offset=855
.Linfo_string109:
	.asciz	"gflops"                        # string offset=861
.Linfo_string110:
	.asciz	"psi_copy"                      # string offset=868
.Linfo_string111:
	.asciz	"psi2_copy"                     # string offset=877
.Linfo_string112:
	.asciz	"temp16"                        # string offset=887
.Linfo_string113:
	.asciz	"chi2_3rd"                      # string offset=894
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Ltmp640
	.quad	.Ltmp645
	.quad	.Ltmp653
	.quad	.Ltmp657
	.quad	.Ltmp4
	.quad	.Ltmp8
	.quad	.Ltmp10
	.quad	.Ltmp12
	.quad	.Ltmp14
	.quad	.Ltmp16
	.quad	.Ltmp18
	.quad	.Ltmp20
	.quad	.Ltmp22
	.quad	.Ltmp24
	.quad	.Ltmp26
	.quad	.Ltmp28
	.quad	.Ltmp30
	.quad	.Ltmp37
	.quad	.Ltmp38
	.quad	.Ltmp43
	.quad	.Ltmp132
	.quad	.Ltmp133
	.quad	.Ltmp135
	.quad	.Ltmp217
	.quad	.Ltmp219
	.quad	.Ltmp222
	.quad	.Ltmp223
	.quad	.Ltmp225
	.quad	.Ltmp228
	.quad	.Ltmp229
	.quad	.Ltmp416
	.quad	.Ltmp417
	.quad	.Ltmp419
	.quad	.Ltmp609
	.quad	.Ltmp611
	.quad	.Ltmp613
	.quad	.Ltmp614
	.quad	.Ltmp616
	.quad	.Ltmp619
	.quad	.Ltmp620
	.quad	.Ltmp634
	.quad	.Ltmp652
	.quad	.Ltmp661
	.quad	.Ltmp663
	.quad	.Ltmp665
	.quad	.Ltmp667
	.quad	.Ltmp669
	.quad	.Ltmp671
	.quad	.Ltmp673
	.quad	.Ltmp675
	.quad	.Ltmp677
	.quad	.Ltmp679
	.quad	.Ltmp681
	.quad	.Ltmp683
	.quad	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"clang version 14.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
