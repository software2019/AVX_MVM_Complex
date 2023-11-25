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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp0:
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
	vmovupd	%ymm0, 264(%rsp)
	vmovupd	%ymm0, 240(%rsp)
	vmovupd	%ymm0, 208(%rsp)
	vmovupd	%ymm0, 176(%rsp)
.Ltmp1:
	#DEBUG_VALUE: __cpu <- 0
	.loc	0 119 1                         # avx_complex_vec_align_load.c:119:1
	movq	$1, 168(%rsp)
	leaq	168(%rsp), %rdx
.Ltmp2:
	.loc	0 120 4                         # avx_complex_vec_align_load.c:120:4
	movl	$128, %esi
	xorl	%edi, %edi
	vzeroupper
	callq	sched_setaffinity
.Ltmp3:
	.loc	0 120 44 is_stmt 0              # avx_complex_vec_align_load.c:120:44
	cmpl	$-1, %eax
.Ltmp4:
	.loc	0 120 4                         # avx_complex_vec_align_load.c:120:4
	jne	.LBB0_2
.Ltmp5:
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
.Ltmp6:
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
	movabsq	$14400000000, %rbp              # imm = 0x35A4E9000
	.loc	0 127 8 is_stmt 1               # avx_complex_vec_align_load.c:127:8
	movq	%rbp, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp7:
	movq	%rax, %r15
.Ltmp8:
	#DEBUG_VALUE: main:up <- $r15
	.loc	0 128 8                         # avx_complex_vec_align_load.c:128:8
	movq	%rbp, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp9:
	movq	%rax, %rbp
.Ltmp10:
	#DEBUG_VALUE: main:v3 <- $rbp
	.loc	0 0 8 is_stmt 0                 # avx_complex_vec_align_load.c:0:8
	movabsq	$4800000000, %rbx               # imm = 0x11E1A3000
	.loc	0 130 8 is_stmt 1               # avx_complex_vec_align_load.c:130:8
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp11:
	movq	%rax, %r13
.Ltmp12:
	#DEBUG_VALUE: main:v1 <- $r13
	.loc	0 131 8                         # avx_complex_vec_align_load.c:131:8
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp13:
	movq	%rax, %r14
.Ltmp14:
	#DEBUG_VALUE: main:v2 <- $r14
	.loc	0 132 9                         # avx_complex_vec_align_load.c:132:9
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp15:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.Ltmp16:
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	.loc	0 133 10 is_stmt 1              # avx_complex_vec_align_load.c:133:10
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp17:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.Ltmp18:
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	.loc	0 134 9 is_stmt 1               # avx_complex_vec_align_load.c:134:9
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp19:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	movq	%rax, 128(%rsp)                 # 8-byte Spill
.Ltmp20:
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 128] [$rsp+0]
	.loc	0 135 10 is_stmt 1              # avx_complex_vec_align_load.c:135:10
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp21:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.Ltmp22:
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 136 10 is_stmt 1              # avx_complex_vec_align_load.c:136:10
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp23:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 120(%rsp)                 # 8-byte Spill
.Ltmp24:
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	.loc	0 137 10 is_stmt 1              # avx_complex_vec_align_load.c:137:10
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp25:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 112(%rsp)                 # 8-byte Spill
.Ltmp26:
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	.loc	0 138 10 is_stmt 1              # avx_complex_vec_align_load.c:138:10
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp27:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.Ltmp28:
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 139 10 is_stmt 1              # avx_complex_vec_align_load.c:139:10
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	amalloc
.Ltmp29:
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.Ltmp30:
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- 0
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
.Ltmp31:
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 151 3 is_stmt 1               # avx_complex_vec_align_load.c:151:3
	addq	$136, %rbp
	movl	$40, %ebx
	movl	$100000000, %r12d               # imm = 0x5F5E100
.Ltmp32:
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- $r13
	#DEBUG_VALUE: main:v2 <- $r14
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 136, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_stack_value] $rbp, $rsp
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 155 22                        # avx_complex_vec_align_load.c:155:22
	movl	$5, %edi
	callq	my_rand
.Ltmp33:
	.loc	0 155 20 is_stmt 0              # avx_complex_vec_align_load.c:155:20
	vmovsd	%xmm0, -40(%r13,%rbx)
	vmovsd	%xmm1, -32(%r13,%rbx)
	.loc	0 156 22 is_stmt 1              # avx_complex_vec_align_load.c:156:22
	movl	$5, %edi
	callq	my_rand
.Ltmp34:
	.loc	0 156 20 is_stmt 0              # avx_complex_vec_align_load.c:156:20
	vmovsd	%xmm0, -40(%r14,%rbx)
	vmovsd	%xmm1, -32(%r14,%rbx)
.Ltmp35:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 155 22 is_stmt 1              # avx_complex_vec_align_load.c:155:22
	movl	$5, %edi
	callq	my_rand
.Ltmp36:
	.loc	0 155 20 is_stmt 0              # avx_complex_vec_align_load.c:155:20
	vmovsd	%xmm0, -24(%r13,%rbx)
	vmovsd	%xmm1, -16(%r13,%rbx)
	.loc	0 156 22 is_stmt 1              # avx_complex_vec_align_load.c:156:22
	movl	$5, %edi
	callq	my_rand
.Ltmp37:
	.loc	0 156 20 is_stmt 0              # avx_complex_vec_align_load.c:156:20
	vmovsd	%xmm0, -24(%r14,%rbx)
	vmovsd	%xmm1, -16(%r14,%rbx)
.Ltmp38:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 155 22 is_stmt 1              # avx_complex_vec_align_load.c:155:22
	movl	$5, %edi
	callq	my_rand
.Ltmp39:
	.loc	0 155 20 is_stmt 0              # avx_complex_vec_align_load.c:155:20
	vmovsd	%xmm0, -8(%r13,%rbx)
	vmovsd	%xmm1, (%r13,%rbx)
	.loc	0 156 22 is_stmt 1              # avx_complex_vec_align_load.c:156:22
	movl	$5, %edi
	callq	my_rand
.Ltmp40:
	.loc	0 156 20 is_stmt 0              # avx_complex_vec_align_load.c:156:20
	vmovsd	%xmm0, -8(%r14,%rbx)
	vmovsd	%xmm1, (%r14,%rbx)
.Ltmp41:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 161 22 is_stmt 1              # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp42:
	.loc	0 161 20 is_stmt 0              # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -136(%rbp)
	vmovsd	%xmm1, -128(%rbp)
.Ltmp43:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp44:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -120(%rbp)
	vmovsd	%xmm1, -112(%rbp)
.Ltmp45:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp46:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	%xmm1, -96(%rbp)
.Ltmp47:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 3
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp48:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -88(%rbp)
	vmovsd	%xmm1, -80(%rbp)
.Ltmp49:
	#DEBUG_VALUE: main:j <- 4
	#DEBUG_VALUE: main:j <- 4
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp50:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -72(%rbp)
	vmovsd	%xmm1, -64(%rbp)
.Ltmp51:
	#DEBUG_VALUE: main:j <- 5
	#DEBUG_VALUE: main:j <- 5
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp52:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	%xmm1, -48(%rbp)
.Ltmp53:
	#DEBUG_VALUE: main:j <- 6
	#DEBUG_VALUE: main:j <- 6
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp54:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	%xmm1, -32(%rbp)
.Ltmp55:
	#DEBUG_VALUE: main:j <- 7
	#DEBUG_VALUE: main:j <- 7
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp56:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	%xmm1, -16(%rbp)
.Ltmp57:
	#DEBUG_VALUE: main:j <- 8
	#DEBUG_VALUE: main:j <- 8
	.loc	0 161 22                        # avx_complex_vec_align_load.c:161:22
	movl	$5, %edi
	callq	my_rand
.Ltmp58:
	.loc	0 161 20                        # avx_complex_vec_align_load.c:161:20
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, (%rbp)
.Ltmp59:
	#DEBUG_VALUE: main:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 136, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_plus, DW_OP_minus, DW_OP_consts 144, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rbp, $rsp
	#DEBUG_VALUE: main:j <- 9
	.loc	0 151 13 is_stmt 1              # avx_complex_vec_align_load.c:151:13
	addq	$144, %rbp
.Ltmp60:
	addq	$48, %rbx
	decq	%r12
.Ltmp61:
	.loc	0 151 3 is_stmt 0               # avx_complex_vec_align_load.c:151:3
	jne	.LBB0_3
.Ltmp62:
# %bb.4:
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- $r13
	#DEBUG_VALUE: main:v2 <- $r14
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 128] [$rsp+0]
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movl	$32, %eax
	movl	$128, %ecx
	movl	$100000000, %edx                # imm = 0x5F5E100
.Ltmp63:
	#DEBUG_VALUE: main:i <- 0
	movq	40(%rsp), %rsi                  # 8-byte Reload
.Ltmp64:
	#DEBUG_VALUE: main:v3 <- $rsi
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp65:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	24(%rsp), %rbp                  # 8-byte Reload
.Ltmp66:
	#DEBUG_VALUE: main:psi2 <- $rbp
	movq	128(%rsp), %r8                  # 8-byte Reload
.Ltmp67:
	#DEBUG_VALUE: main:chi <- $r8
	movq	80(%rsp), %rbx                  # 8-byte Reload
.Ltmp68:
	#DEBUG_VALUE: main:chi2 <- $rbx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- $rsi
	#DEBUG_VALUE: main:v1 <- $r13
	#DEBUG_VALUE: main:v2 <- $r14
	#DEBUG_VALUE: main:psi <- $rdi
	#DEBUG_VALUE: main:psi2 <- $rbp
	#DEBUG_VALUE: main:chi <- $r8
	#DEBUG_VALUE: main:chi2 <- $rbx
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:i <- [DW_OP_consts 32, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rax
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 176 23 is_stmt 1              # avx_complex_vec_align_load.c:176:23
	vmovups	-32(%r13,%rax), %xmm0
	.loc	0 176 21 is_stmt 0              # avx_complex_vec_align_load.c:176:21
	vmovups	%xmm0, -32(%rdi,%rax)
	.loc	0 177 24 is_stmt 1              # avx_complex_vec_align_load.c:177:24
	vmovups	-32(%r14,%rax), %xmm0
	.loc	0 177 22 is_stmt 0              # avx_complex_vec_align_load.c:177:22
	vmovups	%xmm0, -32(%rbp,%rax)
.Ltmp69:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 176 23 is_stmt 1              # avx_complex_vec_align_load.c:176:23
	vmovups	-16(%r13,%rax), %xmm0
	.loc	0 176 21 is_stmt 0              # avx_complex_vec_align_load.c:176:21
	vmovups	%xmm0, -16(%rdi,%rax)
	.loc	0 177 24 is_stmt 1              # avx_complex_vec_align_load.c:177:24
	vmovups	-16(%r14,%rax), %xmm0
	.loc	0 177 22 is_stmt 0              # avx_complex_vec_align_load.c:177:22
	vmovups	%xmm0, -16(%rbp,%rax)
.Ltmp70:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 176 23 is_stmt 1              # avx_complex_vec_align_load.c:176:23
	vmovups	(%r13,%rax), %xmm0
	.loc	0 176 21 is_stmt 0              # avx_complex_vec_align_load.c:176:21
	vmovups	%xmm0, (%rdi,%rax)
	.loc	0 177 24 is_stmt 1              # avx_complex_vec_align_load.c:177:24
	vmovups	(%r14,%rax), %xmm0
	.loc	0 177 22 is_stmt 0              # avx_complex_vec_align_load.c:177:22
	vmovups	%xmm0, (%rbp,%rax)
.Ltmp71:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 182 22 is_stmt 1              # avx_complex_vec_align_load.c:182:22
	vmovups	-128(%rsi,%rcx), %xmm0
	.loc	0 182 20 is_stmt 0              # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -128(%r15,%rcx)
.Ltmp72:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	-112(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -112(%r15,%rcx)
.Ltmp73:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	-96(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -96(%r15,%rcx)
.Ltmp74:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 3
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	-80(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -80(%r15,%rcx)
.Ltmp75:
	#DEBUG_VALUE: main:j <- 4
	#DEBUG_VALUE: main:j <- 4
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	-64(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -64(%r15,%rcx)
.Ltmp76:
	#DEBUG_VALUE: main:j <- 5
	#DEBUG_VALUE: main:j <- 5
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	-48(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -48(%r15,%rcx)
.Ltmp77:
	#DEBUG_VALUE: main:j <- 6
	#DEBUG_VALUE: main:j <- 6
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	-32(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -32(%r15,%rcx)
.Ltmp78:
	#DEBUG_VALUE: main:j <- 7
	#DEBUG_VALUE: main:j <- 7
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	-16(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, -16(%r15,%rcx)
.Ltmp79:
	#DEBUG_VALUE: main:j <- 8
	#DEBUG_VALUE: main:j <- 8
	.loc	0 182 22                        # avx_complex_vec_align_load.c:182:22
	vmovups	(%rsi,%rcx), %xmm0
	.loc	0 182 20                        # avx_complex_vec_align_load.c:182:20
	vmovups	%xmm0, (%r15,%rcx)
.Ltmp80:
	#DEBUG_VALUE: main:j <- 9
	.loc	0 185 5 is_stmt 1               # avx_complex_vec_align_load.c:185:5
	vmovapd	(%r15), %ymm0
.Ltmp81:
	#DEBUG_VALUE: main:temp1 <- $ymm0
	vmovddup	%ymm0, %ymm8                    # ymm8 = ymm0[0,0,2,2]
.Ltmp82:
	#DEBUG_VALUE: main:temp6 <- $ymm8
	vpermilpd	$15, %ymm0, %ymm10      # ymm10 = ymm0[1,1,3,3]
.Ltmp83:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmovupd	48(%r15), %ymm0
.Ltmp84:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	vmovddup	%ymm0, %ymm9                    # ymm9 = ymm0[0,0,2,2]
.Ltmp85:
	#DEBUG_VALUE: main:temp7 <- $ymm9
	vpermilpd	$15, %ymm0, %ymm11      # ymm11 = ymm0[1,1,3,3]
.Ltmp86:
	#DEBUG_VALUE: main:temp2 <- $ymm11
	vmovapd	96(%r15), %ymm1
.Ltmp87:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovddup	%ymm1, %ymm0                    # ymm0 = ymm1[0,0,2,2]
.Ltmp88:
	#DEBUG_VALUE: main:temp8 <- $ymm0
	vpermilpd	$15, %ymm1, %ymm1       # ymm1 = ymm1[1,1,3,3]
.Ltmp89:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovapd	(%rdi), %ymm3
.Ltmp90:
	#DEBUG_VALUE: main:temp4 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm5        # ymm5 = ymm3[1,0,3,2]
.Ltmp91:
	#DEBUG_VALUE: main:temp9 <- $ymm5
	vmovapd	(%rbp), %ymm2
.Ltmp92:
	#DEBUG_VALUE: main:temp5 <- $ymm2
	vpermilpd	$5, %ymm2, %ymm4        # ymm4 = ymm2[1,0,3,2]
.Ltmp93:
	#DEBUG_VALUE: main:temp10 <- $ymm4
	vmulpd	%ymm5, %ymm10, %ymm6
.Ltmp94:
	#DEBUG_VALUE: main:temp12 <- $ymm6
	vfmaddsub231pd	%ymm3, %ymm8, %ymm6     # ymm6 = (ymm8 * ymm3) +/- ymm6
.Ltmp95:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmulpd	%ymm5, %ymm11, %ymm7
.Ltmp96:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	vfmaddsub231pd	%ymm3, %ymm9, %ymm7     # ymm7 = (ymm9 * ymm3) +/- ymm7
.Ltmp97:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	vinsertf128	$1, %xmm7, %ymm6, %ymm12
.Ltmp98:
	#DEBUG_VALUE: main:temp13 <- $ymm12
	#DEBUG_VALUE: main:temp11 <- undef
	vperm2f128	$49, %ymm7, %ymm6, %ymm6 # ymm6 = ymm6[2,3],ymm7[2,3]
.Ltmp99:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	#DEBUG_VALUE: main:temp11 <- undef
	vmovupd	16(%r15), %ymm7
.Ltmp100:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	#DEBUG_VALUE: main:temp12 <- undef
	#DEBUG_VALUE: main:temp13 <- undef
	vperm2f128	$49, 64(%r15), %ymm7, %ymm7 # ymm7 = ymm7[2,3],mem[2,3]
.Ltmp101:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	vaddpd	%ymm6, %ymm12, %ymm12
.Ltmp102:
	#DEBUG_VALUE: main:temp11 <- $ymm12
	vmovupd	16(%rdi), %ymm6
.Ltmp103:
	#DEBUG_VALUE: main:temp13 <- $ymm6
	#DEBUG_VALUE: main:temp16 <- undef
	vpermpd	$238, %ymm6, %ymm13             # ymm13 = ymm6[2,3,2,3]
.Ltmp104:
	#DEBUG_VALUE: main:temp13 <- $ymm13
	vmovddup	%ymm7, %ymm14                   # ymm14 = ymm7[0,0,2,2]
.Ltmp105:
	#DEBUG_VALUE: main:temp15 <- $ymm14
	vpermilpd	$15, %ymm7, %ymm15      # ymm15 = ymm7[1,1,3,3]
.Ltmp106:
	#DEBUG_VALUE: main:temp12 <- $ymm15
	vpermpd	$187, %ymm6, %ymm7              # ymm7 = ymm6[3,2,3,2]
.Ltmp107:
	#DEBUG_VALUE: main:temp14 <- $ymm7
	vmulpd	%ymm7, %ymm15, %ymm7
.Ltmp108:
	#DEBUG_VALUE: main:temp14 <- $ymm7
	vfmaddsub231pd	%ymm13, %ymm14, %ymm7   # ymm7 = (ymm14 * ymm13) +/- ymm7
.Ltmp109:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	vaddpd	%ymm7, %ymm12, %ymm7
.Ltmp110:
	#DEBUG_VALUE: main:temp11 <- $ymm7
	vmulpd	%ymm4, %ymm10, %ymm10
.Ltmp111:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vfmaddsub231pd	%ymm8, %ymm2, %ymm10    # ymm10 = (ymm2 * ymm8) +/- ymm10
.Ltmp112:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmulpd	%ymm4, %ymm11, %ymm8
.Ltmp113:
	#DEBUG_VALUE: main:temp2 <- $ymm8
	vfmaddsub231pd	%ymm9, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm9) +/- ymm8
.Ltmp114:
	#DEBUG_VALUE: main:temp7 <- $ymm8
	vinsertf128	$1, %xmm8, %ymm10, %ymm9
.Ltmp115:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp1 <- undef
	vperm2f128	$49, %ymm8, %ymm10, %ymm8 # ymm8 = ymm10[2,3],ymm8[2,3]
.Ltmp116:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vaddpd	%ymm8, %ymm9, %ymm8
.Ltmp117:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmovupd	16(%rbp), %ymm9
.Ltmp118:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp14 <- undef
	vpermpd	$238, %ymm9, %ymm10             # ymm10 = ymm9[2,3,2,3]
.Ltmp119:
	#DEBUG_VALUE: main:temp14 <- $ymm10
	vpermpd	$187, %ymm9, %ymm11             # ymm11 = ymm9[3,2,3,2]
.Ltmp120:
	#DEBUG_VALUE: main:temp17 <- $ymm11
	vmulpd	%ymm11, %ymm15, %ymm11
.Ltmp121:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vfmaddsub231pd	%ymm10, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm10) +/- ymm11
.Ltmp122:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vaddpd	%ymm11, %ymm8, %ymm8
.Ltmp123:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmulpd	%ymm5, %ymm1, %ymm5
.Ltmp124:
	#DEBUG_VALUE: main:temp12 <- $ymm5
	vfmaddsub231pd	%ymm3, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm3) +/- ymm5
.Ltmp125:
	#DEBUG_VALUE: main:temp4 <- $ymm5
	vmulpd	%ymm4, %ymm1, %ymm1
.Ltmp126:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vfmaddsub231pd	%ymm2, %ymm0, %ymm1     # ymm1 = (ymm0 * ymm2) +/- ymm1
.Ltmp127:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vinsertf128	$1, %xmm1, %ymm5, %ymm0
.Ltmp128:
	#DEBUG_VALUE: main:temp5 <- $ymm0
	#DEBUG_VALUE: main:temp4 <- undef
	vperm2f128	$49, %ymm1, %ymm5, %ymm1 # ymm1 = ymm5[2,3],ymm1[2,3]
.Ltmp129:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
.Ltmp130:
	#DEBUG_VALUE: main:temp3 <- $ymm0
	#DEBUG_VALUE: main:temp10 <- undef
	#DEBUG_VALUE: main:temp9 <- undef
	vbroadcastsd	128(%r15), %ymm1
.Ltmp131:
	#DEBUG_VALUE: main:temp10 <- $ymm1
	vbroadcastsd	136(%r15), %ymm2
.Ltmp132:
	#DEBUG_VALUE: main:temp12 <- $ymm2
	vperm2f128	$49, %ymm9, %ymm6, %ymm3 # ymm3 = ymm6[2,3],ymm9[2,3]
.Ltmp133:
	#DEBUG_VALUE: main:temp9 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm4        # ymm4 = ymm3[1,0,3,2]
.Ltmp134:
	#DEBUG_VALUE: main:temp13 <- $ymm4
	vmulpd	%ymm2, %ymm4, %ymm2
.Ltmp135:
	#DEBUG_VALUE: main:temp2 <- $ymm2
	vfmaddsub231pd	%ymm1, %ymm3, %ymm2     # ymm2 = (ymm3 * ymm1) +/- ymm2
.Ltmp136:
	#DEBUG_VALUE: main:temp7 <- $ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
.Ltmp137:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	#DEBUG_VALUE: main:chi2_3rd <- undef
	vmovupd	%ymm7, -32(%r8,%rax)
	vmovapd	%xmm0, (%r8,%rax)
	vmovupd	%ymm8, -32(%rbx,%rax)
	vextractf128	$1, %ymm0, (%rbx,%rax)
.Ltmp138:
	#DEBUG_VALUE: main:i <- [DW_OP_consts 32, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rax
	.loc	0 172 11                        # avx_complex_vec_align_load.c:172:11
	addq	$48, %rax
.Ltmp139:
	addq	$144, %rcx
	decq	%rdx
.Ltmp140:
	.loc	0 172 1 is_stmt 0               # avx_complex_vec_align_load.c:172:1
	jne	.LBB0_5
.Ltmp141:
# %bb.6:
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- $rsi
	#DEBUG_VALUE: main:v1 <- $r13
	#DEBUG_VALUE: main:v2 <- $r14
	#DEBUG_VALUE: main:psi <- $rdi
	#DEBUG_VALUE: main:psi2 <- $rbp
	#DEBUG_VALUE: main:chi <- $r8
	#DEBUG_VALUE: main:chi2 <- $rbx
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:temp1 <- $ymm8
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:temp7 <- $ymm2
	#DEBUG_VALUE: main:temp9 <- $ymm3
	#DEBUG_VALUE: main:temp10 <- $ymm1
	#DEBUG_VALUE: main:temp11 <- $ymm7
	#DEBUG_VALUE: main:temp13 <- $ymm4
	#DEBUG_VALUE: main:temp15 <- $ymm14
	#DEBUG_VALUE: main:temp14 <- $ymm10
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	.loc	0 0 1                           # avx_complex_vec_align_load.c:0:1
	xorl	%ebx, %ebx
.Ltmp142:
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	movq	%r13, 48(%rsp)                  # 8-byte Spill
.Ltmp143:
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	movq	%r14, %r13
	#DEBUG_VALUE: main:v2 <- $r14
.Ltmp144:
	#DEBUG_VALUE: main:v2 <- $r13
	leaq	136(%rsp), %rdi
.Ltmp145:
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	.loc	0 190 3 is_stmt 1               # avx_complex_vec_align_load.c:190:3
	xorl	%esi, %esi
.Ltmp146:
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	%r8, %r14
	#DEBUG_VALUE: main:chi <- $r8
.Ltmp147:
	#DEBUG_VALUE: main:chi <- $r14
	.loc	0 190 3                         # avx_complex_vec_align_load.c:190:3
	vzeroupper
.Ltmp148:
	callq	gettimeofday
.Ltmp149:
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 128] [$rsp+0]
	.loc	0 192 9 is_stmt 1               # avx_complex_vec_align_load.c:192:9
	callq	omp_get_wtime
.Ltmp150:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 72(%rsp)                 # 8-byte Spill
.Ltmp151:
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	movl	$128, %ebp
.Ltmp152:
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	movl	$100000000, %r12d               # imm = 0x5F5E100
	.loc	0 194 6 is_stmt 1               # avx_complex_vec_align_load.c:194:6
	callq	clock
.Ltmp153:
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	movq	80(%rsp), %r9                   # 8-byte Reload
.Ltmp154:
	#DEBUG_VALUE: main:chi2 <- $r9
	movq	24(%rsp), %rdx                  # 8-byte Reload
.Ltmp155:
	#DEBUG_VALUE: main:psi2 <- $rdx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp156:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %rsi
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp157:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp158:
	#DEBUG_VALUE: main:v3 <- $rcx
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.Ltmp159:
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- 0
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $rax
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 200 23 is_stmt 1              # avx_complex_vec_align_load.c:200:23
	vmovups	(%r8,%rbx), %xmm0
	.loc	0 200 21 is_stmt 0              # avx_complex_vec_align_load.c:200:21
	vmovups	%xmm0, (%rdi,%rbx)
	.loc	0 201 24 is_stmt 1              # avx_complex_vec_align_load.c:201:24
	vmovups	(%rsi,%rbx), %xmm0
	.loc	0 201 22 is_stmt 0              # avx_complex_vec_align_load.c:201:22
	vmovups	%xmm0, (%rdx,%rbx)
.Ltmp160:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 200 23 is_stmt 1              # avx_complex_vec_align_load.c:200:23
	vmovups	16(%r8,%rbx), %xmm0
	.loc	0 200 21 is_stmt 0              # avx_complex_vec_align_load.c:200:21
	vmovups	%xmm0, 16(%rdi,%rbx)
	.loc	0 201 24 is_stmt 1              # avx_complex_vec_align_load.c:201:24
	vmovups	16(%rsi,%rbx), %xmm0
	.loc	0 201 22 is_stmt 0              # avx_complex_vec_align_load.c:201:22
	vmovups	%xmm0, 16(%rdx,%rbx)
.Ltmp161:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 200 23 is_stmt 1              # avx_complex_vec_align_load.c:200:23
	vmovups	32(%r8,%rbx), %xmm0
	.loc	0 200 21 is_stmt 0              # avx_complex_vec_align_load.c:200:21
	vmovups	%xmm0, 32(%rdi,%rbx)
	.loc	0 201 24 is_stmt 1              # avx_complex_vec_align_load.c:201:24
	vmovups	32(%rsi,%rbx), %xmm0
	.loc	0 201 22 is_stmt 0              # avx_complex_vec_align_load.c:201:22
	vmovups	%xmm0, 32(%rdx,%rbx)
.Ltmp162:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 206 22 is_stmt 1              # avx_complex_vec_align_load.c:206:22
	vmovups	-128(%rcx,%rbp), %xmm0
	.loc	0 206 20 is_stmt 0              # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -128(%r15,%rbp)
.Ltmp163:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	-112(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -112(%r15,%rbp)
.Ltmp164:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	-96(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -96(%r15,%rbp)
.Ltmp165:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 3
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	-80(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -80(%r15,%rbp)
.Ltmp166:
	#DEBUG_VALUE: main:j <- 4
	#DEBUG_VALUE: main:j <- 4
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	-64(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -64(%r15,%rbp)
.Ltmp167:
	#DEBUG_VALUE: main:j <- 5
	#DEBUG_VALUE: main:j <- 5
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	-48(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -48(%r15,%rbp)
.Ltmp168:
	#DEBUG_VALUE: main:j <- 6
	#DEBUG_VALUE: main:j <- 6
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	-32(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -32(%r15,%rbp)
.Ltmp169:
	#DEBUG_VALUE: main:j <- 7
	#DEBUG_VALUE: main:j <- 7
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	-16(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, -16(%r15,%rbp)
.Ltmp170:
	#DEBUG_VALUE: main:j <- 8
	#DEBUG_VALUE: main:j <- 8
	.loc	0 206 22                        # avx_complex_vec_align_load.c:206:22
	vmovups	(%rcx,%rbp), %xmm0
	.loc	0 206 20                        # avx_complex_vec_align_load.c:206:20
	vmovups	%xmm0, (%r15,%rbp)
.Ltmp171:
	#DEBUG_VALUE: main:j <- 9
	.loc	0 209 5 is_stmt 1               # avx_complex_vec_align_load.c:209:5
	#APP
	# LLVM-MCA-BEGIN double_MVM_macro
	#NO_APP
.Ltmp172:
	.loc	0 210 9                         # avx_complex_vec_align_load.c:210:9
	vmovapd	(%r15), %ymm0
.Ltmp173:
	#DEBUG_VALUE: main:temp1 <- $ymm0
	vmovddup	%ymm0, %ymm8                    # ymm8 = ymm0[0,0,2,2]
.Ltmp174:
	#DEBUG_VALUE: main:temp6 <- $ymm8
	vpermilpd	$15, %ymm0, %ymm10      # ymm10 = ymm0[1,1,3,3]
.Ltmp175:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmovupd	48(%r15), %ymm0
.Ltmp176:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	vmovddup	%ymm0, %ymm9                    # ymm9 = ymm0[0,0,2,2]
.Ltmp177:
	#DEBUG_VALUE: main:temp7 <- $ymm9
	vpermilpd	$15, %ymm0, %ymm11      # ymm11 = ymm0[1,1,3,3]
.Ltmp178:
	#DEBUG_VALUE: main:temp2 <- $ymm11
	vmovapd	96(%r15), %ymm1
.Ltmp179:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovddup	%ymm1, %ymm0                    # ymm0 = ymm1[0,0,2,2]
.Ltmp180:
	#DEBUG_VALUE: main:temp8 <- $ymm0
	vpermilpd	$15, %ymm1, %ymm1       # ymm1 = ymm1[1,1,3,3]
.Ltmp181:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vmovapd	(%rdi), %ymm3
.Ltmp182:
	#DEBUG_VALUE: main:temp4 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm5        # ymm5 = ymm3[1,0,3,2]
.Ltmp183:
	#DEBUG_VALUE: main:temp9 <- $ymm5
	vmovapd	(%rdx), %ymm2
.Ltmp184:
	#DEBUG_VALUE: main:temp5 <- $ymm2
	vpermilpd	$5, %ymm2, %ymm4        # ymm4 = ymm2[1,0,3,2]
.Ltmp185:
	#DEBUG_VALUE: main:temp10 <- $ymm4
	vmulpd	%ymm5, %ymm10, %ymm6
.Ltmp186:
	#DEBUG_VALUE: main:temp12 <- $ymm6
	vfmaddsub231pd	%ymm3, %ymm8, %ymm6     # ymm6 = (ymm8 * ymm3) +/- ymm6
.Ltmp187:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	vmulpd	%ymm5, %ymm11, %ymm7
.Ltmp188:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	vfmaddsub231pd	%ymm3, %ymm9, %ymm7     # ymm7 = (ymm9 * ymm3) +/- ymm7
.Ltmp189:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	vinsertf128	$1, %xmm7, %ymm6, %ymm12
.Ltmp190:
	#DEBUG_VALUE: main:temp13 <- $ymm12
	#DEBUG_VALUE: main:temp11 <- undef
	vperm2f128	$49, %ymm7, %ymm6, %ymm6 # ymm6 = ymm6[2,3],ymm7[2,3]
.Ltmp191:
	#DEBUG_VALUE: main:temp11 <- $ymm6
	#DEBUG_VALUE: main:temp11 <- undef
	vmovupd	16(%r15), %ymm7
.Ltmp192:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	#DEBUG_VALUE: main:temp12 <- undef
	#DEBUG_VALUE: main:temp13 <- undef
	vperm2f128	$49, 64(%r15), %ymm7, %ymm7 # ymm7 = ymm7[2,3],mem[2,3]
.Ltmp193:
	#DEBUG_VALUE: main:temp12 <- $ymm7
	vaddpd	%ymm6, %ymm12, %ymm12
.Ltmp194:
	#DEBUG_VALUE: main:temp11 <- $ymm12
	vmovupd	16(%rdi), %ymm6
.Ltmp195:
	#DEBUG_VALUE: main:temp13 <- $ymm6
	#DEBUG_VALUE: main:temp16 <- undef
	vpermpd	$238, %ymm6, %ymm13             # ymm13 = ymm6[2,3,2,3]
.Ltmp196:
	#DEBUG_VALUE: main:temp13 <- $ymm13
	vmovddup	%ymm7, %ymm14                   # ymm14 = ymm7[0,0,2,2]
.Ltmp197:
	#DEBUG_VALUE: main:temp15 <- $ymm14
	vpermilpd	$15, %ymm7, %ymm15      # ymm15 = ymm7[1,1,3,3]
.Ltmp198:
	#DEBUG_VALUE: main:temp12 <- $ymm15
	vpermpd	$187, %ymm6, %ymm7              # ymm7 = ymm6[3,2,3,2]
.Ltmp199:
	#DEBUG_VALUE: main:temp14 <- $ymm7
	vmulpd	%ymm7, %ymm15, %ymm7
.Ltmp200:
	#DEBUG_VALUE: main:temp14 <- $ymm7
	vfmaddsub231pd	%ymm13, %ymm14, %ymm7   # ymm7 = (ymm14 * ymm13) +/- ymm7
.Ltmp201:
	#DEBUG_VALUE: main:temp13 <- $ymm7
	vaddpd	%ymm7, %ymm12, %ymm7
.Ltmp202:
	#DEBUG_VALUE: main:temp11 <- $ymm7
	vmulpd	%ymm4, %ymm10, %ymm10
.Ltmp203:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vfmaddsub231pd	%ymm8, %ymm2, %ymm10    # ymm10 = (ymm2 * ymm8) +/- ymm10
.Ltmp204:
	#DEBUG_VALUE: main:temp1 <- $ymm10
	vmulpd	%ymm4, %ymm11, %ymm8
.Ltmp205:
	#DEBUG_VALUE: main:temp2 <- $ymm8
	vfmaddsub231pd	%ymm9, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm9) +/- ymm8
.Ltmp206:
	#DEBUG_VALUE: main:temp7 <- $ymm8
	vinsertf128	$1, %xmm8, %ymm10, %ymm9
.Ltmp207:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp1 <- undef
	vperm2f128	$49, %ymm8, %ymm10, %ymm8 # ymm8 = ymm10[2,3],ymm8[2,3]
.Ltmp208:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vaddpd	%ymm8, %ymm9, %ymm8
.Ltmp209:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmovupd	16(%rdx), %ymm9
.Ltmp210:
	#DEBUG_VALUE: main:temp13 <- $ymm9
	#DEBUG_VALUE: main:temp14 <- undef
	vpermpd	$238, %ymm9, %ymm10             # ymm10 = ymm9[2,3,2,3]
.Ltmp211:
	#DEBUG_VALUE: main:temp14 <- $ymm10
	vpermpd	$187, %ymm9, %ymm11             # ymm11 = ymm9[3,2,3,2]
.Ltmp212:
	#DEBUG_VALUE: main:temp17 <- $ymm11
	vmulpd	%ymm11, %ymm15, %ymm11
.Ltmp213:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vfmaddsub231pd	%ymm10, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm10) +/- ymm11
.Ltmp214:
	#DEBUG_VALUE: main:temp12 <- $ymm11
	vaddpd	%ymm11, %ymm8, %ymm8
.Ltmp215:
	#DEBUG_VALUE: main:temp1 <- $ymm8
	vmulpd	%ymm5, %ymm1, %ymm5
.Ltmp216:
	#DEBUG_VALUE: main:temp12 <- $ymm5
	vfmaddsub231pd	%ymm3, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm3) +/- ymm5
.Ltmp217:
	#DEBUG_VALUE: main:temp4 <- $ymm5
	vmulpd	%ymm4, %ymm1, %ymm1
.Ltmp218:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vfmaddsub231pd	%ymm2, %ymm0, %ymm1     # ymm1 = (ymm0 * ymm2) +/- ymm1
.Ltmp219:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vinsertf128	$1, %xmm1, %ymm5, %ymm0
.Ltmp220:
	#DEBUG_VALUE: main:temp5 <- $ymm0
	#DEBUG_VALUE: main:temp4 <- undef
	vperm2f128	$49, %ymm1, %ymm5, %ymm1 # ymm1 = ymm5[2,3],ymm1[2,3]
.Ltmp221:
	#DEBUG_VALUE: main:temp3 <- $ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
.Ltmp222:
	#DEBUG_VALUE: main:temp3 <- $ymm0
	#DEBUG_VALUE: main:temp10 <- undef
	#DEBUG_VALUE: main:temp9 <- undef
	vbroadcastsd	128(%r15), %ymm1
.Ltmp223:
	#DEBUG_VALUE: main:temp10 <- $ymm1
	vbroadcastsd	136(%r15), %ymm2
.Ltmp224:
	#DEBUG_VALUE: main:temp12 <- $ymm2
	vperm2f128	$49, %ymm9, %ymm6, %ymm3 # ymm3 = ymm6[2,3],ymm9[2,3]
.Ltmp225:
	#DEBUG_VALUE: main:temp9 <- $ymm3
	vpermilpd	$5, %ymm3, %ymm4        # ymm4 = ymm3[1,0,3,2]
.Ltmp226:
	#DEBUG_VALUE: main:temp13 <- $ymm4
	vmulpd	%ymm2, %ymm4, %ymm2
.Ltmp227:
	#DEBUG_VALUE: main:temp2 <- $ymm2
	vfmaddsub231pd	%ymm1, %ymm3, %ymm2     # ymm2 = (ymm3 * ymm1) +/- ymm2
.Ltmp228:
	#DEBUG_VALUE: main:temp7 <- $ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
.Ltmp229:
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	#DEBUG_VALUE: main:chi2_3rd <- undef
	vmovupd	%ymm7, (%r14,%rbx)
	vmovapd	%xmm0, 32(%r14,%rbx)
	vmovupd	%ymm8, (%r9,%rbx)
	vextractf128	$1, %ymm0, 32(%r9,%rbx)
.Ltmp230:
	.loc	0 211 5                         # avx_complex_vec_align_load.c:211:5
	#APP
	# LLVM-MCA-END
	#NO_APP
.Ltmp231:
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rbx
	.loc	0 196 11                        # avx_complex_vec_align_load.c:196:11
	addq	$48, %rbx
.Ltmp232:
	addq	$144, %rbp
	decq	%r12
.Ltmp233:
	.loc	0 196 1 is_stmt 0               # avx_complex_vec_align_load.c:196:1
	jne	.LBB0_7
.Ltmp234:
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:temp1 <- $ymm8
	#DEBUG_VALUE: main:temp2 <- $ymm0
	#DEBUG_VALUE: main:temp7 <- $ymm2
	#DEBUG_VALUE: main:temp9 <- $ymm3
	#DEBUG_VALUE: main:temp10 <- $ymm1
	#DEBUG_VALUE: main:temp11 <- $ymm7
	#DEBUG_VALUE: main:temp13 <- $ymm4
	#DEBUG_VALUE: main:temp15 <- $ymm14
	#DEBUG_VALUE: main:temp14 <- $ymm10
	#DEBUG_VALUE: main:chi_3rd <- $xmm0
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- $rax
	.loc	0 215 4 is_stmt 1               # avx_complex_vec_align_load.c:215:4
	vzeroupper
.Ltmp235:
	callq	clock
.Ltmp236:
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	movq	%rax, %rbx
.Ltmp237:
	#DEBUG_VALUE: main:t2 <- $rbx
	.loc	0 217 9                         # avx_complex_vec_align_load.c:217:9
	callq	omp_get_wtime
.Ltmp238:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
.Ltmp239:
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	xorl	%r12d, %r12d
	leaq	152(%rsp), %rbp
	.loc	0 219 3 is_stmt 1               # avx_complex_vec_align_load.c:219:3
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp240:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	leaq	96(%rsp), %rdi
	leaq	136(%rsp), %rdx
	.loc	0 220 3 is_stmt 1               # avx_complex_vec_align_load.c:220:3
	movq	%rbp, %rsi
	callq	timeval_subtract
.Ltmp241:
	.loc	0 222 80                        # avx_complex_vec_align_load.c:222:80
	subq	64(%rsp), %rbx                  # 8-byte Folded Reload
.Ltmp242:
	.loc	0 222 77 is_stmt 0              # avx_complex_vec_align_load.c:222:77
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2sd	%rbx, %xmm12, %xmm0
	.loc	0 222 84                        # avx_complex_vec_align_load.c:222:84
	vdivsd	.LCPI0_0(%rip), %xmm0, %xmm0
	.loc	0 222 5                         # avx_complex_vec_align_load.c:222:5
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp243:
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	vmovsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp244:
	#DEBUG_VALUE: main:wt2 <- $xmm0
	.loc	0 224 80 is_stmt 1              # avx_complex_vec_align_load.c:224:80
	vsubsd	72(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
.Ltmp245:
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 224 5 is_stmt 0               # avx_complex_vec_align_load.c:224:5
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp246:
	.loc	0 226 79 is_stmt 1              # avx_complex_vec_align_load.c:226:79
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2sdq	96(%rsp), %xmm12, %xmm1
	.loc	0 226 96 is_stmt 0              # avx_complex_vec_align_load.c:226:96
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2sdq	104(%rsp), %xmm12, %xmm0
	.loc	0 226 94                        # avx_complex_vec_align_load.c:226:94
	vfmadd132sd	.LCPI0_1(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	.loc	0 226 5                         # avx_complex_vec_align_load.c:226:5
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp247:
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp248:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp249:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp250:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp251:
	#DEBUG_VALUE: main:v3 <- $rax
	movl	$128, %ebp
	movl	$100000000, %edx                # imm = 0x5F5E100
.Ltmp252:
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:i <- 0
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp253:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp254:
	#DEBUG_VALUE: main:chi6 <- $rcx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 241 23 is_stmt 1              # avx_complex_vec_align_load.c:241:23
	vmovups	(%r8,%r12), %xmm0
	.loc	0 241 21 is_stmt 0              # avx_complex_vec_align_load.c:241:21
	vmovups	%xmm0, (%rsi,%r12)
	.loc	0 242 24 is_stmt 1              # avx_complex_vec_align_load.c:242:24
	vmovups	(%r9,%r12), %xmm0
	.loc	0 242 22 is_stmt 0              # avx_complex_vec_align_load.c:242:22
	vmovups	%xmm0, (%rdi,%r12)
.Ltmp255:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 241 23 is_stmt 1              # avx_complex_vec_align_load.c:241:23
	vmovups	16(%r8,%r12), %xmm0
	.loc	0 241 21 is_stmt 0              # avx_complex_vec_align_load.c:241:21
	vmovups	%xmm0, 16(%rsi,%r12)
	.loc	0 242 24 is_stmt 1              # avx_complex_vec_align_load.c:242:24
	vmovups	16(%r9,%r12), %xmm0
	.loc	0 242 22 is_stmt 0              # avx_complex_vec_align_load.c:242:22
	vmovups	%xmm0, 16(%rdi,%r12)
.Ltmp256:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 241 23 is_stmt 1              # avx_complex_vec_align_load.c:241:23
	vmovups	32(%r8,%r12), %xmm0
	.loc	0 241 21 is_stmt 0              # avx_complex_vec_align_load.c:241:21
	vmovups	%xmm0, 32(%rsi,%r12)
	.loc	0 242 24 is_stmt 1              # avx_complex_vec_align_load.c:242:24
	vmovups	32(%r9,%r12), %xmm0
	.loc	0 242 22 is_stmt 0              # avx_complex_vec_align_load.c:242:22
	vmovups	%xmm0, 32(%rdi,%r12)
.Ltmp257:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 247 22 is_stmt 1              # avx_complex_vec_align_load.c:247:22
	vmovups	-128(%rax,%rbp), %xmm0
	.loc	0 247 20 is_stmt 0              # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -128(%r15,%rbp)
.Ltmp258:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	-112(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -112(%r15,%rbp)
.Ltmp259:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	-96(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -96(%r15,%rbp)
.Ltmp260:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 3
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	-80(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -80(%r15,%rbp)
.Ltmp261:
	#DEBUG_VALUE: main:j <- 4
	#DEBUG_VALUE: main:j <- 4
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	-64(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -64(%r15,%rbp)
.Ltmp262:
	#DEBUG_VALUE: main:j <- 5
	#DEBUG_VALUE: main:j <- 5
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	-48(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -48(%r15,%rbp)
.Ltmp263:
	#DEBUG_VALUE: main:j <- 6
	#DEBUG_VALUE: main:j <- 6
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	-32(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -32(%r15,%rbp)
.Ltmp264:
	#DEBUG_VALUE: main:j <- 7
	#DEBUG_VALUE: main:j <- 7
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	-16(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, -16(%r15,%rbp)
.Ltmp265:
	#DEBUG_VALUE: main:j <- 8
	#DEBUG_VALUE: main:j <- 8
	.loc	0 247 22                        # avx_complex_vec_align_load.c:247:22
	vmovups	(%rax,%rbp), %xmm0
	.loc	0 247 20                        # avx_complex_vec_align_load.c:247:20
	vmovups	%xmm0, (%r15,%rbp)
.Ltmp266:
	#DEBUG_VALUE: main:j <- 9
	.loc	0 250 3 is_stmt 1               # avx_complex_vec_align_load.c:250:3
	vmovsd	(%r15), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%r15), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_10
.Ltmp267:
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, (%rbx,%r12)
	vmovsd	%xmm1, 8(%rbx,%r12)
	vmovsd	16(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_13
.Ltmp268:
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, (%rbx,%r12)
	vmovsd	%xmm7, 8(%rbx,%r12)
	vmovsd	32(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_16
.Ltmp269:
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, (%rbx,%r12)
	vmovsd	%xmm1, 8(%rbx,%r12)
	vmovsd	48(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_19
.Ltmp270:
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 16(%rbx,%r12)
	vmovsd	%xmm1, 24(%rbx,%r12)
	vmovsd	64(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_22
.Ltmp271:
.LBB0_24:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 16(%rbx,%r12)
	vmovsd	%xmm7, 24(%rbx,%r12)
	vmovsd	80(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_25
.Ltmp272:
.LBB0_27:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 16(%rbx,%r12)
	vmovsd	%xmm1, 24(%rbx,%r12)
	vmovsd	96(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%rsi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rsi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_28
.Ltmp273:
.LBB0_30:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 32(%rbx,%r12)
	vmovsd	%xmm1, 40(%rbx,%r12)
	vmovsd	112(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_31
.Ltmp274:
.LBB0_33:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 32(%rbx,%r12)
	vmovsd	%xmm7, 40(%rbx,%r12)
	vmovsd	128(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%rsi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rsi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_34
.Ltmp275:
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 32(%rbx,%r12)
	vmovsd	%xmm1, 40(%rbx,%r12)
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovsd	(%r15), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%r15), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rdi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_37
.Ltmp276:
.LBB0_39:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, (%rcx,%r12)
	vmovsd	%xmm1, 8(%rcx,%r12)
	vmovsd	16(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_40
.Ltmp277:
.LBB0_42:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, (%rcx,%r12)
	vmovsd	%xmm7, 8(%rcx,%r12)
	vmovsd	32(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_43
.Ltmp278:
.LBB0_45:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, (%rcx,%r12)
	vmovsd	%xmm1, 8(%rcx,%r12)
	vmovsd	48(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rdi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_46
.Ltmp279:
.LBB0_48:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 16(%rcx,%r12)
	vmovsd	%xmm1, 24(%rcx,%r12)
	vmovsd	64(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_49
.Ltmp280:
.LBB0_51:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 16(%rcx,%r12)
	vmovsd	%xmm7, 24(%rcx,%r12)
	vmovsd	80(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_52
.Ltmp281:
.LBB0_54:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 16(%rcx,%r12)
	vmovsd	%xmm1, 24(%rcx,%r12)
	vmovsd	96(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rdi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_55
.Ltmp282:
.LBB0_57:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 32(%rcx,%r12)
	vmovsd	%xmm1, 40(%rcx,%r12)
	vmovsd	112(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_58
.Ltmp283:
.LBB0_60:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 32(%rcx,%r12)
	vmovsd	%xmm7, 40(%rcx,%r12)
	vmovsd	128(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_61
.Ltmp284:
.LBB0_63:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 32(%rcx,%r12)
	vmovsd	%xmm1, 40(%rcx,%r12)
.Ltmp285:
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r12
	.loc	0 236 13                        # avx_complex_vec_align_load.c:236:13
	addq	$48, %r12
.Ltmp286:
	addq	$144, %rbp
	decq	%rdx
.Ltmp287:
	.loc	0 236 3 is_stmt 0               # avx_complex_vec_align_load.c:236:3
	jne	.LBB0_9
	jmp	.LBB0_64
.Ltmp288:
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 250 3 is_stmt 1               # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_12
.Ltmp289:
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp290:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp291:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp292:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp293:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp294:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp295:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp296:
	#DEBUG_VALUE: main:v3 <- $rax
	jmp	.LBB0_12
.Ltmp297:
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_15
.Ltmp298:
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp299:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp300:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp301:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp302:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp303:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp304:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp305:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	(%rbx,%r12), %xmm0              # xmm0 = mem[0],zero
	vmovsd	8(%rbx,%r12), %xmm1             # xmm1 = mem[0],zero
	jmp	.LBB0_15
.Ltmp306:
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_18
.Ltmp307:
# %bb.17:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp308:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp309:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp310:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp311:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp312:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp313:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp314:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vmovsd	(%rbx,%r12), %xmm8              # xmm8 = mem[0],zero
	vmovsd	8(%rbx,%r12), %xmm7             # xmm7 = mem[0],zero
	jmp	.LBB0_18
.Ltmp315:
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_21
.Ltmp316:
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp317:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp318:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp319:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp320:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp321:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp322:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp323:
	#DEBUG_VALUE: main:v3 <- $rax
	jmp	.LBB0_21
.Ltmp324:
.LBB0_22:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_24
.Ltmp325:
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp326:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp327:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp328:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp329:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp330:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp331:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp332:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	16(%rbx,%r12), %xmm0            # xmm0 = mem[0],zero
	vmovsd	24(%rbx,%r12), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_24
.Ltmp333:
.LBB0_25:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_27
.Ltmp334:
# %bb.26:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp335:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp336:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp337:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp338:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp339:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp340:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp341:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vmovsd	16(%rbx,%r12), %xmm8            # xmm8 = mem[0],zero
	vmovsd	24(%rbx,%r12), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_27
.Ltmp342:
.LBB0_28:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_30
.Ltmp343:
# %bb.29:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp344:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp345:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp346:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp347:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp348:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp349:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp350:
	#DEBUG_VALUE: main:v3 <- $rax
	jmp	.LBB0_30
.Ltmp351:
.LBB0_31:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_33
.Ltmp352:
# %bb.32:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp353:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp354:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp355:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp356:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp357:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp358:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp359:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	32(%rbx,%r12), %xmm0            # xmm0 = mem[0],zero
	vmovsd	40(%rbx,%r12), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_33
.Ltmp360:
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_36
.Ltmp361:
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp362:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp363:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp364:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp365:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp366:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp367:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp368:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 250 3                         # avx_complex_vec_align_load.c:250:3
	vmovsd	32(%rbx,%r12), %xmm8            # xmm8 = mem[0],zero
	vmovsd	40(%rbx,%r12), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_36
.Ltmp369:
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 251 3 is_stmt 1               # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_39
.Ltmp370:
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp371:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp372:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp373:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp374:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp375:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp376:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp377:
	#DEBUG_VALUE: main:v3 <- $rax
	jmp	.LBB0_39
.Ltmp378:
.LBB0_40:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_42
.Ltmp379:
# %bb.41:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp380:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp381:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp382:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp383:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp384:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp385:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp386:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	(%rcx,%r12), %xmm0              # xmm0 = mem[0],zero
	vmovsd	8(%rcx,%r12), %xmm1             # xmm1 = mem[0],zero
	jmp	.LBB0_42
.Ltmp387:
.LBB0_43:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_45
.Ltmp388:
# %bb.44:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp389:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp390:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp391:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp392:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp393:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp394:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp395:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovsd	(%rcx,%r12), %xmm8              # xmm8 = mem[0],zero
	vmovsd	8(%rcx,%r12), %xmm7             # xmm7 = mem[0],zero
	jmp	.LBB0_45
.Ltmp396:
.LBB0_46:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_48
.Ltmp397:
# %bb.47:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp398:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp399:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp400:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp401:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp402:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp403:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp404:
	#DEBUG_VALUE: main:v3 <- $rax
	jmp	.LBB0_48
.Ltmp405:
.LBB0_49:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_51
.Ltmp406:
# %bb.50:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp407:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp408:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp409:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp410:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp411:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp412:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp413:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	16(%rcx,%r12), %xmm0            # xmm0 = mem[0],zero
	vmovsd	24(%rcx,%r12), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_51
.Ltmp414:
.LBB0_52:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_54
.Ltmp415:
# %bb.53:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp416:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp417:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp418:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp419:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp420:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp421:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp422:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovsd	16(%rcx,%r12), %xmm8            # xmm8 = mem[0],zero
	vmovsd	24(%rcx,%r12), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_54
.Ltmp423:
.LBB0_55:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_57
.Ltmp424:
# %bb.56:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp425:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp426:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp427:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp428:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp429:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp430:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp431:
	#DEBUG_VALUE: main:v3 <- $rax
	jmp	.LBB0_57
.Ltmp432:
.LBB0_58:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_60
.Ltmp433:
# %bb.59:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp434:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp435:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp436:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp437:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp438:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp439:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp440:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	32(%rcx,%r12), %xmm0            # xmm0 = mem[0],zero
	vmovsd	40(%rcx,%r12), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_60
.Ltmp441:
.LBB0_61:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_63
.Ltmp442:
# %bb.62:                               #   in Loop: Header=BB0_9 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $r12
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rdx, %rbx
	callq	__muldc3
.Ltmp443:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp444:
	#DEBUG_VALUE: main:chi6 <- $rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
.Ltmp445:
	#DEBUG_VALUE: main:chi5 <- $rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp446:
	#DEBUG_VALUE: main:psi2 <- $rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
.Ltmp447:
	#DEBUG_VALUE: main:psi <- $rsi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp448:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rax                  # 8-byte Reload
.Ltmp449:
	#DEBUG_VALUE: main:v3 <- $rax
	.loc	0 251 3                         # avx_complex_vec_align_load.c:251:3
	vmovsd	32(%rcx,%r12), %xmm8            # xmm8 = mem[0],zero
	vmovsd	40(%rcx,%r12), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_63
.Ltmp450:
.LBB0_64:
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	xorl	%ebp, %ebp
	leaq	136(%rsp), %rdi
	.loc	0 256 3 is_stmt 1               # avx_complex_vec_align_load.c:256:3
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp451:
	.loc	0 258 9                         # avx_complex_vec_align_load.c:258:9
	callq	omp_get_wtime
.Ltmp452:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 72(%rsp)                 # 8-byte Spill
.Ltmp453:
	#DEBUG_VALUE: main:wt1 <- undef
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	movl	$128, %r12d
	.loc	0 260 6 is_stmt 1               # avx_complex_vec_align_load.c:260:6
	callq	clock
.Ltmp454:
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp455:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp456:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp457:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp458:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp459:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp460:
	#DEBUG_VALUE: main:v3 <- $rcx
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.Ltmp461:
	#DEBUG_VALUE: main:t1 <- undef
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:i <- 0
	movl	$100000000, %eax                # imm = 0x5F5E100
.Ltmp462:
	.p2align	4, 0x90
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 265 23 is_stmt 1              # avx_complex_vec_align_load.c:265:23
	vmovups	(%r8,%rbp), %xmm0
	.loc	0 265 21 is_stmt 0              # avx_complex_vec_align_load.c:265:21
	vmovups	%xmm0, (%rdi,%rbp)
	.loc	0 266 24 is_stmt 1              # avx_complex_vec_align_load.c:266:24
	vmovups	(%r9,%rbp), %xmm0
	.loc	0 266 22 is_stmt 0              # avx_complex_vec_align_load.c:266:22
	vmovups	%xmm0, (%rbx,%rbp)
.Ltmp463:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 265 23 is_stmt 1              # avx_complex_vec_align_load.c:265:23
	vmovups	16(%r8,%rbp), %xmm0
	.loc	0 265 21 is_stmt 0              # avx_complex_vec_align_load.c:265:21
	vmovups	%xmm0, 16(%rdi,%rbp)
	.loc	0 266 24 is_stmt 1              # avx_complex_vec_align_load.c:266:24
	vmovups	16(%r9,%rbp), %xmm0
	.loc	0 266 22 is_stmt 0              # avx_complex_vec_align_load.c:266:22
	vmovups	%xmm0, 16(%rbx,%rbp)
.Ltmp464:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 265 23 is_stmt 1              # avx_complex_vec_align_load.c:265:23
	vmovups	32(%r8,%rbp), %xmm0
	.loc	0 265 21 is_stmt 0              # avx_complex_vec_align_load.c:265:21
	vmovups	%xmm0, 32(%rdi,%rbp)
	.loc	0 266 24 is_stmt 1              # avx_complex_vec_align_load.c:266:24
	vmovups	32(%r9,%rbp), %xmm0
	.loc	0 266 22 is_stmt 0              # avx_complex_vec_align_load.c:266:22
	vmovups	%xmm0, 32(%rbx,%rbp)
.Ltmp465:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 271 22 is_stmt 1              # avx_complex_vec_align_load.c:271:22
	vmovups	-128(%rcx,%r12), %xmm0
	.loc	0 271 20 is_stmt 0              # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -128(%r15,%r12)
.Ltmp466:
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	-112(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -112(%r15,%r12)
.Ltmp467:
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	-96(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -96(%r15,%r12)
.Ltmp468:
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:j <- 3
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	-80(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -80(%r15,%r12)
.Ltmp469:
	#DEBUG_VALUE: main:j <- 4
	#DEBUG_VALUE: main:j <- 4
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	-64(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -64(%r15,%r12)
.Ltmp470:
	#DEBUG_VALUE: main:j <- 5
	#DEBUG_VALUE: main:j <- 5
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	-48(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -48(%r15,%r12)
.Ltmp471:
	#DEBUG_VALUE: main:j <- 6
	#DEBUG_VALUE: main:j <- 6
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	-32(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -32(%r15,%r12)
.Ltmp472:
	#DEBUG_VALUE: main:j <- 7
	#DEBUG_VALUE: main:j <- 7
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	-16(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, -16(%r15,%r12)
.Ltmp473:
	#DEBUG_VALUE: main:j <- 8
	#DEBUG_VALUE: main:j <- 8
	.loc	0 271 22                        # avx_complex_vec_align_load.c:271:22
	vmovups	(%rcx,%r12), %xmm0
	.loc	0 271 20                        # avx_complex_vec_align_load.c:271:20
	vmovups	%xmm0, (%r15,%r12)
.Ltmp474:
	#DEBUG_VALUE: main:j <- 9
	.loc	0 274 3 is_stmt 1               # avx_complex_vec_align_load.c:274:3
	#APP
	# LLVM-MCA-BEGIN _suNf_theta_T_multiply
	#NO_APP
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovsd	(%r15), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%r15), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rdi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_66
.Ltmp475:
.LBB0_68:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, (%rdx,%rbp)
	vmovsd	%xmm1, 8(%rdx,%rbp)
	vmovsd	16(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_69
.Ltmp476:
.LBB0_71:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, (%rdx,%rbp)
	vmovsd	%xmm7, 8(%rdx,%rbp)
	vmovsd	32(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_72
.Ltmp477:
.LBB0_74:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, (%rdx,%rbp)
	vmovsd	%xmm1, 8(%rdx,%rbp)
	vmovsd	48(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rdi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_75
.Ltmp478:
.LBB0_77:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 16(%rdx,%rbp)
	vmovsd	%xmm1, 24(%rdx,%rbp)
	vmovsd	64(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_78
.Ltmp479:
.LBB0_80:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 16(%rdx,%rbp)
	vmovsd	%xmm7, 24(%rdx,%rbp)
	vmovsd	80(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_81
.Ltmp480:
.LBB0_83:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 16(%rdx,%rbp)
	vmovsd	%xmm1, 24(%rdx,%rbp)
	vmovsd	96(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rdi), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_84
.Ltmp481:
.LBB0_86:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 32(%rdx,%rbp)
	vmovsd	%xmm1, 40(%rdx,%rbp)
	vmovsd	112(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_87
.Ltmp482:
.LBB0_89:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 32(%rdx,%rbp)
	vmovsd	%xmm7, 40(%rdx,%rbp)
	vmovsd	128(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%rdi), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rdi), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_90
.Ltmp483:
.LBB0_92:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 32(%rdx,%rbp)
	vmovsd	%xmm1, 40(%rdx,%rbp)
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovsd	(%r15), %xmm4                   # xmm4 = mem[0],zero
	vmovsd	8(%r15), %xmm5                  # xmm5 = mem[0],zero
	vmovsd	(%rbx), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rbx), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_93
.Ltmp484:
.LBB0_95:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, (%rsi,%rbp)
	vmovsd	%xmm1, 8(%rsi,%rbp)
	vmovsd	16(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	24(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rbx), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rbx), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_96
.Ltmp485:
.LBB0_98:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, (%rsi,%rbp)
	vmovsd	%xmm7, 8(%rsi,%rbp)
	vmovsd	32(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	40(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rbx), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rbx), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_99
.Ltmp486:
.LBB0_101:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, (%rsi,%rbp)
	vmovsd	%xmm1, 8(%rsi,%rbp)
	vmovsd	48(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	56(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	(%rbx), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rbx), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_102
.Ltmp487:
.LBB0_104:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 16(%rsi,%rbp)
	vmovsd	%xmm1, 24(%rsi,%rbp)
	vmovsd	64(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	72(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	16(%rbx), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rbx), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_105
.Ltmp488:
.LBB0_107:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 16(%rsi,%rbp)
	vmovsd	%xmm7, 24(%rsi,%rbp)
	vmovsd	80(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	88(%r15), %xmm5                 # xmm5 = mem[0],zero
	vmovsd	32(%rbx), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rbx), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_108
.Ltmp489:
.LBB0_110:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 16(%rsi,%rbp)
	vmovsd	%xmm1, 24(%rsi,%rbp)
	vmovsd	96(%r15), %xmm4                 # xmm4 = mem[0],zero
	vmovsd	104(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	(%rbx), %xmm2                   # xmm2 = mem[0],zero
	vmovsd	8(%rbx), %xmm3                  # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_111
.Ltmp490:
.LBB0_113:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovsd	%xmm0, 32(%rsi,%rbp)
	vmovsd	%xmm1, 40(%rsi,%rbp)
	vmovsd	112(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	120(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	16(%rbx), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	24(%rbx), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm6
	vmulsd	%xmm3, %xmm5, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm4, %xmm7
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm7
	vucomisd	%xmm8, %xmm8
	jp	.LBB0_114
.Ltmp491:
.LBB0_116:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm0, %xmm8, %xmm8
	vmovsd	%xmm8, 32(%rsi,%rbp)
	vmovsd	%xmm7, 40(%rsi,%rbp)
	vmovsd	128(%r15), %xmm4                # xmm4 = mem[0],zero
	vmovsd	136(%r15), %xmm5                # xmm5 = mem[0],zero
	vmovsd	32(%rbx), %xmm2                 # xmm2 = mem[0],zero
	vmovsd	40(%rbx), %xmm3                 # xmm3 = mem[0],zero
	vmulsd	%xmm2, %xmm4, %xmm0
	vmulsd	%xmm3, %xmm5, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vmulsd	%xmm2, %xmm5, %xmm6
	vaddsd	%xmm1, %xmm6, %xmm1
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_117
.Ltmp492:
.LBB0_119:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vaddsd	%xmm7, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, 32(%rsi,%rbp)
	vmovsd	%xmm1, 40(%rsi,%rbp)
	.loc	0 277 3                         # avx_complex_vec_align_load.c:277:3
	#APP
	# LLVM-MCA-END
	#NO_APP
.Ltmp493:
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rbp
	.loc	0 261 12                        # avx_complex_vec_align_load.c:261:12
	addq	$48, %rbp
.Ltmp494:
	addq	$144, %r12
	decq	%rax
.Ltmp495:
	.loc	0 261 2 is_stmt 0               # avx_complex_vec_align_load.c:261:2
	jne	.LBB0_65
	jmp	.LBB0_120
.Ltmp496:
.LBB0_66:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 275 6 is_stmt 1               # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_68
.Ltmp497:
# %bb.67:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp498:
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp499:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp500:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp501:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp502:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp503:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp504:
	#DEBUG_VALUE: main:v3 <- $rcx
	jmp	.LBB0_68
.Ltmp505:
.LBB0_69:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_71
.Ltmp506:
# %bb.70:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp507:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp508:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp509:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp510:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp511:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp512:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp513:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	(%rdx,%rbp), %xmm0              # xmm0 = mem[0],zero
	vmovsd	8(%rdx,%rbp), %xmm1             # xmm1 = mem[0],zero
	jmp	.LBB0_71
.Ltmp514:
.LBB0_72:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_74
.Ltmp515:
# %bb.73:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp516:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp517:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp518:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp519:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp520:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp521:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp522:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovsd	(%rdx,%rbp), %xmm8              # xmm8 = mem[0],zero
	vmovsd	8(%rdx,%rbp), %xmm7             # xmm7 = mem[0],zero
	jmp	.LBB0_74
.Ltmp523:
.LBB0_75:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_77
.Ltmp524:
# %bb.76:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp525:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp526:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp527:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp528:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp529:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp530:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp531:
	#DEBUG_VALUE: main:v3 <- $rcx
	jmp	.LBB0_77
.Ltmp532:
.LBB0_78:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_80
.Ltmp533:
# %bb.79:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp534:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp535:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp536:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp537:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp538:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp539:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp540:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	16(%rdx,%rbp), %xmm0            # xmm0 = mem[0],zero
	vmovsd	24(%rdx,%rbp), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_80
.Ltmp541:
.LBB0_81:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_83
.Ltmp542:
# %bb.82:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp543:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp544:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp545:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp546:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp547:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp548:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp549:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovsd	16(%rdx,%rbp), %xmm8            # xmm8 = mem[0],zero
	vmovsd	24(%rdx,%rbp), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_83
.Ltmp550:
.LBB0_84:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_86
.Ltmp551:
# %bb.85:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp552:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp553:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp554:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp555:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp556:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp557:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp558:
	#DEBUG_VALUE: main:v3 <- $rcx
	jmp	.LBB0_86
.Ltmp559:
.LBB0_87:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_89
.Ltmp560:
# %bb.88:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp561:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp562:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp563:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp564:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp565:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp566:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp567:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	32(%rdx,%rbp), %xmm0            # xmm0 = mem[0],zero
	vmovsd	40(%rdx,%rbp), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_89
.Ltmp568:
.LBB0_90:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_92
.Ltmp569:
# %bb.91:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp570:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp571:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp572:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp573:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp574:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp575:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp576:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 275 6                         # avx_complex_vec_align_load.c:275:6
	vmovsd	32(%rdx,%rbp), %xmm8            # xmm8 = mem[0],zero
	vmovsd	40(%rdx,%rbp), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_92
.Ltmp577:
.LBB0_93:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 276 6 is_stmt 1               # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_95
.Ltmp578:
# %bb.94:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp579:
	.loc	0 0 6 is_stmt 0                 # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp580:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp581:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp582:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp583:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp584:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp585:
	#DEBUG_VALUE: main:v3 <- $rcx
	jmp	.LBB0_95
.Ltmp586:
.LBB0_96:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_98
.Ltmp587:
# %bb.97:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp588:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp589:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp590:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp591:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp592:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp593:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp594:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	(%rsi,%rbp), %xmm0              # xmm0 = mem[0],zero
	vmovsd	8(%rsi,%rbp), %xmm1             # xmm1 = mem[0],zero
	jmp	.LBB0_98
.Ltmp595:
.LBB0_99:                               #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_101
.Ltmp596:
# %bb.100:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp597:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp598:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp599:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp600:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp601:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp602:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp603:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovsd	(%rsi,%rbp), %xmm8              # xmm8 = mem[0],zero
	vmovsd	8(%rsi,%rbp), %xmm7             # xmm7 = mem[0],zero
	jmp	.LBB0_101
.Ltmp604:
.LBB0_102:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_104
.Ltmp605:
# %bb.103:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp606:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp607:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp608:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp609:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp610:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp611:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp612:
	#DEBUG_VALUE: main:v3 <- $rcx
	jmp	.LBB0_104
.Ltmp613:
.LBB0_105:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_107
.Ltmp614:
# %bb.106:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp615:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp616:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp617:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp618:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp619:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp620:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp621:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	16(%rsi,%rbp), %xmm0            # xmm0 = mem[0],zero
	vmovsd	24(%rsi,%rbp), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_107
.Ltmp622:
.LBB0_108:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_110
.Ltmp623:
# %bb.109:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp624:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp625:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp626:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp627:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp628:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp629:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp630:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovsd	16(%rsi,%rbp), %xmm8            # xmm8 = mem[0],zero
	vmovsd	24(%rsi,%rbp), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_110
.Ltmp631:
.LBB0_111:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_113
.Ltmp632:
# %bb.112:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp633:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp634:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp635:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp636:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp637:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp638:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp639:
	#DEBUG_VALUE: main:v3 <- $rcx
	jmp	.LBB0_113
.Ltmp640:
.LBB0_114:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vucomisd	%xmm7, %xmm7
	jnp	.LBB0_116
.Ltmp641:
# %bb.115:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp642:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp643:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp644:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp645:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp646:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp647:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp648:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovapd	%xmm0, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovsd	32(%rsi,%rbp), %xmm0            # xmm0 = mem[0],zero
	vmovsd	40(%rsi,%rbp), %xmm1            # xmm1 = mem[0],zero
	jmp	.LBB0_116
.Ltmp649:
.LBB0_117:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vucomisd	%xmm1, %xmm1
	jnp	.LBB0_119
.Ltmp650:
# %bb.118:                              #   in Loop: Header=BB0_65 Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm5, %xmm1
	movq	%rax, %rbx
	callq	__muldc3
.Ltmp651:
	.loc	0 0 6                           # avx_complex_vec_align_load.c:0:6
	movq	%rbx, %rax
	movq	8(%rsp), %rsi                   # 8-byte Reload
.Ltmp652:
	#DEBUG_VALUE: main:chi6 <- $rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp653:
	#DEBUG_VALUE: main:chi5 <- $rdx
	movq	24(%rsp), %rbx                  # 8-byte Reload
.Ltmp654:
	#DEBUG_VALUE: main:psi2 <- $rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp655:
	#DEBUG_VALUE: main:psi <- $rdi
	movq	%r13, %r9
	movq	48(%rsp), %r8                   # 8-byte Reload
.Ltmp656:
	#DEBUG_VALUE: main:v1 <- $r8
	movq	40(%rsp), %rcx                  # 8-byte Reload
.Ltmp657:
	#DEBUG_VALUE: main:v3 <- $rcx
	.loc	0 276 6                         # avx_complex_vec_align_load.c:276:6
	vmovsd	32(%rsi,%rbp), %xmm8            # xmm8 = mem[0],zero
	vmovsd	40(%rsi,%rbp), %xmm7            # xmm7 = mem[0],zero
	jmp	.LBB0_119
.Ltmp658:
.LBB0_120:
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 9
	#DEBUG_VALUE: main:wt1 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:t1 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 282 6 is_stmt 1               # avx_complex_vec_align_load.c:282:6
	callq	clock
.Ltmp659:
	movq	%rax, %rbx
.Ltmp660:
	#DEBUG_VALUE: main:t2 <- $rbx
	.loc	0 284 9                         # avx_complex_vec_align_load.c:284:9
	callq	omp_get_wtime
.Ltmp661:
	.loc	0 0 9 is_stmt 0                 # avx_complex_vec_align_load.c:0:9
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
.Ltmp662:
	#DEBUG_VALUE: main:wt2 <- undef
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	leaq	152(%rsp), %rbp
	.loc	0 286 3 is_stmt 1               # avx_complex_vec_align_load.c:286:3
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
.Ltmp663:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	leaq	96(%rsp), %rdi
	leaq	136(%rsp), %rdx
	.loc	0 287 3 is_stmt 1               # avx_complex_vec_align_load.c:287:3
	movq	%rbp, %rsi
	callq	timeval_subtract
.Ltmp664:
	.loc	0 289 87                        # avx_complex_vec_align_load.c:289:87
	subq	64(%rsp), %rbx                  # 8-byte Folded Reload
.Ltmp665:
	.loc	0 289 84 is_stmt 0              # avx_complex_vec_align_load.c:289:84
	vcvtsi2sd	%rbx, %xmm9, %xmm0
	.loc	0 289 91                        # avx_complex_vec_align_load.c:289:91
	vdivsd	.LCPI0_0(%rip), %xmm0, %xmm0
	.loc	0 289 5                         # avx_complex_vec_align_load.c:289:5
	movl	$.L.str.5, %edi
	movl	$.L.str.2, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp666:
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	vmovsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.Ltmp667:
	#DEBUG_VALUE: main:wt2 <- $xmm0
	.loc	0 291 87 is_stmt 1              # avx_complex_vec_align_load.c:291:87
	vsubsd	72(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
.Ltmp668:
	#DEBUG_VALUE: main:wt2 <- [DW_OP_plus_uconst 56] [$rsp+0]
	.loc	0 291 5 is_stmt 0               # avx_complex_vec_align_load.c:291:5
	movl	$.L.str.5, %edi
	movl	$.L.str.3, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp669:
	.loc	0 293 86 is_stmt 1              # avx_complex_vec_align_load.c:293:86
	vcvtsi2sdq	96(%rsp), %xmm9, %xmm1
	.loc	0 293 103 is_stmt 0             # avx_complex_vec_align_load.c:293:103
	vcvtsi2sdq	104(%rsp), %xmm9, %xmm0
	.loc	0 293 101                       # avx_complex_vec_align_load.c:293:101
	vfmadd132sd	.LCPI0_1(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	.loc	0 293 5                         # avx_complex_vec_align_load.c:293:5
	movl	$.L.str.5, %edi
	movl	$.L.str.4, %edx
	xorl	%esi, %esi
	movb	$1, %al
	callq	lprintf
.Ltmp670:
	.loc	0 0 5                           # avx_complex_vec_align_load.c:0:5
	movl	$40, %ebp
	movl	$100000000, %r12d               # imm = 0x5F5E100
.Ltmp671:
	#DEBUG_VALUE: main:i <- 0
	vmovapd	.LCPI0_2(%rip), %xmm2           # xmm2 = [NaN,NaN]
	vmovsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	jmp	.LBB0_121
.Ltmp672:
	.p2align	4, 0x90
.LBB0_133:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 2
	.loc	0 317 48 is_stmt 1              # avx_complex_vec_align_load.c:317:48
	movzbl	%al, %edi
	.loc	0 317 3 is_stmt 0               # avx_complex_vec_align_load.c:317:3
	movl	$.L.str.8, %edx
	movl	$.L.str.9, %ecx
	movl	$1, %esi
	callq	error
.Ltmp673:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm2           # xmm2 = [NaN,NaN]
.Ltmp674:
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:j <- 3
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rbp
	.loc	0 302 15 is_stmt 1              # avx_complex_vec_align_load.c:302:15
	addq	$48, %rbp
.Ltmp675:
	decq	%r12
.Ltmp676:
	.loc	0 302 1 is_stmt 0               # avx_complex_vec_align_load.c:302:1
	je	.LBB0_134
.Ltmp677:
.LBB0_121:                              # =>This Inner Loop Header: Depth=1
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 0
	#DEBUG_VALUE: main:j <- 0
	.loc	0 306 10 is_stmt 1              # avx_complex_vec_align_load.c:306:10
	vmovsd	-40(%r14,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp678:
	#DEBUG_VALUE: main:res1 <- $xmm0
	#DEBUG_VALUE: main:res2 <- undef
	#DEBUG_VALUE: main:res3 <- undef
	#DEBUG_VALUE: main:res4 <- undef
	#DEBUG_VALUE: main:res9 <- undef
	#DEBUG_VALUE: main:res10 <- undef
	#DEBUG_VALUE: main:res11 <- undef
	#DEBUG_VALUE: main:res12 <- undef
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	16(%rsp), %rcx                  # 8-byte Reload
.Ltmp679:
	#DEBUG_VALUE: main:chi5 <- $rcx
	.loc	0 316 10 is_stmt 1              # avx_complex_vec_align_load.c:316:10
	vsubsd	-40(%rcx,%rbp), %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp680:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.file	4 "/home/mrahman" "spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h" md5 0x6fd65eb3b4a7b3155f2d8a97ce299f7d
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp681:
	.loc	0 316 37                        # avx_complex_vec_align_load.c:316:37
	vucomisd	%xmm3, %xmm0
	movb	$1, %al
	.loc	0 316 47 is_stmt 0              # avx_complex_vec_align_load.c:316:47
	ja	.LBB0_123
.Ltmp682:
# %bb.122:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- $rcx
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 0
	.loc	0 0 0                           # avx_complex_vec_align_load.c:0:0
	vmovsd	-32(%r14,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp683:
	#DEBUG_VALUE: main:res2 <- $xmm0
	#DEBUG_VALUE: main:res10 <- undef
	.loc	0 316 51                        # avx_complex_vec_align_load.c:316:51
	vsubsd	-32(%rcx,%rbp), %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp684:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp685:
	.loc	0 316 79                        # avx_complex_vec_align_load.c:316:79
	vucomisd	%xmm3, %xmm0
	seta	%al
.Ltmp686:
.LBB0_123:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- $rcx
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 0
	.loc	0 0 79 is_stmt 0                # avx_complex_vec_align_load.c:0:79
	movq	80(%rsp), %rcx                  # 8-byte Reload
.Ltmp687:
	#DEBUG_VALUE: main:chi2 <- $rcx
	vmovsd	-40(%rcx,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp688:
	#DEBUG_VALUE: main:res3 <- $xmm0
	vmovsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	vmovsd	-32(%rcx,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp689:
	#DEBUG_VALUE: main:res4 <- $xmm0
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp690:
	#DEBUG_VALUE: main:chi6 <- $rcx
	vmovsd	-40(%rcx,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp691:
	#DEBUG_VALUE: main:res11 <- $xmm0
	vmovsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	vmovsd	-32(%rcx,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp692:
	#DEBUG_VALUE: main:res12 <- $xmm0
	vmovsd	%xmm0, 88(%rsp)                 # 8-byte Spill
	.loc	0 316 47                        # avx_complex_vec_align_load.c:316:47
	movzbl	%al, %edi
	.loc	0 316 3                         # avx_complex_vec_align_load.c:316:3
	movl	$.L.str.6, %edx
	movl	$.L.str.7, %ecx
.Ltmp693:
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	movl	$1, %esi
	callq	error
.Ltmp694:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm2           # xmm2 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm1           # xmm1 = [NaN,NaN]
	vmovsd	72(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.loc	0 317 10 is_stmt 1              # avx_complex_vec_align_load.c:317:10
	vsubsd	64(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp695:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp696:
	.loc	4 0 35 is_stmt 0                # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:0:35
	movb	$1, %bl
.Ltmp697:
	.loc	0 317 38 is_stmt 1              # avx_complex_vec_align_load.c:317:38
	vucomisd	%xmm2, %xmm0
	movb	$1, %al
	.loc	0 317 48 is_stmt 0              # avx_complex_vec_align_load.c:317:48
	ja	.LBB0_125
.Ltmp698:
# %bb.124:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- $xmm3
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 0
	.loc	0 0 48                          # avx_complex_vec_align_load.c:0:48
	vmovsd	56(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
.Ltmp699:
	#DEBUG_VALUE: main:res4 <- $xmm3
	.loc	0 317 52                        # avx_complex_vec_align_load.c:317:52
	vsubsd	88(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp700:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp701:
	.loc	0 317 80                        # avx_complex_vec_align_load.c:317:80
	vucomisd	%xmm2, %xmm0
	seta	%al
.Ltmp702:
.LBB0_125:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 0
	.loc	0 317 48 is_stmt 0              # avx_complex_vec_align_load.c:317:48
	movzbl	%al, %edi
	.loc	0 317 3                         # avx_complex_vec_align_load.c:317:3
	movl	$.L.str.8, %edx
	movl	$.L.str.9, %ecx
	movl	$1, %esi
	callq	error
.Ltmp703:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm2           # xmm2 = [NaN,NaN]
.Ltmp704:
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:j <- 1
	#DEBUG_VALUE: main:j <- 1
	.loc	0 306 10 is_stmt 1              # avx_complex_vec_align_load.c:306:10
	vmovsd	-24(%r14,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp705:
	#DEBUG_VALUE: main:res1 <- $xmm0
	#DEBUG_VALUE: main:res2 <- undef
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	80(%rsp), %rax                  # 8-byte Reload
.Ltmp706:
	#DEBUG_VALUE: main:chi2 <- $rax
	.loc	0 308 10 is_stmt 1              # avx_complex_vec_align_load.c:308:10
	vmovsd	-24(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
.Ltmp707:
	#DEBUG_VALUE: main:res3 <- $xmm1
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	vmovsd	%xmm1, 72(%rsp)                 # 8-byte Spill
.Ltmp708:
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	.loc	0 309 10 is_stmt 1              # avx_complex_vec_align_load.c:309:10
	vmovsd	-16(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
.Ltmp709:
	#DEBUG_VALUE: main:res4 <- $xmm1
	#DEBUG_VALUE: main:res9 <- undef
	#DEBUG_VALUE: main:res10 <- undef
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	vmovsd	%xmm1, 56(%rsp)                 # 8-byte Spill
.Ltmp710:
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp711:
	#DEBUG_VALUE: main:chi6 <- $rcx
	.loc	0 313 11 is_stmt 1              # avx_complex_vec_align_load.c:313:11
	vmovsd	-24(%rcx,%rbp), %xmm1           # xmm1 = mem[0],zero
.Ltmp712:
	#DEBUG_VALUE: main:res11 <- $xmm1
	#DEBUG_VALUE: main:res12 <- undef
	.loc	0 0 11 is_stmt 0                # avx_complex_vec_align_load.c:0:11
	vmovsd	%xmm1, 64(%rsp)                 # 8-byte Spill
.Ltmp713:
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp714:
	#DEBUG_VALUE: main:chi5 <- $rax
	.loc	0 316 10 is_stmt 1              # avx_complex_vec_align_load.c:316:10
	vsubsd	-24(%rax,%rbp), %xmm0, %xmm1
	.loc	0 314 11                        # avx_complex_vec_align_load.c:314:11
	vmovsd	-16(%rcx,%rbp), %xmm4           # xmm4 = mem[0],zero
.Ltmp715:
	#DEBUG_VALUE: main:res12 <- $xmm4
	.loc	0 0 11 is_stmt 0                # avx_complex_vec_align_load.c:0:11
	vmovsd	%xmm4, 88(%rsp)                 # 8-byte Spill
	.loc	0 316 10 is_stmt 1              # avx_complex_vec_align_load.c:316:10
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp716:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp717:
	.loc	0 316 37                        # avx_complex_vec_align_load.c:316:37
	vucomisd	%xmm3, %xmm0
	.loc	0 316 47 is_stmt 0              # avx_complex_vec_align_load.c:316:47
	ja	.LBB0_127
.Ltmp718:
# %bb.126:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- $xmm4
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 1
	.loc	0 0 0                           # avx_complex_vec_align_load.c:0:0
	vmovsd	-16(%r14,%rbp), %xmm0           # xmm0 = mem[0],zero
.Ltmp719:
	#DEBUG_VALUE: main:res2 <- $xmm0
	#DEBUG_VALUE: main:res10 <- undef
	.loc	0 316 51                        # avx_complex_vec_align_load.c:316:51
	vsubsd	-16(%rax,%rbp), %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp720:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp721:
	.loc	0 316 79                        # avx_complex_vec_align_load.c:316:79
	vucomisd	%xmm3, %xmm0
	seta	%bl
.Ltmp722:
.LBB0_127:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- $xmm4
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 1
	.loc	0 316 47 is_stmt 0              # avx_complex_vec_align_load.c:316:47
	movzbl	%bl, %edi
	.loc	0 316 3                         # avx_complex_vec_align_load.c:316:3
	movl	$.L.str.6, %edx
	movl	$.L.str.7, %ecx
	movl	$1, %esi
	callq	error
.Ltmp723:
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm2           # xmm2 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm1           # xmm1 = [NaN,NaN]
	vmovsd	72(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
.Ltmp724:
	#DEBUG_VALUE: main:res3 <- $xmm3
	.loc	0 317 10 is_stmt 1              # avx_complex_vec_align_load.c:317:10
	vsubsd	64(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp725:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp726:
	.loc	4 0 35 is_stmt 0                # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:0:35
	movb	$1, %bl
.Ltmp727:
	.loc	0 317 38 is_stmt 1              # avx_complex_vec_align_load.c:317:38
	vucomisd	%xmm2, %xmm0
	movb	$1, %al
	.loc	0 317 48 is_stmt 0              # avx_complex_vec_align_load.c:317:48
	ja	.LBB0_129
.Ltmp728:
# %bb.128:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 1
	.loc	0 0 48                          # avx_complex_vec_align_load.c:0:48
	vmovsd	56(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
.Ltmp729:
	#DEBUG_VALUE: main:res4 <- $xmm3
	.loc	0 317 52                        # avx_complex_vec_align_load.c:317:52
	vsubsd	88(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp730:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp731:
	.loc	0 317 80                        # avx_complex_vec_align_load.c:317:80
	vucomisd	%xmm2, %xmm0
	seta	%al
.Ltmp732:
.LBB0_129:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 1
	.loc	0 317 48 is_stmt 0              # avx_complex_vec_align_load.c:317:48
	movzbl	%al, %edi
	.loc	0 317 3                         # avx_complex_vec_align_load.c:317:3
	movl	$.L.str.8, %edx
	movl	$.L.str.9, %ecx
	movl	$1, %esi
	callq	error
.Ltmp733:
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm2           # xmm2 = [NaN,NaN]
.Ltmp734:
	#DEBUG_VALUE: main:res1 <- 0.000000e+00
	#DEBUG_VALUE: main:res2 <- 0.000000e+00
	#DEBUG_VALUE: main:res3 <- 0.000000e+00
	#DEBUG_VALUE: main:res4 <- 0.000000e+00
	#DEBUG_VALUE: main:res9 <- 0.000000e+00
	#DEBUG_VALUE: main:res10 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- 0.000000e+00
	#DEBUG_VALUE: main:res12 <- 0.000000e+00
	#DEBUG_VALUE: main:j <- 2
	#DEBUG_VALUE: main:j <- 2
	.loc	0 306 10 is_stmt 1              # avx_complex_vec_align_load.c:306:10
	vmovsd	-8(%r14,%rbp), %xmm0            # xmm0 = mem[0],zero
.Ltmp735:
	#DEBUG_VALUE: main:res1 <- $xmm0
	#DEBUG_VALUE: main:res2 <- undef
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	movq	80(%rsp), %rax                  # 8-byte Reload
.Ltmp736:
	#DEBUG_VALUE: main:chi2 <- $rax
	.loc	0 308 10 is_stmt 1              # avx_complex_vec_align_load.c:308:10
	vmovsd	-8(%rax,%rbp), %xmm1            # xmm1 = mem[0],zero
.Ltmp737:
	#DEBUG_VALUE: main:res3 <- $xmm1
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	vmovsd	%xmm1, 72(%rsp)                 # 8-byte Spill
.Ltmp738:
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	.loc	0 309 10 is_stmt 1              # avx_complex_vec_align_load.c:309:10
	vmovsd	(%rax,%rbp), %xmm1              # xmm1 = mem[0],zero
.Ltmp739:
	#DEBUG_VALUE: main:res4 <- $xmm1
	#DEBUG_VALUE: main:res9 <- undef
	#DEBUG_VALUE: main:res10 <- undef
	.loc	0 0 10 is_stmt 0                # avx_complex_vec_align_load.c:0:10
	vmovsd	%xmm1, 56(%rsp)                 # 8-byte Spill
.Ltmp740:
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp741:
	#DEBUG_VALUE: main:chi6 <- $rcx
	.loc	0 313 11 is_stmt 1              # avx_complex_vec_align_load.c:313:11
	vmovsd	-8(%rcx,%rbp), %xmm1            # xmm1 = mem[0],zero
.Ltmp742:
	#DEBUG_VALUE: main:res11 <- $xmm1
	#DEBUG_VALUE: main:res12 <- undef
	.loc	0 0 11 is_stmt 0                # avx_complex_vec_align_load.c:0:11
	vmovsd	%xmm1, 64(%rsp)                 # 8-byte Spill
.Ltmp743:
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp744:
	#DEBUG_VALUE: main:chi5 <- $rax
	.loc	0 316 10 is_stmt 1              # avx_complex_vec_align_load.c:316:10
	vsubsd	-8(%rax,%rbp), %xmm0, %xmm1
	.loc	0 314 11                        # avx_complex_vec_align_load.c:314:11
	vmovsd	(%rcx,%rbp), %xmm4              # xmm4 = mem[0],zero
.Ltmp745:
	#DEBUG_VALUE: main:res12 <- $xmm4
	.loc	0 0 11 is_stmt 0                # avx_complex_vec_align_load.c:0:11
	vmovsd	%xmm4, 88(%rsp)                 # 8-byte Spill
	.loc	0 316 10 is_stmt 1              # avx_complex_vec_align_load.c:316:10
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp746:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp747:
	.loc	0 316 37                        # avx_complex_vec_align_load.c:316:37
	vucomisd	%xmm3, %xmm0
	.loc	0 316 47 is_stmt 0              # avx_complex_vec_align_load.c:316:47
	ja	.LBB0_131
.Ltmp748:
# %bb.130:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- $xmm4
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 2
	.loc	0 0 0                           # avx_complex_vec_align_load.c:0:0
	vmovsd	(%r14,%rbp), %xmm0              # xmm0 = mem[0],zero
.Ltmp749:
	#DEBUG_VALUE: main:res2 <- $xmm0
	#DEBUG_VALUE: main:res10 <- undef
	.loc	0 316 51                        # avx_complex_vec_align_load.c:316:51
	vsubsd	(%rax,%rbp), %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
.Ltmp750:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm2, %xmm0, %xmm0
.Ltmp751:
	.loc	0 316 79                        # avx_complex_vec_align_load.c:316:79
	vucomisd	%xmm3, %xmm0
	seta	%bl
.Ltmp752:
.LBB0_131:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- $xmm4
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 2
	.loc	0 316 47 is_stmt 0              # avx_complex_vec_align_load.c:316:47
	movzbl	%bl, %edi
	.loc	0 316 3                         # avx_complex_vec_align_load.c:316:3
	movl	$.L.str.6, %edx
	movl	$.L.str.7, %ecx
	movl	$1, %esi
	callq	error
.Ltmp753:
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	.loc	0 0 3                           # avx_complex_vec_align_load.c:0:3
	vmovsd	.LCPI0_3(%rip), %xmm2           # xmm2 = mem[0],zero
	vmovapd	.LCPI0_2(%rip), %xmm1           # xmm1 = [NaN,NaN]
	vmovsd	72(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
.Ltmp754:
	#DEBUG_VALUE: main:res3 <- $xmm3
	.loc	0 317 10 is_stmt 1              # avx_complex_vec_align_load.c:317:10
	vsubsd	64(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp755:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35                        # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp756:
	.loc	4 0 35 is_stmt 0                # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:0:35
	movb	$1, %al
.Ltmp757:
	.loc	0 317 38 is_stmt 1              # avx_complex_vec_align_load.c:317:38
	vucomisd	%xmm2, %xmm0
	.loc	0 317 48 is_stmt 0              # avx_complex_vec_align_load.c:317:48
	ja	.LBB0_133
.Ltmp758:
# %bb.132:                              #   in Loop: Header=BB0_121 Depth=1
	#DEBUG_VALUE: main:n <- 5
	#DEBUG_VALUE: main:res3 <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: main:res4 <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: main:res5 <- 0.000000e+00
	#DEBUG_VALUE: main:res6 <- 0.000000e+00
	#DEBUG_VALUE: main:res7 <- 0.000000e+00
	#DEBUG_VALUE: main:res8 <- 0.000000e+00
	#DEBUG_VALUE: main:res11 <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: main:res12 <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: main:in <- 100000000
	#DEBUG_VALUE: main:n_times <- 0
	#DEBUG_VALUE: main:n_warmup <- 0
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:i <- [DW_OP_consts 40, DW_OP_minus, DW_OP_consts 48, DW_OP_div, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: main:j <- 2
	.loc	0 0 48                          # avx_complex_vec_align_load.c:0:48
	vmovsd	56(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
.Ltmp759:
	#DEBUG_VALUE: main:res4 <- $xmm3
	.loc	0 317 52                        # avx_complex_vec_align_load.c:317:52
	vsubsd	88(%rsp), %xmm3, %xmm0          # 8-byte Folded Reload
	vdivsd	%xmm3, %xmm0, %xmm0
.Ltmp760:
	#DEBUG_VALUE: __tg_fabs:__x <- $xmm0
	.loc	4 530 35 is_stmt 1              # spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/llvm-14.0.2-xwkcxsjzhnflxkjmsaypm5szea4ab3qs/lib/clang/14.0.1/include/tgmath.h:530:35
	vandpd	%xmm1, %xmm0, %xmm0
.Ltmp761:
	.loc	0 317 80                        # avx_complex_vec_align_load.c:317:80
	vucomisd	%xmm2, %xmm0
	seta	%al
	jmp	.LBB0_133
.Ltmp762:
.LBB0_134:
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
	#DEBUG_VALUE: main:up <- $r15
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: main:v2 <- $r13
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: main:chi <- $r14
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:j <- 3
	.loc	0 332 3                         # avx_complex_vec_align_load.c:332:3
	movq	%r15, %rdi
	callq	afree
.Ltmp763:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	32(%rsp), %rdi                  # 8-byte Reload
.Ltmp764:
	#DEBUG_VALUE: main:psi <- $rdi
	.loc	0 333 3 is_stmt 1               # avx_complex_vec_align_load.c:333:3
	callq	afree
.Ltmp765:
	#DEBUG_VALUE: main:psi <- [DW_OP_plus_uconst 32] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	24(%rsp), %rdi                  # 8-byte Reload
.Ltmp766:
	#DEBUG_VALUE: main:psi2 <- $rdi
	.loc	0 334 3 is_stmt 1               # avx_complex_vec_align_load.c:334:3
	callq	afree
.Ltmp767:
	#DEBUG_VALUE: main:psi2 <- [DW_OP_plus_uconst 24] [$rsp+0]
	.loc	0 335 3                         # avx_complex_vec_align_load.c:335:3
	movq	%r14, %rdi
	callq	afree
.Ltmp768:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	80(%rsp), %rdi                  # 8-byte Reload
.Ltmp769:
	#DEBUG_VALUE: main:chi2 <- $rdi
	.loc	0 336 3 is_stmt 1               # avx_complex_vec_align_load.c:336:3
	callq	afree
.Ltmp770:
	#DEBUG_VALUE: main:chi2 <- [DW_OP_plus_uconst 80] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	120(%rsp), %rdi                 # 8-byte Reload
.Ltmp771:
	#DEBUG_VALUE: main:chi3 <- $rdi
	.loc	0 337 3 is_stmt 1               # avx_complex_vec_align_load.c:337:3
	callq	afree
.Ltmp772:
	#DEBUG_VALUE: main:chi3 <- [DW_OP_plus_uconst 120] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	112(%rsp), %rdi                 # 8-byte Reload
.Ltmp773:
	#DEBUG_VALUE: main:chi4 <- $rdi
	.loc	0 338 3 is_stmt 1               # avx_complex_vec_align_load.c:338:3
	callq	afree
.Ltmp774:
	#DEBUG_VALUE: main:chi4 <- [DW_OP_plus_uconst 112] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	16(%rsp), %rdi                  # 8-byte Reload
.Ltmp775:
	#DEBUG_VALUE: main:chi5 <- $rdi
	.loc	0 339 3 is_stmt 1               # avx_complex_vec_align_load.c:339:3
	callq	afree
.Ltmp776:
	#DEBUG_VALUE: main:chi5 <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	8(%rsp), %rdi                   # 8-byte Reload
.Ltmp777:
	#DEBUG_VALUE: main:chi6 <- $rdi
	.loc	0 340 3 is_stmt 1               # avx_complex_vec_align_load.c:340:3
	callq	afree
.Ltmp778:
	#DEBUG_VALUE: main:chi6 <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	48(%rsp), %rdi                  # 8-byte Reload
.Ltmp779:
	#DEBUG_VALUE: main:v1 <- $rdi
	.loc	0 341 3 is_stmt 1               # avx_complex_vec_align_load.c:341:3
	callq	afree
.Ltmp780:
	#DEBUG_VALUE: main:v1 <- [DW_OP_plus_uconst 48] [$rsp+0]
	.loc	0 342 3                         # avx_complex_vec_align_load.c:342:3
	movq	%r13, %rdi
	callq	afree
.Ltmp781:
	.loc	0 0 3 is_stmt 0                 # avx_complex_vec_align_load.c:0:3
	movq	40(%rsp), %rdi                  # 8-byte Reload
.Ltmp782:
	#DEBUG_VALUE: main:v3 <- $rdi
	.loc	0 343 3 is_stmt 1               # avx_complex_vec_align_load.c:343:3
	callq	afree
.Ltmp783:
	#DEBUG_VALUE: main:v3 <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 345 3                         # avx_complex_vec_align_load.c:345:3
	xorl	%eax, %eax
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp784:
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp785:
	#DEBUG_VALUE: main:chi <- [DW_OP_plus_uconst 128] [$rsp+0]
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp786:
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp787:
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
.Ltmp788:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm0
	.loc	0 357 10                        # avx_complex_vec_align_load.c:357:10
	vmovddup	%ymm0, %ymm8                    # ymm8 = ymm0[0,0,2,2]
.Ltmp789:
	#DEBUG_VALUE: double_MVM_non_macro:temp6 <- $ymm8
	.loc	0 358 10                        # avx_complex_vec_align_load.c:358:10
	vpermilpd	$15, %ymm0, %ymm10      # ymm10 = ymm0[1,1,3,3]
.Ltmp790:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm10
	.loc	0 361 10                        # avx_complex_vec_align_load.c:361:10
	vmovupd	48(%rdx), %ymm0
.Ltmp791:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm0
	.loc	0 362 10                        # avx_complex_vec_align_load.c:362:10
	vmovddup	%ymm0, %ymm9                    # ymm9 = ymm0[0,0,2,2]
.Ltmp792:
	#DEBUG_VALUE: double_MVM_non_macro:temp7 <- $ymm9
	.loc	0 363 10                        # avx_complex_vec_align_load.c:363:10
	vpermilpd	$15, %ymm0, %ymm11      # ymm11 = ymm0[1,1,3,3]
.Ltmp793:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm11
	.loc	0 366 10                        # avx_complex_vec_align_load.c:366:10
	vmovapd	96(%rdx), %ymm1
.Ltmp794:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 367 10                        # avx_complex_vec_align_load.c:367:10
	vmovddup	%ymm1, %ymm0                    # ymm0 = ymm1[0,0,2,2]
.Ltmp795:
	#DEBUG_VALUE: double_MVM_non_macro:temp8 <- $ymm0
	.loc	0 368 10                        # avx_complex_vec_align_load.c:368:10
	vpermilpd	$15, %ymm1, %ymm1       # ymm1 = ymm1[1,1,3,3]
.Ltmp796:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 371 10                        # avx_complex_vec_align_load.c:371:10
	vmovapd	(%rcx), %ymm3
.Ltmp797:
	#DEBUG_VALUE: double_MVM_non_macro:temp4 <- $ymm3
	.loc	0 372 10                        # avx_complex_vec_align_load.c:372:10
	vpermilpd	$5, %ymm3, %ymm5        # ymm5 = ymm3[1,0,3,2]
.Ltmp798:
	#DEBUG_VALUE: double_MVM_non_macro:temp9 <- $ymm5
	.loc	0 375 10                        # avx_complex_vec_align_load.c:375:10
	vmovapd	(%r8), %ymm2
.Ltmp799:
	#DEBUG_VALUE: double_MVM_non_macro:temp5 <- $ymm2
	.loc	0 376 11                        # avx_complex_vec_align_load.c:376:11
	vpermilpd	$5, %ymm2, %ymm4        # ymm4 = ymm2[1,0,3,2]
.Ltmp800:
	#DEBUG_VALUE: double_MVM_non_macro:temp10 <- $ymm4
	.loc	0 385 11                        # avx_complex_vec_align_load.c:385:11
	vmulpd	%ymm5, %ymm10, %ymm6
.Ltmp801:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm6
	.loc	0 386 11                        # avx_complex_vec_align_load.c:386:11
	vfmaddsub231pd	%ymm3, %ymm8, %ymm6     # ymm6 = (ymm8 * ymm3) +/- ymm6
.Ltmp802:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm6
	.loc	0 389 11                        # avx_complex_vec_align_load.c:389:11
	vmulpd	%ymm5, %ymm11, %ymm7
.Ltmp803:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm7
	.loc	0 390 11                        # avx_complex_vec_align_load.c:390:11
	vfmaddsub231pd	%ymm3, %ymm9, %ymm7     # ymm7 = (ymm9 * ymm3) +/- ymm7
.Ltmp804:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm7
	.loc	0 394 11                        # avx_complex_vec_align_load.c:394:11
	vinsertf128	$1, %xmm7, %ymm6, %ymm12
.Ltmp805:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm12
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- undef
	.loc	0 397 11                        # avx_complex_vec_align_load.c:397:11
	vperm2f128	$49, %ymm7, %ymm6, %ymm6 # ymm6 = ymm6[2,3],ymm7[2,3]
.Ltmp806:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm6
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- undef
	.loc	0 401 11                        # avx_complex_vec_align_load.c:401:11
	vmovupd	16(%rdx), %ymm7
.Ltmp807:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm7
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- undef
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- undef
	.loc	0 404 11                        # avx_complex_vec_align_load.c:404:11
	vperm2f128	$49, 64(%rdx), %ymm7, %ymm7 # ymm7 = ymm7[2,3],mem[2,3]
.Ltmp808:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm7
	.loc	0 398 11                        # avx_complex_vec_align_load.c:398:11
	vaddpd	%ymm6, %ymm12, %ymm12
.Ltmp809:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm12
	.loc	0 406 11                        # avx_complex_vec_align_load.c:406:11
	vmovupd	16(%rcx), %ymm6
.Ltmp810:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm6
	#DEBUG_VALUE: double_MVM_non_macro:temp16 <- undef
	.loc	0 408 11                        # avx_complex_vec_align_load.c:408:11
	vpermpd	$238, %ymm6, %ymm13             # ymm13 = ymm6[2,3,2,3]
.Ltmp811:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm13
	.loc	0 410 11                        # avx_complex_vec_align_load.c:410:11
	vmovddup	%ymm7, %ymm14                   # ymm14 = ymm7[0,0,2,2]
.Ltmp812:
	#DEBUG_VALUE: double_MVM_non_macro:temp15 <- $ymm14
	.loc	0 411 11                        # avx_complex_vec_align_load.c:411:11
	vpermilpd	$15, %ymm7, %ymm15      # ymm15 = ymm7[1,1,3,3]
.Ltmp813:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm15
	.loc	0 412 11                        # avx_complex_vec_align_load.c:412:11
	vpermpd	$187, %ymm6, %ymm7              # ymm7 = ymm6[3,2,3,2]
.Ltmp814:
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- $ymm7
	.loc	0 414 11                        # avx_complex_vec_align_load.c:414:11
	vmulpd	%ymm7, %ymm15, %ymm7
.Ltmp815:
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- $ymm7
	.loc	0 415 11                        # avx_complex_vec_align_load.c:415:11
	vfmaddsub231pd	%ymm13, %ymm14, %ymm7   # ymm7 = (ymm14 * ymm13) +/- ymm7
.Ltmp816:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm7
	.loc	0 418 11                        # avx_complex_vec_align_load.c:418:11
	vaddpd	%ymm7, %ymm12, %ymm7
.Ltmp817:
	#DEBUG_VALUE: double_MVM_non_macro:temp11 <- $ymm7
	.loc	0 423 10                        # avx_complex_vec_align_load.c:423:10
	vmulpd	%ymm4, %ymm10, %ymm10
.Ltmp818:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm10
	.loc	0 424 10                        # avx_complex_vec_align_load.c:424:10
	vfmaddsub231pd	%ymm8, %ymm2, %ymm10    # ymm10 = (ymm2 * ymm8) +/- ymm10
.Ltmp819:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm10
	.loc	0 427 10                        # avx_complex_vec_align_load.c:427:10
	vmulpd	%ymm4, %ymm11, %ymm8
.Ltmp820:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm8
	.loc	0 428 10                        # avx_complex_vec_align_load.c:428:10
	vfmaddsub231pd	%ymm9, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm9) +/- ymm8
.Ltmp821:
	#DEBUG_VALUE: double_MVM_non_macro:temp7 <- $ymm8
	.loc	0 432 11                        # avx_complex_vec_align_load.c:432:11
	vinsertf128	$1, %xmm8, %ymm10, %ymm9
.Ltmp822:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm9
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- undef
	.loc	0 435 10                        # avx_complex_vec_align_load.c:435:10
	vperm2f128	$49, %ymm8, %ymm10, %ymm8 # ymm8 = ymm10[2,3],ymm8[2,3]
.Ltmp823:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm8
	.loc	0 436 10                        # avx_complex_vec_align_load.c:436:10
	vaddpd	%ymm8, %ymm9, %ymm8
.Ltmp824:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm8
	.loc	0 439 11                        # avx_complex_vec_align_load.c:439:11
	vmovupd	16(%r8), %ymm9
.Ltmp825:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm9
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- undef
	.loc	0 441 11                        # avx_complex_vec_align_load.c:441:11
	vpermpd	$238, %ymm9, %ymm10             # ymm10 = ymm9[2,3,2,3]
.Ltmp826:
	#DEBUG_VALUE: double_MVM_non_macro:temp14 <- $ymm10
	.loc	0 443 11                        # avx_complex_vec_align_load.c:443:11
	vpermpd	$187, %ymm9, %ymm11             # ymm11 = ymm9[3,2,3,2]
.Ltmp827:
	#DEBUG_VALUE: double_MVM_non_macro:temp17 <- $ymm11
	.loc	0 444 11                        # avx_complex_vec_align_load.c:444:11
	vmulpd	%ymm11, %ymm15, %ymm11
.Ltmp828:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm11
	.loc	0 445 11                        # avx_complex_vec_align_load.c:445:11
	vfmaddsub231pd	%ymm10, %ymm14, %ymm11  # ymm11 = (ymm14 * ymm10) +/- ymm11
.Ltmp829:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm11
	.loc	0 448 10                        # avx_complex_vec_align_load.c:448:10
	vaddpd	%ymm11, %ymm8, %ymm8
.Ltmp830:
	#DEBUG_VALUE: double_MVM_non_macro:temp1 <- $ymm8
	.loc	0 455 11                        # avx_complex_vec_align_load.c:455:11
	vmulpd	%ymm5, %ymm1, %ymm5
.Ltmp831:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm5
	.loc	0 456 10                        # avx_complex_vec_align_load.c:456:10
	vfmaddsub231pd	%ymm3, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm3) +/- ymm5
.Ltmp832:
	#DEBUG_VALUE: double_MVM_non_macro:temp4 <- $ymm5
	.loc	0 461 10                        # avx_complex_vec_align_load.c:461:10
	vmulpd	%ymm4, %ymm1, %ymm1
.Ltmp833:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 462 10                        # avx_complex_vec_align_load.c:462:10
	vfmaddsub231pd	%ymm2, %ymm0, %ymm1     # ymm1 = (ymm0 * ymm2) +/- ymm1
.Ltmp834:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 466 10                        # avx_complex_vec_align_load.c:466:10
	vinsertf128	$1, %xmm1, %ymm5, %ymm0
.Ltmp835:
	#DEBUG_VALUE: double_MVM_non_macro:temp5 <- $ymm0
	#DEBUG_VALUE: double_MVM_non_macro:temp4 <- undef
	.loc	0 469 10                        # avx_complex_vec_align_load.c:469:10
	vperm2f128	$49, %ymm1, %ymm5, %ymm1 # ymm1 = ymm5[2,3],ymm1[2,3]
.Ltmp836:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm1
	.loc	0 470 10                        # avx_complex_vec_align_load.c:470:10
	vaddpd	%ymm1, %ymm0, %ymm0
.Ltmp837:
	#DEBUG_VALUE: double_MVM_non_macro:temp3 <- $ymm0
	#DEBUG_VALUE: double_MVM_non_macro:temp10 <- undef
	#DEBUG_VALUE: double_MVM_non_macro:temp9 <- undef
	.loc	0 476 11                        # avx_complex_vec_align_load.c:476:11
	vbroadcastsd	128(%rdx), %ymm1
.Ltmp838:
	#DEBUG_VALUE: double_MVM_non_macro:temp10 <- $ymm1
	.loc	0 477 11                        # avx_complex_vec_align_load.c:477:11
	vbroadcastsd	136(%rdx), %ymm2
.Ltmp839:
	#DEBUG_VALUE: double_MVM_non_macro:temp12 <- $ymm2
	.loc	0 479 10                        # avx_complex_vec_align_load.c:479:10
	vperm2f128	$49, %ymm9, %ymm6, %ymm3 # ymm3 = ymm6[2,3],ymm9[2,3]
.Ltmp840:
	#DEBUG_VALUE: double_MVM_non_macro:temp9 <- $ymm3
	.loc	0 480 11                        # avx_complex_vec_align_load.c:480:11
	vpermilpd	$5, %ymm3, %ymm4        # ymm4 = ymm3[1,0,3,2]
.Ltmp841:
	#DEBUG_VALUE: double_MVM_non_macro:temp13 <- $ymm4
	.loc	0 482 10                        # avx_complex_vec_align_load.c:482:10
	vmulpd	%ymm2, %ymm4, %ymm2
.Ltmp842:
	#DEBUG_VALUE: double_MVM_non_macro:temp2 <- $ymm2
	.loc	0 483 10                        # avx_complex_vec_align_load.c:483:10
	vfmaddsub231pd	%ymm1, %ymm3, %ymm2     # ymm2 = (ymm3 * ymm1) +/- ymm2
.Ltmp843:
	#DEBUG_VALUE: double_MVM_non_macro:temp7 <- $ymm2
	.loc	0 485 10                        # avx_complex_vec_align_load.c:485:10
	vaddpd	%ymm2, %ymm0, %ymm0
.Ltmp844:
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
.Ltmp845:
	retq
.Ltmp846:
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
	.long	64                              # Offset entry count
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
	.long	.Ldebug_loc61-.Lloclists_table_base0
	.long	.Ldebug_loc62-.Lloclists_table_base0
	.long	.Ldebug_loc63-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp678-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp680-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp705-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp705-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp716-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp735-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp735-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp746-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp683-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp705-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp719-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp735-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp749-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp750-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp688-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp689-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp699-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp702-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp704-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp707-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp707-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp708-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp708-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp724-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp724-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp728-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp728-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp737-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp737-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp738-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp738-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp754-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp754-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp758-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp758-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp689-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp691-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp699-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp699-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp702-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp702-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp704-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp709-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp709-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp710-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp710-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp729-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp729-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp732-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp732-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp739-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp739-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp740-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp740-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp759-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp759-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp709-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp739-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp709-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp739-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp691-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp692-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp704-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp712-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp712-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp713-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp713-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp742-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp742-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp743-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp743-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp692-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp694-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp704-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp712-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp715-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp723-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp723-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp742-.Lfunc_begin0         #   ending offset
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
	.uleb128 .Ltmp745-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp753-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp753-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp786-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp296-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp296-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp305-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp314-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp314-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp323-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp332-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp332-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp341-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp350-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp350-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp368-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp368-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp377-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp377-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp386-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp386-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp404-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp404-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp422-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp422-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp431-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp431-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp440-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp440-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp449-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp449-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp460-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp504-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp513-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp513-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp522-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp522-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp540-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp540-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp549-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp549-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp558-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp558-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp567-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp567-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp585-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp585-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp594-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp594-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp603-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp612-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp612-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp613-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp621-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp621-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp630-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp630-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp639-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp640-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp648-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp648-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp657-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp657-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp658-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp782-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp782-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp783-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp783-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp250-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp313-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp313-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp322-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp322-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp331-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp331-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp340-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp349-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp349-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp358-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp358-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp376-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp385-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp385-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp394-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp394-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp403-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp421-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp439-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp439-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp448-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp448-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp459-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp459-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp503-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp503-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp512-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp521-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp521-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp530-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp530-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp539-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp539-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp548-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp548-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp557-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp557-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp566-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp566-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp575-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp575-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp584-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp584-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp593-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp593-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp602-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp611-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp611-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp613-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp620-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp620-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp629-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp629-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp638-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp638-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp640-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp647-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp647-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp656-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp658-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp779-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp779-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp780-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp780-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp784-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp249-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp249-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp312-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp312-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp321-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp330-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp330-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp339-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp339-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp357-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp357-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp366-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp366-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp384-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp384-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp393-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp393-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp411-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp438-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp438-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp447-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp447-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp458-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp458-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp502-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp502-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp511-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp511-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp520-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp529-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp529-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp538-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp538-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp547-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp556-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp556-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp565-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp565-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp574-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp574-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp583-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp583-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp601-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp601-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp610-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp610-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp613-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp619-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp619-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp628-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp628-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp637-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp637-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp640-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp646-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp646-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp655-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp658-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp764-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp764-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp765-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp765-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp248-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp248-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp293-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp302-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp302-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp320-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp320-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp329-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp329-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp338-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp347-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp347-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp356-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp356-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp365-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp365-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp374-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp374-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp392-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp392-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp401-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp401-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp410-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp410-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp419-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp428-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp428-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp446-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp446-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp457-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp457-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp501-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp510-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp510-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp519-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp519-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp528-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp528-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp537-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp537-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp546-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp546-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp555-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp555-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp564-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp564-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp573-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp573-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp582-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp582-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp591-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp591-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp609-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp609-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp613-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp618-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp618-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp627-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp627-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp636-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp636-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp640-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp645-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp654-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp654-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp658-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp766-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp766-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp767-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp767-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp785-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp785-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 128
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp687-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp687-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp690-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp706-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp706-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp714-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp736-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp736-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp748-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp769-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp769-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp770-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp770-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp771-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp771-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp772-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp772-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 120
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp773-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp774-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp774-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp301-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp301-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp328-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp328-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp337-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp337-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp346-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp346-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp355-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp355-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp364-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp364-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp373-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp373-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp382-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp382-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp400-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp400-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp409-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp409-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp418-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp418-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp427-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp427-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp436-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp436-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp445-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp456-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp456-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp500-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp500-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp509-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp518-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp518-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp545-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp545-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp554-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp554-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp563-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp563-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp572-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp572-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp581-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp581-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp590-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp590-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp599-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp599-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp613-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp617-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp617-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp626-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp626-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp635-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp640-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp644-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp644-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp653-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp653-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp658-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp679-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp679-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp687-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp714-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp714-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp718-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp744-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp748-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp748-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp775-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp775-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp776-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp776-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp291-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp309-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp309-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp318-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp318-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp336-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp345-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp345-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp363-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp372-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp372-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp381-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp381-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp387-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp390-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp390-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp408-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp408-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp417-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp417-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp426-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp426-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp435-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp435-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp441-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp441-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp444-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp444-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp455-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp455-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp499-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp499-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp508-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp508-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp517-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp517-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp526-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp526-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp532-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp535-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp535-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp553-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp553-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp559-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp562-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp562-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp571-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp580-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp580-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp589-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp589-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp595-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp598-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp598-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp607-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp607-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp613-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp616-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp622-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp625-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp625-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp634-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp634-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp640-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp643-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp643-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp652-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp652-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp658-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp690-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp690-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp693-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp693-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp711-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp711-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp718-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp741-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp741-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp748-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp748-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp777-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp777-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp778-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp778-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	136                             # 136
	.byte	1                               # 
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	6                               # DW_OP_deref
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	144                             # 144
	.byte	1                               # 
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	18                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	136                             # 136
	.byte	1                               # 
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
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
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	32                              # 32
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	32                              # 32
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp286-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp493-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp493-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp494-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp658-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp671-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	40                              # 40
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp675-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	40                              # 40
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp677-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	40                              # 40
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	48                              # 48
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp171-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp255-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp255-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp256-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp257-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp257-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp258-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp258-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp260-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp262-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp263-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp263-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp264-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp266-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp464-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp465-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp466-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp466-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp468-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp468-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp469-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp469-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp471-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp471-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp472-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp473-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp473-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp474-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	9                               # 9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp674-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp677-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp677-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp704-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp205-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp227-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp228-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp206-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp228-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp222-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp222-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp182-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp225-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp222-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp222-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp186-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp216-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp227-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp190-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	110                             # DW_OP_reg30
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp190-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	110                             # DW_OP_reg30
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp226-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	111                             # DW_OP_reg31
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	111                             # DW_OP_reg31
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp199-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp211-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp236-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp242-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp660-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp665-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp245-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp245-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp667-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp667-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp668-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp668-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp680-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp681-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp716-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp717-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp746-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp747-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp685-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp721-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp750-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp751-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp695-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp696-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp725-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp726-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp755-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp756-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp700-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp701-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp730-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp731-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp760-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp761-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp788-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp790-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp790-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp822-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp823-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp789-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp820-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp791-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp793-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp793-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp820-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp820-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp821-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp842-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp843-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp844-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp792-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp821-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp821-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp823-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	105                             # DW_OP_reg25
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp843-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp794-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp837-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp837-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp844-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp795-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp835-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp797-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp832-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp835-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp798-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp831-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp840-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	100                             # DW_OP_reg20
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp799-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp835-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp835-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp837-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp800-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp837-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp838-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp801-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp802-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp804-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp807-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp808-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp813-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp813-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp828-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp828-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp831-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp831-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	102                             # DW_OP_reg22
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp839-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp842-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp802-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp805-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp809-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp817-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp817-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp803-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp804-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp805-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp807-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	109                             # DW_OP_reg29
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp810-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp811-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	103                             # DW_OP_reg23
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp811-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp816-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	110                             # DW_OP_reg30
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp816-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp817-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp822-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp841-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	106                             # DW_OP_reg26
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp841-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp812-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	111                             # DW_OP_reg31
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp814-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp816-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	104                             # DW_OP_reg24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp826-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	107                             # DW_OP_reg27
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp827-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp828-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp844-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
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
	.byte	116                             # DW_AT_rnglists_base
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
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	72                              # DW_TAG_call_site
	.byte	1                               # DW_CHILDREN_yes
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	73                              # DW_TAG_call_site_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	126                             # DW_AT_call_value
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x9e3 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	4                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x33:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x37:0x5 DW_TAG_pointer_type
	.long	43                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3c:0x5 DW_TAG_pointer_type
	.long	65                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x41:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x45:0x9 DW_TAG_typedef
	.long	78                              # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	32                              # DW_AT_alignment
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4e:0xc DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.long	65                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x53:0x6 DW_TAG_subrange_type
	.long	90                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5a:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x5e:0x8 DW_TAG_typedef
	.long	78                              # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x66:0x9 DW_TAG_typedef
	.long	111                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	16                              # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x6f:0xc DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.long	65                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x74:0x6 DW_TAG_subrange_type
	.long	90                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x7b:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	3                               # DW_AT_encoding
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x7f:0x5 DW_TAG_pointer_type
	.long	132                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x84:0x5 DW_TAG_const_type
	.long	69                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x89:0x5 DW_TAG_pointer_type
	.long	142                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x8e:0x5 DW_TAG_const_type
	.long	147                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x93:0x12 DW_TAG_structure_type
	.byte	13                              # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	3105                            # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x99:0xb DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	165                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	3106                            # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa5:0x9 DW_TAG_typedef
	.long	78                              # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xae:0x5 DW_TAG_pointer_type
	.long	179                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xb3:0x12 DW_TAG_structure_type
	.byte	14                              # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	3238                            # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb9:0xb DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	165                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	3239                            # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xc5:0x5 DW_TAG_pointer_type
	.long	102                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xca:0x14 DW_TAG_subprogram
	.byte	15                              # DW_AT_linkage_name
	.byte	16                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	65                              # DW_AT_type
                                        # DW_AT_inline
	.byte	13                              # Abbrev [13] 0xd4:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	530                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xde:0x63b DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.long	1841                            # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xed:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210\001"
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	1973                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xf9:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230\001"
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	1973                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x105:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	1973                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x111:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\001"
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	1871                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x11d:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_const_value
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	1841                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x126:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x12f:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x138:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x141:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x14a:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x153:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x15c:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x165:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x16e:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x177:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x180:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x189:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0x192:0xc DW_TAG_variable
	.ascii	"\200\302\327/"                 # DW_AT_const_value
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	1841                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x19e:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.long	1841                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1a7:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	1841                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1b0:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	2440                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1b9:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	2440                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1c2:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1cb:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1d4:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1dd:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1e6:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1ef:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1f8:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x201:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x20a:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x213:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x21c:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	1841                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x225:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	1841                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x22e:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x237:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x240:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x249:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x252:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x25b:0x9 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x264:0x9 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x26d:0x9 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x276:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x27f:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x288:0x9 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x291:0x9 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x29a:0x9 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2a3:0x9 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2ac:0x9 DW_TAG_variable
	.byte	36                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2b5:0x9 DW_TAG_variable
	.byte	37                              # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2be:0x9 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2c7:0x9 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2d0:0x9 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	2075                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2d9:0x9 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	2075                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2e2:0x9 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	65                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2eb:0x8 DW_TAG_variable
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	2518                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2f3:0x8 DW_TAG_variable
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	2518                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2fb:0x8 DW_TAG_variable
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x303:0x8 DW_TAG_variable
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x30b:0x8 DW_TAG_variable
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x313:0x8 DW_TAG_variable
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x31b:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	18                              # Abbrev [18] 0x321:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	1853                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x32b:0x11 DW_TAG_inlined_subroutine
	.long	202                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	316                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x335:0x6 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.long	212                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x33c:0x11 DW_TAG_inlined_subroutine
	.long	202                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	316                             # DW_AT_call_line
	.byte	51                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x346:0x6 DW_TAG_formal_parameter
	.byte	44                              # DW_AT_location
	.long	212                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x34d:0x11 DW_TAG_inlined_subroutine
	.long	202                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x357:0x6 DW_TAG_formal_parameter
	.byte	45                              # DW_AT_location
	.long	212                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x35e:0x11 DW_TAG_inlined_subroutine
	.long	202                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	52                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x368:0x6 DW_TAG_formal_parameter
	.byte	46                              # DW_AT_location
	.long	212                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x36f:0x1a DW_TAG_call_site
	.long	1817                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x375:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	24                              # Abbrev [24] 0x37a:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	16
	.ascii	"\200\001"
	.byte	24                              # Abbrev [24] 0x381:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	3                               # DW_AT_call_value
	.byte	145
	.ascii	"\250\001"
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x389:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x38f:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x394:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x39b:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x3a1:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x3a6:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3ad:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x3b3:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x3b8:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3bf:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x3c5:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x3ca:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3d1:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x3d7:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x3dc:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3e3:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x3e9:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x3ee:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3f5:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x3fb:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x400:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x407:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x40d:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x412:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x419:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x41f:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x424:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x42b:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x431:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x436:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x43d:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x443:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x448:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x44f:0x12 DW_TAG_call_site
	.long	1905                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x455:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	56
	.byte	24                              # Abbrev [24] 0x45a:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x461:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x467:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x46d:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x473:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x479:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x47f:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x485:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x48b:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x491:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x497:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x49d:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4a3:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4a9:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4af:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4b5:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4bb:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4c1:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4c7:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4cd:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4d3:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4d9:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4df:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4e5:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4eb:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4f1:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x4f7:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4fd:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x503:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x509:0xc DW_TAG_call_site
	.long	1925                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x50f:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	53
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x515:0x13 DW_TAG_call_site
	.long	1944                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x51b:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	24                              # Abbrev [24] 0x520:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	145
	.ascii	"\210\001"
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x528:0x6 DW_TAG_call_site
	.long	2059                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x52e:0x6 DW_TAG_call_site
	.long	2067                            # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x534:0x6 DW_TAG_call_site
	.long	2067                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x53a:0x6 DW_TAG_call_site
	.long	2059                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x540:0x12 DW_TAG_call_site
	.long	1944                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x546:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	24                              # Abbrev [24] 0x54b:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x552:0x1b DW_TAG_call_site
	.long	2091                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x558:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	24                              # Abbrev [24] 0x55e:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	3                               # DW_AT_call_value
	.byte	145
	.ascii	"\210\001"
	.byte	24                              # Abbrev [24] 0x565:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x56d:0xc DW_TAG_call_site
	.long	2115                            # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x573:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x579:0x15 DW_TAG_call_site
	.long	2115                            # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x57f:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	24                              # Abbrev [24] 0x584:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.byte	5                               # DW_AT_call_value
	.byte	145
	.asciz	"\310"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x58e:0xc DW_TAG_call_site
	.long	2115                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x594:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x59a:0x13 DW_TAG_call_site
	.long	1944                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x5a0:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	24                              # Abbrev [24] 0x5a5:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	145
	.ascii	"\210\001"
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x5ad:0x6 DW_TAG_call_site
	.long	2059                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5b3:0x6 DW_TAG_call_site
	.long	2067                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5b9:0x6 DW_TAG_call_site
	.long	2067                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5bf:0x6 DW_TAG_call_site
	.long	2059                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x5c5:0x12 DW_TAG_call_site
	.long	1944                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x5cb:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	24                              # Abbrev [24] 0x5d0:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x5d7:0x1b DW_TAG_call_site
	.long	2091                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x5dd:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	24                              # Abbrev [24] 0x5e3:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	3                               # DW_AT_call_value
	.byte	145
	.ascii	"\210\001"
	.byte	24                              # Abbrev [24] 0x5ea:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x5f2:0xc DW_TAG_call_site
	.long	2115                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x5f8:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x5fe:0x15 DW_TAG_call_site
	.long	2115                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x604:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	24                              # Abbrev [24] 0x609:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	97
	.byte	5                               # DW_AT_call_value
	.byte	145
	.asciz	"\310"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x613:0xc DW_TAG_call_site
	.long	2115                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x619:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x61f:0xc DW_TAG_call_site
	.long	2149                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x625:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x62b:0xc DW_TAG_call_site
	.long	2149                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x631:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x637:0xc DW_TAG_call_site
	.long	2149                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x63d:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x643:0xc DW_TAG_call_site
	.long	2149                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x649:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x64f:0xc DW_TAG_call_site
	.long	2149                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x655:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x65b:0xc DW_TAG_call_site
	.long	2149                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x661:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x667:0xd DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x66d:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	127
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x674:0xf DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x67a:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	32
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x683:0xf DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x689:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	24
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x692:0xd DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x698:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x69f:0x10 DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x6a5:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	145
	.asciz	"\320"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6af:0x10 DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x6b5:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	145
	.asciz	"\370"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6bf:0x10 DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x6c5:0x9 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	5                               # DW_AT_call_value
	.byte	145
	.asciz	"\360"
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6cf:0xf DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x6d5:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	16
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6de:0xf DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x6e4:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	8
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6ed:0xf DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x6f3:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	48
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6fc:0xd DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x702:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	125
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x709:0xf DW_TAG_call_site
	.long	2174                            # DW_AT_call_origin
	.byte	67                              # DW_AT_call_return_pc
	.byte	24                              # Abbrev [24] 0x70f:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	40
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x719:0x18 DW_TAG_subprogram
	.byte	18                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1841                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x721:0x5 DW_TAG_formal_parameter
	.long	1845                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x726:0x5 DW_TAG_formal_parameter
	.long	1853                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x72b:0x5 DW_TAG_formal_parameter
	.long	1861                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x731:0x4 DW_TAG_base_type
	.byte	19                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x735:0x8 DW_TAG_typedef
	.long	1841                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x73d:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x745:0x5 DW_TAG_pointer_type
	.long	1866                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x74a:0x5 DW_TAG_const_type
	.long	1871                            # DW_AT_type
	.byte	2                               # Abbrev [2] 0x74f:0x8 DW_TAG_typedef
	.long	1879                            # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x757:0xe DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x75b:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	1893                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x765:0xc DW_TAG_array_type
	.long	43                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x76a:0x6 DW_TAG_subrange_type
	.long	90                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x771:0x13 DW_TAG_subprogram
	.byte	24                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1924                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x779:0x5 DW_TAG_formal_parameter
	.long	1853                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x77e:0x5 DW_TAG_formal_parameter
	.long	1841                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x784:0x1 DW_TAG_pointer_type
	.byte	26                              # Abbrev [26] 0x785:0xe DW_TAG_subprogram
	.byte	25                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	123                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x78d:0x5 DW_TAG_formal_parameter
	.long	1939                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x793:0x5 DW_TAG_const_type
	.long	1841                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x798:0x13 DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1841                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x7a0:0x5 DW_TAG_formal_parameter
	.long	1963                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7a5:0x5 DW_TAG_formal_parameter
	.long	2017                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x7ab:0x5 DW_TAG_restrict_type
	.long	1968                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7b0:0x5 DW_TAG_pointer_type
	.long	1973                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x7b5:0x18 DW_TAG_structure_type
	.byte	32                              # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x7ba:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	1997                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x7c3:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	2009                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x7cd:0x8 DW_TAG_typedef
	.long	2005                            # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x7d5:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x7d9:0x8 DW_TAG_typedef
	.long	2005                            # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x7e1:0x8 DW_TAG_typedef
	.long	2025                            # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	32                              # Abbrev [32] 0x7e9:0x5 DW_TAG_restrict_type
	.long	2030                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7ee:0x5 DW_TAG_pointer_type
	.long	2035                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x7f3:0x18 DW_TAG_structure_type
	.byte	35                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x7f8:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	1841                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x801:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	1841                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x80b:0x8 DW_TAG_subprogram
	.byte	37                              # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	65                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	34                              # Abbrev [34] 0x813:0x8 DW_TAG_subprogram
	.byte	38                              # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2075                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	2                               # Abbrev [2] 0x81b:0x8 DW_TAG_typedef
	.long	2083                            # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x823:0x8 DW_TAG_typedef
	.long	2005                            # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x82b:0x18 DW_TAG_subprogram
	.byte	41                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1841                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x833:0x5 DW_TAG_formal_parameter
	.long	1968                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x838:0x5 DW_TAG_formal_parameter
	.long	1968                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x83d:0x5 DW_TAG_formal_parameter
	.long	1968                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x843:0x19 DW_TAG_subprogram
	.byte	42                              # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1841                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x84b:0x5 DW_TAG_formal_parameter
	.long	2140                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x850:0x5 DW_TAG_formal_parameter
	.long	1841                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x855:0x5 DW_TAG_formal_parameter
	.long	2140                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x85a:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x85c:0x5 DW_TAG_pointer_type
	.long	2145                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x861:0x4 DW_TAG_base_type
	.byte	43                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	36                              # Abbrev [36] 0x865:0x19 DW_TAG_subprogram
	.byte	44                              # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x869:0x5 DW_TAG_formal_parameter
	.long	1841                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x86e:0x5 DW_TAG_formal_parameter
	.long	1841                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x873:0x5 DW_TAG_formal_parameter
	.long	2140                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x878:0x5 DW_TAG_formal_parameter
	.long	2140                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x87e:0xa DW_TAG_subprogram
	.byte	45                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x882:0x5 DW_TAG_formal_parameter
	.long	1924                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x888:0x100 DW_TAG_subprogram
	.byte	68                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	38                              # Abbrev [38] 0x894:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x89f:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2479                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x8aa:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2522                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x8b5:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2532                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x8c0:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	349                             # DW_AT_decl_line
	.long	2532                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x8cb:0xa DW_TAG_variable
	.byte	47                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x8d5:0xa DW_TAG_variable
	.byte	48                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x8df:0xa DW_TAG_variable
	.byte	49                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x8e9:0xa DW_TAG_variable
	.byte	50                              # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x8f3:0xa DW_TAG_variable
	.byte	51                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x8fd:0xa DW_TAG_variable
	.byte	52                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x907:0xa DW_TAG_variable
	.byte	53                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x911:0xa DW_TAG_variable
	.byte	54                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x91b:0xa DW_TAG_variable
	.byte	55                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x925:0xa DW_TAG_variable
	.byte	56                              # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x92f:0xa DW_TAG_variable
	.byte	57                              # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x939:0xa DW_TAG_variable
	.byte	58                              # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x943:0xa DW_TAG_variable
	.byte	59                              # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x94d:0xa DW_TAG_variable
	.byte	60                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x957:0xa DW_TAG_variable
	.byte	61                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x961:0xa DW_TAG_variable
	.byte	62                              # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0x96b:0xa DW_TAG_variable
	.byte	63                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	352                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x975:0x9 DW_TAG_variable
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	40                              # Abbrev [40] 0x97e:0x9 DW_TAG_variable
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	352                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x988:0x5 DW_TAG_pointer_type
	.long	2445                            # DW_AT_type
	.byte	2                               # Abbrev [2] 0x98d:0x8 DW_TAG_typedef
	.long	2453                            # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x995:0xe DW_TAG_structure_type
	.byte	144                             # DW_AT_byte_size
	.byte	16                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x999:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	2467                            # DW_AT_type
	.byte	16                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x9a3:0xc DW_TAG_array_type
	.long	123                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9a8:0x6 DW_TAG_subrange_type
	.long	90                              # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x9af:0x5 DW_TAG_pointer_type
	.long	2484                            # DW_AT_type
	.byte	2                               # Abbrev [2] 0x9b4:0x8 DW_TAG_typedef
	.long	2492                            # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x9bc:0xe DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	16                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x9c0:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	2506                            # DW_AT_type
	.byte	16                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x9ca:0xc DW_TAG_array_type
	.long	123                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9cf:0x6 DW_TAG_subrange_type
	.long	90                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x9d6:0x4 DW_TAG_base_type
	.byte	108                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x9da:0x5 DW_TAG_pointer_type
	.long	2527                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9df:0x5 DW_TAG_const_type
	.long	2445                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x9e4:0x5 DW_TAG_pointer_type
	.long	2537                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9e9:0x5 DW_TAG_const_type
	.long	2484                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	4                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp680-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp681-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp716-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp717-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp746-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp747-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp685-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp721-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp750-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp751-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp695-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp697-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp725-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp755-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp757-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp700-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp701-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp730-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp731-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp760-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp761-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
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
	.quad	.Ltmp1
	.quad	.Ltmp3
	.quad	.Ltmp7
	.quad	.Ltmp9
	.quad	.Ltmp11
	.quad	.Ltmp13
	.quad	.Ltmp15
	.quad	.Ltmp17
	.quad	.Ltmp19
	.quad	.Ltmp21
	.quad	.Ltmp23
	.quad	.Ltmp25
	.quad	.Ltmp27
	.quad	.Ltmp29
	.quad	.Ltmp33
	.quad	.Ltmp34
	.quad	.Ltmp36
	.quad	.Ltmp37
	.quad	.Ltmp39
	.quad	.Ltmp40
	.quad	.Ltmp42
	.quad	.Ltmp44
	.quad	.Ltmp46
	.quad	.Ltmp48
	.quad	.Ltmp50
	.quad	.Ltmp52
	.quad	.Ltmp54
	.quad	.Ltmp56
	.quad	.Ltmp58
	.quad	.Ltmp149
	.quad	.Ltmp150
	.quad	.Ltmp153
	.quad	.Ltmp236
	.quad	.Ltmp238
	.quad	.Ltmp240
	.quad	.Ltmp241
	.quad	.Ltmp243
	.quad	.Ltmp246
	.quad	.Ltmp247
	.quad	.Ltmp451
	.quad	.Ltmp452
	.quad	.Ltmp454
	.quad	.Ltmp659
	.quad	.Ltmp661
	.quad	.Ltmp663
	.quad	.Ltmp664
	.quad	.Ltmp666
	.quad	.Ltmp669
	.quad	.Ltmp670
	.quad	.Ltmp673
	.quad	.Ltmp694
	.quad	.Ltmp703
	.quad	.Ltmp723
	.quad	.Ltmp733
	.quad	.Ltmp753
	.quad	.Ltmp763
	.quad	.Ltmp765
	.quad	.Ltmp767
	.quad	.Ltmp768
	.quad	.Ltmp770
	.quad	.Ltmp772
	.quad	.Ltmp774
	.quad	.Ltmp776
	.quad	.Ltmp778
	.quad	.Ltmp780
	.quad	.Ltmp781
	.quad	.Ltmp783
	.quad	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"clang version 14.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
