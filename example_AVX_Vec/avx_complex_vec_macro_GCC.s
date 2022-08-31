	.file	"avx_complex_vec_macro.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Double_MVM_AVX MACRO Time: [%ld sec %ld usec]\n"
	.align 8
.LC1:
	.string	"theta_T_multiply Time: [%ld sec %ld usec]\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1098:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$5, %ecx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$656, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	512(%rsp), %rdx
	leaq	464(%rsp), %rsi
	leaq	416(%rsp), %rdi
	call	my_init
	leaq	272(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday
	leaq	288(%rsp), %rdi
	xorl	%esi, %esi
	vmovupd	416(%rsp), %ymm1
	vmovupd	512(%rsp), %ymm13
	vmovupd	560(%rsp), %ymm11
	vshufpd	$5, %ymm1, %ymm1, %ymm3
	vmovupd	464(%rsp), %ymm0
	vunpcklpd	%ymm13, %ymm13, %ymm14
	vunpckhpd	%ymm13, %ymm13, %ymm13
	vunpcklpd	%ymm11, %ymm11, %ymm12
	vmulpd	%ymm3, %ymm13, %ymm4
	vmulpd	%ymm1, %ymm14, %ymm5
	vmulpd	%ymm1, %ymm12, %ymm6
	vaddsubpd	%ymm4, %ymm5, %ymm5
	vunpckhpd	%ymm11, %ymm11, %ymm11
	vmulpd	%ymm3, %ymm11, %ymm4
	vaddsubpd	%ymm4, %ymm6, %ymm6
	vmulpd	%ymm0, %ymm14, %ymm14
	vshufpd	$5, %ymm0, %ymm0, %ymm2
	vmulpd	%ymm0, %ymm12, %ymm12
	vmovupd	528(%rsp), %ymm9
	vmulpd	%ymm2, %ymm13, %ymm13
	vmulpd	%ymm2, %ymm11, %ymm11
	vaddsubpd	%ymm13, %ymm14, %ymm13
	vperm2f128	$2, %ymm5, %ymm6, %ymm4
	vperm2f128	$1, %ymm5, %ymm5, %ymm5
	vblendpd	$12, %ymm6, %ymm5, %ymm6
	vaddpd	%ymm6, %ymm4, %ymm5
	vperm2f128	$1, %ymm9, %ymm9, %ymm9
	vmovupd	432(%rsp), %ymm4
	vmovupd	608(%rsp), %ymm7
	vaddsubpd	%ymm11, %ymm12, %ymm11
	vperm2f128	$1, %ymm4, %ymm4, %ymm6
	vblendpd	$12, %ymm4, %ymm6, %ymm4
	vmovapd	%ymm5, 240(%rsp)
	vunpcklpd	%ymm7, %ymm7, %ymm8
	vshufpd	$5, %ymm4, %ymm4, %ymm15
	vunpckhpd	%ymm7, %ymm7, %ymm7
	vmulpd	%ymm1, %ymm8, %ymm1
	vmulpd	%ymm3, %ymm7, %ymm3
	vmulpd	%ymm2, %ymm7, %ymm2
	vaddsubpd	%ymm3, %ymm1, %ymm1
	vmulpd	%ymm0, %ymm8, %ymm0
	vmovupd	576(%rsp), %ymm5
	vaddsubpd	%ymm2, %ymm0, %ymm0
	vblendpd	$12, %ymm5, %ymm9, %ymm9
	vunpcklpd	%ymm9, %ymm9, %ymm10
	vunpckhpd	%ymm9, %ymm9, %ymm9
	vmulpd	%ymm4, %ymm10, %ymm4
	vmulpd	%ymm15, %ymm9, %ymm15
	vaddsubpd	%ymm15, %ymm4, %ymm4
	vperm2f128	$2, %ymm13, %ymm11, %ymm15
	vperm2f128	$1, %ymm13, %ymm13, %ymm13
	vblendpd	$12, %ymm11, %ymm13, %ymm11
	vmovupd	480(%rsp), %ymm13
	vaddpd	%ymm11, %ymm15, %ymm11
	vperm2f128	$1, %ymm13, %ymm13, %ymm14
	vblendpd	$12, %ymm13, %ymm14, %ymm14
	vblendpd	$12, %ymm13, %ymm6, %ymm6
	vmulpd	%ymm14, %ymm10, %ymm10
	vshufpd	$5, %ymm14, %ymm14, %ymm15
	vmulpd	%ymm15, %ymm9, %ymm15
	vaddsubpd	%ymm15, %ymm10, %ymm9
	vperm2f128	$2, %ymm1, %ymm0, %ymm10
	vperm2f128	$1, %ymm1, %ymm1, %ymm1
	vaddpd	240(%rsp), %ymm4, %ymm4
	vblendpd	$12, %ymm0, %ymm1, %ymm0
	vmovupd	624(%rsp), %ymm1
	vaddpd	%ymm0, %ymm10, %ymm0
	vaddpd	%ymm9, %ymm11, %ymm9
	vmovupd	%ymm4, 320(%rsp)
	vperm2f128	$1, %ymm1, %ymm1, %ymm2
	vblendpd	$12, %ymm1, %ymm2, %ymm1
	vunpcklpd	%ymm1, %ymm1, %ymm3
	vshufpd	$5, %ymm6, %ymm6, %ymm2
	vunpckhpd	%ymm1, %ymm1, %ymm1
	vmulpd	%ymm6, %ymm3, %ymm6
	vmulpd	%ymm2, %ymm1, %ymm1
	vaddsubpd	%ymm1, %ymm6, %ymm6
	vmovupd	320(%rsp), %ymm1
	vmovupd	%ymm9, 368(%rsp)
	vmovapd	%ymm8, %ymm9
	vmovapd	%ymm7, %ymm8
	vaddpd	%ymm6, %ymm0, %ymm6
	vmovapd	%xmm6, %xmm0
	vextractf128	$0x1, %ymm6, %xmm6
	vmovupd	%xmm6, 400(%rsp)
	vmovupd	%xmm0, 352(%rsp)
	vshufpd	$5, %ymm1, %ymm1, %ymm6
	vmovupd	512(%rsp), %ymm0
	vmovupd	336(%rsp), %ymm11
	vunpcklpd	%ymm0, %ymm0, %ymm12
	vunpckhpd	%ymm0, %ymm0, %ymm13
	vmulpd	%ymm1, %ymm12, %ymm7
	vmovupd	560(%rsp), %ymm0
	vmulpd	%ymm6, %ymm13, %ymm3
	vaddsubpd	%ymm3, %ymm7, %ymm7
	vunpcklpd	%ymm0, %ymm0, %ymm2
	vunpckhpd	%ymm0, %ymm0, %ymm14
	vmulpd	%ymm1, %ymm2, %ymm10
	vmulpd	%ymm6, %ymm14, %ymm3
	vaddsubpd	%ymm3, %ymm10, %ymm10
	vmulpd	%ymm1, %ymm9, %ymm1
	vmovupd	368(%rsp), %ymm0
	vmulpd	%ymm6, %ymm8, %ymm6
	vperm2f128	$2, %ymm7, %ymm10, %ymm3
	vperm2f128	$1, %ymm7, %ymm7, %ymm7
	vmulpd	%ymm0, %ymm12, %ymm12
	vblendpd	$12, %ymm10, %ymm7, %ymm10
	vshufpd	$5, %ymm0, %ymm0, %ymm4
	vmulpd	%ymm0, %ymm2, %ymm2
	vaddpd	%ymm10, %ymm3, %ymm3
	vmulpd	%ymm4, %ymm13, %ymm13
	vmulpd	%ymm4, %ymm14, %ymm14
	vaddsubpd	%ymm13, %ymm12, %ymm12
	vmulpd	%ymm4, %ymm8, %ymm4
	vmulpd	%ymm0, %ymm9, %ymm0
	vmovupd	528(%rsp), %ymm7
	vaddsubpd	%ymm14, %ymm2, %ymm2
	vaddsubpd	%ymm4, %ymm0, %ymm0
	vperm2f128	$1, %ymm7, %ymm7, %ymm7
	vblendpd	$12, %ymm5, %ymm7, %ymm5
	vperm2f128	$1, %ymm11, %ymm11, %ymm7
	vblendpd	$12, %ymm11, %ymm7, %ymm11
	vunpcklpd	%ymm5, %ymm5, %ymm10
	vunpckhpd	%ymm5, %ymm5, %ymm5
	vshufpd	$5, %ymm11, %ymm11, %ymm15
	vmulpd	%ymm11, %ymm10, %ymm11
	vmulpd	%ymm15, %ymm5, %ymm15
	vaddsubpd	%ymm15, %ymm11, %ymm11
	vaddpd	%ymm11, %ymm3, %ymm11
	vperm2f128	$2, %ymm12, %ymm2, %ymm3
	vperm2f128	$1, %ymm12, %ymm12, %ymm12
	vblendpd	$12, %ymm2, %ymm12, %ymm2
	vaddpd	%ymm2, %ymm3, %ymm12
	vmovupd	384(%rsp), %ymm2
	vmovupd	%ymm11, 416(%rsp)
	vperm2f128	$1, %ymm2, %ymm2, %ymm3
	vblendpd	$12, %ymm2, %ymm3, %ymm3
	vblendpd	$12, %ymm2, %ymm7, %ymm2
	vshufpd	$5, %ymm3, %ymm3, %ymm13
	vmulpd	%ymm3, %ymm10, %ymm3
	vmulpd	%ymm13, %ymm5, %ymm5
	vaddsubpd	%ymm5, %ymm3, %ymm5
	vaddsubpd	%ymm6, %ymm1, %ymm3
	vmovupd	624(%rsp), %ymm1
	vaddpd	%ymm5, %ymm12, %ymm5
	vperm2f128	$2, %ymm3, %ymm0, %ymm6
	vperm2f128	$1, %ymm3, %ymm3, %ymm3
	vblendpd	$12, %ymm0, %ymm3, %ymm0
	vperm2f128	$1, %ymm1, %ymm1, %ymm3
	vblendpd	$12, %ymm1, %ymm3, %ymm1
	vaddpd	%ymm0, %ymm6, %ymm0
	vunpcklpd	%ymm1, %ymm1, %ymm4
	vshufpd	$5, %ymm2, %ymm2, %ymm3
	vunpckhpd	%ymm1, %ymm1, %ymm1
	vmulpd	%ymm2, %ymm4, %ymm2
	vmulpd	%ymm3, %ymm1, %ymm1
	vaddsubpd	%ymm1, %ymm2, %ymm2
	vmovupd	%ymm5, 464(%rsp)
	vaddpd	%ymm2, %ymm0, %ymm2
	vmovapd	%xmm2, %xmm0
	vextractf128	$0x1, %ymm2, %xmm2
	vmovupd	%xmm2, 496(%rsp)
	vmovupd	%xmm0, 448(%rsp)
	vzeroupper
	call	gettimeofday
	leaq	272(%rsp), %rdx
	leaq	288(%rsp), %rsi
	leaq	304(%rsp), %rdi
	call	timeval_subtract
	movq	312(%rsp), %rdx
	xorl	%eax, %eax
	movq	304(%rsp), %rsi
	movl	$.LC0, %edi
	call	printf
	leaq	272(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday
	vmovsd	416(%rsp), %xmm8
	vmovsd	424(%rsp), %xmm9
	vmovsd	512(%rsp), %xmm7
	vmovapd	%xmm8, %xmm2
	vmovsd	%xmm8, 192(%rsp)
	vmovsd	520(%rsp), %xmm5
	vmovapd	%xmm9, %xmm3
	vmovsd	%xmm9, 184(%rsp)
	vmovapd	%xmm7, %xmm0
	vmovd	%xmm7, %r12
	vmovapd	%xmm5, %xmm1
	vmovd	%xmm5, %r15
	call	__muldc3
	vmovsd	528(%rsp), %xmm7
	vmovsd	536(%rsp), %xmm5
	vmovsd	%xmm0, 240(%rsp)
	vmovsd	432(%rsp), %xmm6
	vmovd	%xmm7, %rbx
	vmovapd	%xmm7, %xmm4
	vmovsd	440(%rsp), %xmm7
	vmovapd	%xmm4, %xmm0
	vmovsd	%xmm1, 232(%rsp)
	vmovapd	%xmm6, %xmm2
	vmovapd	%xmm5, %xmm1
	vmovd	%xmm5, %r14
	vmovsd	%xmm7, 200(%rsp)
	vmovapd	%xmm7, %xmm3
	vmovsd	%xmm6, 208(%rsp)
	call	__muldc3
	vmovsd	552(%rsp), %xmm4
	vmovsd	544(%rsp), %xmm7
	vmovsd	%xmm0, 224(%rsp)
	vmovsd	456(%rsp), %xmm5
	vmovapd	%xmm4, %xmm6
	vmovsd	%xmm4, 144(%rsp)
	vmovsd	448(%rsp), %xmm4
	vmovapd	%xmm7, %xmm0
	vmovsd	%xmm1, 216(%rsp)
	vmovapd	%xmm5, %xmm3
	vmovapd	%xmm6, %xmm1
	vmovd	%xmm7, %r13
	vmovsd	%xmm5, 168(%rsp)
	vmovapd	%xmm4, %xmm2
	vmovsd	%xmm4, 176(%rsp)
	call	__muldc3
	vmovsd	224(%rsp), %xmm7
	vmovsd	216(%rsp), %xmm5
	vaddsd	240(%rsp), %xmm7, %xmm2
	vmovsd	184(%rsp), %xmm9
	vmovsd	192(%rsp), %xmm8
	vmovsd	560(%rsp), %xmm4
	vaddsd	%xmm0, %xmm2, %xmm7
	vmovsd	%xmm9, 152(%rsp)
	vaddsd	232(%rsp), %xmm5, %xmm0
	vmovsd	%xmm8, 160(%rsp)
	vmovsd	568(%rsp), %xmm6
	vmovapd	%xmm4, %xmm2
	vmovsd	%xmm4, 136(%rsp)
	vmovsd	%xmm7, 240(%rsp)
	vaddsd	%xmm1, %xmm0, %xmm5
	vmovapd	%xmm6, %xmm3
	vmovapd	%xmm9, %xmm1
	vmovsd	%xmm7, 320(%rsp)
	vmovapd	%xmm8, %xmm0
	vmovsd	%xmm6, 128(%rsp)
	vmovsd	%xmm5, 232(%rsp)
	vmovsd	%xmm5, 328(%rsp)
	call	__muldc3
	vmovsd	584(%rsp), %xmm6
	vmovsd	200(%rsp), %xmm7
	vmovsd	%xmm0, 224(%rsp)
	vmovsd	576(%rsp), %xmm4
	vmovsd	%xmm6, 112(%rsp)
	vmovapd	%xmm6, %xmm3
	vmovsd	208(%rsp), %xmm6
	vmovsd	%xmm1, 216(%rsp)
	vmovapd	%xmm7, %xmm1
	vmovapd	%xmm4, %xmm2
	vmovsd	%xmm4, 120(%rsp)
	vmovsd	%xmm7, 184(%rsp)
	vmovapd	%xmm6, %xmm0
	vmovsd	%xmm6, 192(%rsp)
	call	__muldc3
	vmovsd	592(%rsp), %xmm4
	vmovsd	168(%rsp), %xmm5
	vmovsd	%xmm0, 208(%rsp)
	vmovsd	600(%rsp), %xmm6
	vmovsd	%xmm4, 104(%rsp)
	vmovapd	%xmm4, %xmm2
	vmovsd	176(%rsp), %xmm4
	vmovsd	%xmm1, 200(%rsp)
	vmovapd	%xmm5, %xmm1
	vmovapd	%xmm6, %xmm3
	vmovsd	%xmm6, 96(%rsp)
	vmovapd	%xmm4, %xmm0
	call	__muldc3
	vmovsd	224(%rsp), %xmm4
	vmovsd	216(%rsp), %xmm6
	vaddsd	208(%rsp), %xmm4, %xmm2
	vmovsd	152(%rsp), %xmm9
	vmovsd	160(%rsp), %xmm8
	vaddsd	%xmm0, %xmm2, %xmm4
	vaddsd	200(%rsp), %xmm6, %xmm0
	vmovsd	%xmm4, 224(%rsp)
	vmovsd	%xmm4, 336(%rsp)
	vaddsd	%xmm1, %xmm0, %xmm6
	vmovsd	608(%rsp), %xmm1
	vmovsd	616(%rsp), %xmm0
	vmovsd	%xmm1, 88(%rsp)
	vmovapd	%xmm1, %xmm2
	vmovapd	%xmm9, %xmm1
	vmovsd	%xmm0, 80(%rsp)
	vmovapd	%xmm0, %xmm3
	vmovapd	%xmm8, %xmm0
	vmovsd	%xmm6, 216(%rsp)
	vmovsd	%xmm6, 344(%rsp)
	call	__muldc3
	vmovsd	624(%rsp), %xmm14
	vmovsd	632(%rsp), %xmm10
	vmovsd	%xmm0, 208(%rsp)
	vmovsd	184(%rsp), %xmm7
	vmovapd	%xmm14, %xmm2
	vmovsd	%xmm14, 72(%rsp)
	vmovsd	192(%rsp), %xmm6
	vmovapd	%xmm10, %xmm3
	vmovsd	%xmm1, 200(%rsp)
	vmovapd	%xmm7, %xmm1
	vmovsd	%xmm10, 64(%rsp)
	vmovapd	%xmm6, %xmm0
	call	__muldc3
	vmovsd	640(%rsp), %xmm12
	vmovsd	168(%rsp), %xmm5
	vmovsd	%xmm0, 192(%rsp)
	vmovsd	176(%rsp), %xmm4
	vmovapd	%xmm12, %xmm2
	vmovsd	%xmm12, 56(%rsp)
	vmovsd	648(%rsp), %xmm15
	vmovsd	%xmm1, 184(%rsp)
	vmovapd	%xmm5, %xmm1
	vmovapd	%xmm4, %xmm0
	vmovapd	%xmm15, %xmm3
	vmovsd	%xmm15, 48(%rsp)
	call	__muldc3
	vmovsd	208(%rsp), %xmm11
	vmovsd	464(%rsp), %xmm8
	vaddsd	192(%rsp), %xmm11, %xmm2
	vmovsd	472(%rsp), %xmm9
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovapd	%xmm9, %xmm3
	vmovapd	%xmm8, %xmm2
	vmovsd	%xmm0, 208(%rsp)
	vmovapd	%xmm0, %xmm15
	vmovsd	200(%rsp), %xmm0
	vmovsd	%xmm15, 352(%rsp)
	vaddsd	184(%rsp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovd	%r12, %xmm0
	vmovsd	%xmm1, 200(%rsp)
	vmovsd	%xmm1, 360(%rsp)
	vmovd	%r15, %xmm1
	vmovsd	%xmm9, 32(%rsp)
	vmovsd	%xmm8, 40(%rsp)
	call	__muldc3
	vmovsd	480(%rsp), %xmm6
	vmovsd	488(%rsp), %xmm7
	vmovsd	%xmm0, 192(%rsp)
	vmovd	%rbx, %xmm0
	vmovsd	%xmm1, 184(%rsp)
	vmovapd	%xmm6, %xmm2
	vmovd	%r14, %xmm1
	vmovsd	%xmm7, 152(%rsp)
	vmovapd	%xmm7, %xmm3
	vmovsd	%xmm6, 160(%rsp)
	call	__muldc3
	vmovsd	496(%rsp), %xmm4
	vmovsd	504(%rsp), %xmm5
	vmovsd	%xmm1, 168(%rsp)
	vmovsd	144(%rsp), %xmm1
	vmovapd	%xmm4, %xmm2
	vmovsd	%xmm0, 176(%rsp)
	vmovapd	%xmm5, %xmm3
	vmovd	%r13, %xmm0
	vmovsd	%xmm5, 16(%rsp)
	vmovsd	%xmm4, 24(%rsp)
	call	__muldc3
	vmovsd	32(%rsp), %xmm9
	vmovsd	192(%rsp), %xmm14
	vmovsd	184(%rsp), %xmm8
	vmovapd	%xmm9, %xmm3
	vmovsd	%xmm9, (%rsp)
	vaddsd	176(%rsp), %xmm14, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm14
	vaddsd	168(%rsp), %xmm8, %xmm0
	vmovsd	40(%rsp), %xmm8
	vmovsd	%xmm14, 192(%rsp)
	vaddsd	%xmm1, %xmm0, %xmm10
	vmovapd	%xmm8, %xmm2
	vmovsd	%xmm8, 8(%rsp)
	vmovsd	128(%rsp), %xmm1
	vmovsd	%xmm14, 368(%rsp)
	vmovsd	136(%rsp), %xmm0
	vmovsd	%xmm10, 184(%rsp)
	vmovsd	%xmm10, 376(%rsp)
	call	__muldc3
	vmovsd	152(%rsp), %xmm7
	vmovsd	160(%rsp), %xmm6
	vmovsd	%xmm0, 176(%rsp)
	vmovsd	120(%rsp), %xmm0
	vmovapd	%xmm7, %xmm3
	vmovsd	%xmm7, 32(%rsp)
	vmovsd	%xmm1, 168(%rsp)
	vmovsd	112(%rsp), %xmm1
	vmovapd	%xmm6, %xmm2
	vmovsd	%xmm6, 40(%rsp)
	call	__muldc3
	vmovsd	16(%rsp), %xmm5
	vmovsd	%xmm0, 160(%rsp)
	vmovsd	24(%rsp), %xmm4
	vmovsd	104(%rsp), %xmm0
	vmovapd	%xmm5, %xmm3
	vmovsd	%xmm1, 152(%rsp)
	vmovsd	96(%rsp), %xmm1
	vmovapd	%xmm4, %xmm2
	call	__muldc3
	vmovsd	176(%rsp), %xmm11
	vmovsd	168(%rsp), %xmm15
	vaddsd	160(%rsp), %xmm11, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm12
	vaddsd	152(%rsp), %xmm15, %xmm0
	vmovsd	%xmm12, 176(%rsp)
	vaddsd	%xmm1, %xmm0, %xmm15
	vmovsd	%xmm15, 168(%rsp)
	vmovsd	%xmm12, 384(%rsp)
	vmovsd	(%rsp), %xmm9
	vmovsd	8(%rsp), %xmm8
	vmovsd	%xmm15, 392(%rsp)
	vmovsd	80(%rsp), %xmm1
	vmovapd	%xmm9, %xmm3
	vmovsd	88(%rsp), %xmm0
	vmovapd	%xmm8, %xmm2
	call	__muldc3
	vmovsd	40(%rsp), %xmm6
	vmovsd	%xmm0, 160(%rsp)
	vmovsd	32(%rsp), %xmm7
	vmovsd	72(%rsp), %xmm0
	vmovapd	%xmm6, %xmm2
	vmovsd	%xmm1, 152(%rsp)
	vmovsd	64(%rsp), %xmm1
	vmovapd	%xmm7, %xmm3
	call	__muldc3
	vmovsd	24(%rsp), %xmm4
	vmovsd	16(%rsp), %xmm5
	vmovsd	%xmm0, 40(%rsp)
	vmovsd	%xmm1, 32(%rsp)
	vmovsd	56(%rsp), %xmm0
	vmovapd	%xmm4, %xmm2
	vmovsd	48(%rsp), %xmm1
	vmovapd	%xmm5, %xmm3
	call	__muldc3
	vmovsd	160(%rsp), %xmm8
	vmovsd	152(%rsp), %xmm11
	vaddsd	40(%rsp), %xmm8, %xmm2
	vmovsd	232(%rsp), %xmm3
	vaddsd	%xmm0, %xmm2, %xmm8
	vmovsd	240(%rsp), %xmm2
	vaddsd	32(%rsp), %xmm11, %xmm0
	vmovsd	%xmm8, 160(%rsp)
	vmovsd	%xmm8, 400(%rsp)
	vaddsd	%xmm1, %xmm0, %xmm13
	vmovd	%r15, %xmm1
	vmovd	%r12, %xmm0
	vmovsd	%xmm13, 152(%rsp)
	vmovsd	%xmm13, 408(%rsp)
	call	__muldc3
	vmovsd	216(%rsp), %xmm3
	vmovsd	224(%rsp), %xmm2
	vmovsd	%xmm0, 40(%rsp)
	vmovd	%rbx, %xmm0
	vmovsd	%xmm1, 32(%rsp)
	vmovd	%r14, %xmm1
	call	__muldc3
	vmovsd	200(%rsp), %xmm3
	vmovsd	208(%rsp), %xmm2
	vmovsd	%xmm1, 16(%rsp)
	vmovsd	144(%rsp), %xmm1
	vmovsd	%xmm0, 24(%rsp)
	vmovd	%r13, %xmm0
	call	__muldc3
	vmovsd	40(%rsp), %xmm7
	vmovsd	32(%rsp), %xmm5
	vaddsd	24(%rsp), %xmm7, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovsd	%xmm0, 416(%rsp)
	vaddsd	16(%rsp), %xmm5, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	%xmm1, 424(%rsp)
	vmovsd	232(%rsp), %xmm1
	vmovsd	240(%rsp), %xmm0
	vmovsd	128(%rsp), %xmm3
	vmovsd	136(%rsp), %xmm2
	call	__muldc3
	vmovsd	216(%rsp), %xmm3
	vmovsd	224(%rsp), %xmm2
	vmovsd	%xmm0, 40(%rsp)
	vmovsd	%xmm1, 32(%rsp)
	vmovsd	120(%rsp), %xmm0
	vmovsd	112(%rsp), %xmm1
	call	__muldc3
	vmovsd	200(%rsp), %xmm3
	vmovsd	208(%rsp), %xmm2
	vmovsd	%xmm0, 24(%rsp)
	vmovsd	%xmm1, 16(%rsp)
	vmovsd	104(%rsp), %xmm0
	vmovsd	96(%rsp), %xmm1
	call	__muldc3
	vmovsd	40(%rsp), %xmm7
	vmovsd	32(%rsp), %xmm5
	vaddsd	24(%rsp), %xmm7, %xmm2
	vmovsd	80(%rsp), %xmm3
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovsd	88(%rsp), %xmm2
	vmovsd	%xmm0, 432(%rsp)
	vaddsd	16(%rsp), %xmm5, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	240(%rsp), %xmm0
	vmovsd	%xmm1, 440(%rsp)
	vmovsd	232(%rsp), %xmm1
	call	__muldc3
	vmovsd	64(%rsp), %xmm3
	vmovsd	%xmm0, 240(%rsp)
	vmovsd	72(%rsp), %xmm2
	vmovsd	224(%rsp), %xmm0
	vmovsd	%xmm1, 232(%rsp)
	vmovsd	216(%rsp), %xmm1
	call	__muldc3
	vmovsd	200(%rsp), %xmm3
	vmovsd	208(%rsp), %xmm2
	vmovsd	%xmm0, 224(%rsp)
	vmovsd	%xmm1, 216(%rsp)
	vmovsd	56(%rsp), %xmm0
	vmovsd	48(%rsp), %xmm1
	call	__muldc3
	vmovsd	240(%rsp), %xmm7
	vaddsd	224(%rsp), %xmm7, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovsd	%xmm0, 448(%rsp)
	vmovsd	232(%rsp), %xmm5
	vmovsd	184(%rsp), %xmm3
	vaddsd	216(%rsp), %xmm5, %xmm0
	vmovsd	192(%rsp), %xmm2
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovd	%r12, %xmm0
	vmovsd	%xmm1, 456(%rsp)
	vmovd	%r15, %xmm1
	call	__muldc3
	vmovsd	168(%rsp), %xmm3
	vmovsd	176(%rsp), %xmm2
	vmovsd	%xmm0, 240(%rsp)
	vmovd	%rbx, %xmm0
	vmovsd	%xmm1, 232(%rsp)
	vmovd	%r14, %xmm1
	call	__muldc3
	vmovsd	152(%rsp), %xmm3
	vmovsd	160(%rsp), %xmm2
	vmovsd	%xmm1, 216(%rsp)
	vmovsd	144(%rsp), %xmm1
	vmovsd	%xmm0, 224(%rsp)
	vmovd	%r13, %xmm0
	call	__muldc3
	vmovsd	240(%rsp), %xmm7
	vmovsd	232(%rsp), %xmm5
	vaddsd	224(%rsp), %xmm7, %xmm2
	vmovsd	184(%rsp), %xmm3
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovsd	192(%rsp), %xmm2
	vmovsd	%xmm0, 464(%rsp)
	vaddsd	216(%rsp), %xmm5, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	136(%rsp), %xmm0
	vmovsd	%xmm1, 472(%rsp)
	vmovsd	128(%rsp), %xmm1
	call	__muldc3
	vmovsd	168(%rsp), %xmm3
	vmovsd	176(%rsp), %xmm2
	vmovsd	%xmm0, 240(%rsp)
	vmovsd	%xmm1, 232(%rsp)
	vmovsd	120(%rsp), %xmm0
	vmovsd	112(%rsp), %xmm1
	call	__muldc3
	vmovsd	152(%rsp), %xmm3
	vmovsd	160(%rsp), %xmm2
	vmovsd	%xmm0, 224(%rsp)
	vmovsd	%xmm1, 216(%rsp)
	vmovsd	104(%rsp), %xmm0
	vmovsd	96(%rsp), %xmm1
	call	__muldc3
	vmovsd	240(%rsp), %xmm7
	vaddsd	224(%rsp), %xmm7, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovsd	%xmm0, 480(%rsp)
	vmovsd	232(%rsp), %xmm5
	vmovsd	184(%rsp), %xmm3
	vaddsd	216(%rsp), %xmm5, %xmm0
	vmovsd	192(%rsp), %xmm2
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	88(%rsp), %xmm0
	vmovsd	%xmm1, 488(%rsp)
	vmovsd	80(%rsp), %xmm1
	call	__muldc3
	vmovsd	168(%rsp), %xmm3
	vmovsd	176(%rsp), %xmm2
	vmovsd	%xmm0, 240(%rsp)
	vmovsd	%xmm1, 232(%rsp)
	vmovsd	72(%rsp), %xmm0
	vmovsd	64(%rsp), %xmm1
	call	__muldc3
	vmovsd	152(%rsp), %xmm3
	vmovsd	160(%rsp), %xmm2
	vmovsd	%xmm0, 224(%rsp)
	vmovsd	%xmm1, 216(%rsp)
	vmovsd	56(%rsp), %xmm0
	vmovsd	48(%rsp), %xmm1
	call	__muldc3
	leaq	288(%rsp), %rdi
	xorl	%esi, %esi
	vmovsd	240(%rsp), %xmm7
	vmovsd	232(%rsp), %xmm5
	vaddsd	224(%rsp), %xmm7, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovsd	%xmm0, 496(%rsp)
	vaddsd	216(%rsp), %xmm5, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	%xmm1, 504(%rsp)
	call	gettimeofday
	leaq	272(%rsp), %rdx
	leaq	288(%rsp), %rsi
	leaq	304(%rsp), %rdi
	call	timeval_subtract
	movq	312(%rsp), %rdx
	xorl	%eax, %eax
	movq	304(%rsp), %rsi
	movl	$.LC1, %edi
	call	printf
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1098:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
