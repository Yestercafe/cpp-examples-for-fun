	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function _Z13factorialIteriii
LCPI0_0:
	.space	4
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
LCPI0_1:
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.long	2                               ## 0x2
	.long	3                               ## 0x3
LCPI0_2:
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
LCPI0_3:
	.long	4                               ## 0x4
	.long	4                               ## 0x4
	.long	4                               ## 0x4
	.long	4                               ## 0x4
LCPI0_4:
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
LCPI0_5:
	.long	12                              ## 0xc
	.long	12                              ## 0xc
	.long	12                              ## 0xc
	.long	12                              ## 0xc
LCPI0_6:
	.long	16                              ## 0x10
	.long	16                              ## 0x10
	.long	16                              ## 0x10
	.long	16                              ## 0x10
LCPI0_7:
	.long	20                              ## 0x14
	.long	20                              ## 0x14
	.long	20                              ## 0x14
	.long	20                              ## 0x14
LCPI0_8:
	.long	24                              ## 0x18
	.long	24                              ## 0x18
	.long	24                              ## 0x18
	.long	24                              ## 0x18
LCPI0_9:
	.long	28                              ## 0x1c
	.long	28                              ## 0x1c
	.long	28                              ## 0x1c
	.long	28                              ## 0x1c
LCPI0_10:
	.long	32                              ## 0x20
	.long	32                              ## 0x20
	.long	32                              ## 0x20
	.long	32                              ## 0x20
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z13factorialIteriii
	.p2align	4, 0x90
__Z13factorialIteriii:                  ## @_Z13factorialIteriii
	.cfi_startproc
## %bb.0:
	movl	%edx, %eax
	cmpl	%esi, %edi
	jg	LBB0_12
## %bb.1:
	incl	%esi
	movl	%esi, %r9d
	subl	%edi, %r9d
	cmpl	$8, %r9d
	jb	LBB0_11
## %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%r9d, %r8d
	movdqa	LCPI0_0(%rip), %xmm0            ## xmm0 = <u,1,1,1>
	pinsrd	$0, %eax, %xmm0
	movd	%edi, %xmm1
	pshufd	$0, %xmm1, %xmm6                ## xmm6 = xmm1[0,0,0,0]
	paddd	LCPI0_1(%rip), %xmm6
	andl	$-8, %r8d
	leal	-8(%r8), %edx
	movl	%edx, %eax
	shrl	$3, %eax
	incl	%eax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$24, %edx
	jae	LBB0_4
## %bb.3:
	movdqa	LCPI0_2(%rip), %xmm2            ## xmm2 = [1,1,1,1]
	jmp	LBB0_6
LBB0_4:
	andl	$-4, %eax
	movdqa	LCPI0_2(%rip), %xmm2            ## xmm2 = [1,1,1,1]
	movdqa	LCPI0_3(%rip), %xmm8            ## xmm8 = [4,4,4,4]
	movdqa	LCPI0_4(%rip), %xmm9            ## xmm9 = [8,8,8,8]
	movdqa	LCPI0_5(%rip), %xmm10           ## xmm10 = [12,12,12,12]
	movdqa	LCPI0_6(%rip), %xmm11           ## xmm11 = [16,16,16,16]
	movdqa	LCPI0_7(%rip), %xmm12           ## xmm12 = [20,20,20,20]
	movdqa	LCPI0_8(%rip), %xmm13           ## xmm13 = [24,24,24,24]
	movdqa	LCPI0_9(%rip), %xmm4            ## xmm4 = [28,28,28,28]
	movdqa	LCPI0_10(%rip), %xmm5           ## xmm5 = [32,32,32,32]
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movdqa	%xmm6, %xmm3
	paddd	%xmm8, %xmm3
	pmulld	%xmm2, %xmm3
	pmulld	%xmm6, %xmm0
	movdqa	%xmm6, %xmm2
	paddd	%xmm9, %xmm2
	pmulld	%xmm0, %xmm2
	movdqa	%xmm6, %xmm0
	paddd	%xmm10, %xmm0
	movdqa	%xmm6, %xmm7
	paddd	%xmm11, %xmm7
	movdqa	%xmm6, %xmm1
	paddd	%xmm12, %xmm1
	pmulld	%xmm0, %xmm1
	pmulld	%xmm3, %xmm1
	movdqa	%xmm6, %xmm0
	paddd	%xmm13, %xmm0
	pmulld	%xmm7, %xmm0
	pmulld	%xmm2, %xmm0
	movdqa	%xmm6, %xmm2
	paddd	%xmm4, %xmm2
	pmulld	%xmm1, %xmm2
	paddd	%xmm5, %xmm6
	addl	$-4, %eax
	jne	LBB0_5
LBB0_6:
	testl	%ecx, %ecx
	je	LBB0_9
## %bb.7:
	movdqa	LCPI0_3(%rip), %xmm3            ## xmm3 = [4,4,4,4]
	movdqa	LCPI0_4(%rip), %xmm4            ## xmm4 = [8,8,8,8]
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	movdqa	%xmm6, %xmm1
	paddd	%xmm3, %xmm1
	pmulld	%xmm1, %xmm2
	pmulld	%xmm6, %xmm0
	paddd	%xmm4, %xmm6
	decl	%ecx
	jne	LBB0_8
LBB0_9:
	pmulld	%xmm2, %xmm0
	pshufd	$238, %xmm0, %xmm1              ## xmm1 = xmm0[2,3,2,3]
	pmulld	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               ## xmm0 = xmm1[1,1,1,1]
	pmulld	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpl	%r8d, %r9d
	popq	%rbp
	je	LBB0_12
## %bb.10:
	addl	%edi, %r8d
	movl	%r8d, %edi
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	imull	%edi, %eax
	incl	%edi
	cmpl	%edi, %esi
	jne	LBB0_11
LBB0_12:
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function _Z9factoriali
LCPI1_0:
	.long	1                               ## 0x1
	.long	2                               ## 0x2
	.long	3                               ## 0x3
	.long	4                               ## 0x4
LCPI1_1:
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
LCPI1_2:
	.long	4                               ## 0x4
	.long	4                               ## 0x4
	.long	4                               ## 0x4
	.long	4                               ## 0x4
LCPI1_3:
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
LCPI1_4:
	.long	12                              ## 0xc
	.long	12                              ## 0xc
	.long	12                              ## 0xc
	.long	12                              ## 0xc
LCPI1_5:
	.long	16                              ## 0x10
	.long	16                              ## 0x10
	.long	16                              ## 0x10
	.long	16                              ## 0x10
LCPI1_6:
	.long	20                              ## 0x14
	.long	20                              ## 0x14
	.long	20                              ## 0x14
	.long	20                              ## 0x14
LCPI1_7:
	.long	24                              ## 0x18
	.long	24                              ## 0x18
	.long	24                              ## 0x18
	.long	24                              ## 0x18
LCPI1_8:
	.long	28                              ## 0x1c
	.long	28                              ## 0x1c
	.long	28                              ## 0x1c
	.long	28                              ## 0x1c
LCPI1_9:
	.long	32                              ## 0x20
	.long	32                              ## 0x20
	.long	32                              ## 0x20
	.long	32                              ## 0x20
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z9factoriali
	.p2align	4, 0x90
__Z9factoriali:                         ## @_Z9factoriali
	.cfi_startproc
## %bb.0:
	movl	$1, %eax
	testl	%edi, %edi
	jle	LBB1_13
## %bb.1:
	movl	$1, %ecx
	cmpl	$8, %edi
	jb	LBB1_11
## %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %ecx
	andl	$-8, %ecx
	leal	-8(%rcx), %esi
	movl	%esi, %edx
	shrl	$3, %edx
	incl	%edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$24, %esi
	jae	LBB1_4
## %bb.3:
	movdqa	LCPI1_0(%rip), %xmm6            ## xmm6 = [1,2,3,4]
	movdqa	LCPI1_1(%rip), %xmm1            ## xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm2
	jmp	LBB1_6
LBB1_4:
	andl	$-4, %edx
	movdqa	LCPI1_0(%rip), %xmm6            ## xmm6 = [1,2,3,4]
	movdqa	LCPI1_1(%rip), %xmm1            ## xmm1 = [1,1,1,1]
	movdqa	LCPI1_2(%rip), %xmm8            ## xmm8 = [4,4,4,4]
	movdqa	LCPI1_3(%rip), %xmm9            ## xmm9 = [8,8,8,8]
	movdqa	LCPI1_4(%rip), %xmm10           ## xmm10 = [12,12,12,12]
	movdqa	LCPI1_5(%rip), %xmm11           ## xmm11 = [16,16,16,16]
	movdqa	LCPI1_6(%rip), %xmm12           ## xmm12 = [20,20,20,20]
	movdqa	LCPI1_7(%rip), %xmm13           ## xmm13 = [24,24,24,24]
	movdqa	LCPI1_8(%rip), %xmm4            ## xmm4 = [28,28,28,28]
	movdqa	LCPI1_9(%rip), %xmm5            ## xmm5 = [32,32,32,32]
	movdqa	%xmm1, %xmm2
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	movdqa	%xmm6, %xmm3
	paddd	%xmm8, %xmm3
	pmulld	%xmm2, %xmm3
	pmulld	%xmm6, %xmm1
	movdqa	%xmm6, %xmm2
	paddd	%xmm9, %xmm2
	pmulld	%xmm1, %xmm2
	movdqa	%xmm6, %xmm1
	paddd	%xmm10, %xmm1
	movdqa	%xmm6, %xmm7
	paddd	%xmm11, %xmm7
	movdqa	%xmm6, %xmm0
	paddd	%xmm12, %xmm0
	pmulld	%xmm1, %xmm0
	pmulld	%xmm3, %xmm0
	movdqa	%xmm6, %xmm1
	paddd	%xmm13, %xmm1
	pmulld	%xmm7, %xmm1
	pmulld	%xmm2, %xmm1
	movdqa	%xmm6, %xmm2
	paddd	%xmm4, %xmm2
	pmulld	%xmm0, %xmm2
	paddd	%xmm5, %xmm6
	addl	$-4, %edx
	jne	LBB1_5
LBB1_6:
	testl	%eax, %eax
	je	LBB1_9
## %bb.7:
	movdqa	LCPI1_2(%rip), %xmm3            ## xmm3 = [4,4,4,4]
	movdqa	LCPI1_3(%rip), %xmm4            ## xmm4 = [8,8,8,8]
	.p2align	4, 0x90
LBB1_8:                                 ## =>This Inner Loop Header: Depth=1
	movdqa	%xmm6, %xmm0
	paddd	%xmm3, %xmm0
	pmulld	%xmm0, %xmm2
	pmulld	%xmm6, %xmm1
	paddd	%xmm4, %xmm6
	decl	%eax
	jne	LBB1_8
LBB1_9:
	pmulld	%xmm2, %xmm1
	pshufd	$238, %xmm1, %xmm0              ## xmm0 = xmm1[2,3,2,3]
	pmulld	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               ## xmm1 = xmm0[1,1,1,1]
	pmulld	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpl	%edi, %ecx
	popq	%rbp
	je	LBB1_13
## %bb.10:
	orl	$1, %ecx
LBB1_11:
	incl	%edi
	.p2align	4, 0x90
LBB1_12:                                ## =>This Inner Loop Header: Depth=1
	imull	%ecx, %eax
	incl	%ecx
	cmpl	%ecx, %edi
	jne	LBB1_12
LBB1_13:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3BFSiRKNSt3__15dequeIiNS_9allocatorIiEEEE ## -- Begin function _Z3BFSiRKNSt3__15dequeIiNS_9allocatorIiEEEE
	.p2align	4, 0x90
__Z3BFSiRKNSt3__15dequeIiNS_9allocatorIiEEEE: ## @_Z3BFSiRKNSt3__15dequeIiNS_9allocatorIiEEEE
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edi, %r14d
	movq	40(%rsi), %rsi
	movb	$0, -80(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	testq	%rsi, %rsi
	je	LBB2_2
## %bb.1:
Ltmp0:
	leaq	-128(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	callq	__ZNSt3__15dequeIbNS_9allocatorIbEEE8__appendEmRKb
Ltmp1:
LBB2_2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
Ltmp3:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv
Ltmp4:
## %bb.3:
	movq	-72(%rbp), %rbx
	movq	-64(%rbp), %r15
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	leaq	(%rsi,%rcx), %rax
	movq	%rax, %rdx
	shrq	$10, %rdx
	movq	(%rbx,%rdx,8), %rdx
	andl	$1023, %eax                     ## imm = 0x3FF
	movl	%r14d, (%rdx,%rax,4)
	movslq	%r14d, %rax
	addq	-96(%rbp), %rax
	movq	%rax, %rdx
	shrq	$12, %rdx
	andl	$4095, %eax                     ## imm = 0xFFF
	movq	-120(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movb	$1, (%rdx,%rax)
	incq	%rcx
	je	LBB2_9
## %bb.4:
	movq	$-1024, %r14                    ## imm = 0xFC00
	jmp	LBB2_5
	.p2align	4, 0x90
LBB2_7:                                 ##   in Loop: Header=BB2_5 Depth=1
	testq	%rcx, %rcx
	je	LBB2_8
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	decq	%rcx
	movq	%rcx, -40(%rbp)
	incq	%rsi
	movq	%rsi, -48(%rbp)
	cmpq	$2048, %rsi                     ## imm = 0x800
	jb	LBB2_7
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	movq	-72(%rbp), %rbx
	movq	-40(%rbp), %rcx
	addq	$8, %rbx
	movq	%rbx, -72(%rbp)
	movq	-48(%rbp), %rsi
	addq	%r14, %rsi
	movq	%rsi, -48(%rbp)
	jmp	LBB2_7
LBB2_8:
	movq	-64(%rbp), %r15
LBB2_9:
	movq	$0, -40(%rbp)
	movq	%r15, %rax
	subq	%rbx, %rax
	cmpq	$17, %rax
	jb	LBB2_11
	.p2align	4, 0x90
LBB2_10:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	movq	-72(%rbp), %rbx
	movq	-64(%rbp), %r15
	addq	$8, %rbx
	movq	%rbx, -72(%rbp)
	movq	%r15, %rax
	subq	%rbx, %rax
	cmpq	$16, %rax
	ja	LBB2_10
LBB2_11:
	shrq	$3, %rax
	cmpq	$1, %rax
	je	LBB2_12
## %bb.16:
	cmpq	$2, %rax
	jne	LBB2_19
## %bb.17:
	movl	$1024, %eax                     ## imm = 0x400
	jmp	LBB2_18
LBB2_12:
	movl	$512, %eax                      ## imm = 0x200
LBB2_18:
	movq	%rax, -48(%rbp)
LBB2_19:
	cmpq	%r15, %rbx
	je	LBB2_23
	.p2align	4, 0x90
LBB2_20:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	addq	$8, %rbx
	cmpq	%r15, %rbx
	jne	LBB2_20
## %bb.21:
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	je	LBB2_23
## %bb.22:
	subq	%rcx, %rax
	addq	$7, %rax
	andq	$-8, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
LBB2_23:
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_25
## %bb.24:
	callq	__ZdlPv
LBB2_25:
	movq	-120(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	$0, -88(%rbp)
	movq	%r14, %rax
	subq	%rbx, %rax
	cmpq	$17, %rax
	jb	LBB2_27
	.p2align	4, 0x90
LBB2_26:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	movq	-120(%rbp), %rbx
	movq	-112(%rbp), %r14
	addq	$8, %rbx
	movq	%rbx, -120(%rbp)
	movq	%r14, %rax
	subq	%rbx, %rax
	cmpq	$16, %rax
	ja	LBB2_26
LBB2_27:
	shrq	$3, %rax
	cmpq	$1, %rax
	je	LBB2_28
## %bb.29:
	cmpq	$2, %rax
	jne	LBB2_32
## %bb.30:
	movl	$4096, %eax                     ## imm = 0x1000
	jmp	LBB2_31
LBB2_28:
	movl	$2048, %eax                     ## imm = 0x800
LBB2_31:
	movq	%rax, -96(%rbp)
LBB2_32:
	cmpq	%r14, %rbx
	je	LBB2_36
	.p2align	4, 0x90
LBB2_33:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jne	LBB2_33
## %bb.34:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	cmpq	%rax, %rcx
	je	LBB2_36
## %bb.35:
	subq	%rcx, %rax
	addq	$7, %rax
	andq	$-8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
LBB2_36:
	movq	-128(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_38
## %bb.37:
	callq	__ZdlPv
LBB2_38:
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_13:
Ltmp2:
	movq	%rax, %rbx
	jmp	LBB2_14
LBB2_15:
Ltmp5:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev
LBB2_14:
	leaq	-128(%rbp), %rdi
	callq	__ZNSt3__112__deque_baseIbNS_9allocatorIbEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ## >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ##     jumps to Ltmp2
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ## >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3                    ##   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ##     jumps to Ltmp5
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp4               ##   Call between Ltmp4 and Lfunc_end0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	_fact+8(%rip), %edi
	movl	_fact+12(%rip), %edx
	movl	$10, %esi
	callq	*_fact(%rip)
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movl	%eax, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-24(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp6:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp7:
## %bb.1:
	movq	(%rax), %rcx
Ltmp8:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
Ltmp9:
## %bb.2:
	movl	%eax, %r14d
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB3_3:
Ltmp10:
	movq	%rax, %rbx
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception1:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.uleb128 Ltmp6-Lfunc_begin1             ##   Call between Lfunc_begin1 and Ltmp6
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin1             ## >> Call Site 2 <<
	.uleb128 Ltmp9-Ltmp6                    ##   Call between Ltmp6 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin1            ##     jumps to Ltmp10
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin1             ## >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp9               ##   Call between Ltmp9 and Lfunc_end1
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev ## -- Begin function _ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev
	.p2align	4, 0x90
__ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev: ## @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	movq	16(%rdi), %r15
	movq	$0, 40(%rdi)
	movq	%r15, %rax
	subq	%rbx, %rax
	cmpq	$17, %rax
	jb	LBB4_2
	.p2align	4, 0x90
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	movq	8(%r14), %rbx
	movq	16(%r14), %r15
	addq	$8, %rbx
	movq	%rbx, 8(%r14)
	movq	%r15, %rax
	subq	%rbx, %rax
	cmpq	$16, %rax
	ja	LBB4_1
LBB4_2:
	shrq	$3, %rax
	cmpq	$1, %rax
	je	LBB4_3
## %bb.4:
	cmpq	$2, %rax
	jne	LBB4_7
## %bb.5:
	movl	$1024, %eax                     ## imm = 0x400
	jmp	LBB4_6
LBB4_3:
	movl	$512, %eax                      ## imm = 0x200
LBB4_6:
	movq	%rax, 32(%r14)
LBB4_7:
	cmpq	%r15, %rbx
	je	LBB4_11
	.p2align	4, 0x90
LBB4_8:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	addq	$8, %rbx
	cmpq	%r15, %rbx
	jne	LBB4_8
## %bb.9:
	movq	8(%r14), %rax
	movq	16(%r14), %rcx
	cmpq	%rax, %rcx
	je	LBB4_11
## %bb.10:
	subq	%rcx, %rax
	addq	$7, %rax
	andq	$-8, %rax
	addq	%rcx, %rax
	movq	%rax, 16(%r14)
LBB4_11:
	movq	(%r14), %rdi
	addq	$8, %rsp
	testq	%rdi, %rdi
	je	LBB4_12
## %bb.13:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                         ## TAILCALL
LBB4_12:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
                                        ## -- End function
	.globl	__ZNSt3__112__deque_baseIbNS_9allocatorIbEEED2Ev ## -- Begin function _ZNSt3__112__deque_baseIbNS_9allocatorIbEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__deque_baseIbNS_9allocatorIbEEED2Ev
	.p2align	4, 0x90
__ZNSt3__112__deque_baseIbNS_9allocatorIbEEED2Ev: ## @_ZNSt3__112__deque_baseIbNS_9allocatorIbEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	movq	16(%rdi), %r15
	movq	$0, 40(%rdi)
	movq	%r15, %rax
	subq	%rbx, %rax
	cmpq	$17, %rax
	jb	LBB6_2
	.p2align	4, 0x90
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	movq	8(%r14), %rbx
	movq	16(%r14), %r15
	addq	$8, %rbx
	movq	%rbx, 8(%r14)
	movq	%r15, %rax
	subq	%rbx, %rax
	cmpq	$16, %rax
	ja	LBB6_1
LBB6_2:
	shrq	$3, %rax
	cmpq	$1, %rax
	je	LBB6_3
## %bb.4:
	cmpq	$2, %rax
	jne	LBB6_7
## %bb.5:
	movl	$4096, %eax                     ## imm = 0x1000
	jmp	LBB6_6
LBB6_3:
	movl	$2048, %eax                     ## imm = 0x800
LBB6_6:
	movq	%rax, 32(%r14)
LBB6_7:
	cmpq	%r15, %rbx
	je	LBB6_11
	.p2align	4, 0x90
LBB6_8:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	addq	$8, %rbx
	cmpq	%r15, %rbx
	jne	LBB6_8
## %bb.9:
	movq	8(%r14), %rax
	movq	16(%r14), %rcx
	cmpq	%rax, %rcx
	je	LBB6_11
## %bb.10:
	subq	%rcx, %rax
	addq	$7, %rax
	andq	$-8, %rax
	addq	%rcx, %rax
	movq	%rax, 16(%r14)
LBB6_11:
	movq	(%r14), %rdi
	addq	$8, %rsp
	testq	%rdi, %rdi
	je	LBB6_12
## %bb.13:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                         ## TAILCALL
LBB6_12:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__15dequeIbNS_9allocatorIbEEE8__appendEmRKb ## -- Begin function _ZNSt3__15dequeIbNS_9allocatorIbEEE8__appendEmRKb
	.weak_def_can_be_hidden	__ZNSt3__15dequeIbNS_9allocatorIbEEE8__appendEmRKb
	.p2align	4, 0x90
__ZNSt3__15dequeIbNS_9allocatorIbEEE8__appendEmRKb: ## @_ZNSt3__15dequeIbNS_9allocatorIbEEE8__appendEmRKb
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rsi
	movq	%rsi, %rax
	subq	%rcx, %rax
	shlq	$9, %rax
	decq	%rax
	xorl	%edx, %edx
	cmpq	%rcx, %rsi
	cmovneq	%rax, %rdx
	movq	40(%rdi), %r12
	movq	32(%rdi), %rax
	addq	%r12, %rax
	subq	%rax, %rdx
	cmpq	%r15, %rdx
	jae	LBB7_2
## %bb.1:
	movq	%r15, %rsi
	subq	%rdx, %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__15dequeIbNS_9allocatorIbEEE19__add_back_capacityEm
	movq	40(%r14), %r12
	movq	8(%r14), %rcx
	movq	16(%r14), %rsi
	movq	32(%r14), %rax
	addq	%r12, %rax
LBB7_2:
	movq	%rax, %rdx
	shrq	$12, %rdx
	leaq	(%rcx,%rdx,8), %r10
	cmpq	%rcx, %rsi
	je	LBB7_3
## %bb.4:
	andl	$4095, %eax                     ## imm = 0xFFF
	addq	(%r10), %rax
	movq	%rax, %r9
	movq	%r10, %r8
	testq	%r15, %r15
	jne	LBB7_6
	jmp	LBB7_9
LBB7_3:
	xorl	%eax, %eax
	movq	%rax, %r9
	movq	%r10, %r8
	testq	%r15, %r15
	je	LBB7_9
LBB7_6:
	movq	%rax, %r9
	subq	(%r10), %r9
	addq	%r15, %r9
	jle	LBB7_8
## %bb.7:
	movq	%r9, %rcx
	shrq	$12, %rcx
	leaq	(%r10,%rcx,8), %r8
	andl	$4095, %r9d                     ## imm = 0xFFF
	addq	(%r10,%rcx,8), %r9
LBB7_9:
	cmpq	%r9, %rax
	je	LBB7_23
LBB7_10:
	leaq	1(%rbx), %r13
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
LBB7_11:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_27 Depth 2
                                        ##     Child Loop BB7_20 Depth 2
                                        ##     Child Loop BB7_34 Depth 2
                                        ##     Child Loop BB7_36 Depth 2
	movq	%r9, %r11
	cmpq	%r8, %r10
	je	LBB7_13
## %bb.12:                              ##   in Loop: Header=BB7_11 Depth=1
	movq	(%r10), %r11
	movl	$4096, %ecx                     ## imm = 0x1000
	addq	%rcx, %r11
LBB7_13:                                ##   in Loop: Header=BB7_11 Depth=1
	movq	%rax, %rcx
	cmpq	%r11, %rax
	je	LBB7_38
## %bb.14:                              ##   in Loop: Header=BB7_11 Depth=1
	movq	%r11, %r15
	subq	%rax, %r15
	movq	%rax, %rcx
	cmpq	$8, %r15
	jb	LBB7_33
## %bb.15:                              ##   in Loop: Header=BB7_11 Depth=1
	cmpq	%r13, %rax
	jae	LBB7_17
## %bb.16:                              ##   in Loop: Header=BB7_11 Depth=1
	movq	%rax, %rcx
	cmpq	%rbx, %r11
	ja	LBB7_33
LBB7_17:                                ##   in Loop: Header=BB7_11 Depth=1
	cmpq	$32, %r15
	jae	LBB7_24
## %bb.18:                              ##   in Loop: Header=BB7_11 Depth=1
	xorl	%edi, %edi
	jmp	LBB7_19
LBB7_24:                                ##   in Loop: Header=BB7_11 Depth=1
	movq	%r13, %rdx
	movq	%r15, %rdi
	andq	$-32, %rdi
	leaq	-32(%rdi), %rcx
	movq	%rcx, %r13
	shrq	$5, %r13
	incq	%r13
	testq	%rcx, %rcx
	je	LBB7_25
## %bb.26:                              ##   in Loop: Header=BB7_11 Depth=1
	movq	%r13, %rsi
	andq	$-2, %rsi
	movzbl	(%rbx), %ecx
	movd	%ecx, %xmm1
	pshufb	%xmm0, %xmm1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB7_27:                                ##   Parent Loop BB7_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movdqu	%xmm1, (%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movdqu	%xmm1, 32(%rax,%rcx)
	movdqu	%xmm1, 48(%rax,%rcx)
	addq	$64, %rcx
	addq	$-2, %rsi
	jne	LBB7_27
## %bb.28:                              ##   in Loop: Header=BB7_11 Depth=1
	testb	$1, %r13b
	je	LBB7_30
LBB7_29:                                ##   in Loop: Header=BB7_11 Depth=1
	movzbl	(%rbx), %esi
	movd	%esi, %xmm1
	pshufb	%xmm0, %xmm1
	movdqu	%xmm1, (%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
LBB7_30:                                ##   in Loop: Header=BB7_11 Depth=1
	cmpq	%rdi, %r15
	movq	%rdx, %r13
	je	LBB7_37
## %bb.31:                              ##   in Loop: Header=BB7_11 Depth=1
	testb	$24, %r15b
	je	LBB7_32
LBB7_19:                                ##   in Loop: Header=BB7_11 Depth=1
	movq	%r15, %rsi
	andq	$-8, %rsi
	leaq	(%rax,%rsi), %rcx
	movzbl	(%rbx), %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm1, %xmm1            ## xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm1, %xmm1                ## xmm1 = xmm1[0,0,0,0,4,5,6,7]
	.p2align	4, 0x90
LBB7_20:                                ##   Parent Loop BB7_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%xmm1, (%rax,%rdi)
	addq	$8, %rdi
	cmpq	%rdi, %rsi
	jne	LBB7_20
## %bb.21:                              ##   in Loop: Header=BB7_11 Depth=1
	cmpq	%rsi, %r15
	jne	LBB7_33
	jmp	LBB7_37
LBB7_25:                                ##   in Loop: Header=BB7_11 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %r13b
	jne	LBB7_29
	jmp	LBB7_30
LBB7_32:                                ##   in Loop: Header=BB7_11 Depth=1
	addq	%rax, %rdi
	movq	%rdi, %rcx
	.p2align	4, 0x90
LBB7_33:                                ##   in Loop: Header=BB7_11 Depth=1
	movl	%r11d, %esi
	subl	%ecx, %esi
	movq	%rcx, %rdi
	notq	%rdi
	addq	%r11, %rdi
	andq	$7, %rsi
	je	LBB7_35
	.p2align	4, 0x90
LBB7_34:                                ##   Parent Loop BB7_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %edx
	movb	%dl, (%rcx)
	incq	%rcx
	decq	%rsi
	jne	LBB7_34
LBB7_35:                                ##   in Loop: Header=BB7_11 Depth=1
	cmpq	$7, %rdi
	jb	LBB7_37
	.p2align	4, 0x90
LBB7_36:                                ##   Parent Loop BB7_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %edx
	movb	%dl, (%rcx)
	movzbl	(%rbx), %edx
	movb	%dl, 1(%rcx)
	movzbl	(%rbx), %edx
	movb	%dl, 2(%rcx)
	movzbl	(%rbx), %edx
	movb	%dl, 3(%rcx)
	movzbl	(%rbx), %edx
	movb	%dl, 4(%rcx)
	movzbl	(%rbx), %edx
	movb	%dl, 5(%rcx)
	movzbl	(%rbx), %edx
	movb	%dl, 6(%rcx)
	movzbl	(%rbx), %edx
	movb	%dl, 7(%rcx)
	addq	$8, %rcx
	cmpq	%r11, %rcx
	jne	LBB7_36
LBB7_37:                                ##   in Loop: Header=BB7_11 Depth=1
	movq	%r11, %rcx
LBB7_38:                                ##   in Loop: Header=BB7_11 Depth=1
	subq	%rax, %rcx
	addq	%rcx, %r12
	cmpq	%r8, %r10
	je	LBB7_22
## %bb.39:                              ##   in Loop: Header=BB7_11 Depth=1
	movq	8(%r10), %rax
	addq	$8, %r10
	cmpq	%r9, %rax
	jne	LBB7_11
LBB7_22:
	movq	%r12, 40(%r14)
LBB7_23:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_8:
	movl	$4095, %ecx                     ## imm = 0xFFF
	subq	%r9, %rcx
	movl	%ecx, %r9d
	notl	%r9d
	shrq	$9, %rcx
	andq	$-8, %rcx
	movq	%r10, %r8
	subq	%rcx, %r8
	andl	$4095, %r9d                     ## imm = 0xFFF
	addq	(%r8), %r9
	cmpq	%r9, %rax
	jne	LBB7_10
	jmp	LBB7_23
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__15dequeIbNS_9allocatorIbEEE19__add_back_capacityEm ## -- Begin function _ZNSt3__15dequeIbNS_9allocatorIbEEE19__add_back_capacityEm
	.weak_def_can_be_hidden	__ZNSt3__15dequeIbNS_9allocatorIbEEE19__add_back_capacityEm
	.p2align	4, 0x90
__ZNSt3__15dequeIbNS_9allocatorIbEEE19__add_back_capacityEm: ## @_ZNSt3__15dequeIbNS_9allocatorIbEEE19__add_back_capacityEm
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	16(%rdi), %r13
	xorl	%eax, %eax
	movq	%r13, %r12
	subq	8(%rdi), %r12
	sete	%al
	addq	%rsi, %rax
	movq	%rax, %rbx
	shrq	$12, %rbx
	xorl	%r15d, %r15d
	testl	$4095, %eax                     ## imm = 0xFFF
	setne	%r15b
	leaq	(%rbx,%r15), %r14
	movq	32(%rdi), %rax
	movq	%rax, %rdx
	shrq	$12, %rdx
	cmpq	%rdx, %r14
	cmovbq	%r14, %rdx
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	jbe	LBB8_1
## %bb.25:
	subq	%rdx, %r14
	movq	24(%rdi), %r13
	subq	(%rdi), %r13
	movq	%r13, %rax
	sarq	$3, %rax
	sarq	$3, %r12
	subq	%r12, %rax
	cmpq	%rax, %r14
	jbe	LBB8_26
## %bb.58:
	movabsq	$2305843009213693951, %rcx      ## imm = 0x1FFFFFFFFFFFFFFF
	sarq	$2, %r13
	leaq	(%r14,%r12), %rax
	cmpq	%rax, %r13
	cmovbeq	%rax, %r13
	testq	%r13, %r13
	je	LBB8_59
## %bb.60:
	cmpq	%rcx, %r13
	ja	LBB8_164
## %bb.61:
	leaq	(,%r13,8), %rdi
	callq	__Znwm
	jmp	LBB8_62
LBB8_1:
	movq	%rdx, %rcx
	shlq	$12, %rcx
	subq	%rcx, %rax
	movq	%rax, 32(%rdi)
	testq	%rdx, %rdx
	je	LBB8_24
## %bb.2:
	movq	%rdi, %r15
	jmp	LBB8_3
LBB8_5:                                 ##   in Loop: Header=BB8_3 Depth=1
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	movq	%r14, %r12
	leaq	(%rax,%rcx), %r14
	incq	%r14
	shrq	%r14
	shlq	$3, %r14
	movq	%rbx, %rdi
	subq	%r14, %rdi
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movq	%rbx, %rsi
	callq	_memmove
	subq	%r14, %r13
	movq	%r13, 16(%r15)
	subq	%r14, 8(%r15)
	movq	%r12, %r14
	.p2align	4, 0x90
LBB8_23:                                ##   in Loop: Header=BB8_3 Depth=1
	movq	%r14, (%r13)
	movq	16(%r15), %r13
	addq	$8, %r13
	movq	%r13, 16(%r15)
	decq	-56(%rbp)                       ## 8-byte Folded Spill
	je	LBB8_24
LBB8_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_15 Depth 2
                                        ##     Child Loop BB8_20 Depth 2
	movq	8(%r15), %r12
	movq	(%r12), %r14
	leaq	8(%r12), %rbx
	movq	%rbx, 8(%r15)
	cmpq	24(%r15), %r13
	jne	LBB8_23
## %bb.4:                               ##   in Loop: Header=BB8_3 Depth=1
	movq	(%r15), %rcx
	movq	%rbx, %rax
	subq	%rcx, %rax
	ja	LBB8_5
## %bb.6:                               ##   in Loop: Header=BB8_3 Depth=1
	movq	%r14, -48(%rbp)                 ## 8-byte Spill
	movq	%r13, %r15
	subq	%rcx, %r15
	sarq	$2, %r15
	movq	%rcx, -72(%rbp)                 ## 8-byte Spill
	cmpq	%rcx, %r13
	movl	$1, %eax
	cmoveq	%rax, %r15
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r15
	ja	LBB8_164
## %bb.7:                               ##   in Loop: Header=BB8_3 Depth=1
	movq	%r15, %r14
	shrq	$2, %r14
	leaq	(,%r15,8), %rdi
	callq	__Znwm
	leaq	(%rax,%r14,8), %r10
	movq	%r13, %rcx
	subq	%rbx, %rcx
	movq	%r10, %rdx
	subq	%rbx, %r13
	je	LBB8_21
## %bb.8:                               ##   in Loop: Header=BB8_3 Depth=1
	andq	$-8, %rcx
	movq	%rcx, %rdx
	addq	%r10, %rdx
	addq	$-8, %r13
	cmpq	$104, %r13
	jae	LBB8_10
## %bb.9:                               ##   in Loop: Header=BB8_3 Depth=1
	movq	%r10, %rsi
	jmp	LBB8_20
LBB8_10:                                ##   in Loop: Header=BB8_3 Depth=1
	leaq	(%rax,%r14,8), %rcx
	subq	%rbx, %rcx
	cmpq	$32, %rcx
	jae	LBB8_12
## %bb.11:                              ##   in Loop: Header=BB8_3 Depth=1
	movq	%r10, %rsi
	jmp	LBB8_20
LBB8_12:                                ##   in Loop: Header=BB8_3 Depth=1
	shrq	$3, %r13
	incq	%r13
	movq	%r13, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r9
	shrq	$2, %r9
	incq	%r9
	testq	%rcx, %rcx
	je	LBB8_13
## %bb.14:                              ##   in Loop: Header=BB8_3 Depth=1
	shlq	$3, %r14
	movq	%r9, %rdi
	andq	$-2, %rdi
	leaq	(%rax,%r14), %rcx
	addq	$48, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB8_15:                                ##   Parent Loop BB8_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	8(%r12,%rsi,8), %xmm0
	movups	24(%r12,%rsi,8), %xmm1
	movups	%xmm0, -48(%rcx,%rsi,8)
	movups	%xmm1, -32(%rcx,%rsi,8)
	movups	40(%r12,%rsi,8), %xmm0
	movups	56(%r12,%rsi,8), %xmm1
	movups	%xmm0, -16(%rcx,%rsi,8)
	movups	%xmm1, (%rcx,%rsi,8)
	addq	$8, %rsi
	addq	$-2, %rdi
	jne	LBB8_15
## %bb.16:                              ##   in Loop: Header=BB8_3 Depth=1
	testb	$1, %r9b
	je	LBB8_18
LBB8_17:                                ##   in Loop: Header=BB8_3 Depth=1
	movups	(%rbx,%rsi,8), %xmm0
	movups	16(%rbx,%rsi,8), %xmm1
	movups	%xmm0, (%r10,%rsi,8)
	movups	%xmm1, 16(%r10,%rsi,8)
LBB8_18:                                ##   in Loop: Header=BB8_3 Depth=1
	cmpq	%r8, %r13
	je	LBB8_21
## %bb.19:                              ##   in Loop: Header=BB8_3 Depth=1
	leaq	(%r10,%r8,8), %rsi
	leaq	(%rbx,%r8,8), %rbx
	.p2align	4, 0x90
LBB8_20:                                ##   Parent Loop BB8_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rcx
	movq	%rcx, (%rsi)
	addq	$8, %rsi
	addq	$8, %rbx
	cmpq	%rdx, %rsi
	jne	LBB8_20
LBB8_21:                                ##   in Loop: Header=BB8_3 Depth=1
	leaq	(%rax,%r15,8), %rcx
	movq	-64(%rbp), %r15                 ## 8-byte Reload
	movq	%rax, (%r15)
	movq	%r10, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rcx, 24(%r15)
	movq	%rdx, %r13
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	movq	-48(%rbp), %r14                 ## 8-byte Reload
	je	LBB8_23
## %bb.22:                              ##   in Loop: Header=BB8_3 Depth=1
	callq	__ZdlPv
	movq	16(%r15), %r13
	jmp	LBB8_23
LBB8_13:                                ##   in Loop: Header=BB8_3 Depth=1
	xorl	%esi, %esi
	testb	$1, %r9b
	jne	LBB8_17
	jmp	LBB8_18
LBB8_26:
	testq	%r14, %r14
	movq	-64(%rbp), %r14                 ## 8-byte Reload
	je	LBB8_30
## %bb.27:
	negq	%rbx
	movq	%r15, %r12
	subq	-56(%rbp), %r12                 ## 8-byte Folded Reload
	leaq	-80(%rbp), %r13
	.p2align	4, 0x90
LBB8_28:                                ## =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rax
	cmpq	16(%r14), %rax
	je	LBB8_31
## %bb.29:                              ##   in Loop: Header=BB8_28 Depth=1
	movl	$4096, %edi                     ## imm = 0x1000
	callq	__Znwm
	movq	%rax, -80(%rbp)
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE9push_backEOS1_
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB8_28
	jmp	LBB8_30
LBB8_59:
	xorl	%eax, %eax
LBB8_62:
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, %rdx
	shlq	$12, %rdx
	negq	%rdx
	movq	%rdx, -96(%rbp)                 ## 8-byte Spill
	subq	%rcx, %r12
	leaq	(%rax,%r13,8), %r15
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	leaq	(%rax,%r12,8), %rbx
	movq	%rbx, %r12
	jmp	LBB8_63
LBB8_66:                                ##   in Loop: Header=BB8_63 Depth=1
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r15
	incq	%r15
	shlq	$2, %r15
	andq	$-8, %r15
	movq	%rbx, %r14
	subq	%r15, %r14
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r9, %rbx
	callq	_memmove
	movq	%rbx, %r9
	movq	%r13, %r12
	subq	%r15, %r12
	movq	%r14, %rbx
	movq	%r13, %r15
	.p2align	4, 0x90
LBB8_90:                                ##   in Loop: Header=BB8_63 Depth=1
	movq	-72(%rbp), %r14                 ## 8-byte Reload
	movq	%r9, (%r12)
	addq	$8, %r12
	decq	%r14
	je	LBB8_67
LBB8_63:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_81 Depth 2
                                        ##     Child Loop BB8_86 Depth 2
Ltmp11:
	movq	%r14, -72(%rbp)                 ## 8-byte Spill
	movq	%r15, %r13
	movl	$4096, %edi                     ## imm = 0x1000
	callq	__Znwm
Ltmp12:
## %bb.64:                              ##   in Loop: Header=BB8_63 Depth=1
	movq	%rax, %r9
	movq	%r13, %r15
	cmpq	%r13, %r12
	jne	LBB8_90
## %bb.65:                              ##   in Loop: Header=BB8_63 Depth=1
	movq	%rbx, %rax
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	subq	%rcx, %rax
	ja	LBB8_66
## %bb.69:                              ##   in Loop: Header=BB8_63 Depth=1
	movq	%r9, -88(%rbp)                  ## 8-byte Spill
	movq	%r15, %r14
	subq	%rcx, %r14
	sarq	$2, %r14
	cmpq	%rcx, %r15
	movl	$1, %eax
	cmoveq	%rax, %r14
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r14
	ja	LBB8_70
## %bb.72:                              ##   in Loop: Header=BB8_63 Depth=1
	leaq	(,%r14,8), %rdi
Ltmp13:
	movq	%r15, %r12
	callq	__Znwm
Ltmp14:
	movq	-88(%rbp), %r9                  ## 8-byte Reload
## %bb.73:                              ##   in Loop: Header=BB8_63 Depth=1
	movq	%rax, %r10
	movq	%r14, %rcx
	shrq	$2, %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%r13, %rdx
	movq	%rax, %r13
	movq	%rdx, %rax
	subq	%rbx, %rax
	movq	%r13, %r12
	subq	%rbx, %rdx
	je	LBB8_87
## %bb.74:                              ##   in Loop: Header=BB8_63 Depth=1
	andq	$-8, %rax
	movq	%rax, %r12
	addq	%r13, %r12
	addq	$-8, %rdx
	cmpq	$104, %rdx
	jae	LBB8_76
## %bb.75:                              ##   in Loop: Header=BB8_63 Depth=1
	movq	%r13, %rcx
	jmp	LBB8_86
LBB8_76:                                ##   in Loop: Header=BB8_63 Depth=1
	leaq	(%r10,%rcx,8), %rax
	subq	%rbx, %rax
	cmpq	$32, %rax
	jae	LBB8_78
## %bb.77:                              ##   in Loop: Header=BB8_63 Depth=1
	movq	%r13, %rcx
	jmp	LBB8_86
LBB8_78:                                ##   in Loop: Header=BB8_63 Depth=1
	movq	%rdx, %rsi
	movq	%rdx, %rax
	shrq	$3, %rax
	incq	%rax
	movq	%rax, %r8
	movabsq	$4611686018427387900, %rdx      ## imm = 0x3FFFFFFFFFFFFFFC
	andq	%rdx, %rax
	leaq	-4(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	incq	%rdx
	testq	%rsi, %rsi
	je	LBB8_79
## %bb.80:                              ##   in Loop: Header=BB8_63 Depth=1
	shlq	$3, %rcx
	movq	%rdx, %rsi
	movabsq	$9223372036854775806, %rdi      ## imm = 0x7FFFFFFFFFFFFFFE
	andq	%rdi, %rsi
	leaq	(%r10,%rcx), %rdi
	addq	$48, %rdi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB8_81:                                ##   Parent Loop BB8_63 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	(%rbx,%rcx,8), %xmm0
	movups	16(%rbx,%rcx,8), %xmm1
	movups	%xmm0, -48(%rdi,%rcx,8)
	movups	%xmm1, -32(%rdi,%rcx,8)
	movups	32(%rbx,%rcx,8), %xmm0
	movups	48(%rbx,%rcx,8), %xmm1
	movups	%xmm0, -16(%rdi,%rcx,8)
	movups	%xmm1, (%rdi,%rcx,8)
	addq	$8, %rcx
	addq	$-2, %rsi
	jne	LBB8_81
## %bb.82:                              ##   in Loop: Header=BB8_63 Depth=1
	testb	$1, %dl
	je	LBB8_84
LBB8_83:                                ##   in Loop: Header=BB8_63 Depth=1
	movups	(%rbx,%rcx,8), %xmm0
	movups	16(%rbx,%rcx,8), %xmm1
	movups	%xmm0, (%r13,%rcx,8)
	movups	%xmm1, 16(%r13,%rcx,8)
LBB8_84:                                ##   in Loop: Header=BB8_63 Depth=1
	cmpq	%rax, %r8
	je	LBB8_87
## %bb.85:                              ##   in Loop: Header=BB8_63 Depth=1
	leaq	(,%rax,8), %rcx
	addq	%r13, %rcx
	leaq	(%rbx,%rax,8), %rbx
	.p2align	4, 0x90
LBB8_86:                                ##   Parent Loop BB8_63 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	addq	$8, %rbx
	cmpq	%r12, %rcx
	jne	LBB8_86
LBB8_87:                                ##   in Loop: Header=BB8_63 Depth=1
	leaq	(%r10,%r14,8), %r15
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB8_88
## %bb.89:                              ##   in Loop: Header=BB8_63 Depth=1
	movq	%r10, %r14
	callq	__ZdlPv
	movq	-88(%rbp), %r9                  ## 8-byte Reload
	movq	%r13, %rbx
	movq	%r14, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB8_90
LBB8_88:                                ##   in Loop: Header=BB8_63 Depth=1
	movq	%r13, %rbx
	movq	%r10, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB8_90
LBB8_79:                                ##   in Loop: Header=BB8_63 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	LBB8_83
	jmp	LBB8_84
LBB8_67:
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	8(%rax), %r14
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	testq	%rcx, %rcx
	jne	LBB8_98
## %bb.68:
	movq	%rbx, %r9
LBB8_124:
	movq	%r15, -56(%rbp)                 ## 8-byte Spill
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	16(%rax), %rbx
	cmpq	%r14, %rbx
	je	LBB8_125
## %bb.130:
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	jmp	LBB8_131
	.p2align	4, 0x90
LBB8_99:                                ##   in Loop: Header=BB8_98 Depth=1
	movq	%rbx, %r9
LBB8_123:                               ##   in Loop: Header=BB8_98 Depth=1
	movq	(%r14), %rax
	movq	%rax, (%r12)
	addq	$8, %r12
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	8(%rax), %r14
	addq	$8, %r14
	movq	%r14, 8(%rax)
	movq	%r9, %rbx
	decq	%rcx
	je	LBB8_124
LBB8_98:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_113 Depth 2
                                        ##     Child Loop BB8_118 Depth 2
	cmpq	%r15, %r12
	jne	LBB8_99
## %bb.100:                             ##   in Loop: Header=BB8_98 Depth=1
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	movq	%rbx, %rax
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	subq	%rcx, %rax
	jbe	LBB8_102
## %bb.101:                             ##   in Loop: Header=BB8_98 Depth=1
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r13
	incq	%r13
	shlq	$2, %r13
	andq	$-8, %r13
	movq	%rbx, %r12
	subq	%r13, %r12
	movq	%r15, %rdx
	subq	%rbx, %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_memmove
	movq	%r12, %r9
	movq	%r15, %r12
	subq	%r13, %r12
	jmp	LBB8_122
LBB8_102:                               ##   in Loop: Header=BB8_98 Depth=1
	movq	%r15, %rax
	movq	%r15, %r13
	subq	%rcx, %r13
	sarq	$2, %r13
	cmpq	%rcx, %r15
	movl	$1, %eax
	cmoveq	%rax, %r13
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r13
	ja	LBB8_103
## %bb.104:                             ##   in Loop: Header=BB8_98 Depth=1
	leaq	(,%r13,8), %rdi
Ltmp25:
	callq	__Znwm
Ltmp26:
## %bb.105:                             ##   in Loop: Header=BB8_98 Depth=1
	movq	%rax, %r10
	movq	%r13, %rcx
	shrq	$2, %rcx
	leaq	(%rax,%rcx,8), %r9
	movq	%r15, %rdx
	movq	%r15, %rax
	subq	%rbx, %rax
	movq	%r9, %r12
	subq	%rbx, %rdx
	je	LBB8_119
## %bb.106:                             ##   in Loop: Header=BB8_98 Depth=1
	andq	$-8, %rax
	movq	%rax, %r12
	addq	%r9, %r12
	addq	$-8, %rdx
	cmpq	$104, %rdx
	jae	LBB8_108
## %bb.107:                             ##   in Loop: Header=BB8_98 Depth=1
	movq	%r9, %rcx
	jmp	LBB8_118
LBB8_108:                               ##   in Loop: Header=BB8_98 Depth=1
	leaq	(%r10,%rcx,8), %rax
	subq	%rbx, %rax
	cmpq	$32, %rax
	jae	LBB8_110
## %bb.109:                             ##   in Loop: Header=BB8_98 Depth=1
	movq	%r9, %rcx
	jmp	LBB8_118
LBB8_110:                               ##   in Loop: Header=BB8_98 Depth=1
	movq	%rdx, %rsi
	movq	%rdx, %rax
	shrq	$3, %rax
	incq	%rax
	movq	%rax, %r8
	movabsq	$4611686018427387900, %rdx      ## imm = 0x3FFFFFFFFFFFFFFC
	andq	%rdx, %rax
	leaq	-4(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	incq	%rdx
	testq	%rsi, %rsi
	je	LBB8_111
## %bb.112:                             ##   in Loop: Header=BB8_98 Depth=1
	shlq	$3, %rcx
	movq	%rdx, %rsi
	movabsq	$9223372036854775806, %rdi      ## imm = 0x7FFFFFFFFFFFFFFE
	andq	%rdi, %rsi
	leaq	(%r10,%rcx), %rdi
	addq	$48, %rdi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB8_113:                               ##   Parent Loop BB8_98 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	(%rbx,%rcx,8), %xmm0
	movups	16(%rbx,%rcx,8), %xmm1
	movups	%xmm0, -48(%rdi,%rcx,8)
	movups	%xmm1, -32(%rdi,%rcx,8)
	movups	32(%rbx,%rcx,8), %xmm0
	movups	48(%rbx,%rcx,8), %xmm1
	movups	%xmm0, -16(%rdi,%rcx,8)
	movups	%xmm1, (%rdi,%rcx,8)
	addq	$8, %rcx
	addq	$-2, %rsi
	jne	LBB8_113
## %bb.114:                             ##   in Loop: Header=BB8_98 Depth=1
	testb	$1, %dl
	je	LBB8_116
LBB8_115:                               ##   in Loop: Header=BB8_98 Depth=1
	movups	(%rbx,%rcx,8), %xmm0
	movups	16(%rbx,%rcx,8), %xmm1
	movups	%xmm0, (%r9,%rcx,8)
	movups	%xmm1, 16(%r9,%rcx,8)
LBB8_116:                               ##   in Loop: Header=BB8_98 Depth=1
	cmpq	%rax, %r8
	je	LBB8_119
## %bb.117:                             ##   in Loop: Header=BB8_98 Depth=1
	leaq	(%r9,%rax,8), %rcx
	leaq	(%rbx,%rax,8), %rbx
	.p2align	4, 0x90
LBB8_118:                               ##   Parent Loop BB8_98 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	addq	$8, %rbx
	cmpq	%r12, %rcx
	jne	LBB8_118
LBB8_119:                               ##   in Loop: Header=BB8_98 Depth=1
	leaq	(%r10,%r13,8), %r15
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB8_120
## %bb.121:                             ##   in Loop: Header=BB8_98 Depth=1
	movq	%r9, %rbx
	movq	%r10, %r13
	callq	__ZdlPv
	movq	%rbx, %r9
	movq	%r13, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB8_122
LBB8_120:                               ##   in Loop: Header=BB8_98 Depth=1
	movq	%r10, -48(%rbp)                 ## 8-byte Spill
	.p2align	4, 0x90
LBB8_122:                               ##   in Loop: Header=BB8_98 Depth=1
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	jmp	LBB8_123
LBB8_111:                               ##   in Loop: Header=BB8_98 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	LBB8_115
	jmp	LBB8_116
	.p2align	4, 0x90
LBB8_132:                               ##   in Loop: Header=BB8_131 Depth=1
	movq	%r12, %r13
LBB8_156:                               ##   in Loop: Header=BB8_131 Depth=1
	addq	$-8, %rbx
	movq	(%rbx), %rax
	movq	%rax, -8(%r9)
	addq	$-8, %r9
	movq	%r13, %r12
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	cmpq	8(%rax), %rbx
	je	LBB8_126
LBB8_131:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_147 Depth 2
                                        ##     Child Loop BB8_152 Depth 2
	cmpq	%r15, %r9
	jne	LBB8_132
## %bb.133:                             ##   in Loop: Header=BB8_131 Depth=1
	movq	%r15, -48(%rbp)                 ## 8-byte Spill
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	cmpq	%rcx, %r12
	jae	LBB8_138
## %bb.134:                             ##   in Loop: Header=BB8_131 Depth=1
	movq	%rcx, %rax
	subq	%r12, %rax
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r14
	incq	%r14
	sarq	%r14
	leaq	(%r12,%r14,8), %r9
	movq	%r12, %rdx
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	subq	%rsi, %rdx
	je	LBB8_135
## %bb.136:                             ##   in Loop: Header=BB8_131 Depth=1
	subq	%rdx, %r9
	movq	%r9, %rdi
	movq	%r9, %r15
	callq	_memmove
	movq	%r15, %r9
	jmp	LBB8_137
LBB8_138:                               ##   in Loop: Header=BB8_131 Depth=1
	movq	%rcx, %r14
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	subq	%rax, %r14
	sarq	$2, %r14
	cmpq	%rax, %rcx
	movl	$1, %eax
	cmoveq	%rax, %r14
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r14
	ja	LBB8_139
## %bb.140:                             ##   in Loop: Header=BB8_131 Depth=1
	leaq	(,%r14,8), %rdi
Ltmp31:
	callq	__Znwm
Ltmp32:
## %bb.141:                             ##   in Loop: Header=BB8_131 Depth=1
	movq	%rax, %r15
	leaq	3(%r14), %rcx
	shrq	$2, %rcx
	leaq	(%rax,%rcx,8), %r9
	movq	%r12, %rax
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	subq	%rdi, %rax
	movq	%r9, %r13
	subq	%rdi, %r12
	je	LBB8_154
## %bb.142:                             ##   in Loop: Header=BB8_131 Depth=1
	andq	$-8, %rax
	movq	%rax, %r13
	addq	%r9, %r13
	addq	$-8, %r12
	movq	%r9, %rdx
	movq	%rdi, %rax
	cmpq	$104, %r12
	jb	LBB8_152
## %bb.143:                             ##   in Loop: Header=BB8_131 Depth=1
	leaq	(%r15,%rcx,8), %rsi
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	subq	%rax, %rsi
	movq	%r9, %rdx
	cmpq	$32, %rsi
	jb	LBB8_152
## %bb.144:                             ##   in Loop: Header=BB8_131 Depth=1
	shrq	$3, %r12
	incq	%r12
	movq	%r12, %r8
	movabsq	$4611686018427387900, %rax      ## imm = 0x3FFFFFFFFFFFFFFC
	andq	%rax, %r8
	leaq	-4(%r8), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	incq	%rdx
	testq	%rsi, %rsi
	je	LBB8_145
## %bb.146:                             ##   in Loop: Header=BB8_131 Depth=1
	shlq	$3, %rcx
	movq	%rdx, %rsi
	movabsq	$9223372036854775806, %rax      ## imm = 0x7FFFFFFFFFFFFFFE
	andq	%rax, %rsi
	leaq	(%r15,%rcx), %rdi
	addq	$48, %rdi
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	.p2align	4, 0x90
LBB8_147:                               ##   Parent Loop BB8_131 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	(%rax,%rcx,8), %xmm0
	movups	16(%rax,%rcx,8), %xmm1
	movups	%xmm0, -48(%rdi,%rcx,8)
	movups	%xmm1, -32(%rdi,%rcx,8)
	movups	32(%rax,%rcx,8), %xmm0
	movups	48(%rax,%rcx,8), %xmm1
	movups	%xmm0, -16(%rdi,%rcx,8)
	movups	%xmm1, (%rdi,%rcx,8)
	addq	$8, %rcx
	addq	$-2, %rsi
	jne	LBB8_147
## %bb.148:                             ##   in Loop: Header=BB8_131 Depth=1
	testb	$1, %dl
	je	LBB8_150
LBB8_149:                               ##   in Loop: Header=BB8_131 Depth=1
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movups	(%rax,%rcx,8), %xmm0
	movups	16(%rax,%rcx,8), %xmm1
	movups	%xmm0, (%r9,%rcx,8)
	movups	%xmm1, 16(%r9,%rcx,8)
LBB8_150:                               ##   in Loop: Header=BB8_131 Depth=1
	cmpq	%r8, %r12
	je	LBB8_153
## %bb.151:                             ##   in Loop: Header=BB8_131 Depth=1
	leaq	(%r9,%r8,8), %rdx
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	leaq	(%rax,%r8,8), %rax
	.p2align	4, 0x90
LBB8_152:                               ##   Parent Loop BB8_131 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	addq	$8, %rax
	cmpq	%r13, %rdx
	jne	LBB8_152
LBB8_153:                               ##   in Loop: Header=BB8_131 Depth=1
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
LBB8_154:                               ##   in Loop: Header=BB8_131 Depth=1
	leaq	(%r15,%r14,8), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	testq	%rdi, %rdi
	je	LBB8_156
## %bb.155:                             ##   in Loop: Header=BB8_131 Depth=1
	movq	%r9, %r14
	callq	__ZdlPv
	movq	%r14, %r9
	jmp	LBB8_156
LBB8_135:                               ##   in Loop: Header=BB8_131 Depth=1
	movq	%rsi, %r12
LBB8_137:                               ##   in Loop: Header=BB8_131 Depth=1
	leaq	(%r12,%r14,8), %r13
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	jmp	LBB8_156
LBB8_145:                               ##   in Loop: Header=BB8_131 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	LBB8_149
	jmp	LBB8_150
LBB8_125:
	movq	%r12, %r13
	movq	-48(%rbp), %r15                 ## 8-byte Reload
LBB8_126:
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax), %rdi
	movq	%r15, (%rax)
	movq	%r9, 8(%rax)
	movq	%r13, 16(%rax)
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-96(%rbp), %rcx                 ## 8-byte Reload
	addq	%rcx, 32(%rax)
	testq	%rdi, %rdi
	je	LBB8_24
## %bb.127:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                         ## TAILCALL
LBB8_31:
	subq	%rbx, %r12
	jne	LBB8_32
LBB8_30:
	movq	32(%r14), %rax
	movq	%r14, %r15
	movq	-56(%rbp), %rdx                 ## 8-byte Reload
LBB8_35:
	movq	%rdx, %rcx
	shlq	$12, %rcx
	subq	%rcx, %rax
	movq	%rax, 32(%r15)
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	testq	%rdx, %rdx
	je	LBB8_24
## %bb.36:
	movq	16(%r15), %r14
	jmp	LBB8_37
LBB8_39:                                ##   in Loop: Header=BB8_37 Depth=1
	movq	%r15, %r13
	sarq	$3, %rax
	movq	%rcx, %r12
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r15
	incq	%r15
	shrq	%r15
	shlq	$3, %r15
	movq	%rbx, %rdi
	subq	%r15, %rdi
	movq	%r14, %rdx
	subq	%rbx, %rdx
	movq	%rbx, %rsi
	callq	_memmove
	movq	%r12, %rcx
	subq	%r15, %r14
	movq	%r14, 16(%r13)
	subq	%r15, 8(%r13)
	movq	%r13, %r15
	.p2align	4, 0x90
LBB8_57:                                ##   in Loop: Header=BB8_37 Depth=1
	movq	%rcx, (%r14)
	movq	16(%r15), %r14
	addq	$8, %r14
	movq	%r14, 16(%r15)
	decq	-56(%rbp)                       ## 8-byte Folded Spill
	je	LBB8_24
LBB8_37:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_49 Depth 2
                                        ##     Child Loop BB8_54 Depth 2
	movq	8(%r15), %r12
	movq	(%r12), %rcx
	leaq	8(%r12), %rbx
	movq	%rbx, 8(%r15)
	cmpq	24(%r15), %r14
	jne	LBB8_57
## %bb.38:                              ##   in Loop: Header=BB8_37 Depth=1
	movq	(%r15), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	ja	LBB8_39
## %bb.40:                              ##   in Loop: Header=BB8_37 Depth=1
	movq	%rcx, -48(%rbp)                 ## 8-byte Spill
	movq	%r14, %r15
	subq	%rdx, %r15
	sarq	$2, %r15
	movq	%rdx, -72(%rbp)                 ## 8-byte Spill
	cmpq	%rdx, %r14
	movl	$1, %eax
	cmoveq	%rax, %r15
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r15
	ja	LBB8_164
## %bb.41:                              ##   in Loop: Header=BB8_37 Depth=1
	movq	%r15, %r13
	shrq	$2, %r13
	leaq	(,%r15,8), %rdi
	callq	__Znwm
	leaq	(%rax,%r13,8), %r10
	movq	%r14, %rcx
	subq	%rbx, %rcx
	movq	%r10, %rdx
	subq	%rbx, %r14
	je	LBB8_55
## %bb.42:                              ##   in Loop: Header=BB8_37 Depth=1
	andq	$-8, %rcx
	movq	%rcx, %rdx
	addq	%r10, %rdx
	addq	$-8, %r14
	cmpq	$104, %r14
	jae	LBB8_44
## %bb.43:                              ##   in Loop: Header=BB8_37 Depth=1
	movq	%r10, %rsi
	jmp	LBB8_54
LBB8_44:                                ##   in Loop: Header=BB8_37 Depth=1
	leaq	(%rax,%r13,8), %rcx
	subq	%rbx, %rcx
	cmpq	$32, %rcx
	jae	LBB8_46
## %bb.45:                              ##   in Loop: Header=BB8_37 Depth=1
	movq	%r10, %rsi
	jmp	LBB8_54
LBB8_46:                                ##   in Loop: Header=BB8_37 Depth=1
	shrq	$3, %r14
	incq	%r14
	movq	%r14, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r9
	shrq	$2, %r9
	incq	%r9
	testq	%rcx, %rcx
	je	LBB8_47
## %bb.48:                              ##   in Loop: Header=BB8_37 Depth=1
	shlq	$3, %r13
	movq	%r9, %rdi
	andq	$-2, %rdi
	leaq	(%rax,%r13), %rcx
	addq	$48, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB8_49:                                ##   Parent Loop BB8_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	8(%r12,%rsi,8), %xmm0
	movups	24(%r12,%rsi,8), %xmm1
	movups	%xmm0, -48(%rcx,%rsi,8)
	movups	%xmm1, -32(%rcx,%rsi,8)
	movups	40(%r12,%rsi,8), %xmm0
	movups	56(%r12,%rsi,8), %xmm1
	movups	%xmm0, -16(%rcx,%rsi,8)
	movups	%xmm1, (%rcx,%rsi,8)
	addq	$8, %rsi
	addq	$-2, %rdi
	jne	LBB8_49
## %bb.50:                              ##   in Loop: Header=BB8_37 Depth=1
	testb	$1, %r9b
	je	LBB8_52
LBB8_51:                                ##   in Loop: Header=BB8_37 Depth=1
	movups	(%rbx,%rsi,8), %xmm0
	movups	16(%rbx,%rsi,8), %xmm1
	movups	%xmm0, (%r10,%rsi,8)
	movups	%xmm1, 16(%r10,%rsi,8)
LBB8_52:                                ##   in Loop: Header=BB8_37 Depth=1
	cmpq	%r8, %r14
	je	LBB8_55
## %bb.53:                              ##   in Loop: Header=BB8_37 Depth=1
	leaq	(%r10,%r8,8), %rsi
	leaq	(%rbx,%r8,8), %rbx
	.p2align	4, 0x90
LBB8_54:                                ##   Parent Loop BB8_37 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rcx
	movq	%rcx, (%rsi)
	addq	$8, %rsi
	addq	$8, %rbx
	cmpq	%rdx, %rsi
	jne	LBB8_54
LBB8_55:                                ##   in Loop: Header=BB8_37 Depth=1
	leaq	(%rax,%r15,8), %rcx
	movq	-64(%rbp), %r15                 ## 8-byte Reload
	movq	%rax, (%r15)
	movq	%r10, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rcx, 24(%r15)
	movq	%rdx, %r14
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	je	LBB8_57
## %bb.56:                              ##   in Loop: Header=BB8_37 Depth=1
	callq	__ZdlPv
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	movq	16(%r15), %r14
	jmp	LBB8_57
LBB8_47:                                ##   in Loop: Header=BB8_37 Depth=1
	xorl	%esi, %esi
	testb	$1, %r9b
	jne	LBB8_51
	jmp	LBB8_52
LBB8_24:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB8_32:
	xorl	%r13d, %r13d
	.p2align	4, 0x90
LBB8_33:                                ## =>This Inner Loop Header: Depth=1
	movl	$4096, %edi                     ## imm = 0x1000
	callq	__Znwm
	movq	%rax, -80(%rbp)
	movq	%r14, %rdi
	leaq	-80(%rbp), %rsi
	callq	__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE10push_frontEOS1_
	movq	16(%r14), %rax
	movq	32(%r14), %rcx
	subq	8(%r14), %rax
	xorl	%edx, %edx
	cmpq	$8, %rax
	sete	%dl
	negq	%rdx
	leaq	(%rcx,%rdx), %rax
	addq	$4096, %rax                     ## imm = 0x1000
	movq	%rax, 32(%r14)
	incq	%r13
	cmpq	%r13, %r12
	jne	LBB8_33
## %bb.34:
	subq	%rbx, %r15
	movq	%r15, %rdx
	movq	%r14, %r15
	jmp	LBB8_35
LBB8_164:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
LBB8_70:
Ltmp16:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
Ltmp17:
	jmp	LBB8_71
LBB8_103:
Ltmp28:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
Ltmp29:
	jmp	LBB8_71
LBB8_139:
Ltmp34:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
Ltmp35:
	jmp	LBB8_71
LBB8_158:
Ltmp36:
	jmp	LBB8_159
LBB8_157:
Ltmp33:
	jmp	LBB8_159
LBB8_129:
Ltmp30:
	jmp	LBB8_159
LBB8_128:
Ltmp27:
LBB8_159:
	movq	%rax, %rbx
	jmp	LBB8_160
LBB8_92:
Ltmp18:
	jmp	LBB8_93
LBB8_91:
Ltmp15:
	movq	%r12, %r13
LBB8_93:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
	cmpq	%r13, %rbx
	je	LBB8_95
	.p2align	4, 0x90
LBB8_96:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	__ZdlPv
	addq	$8, %rbx
	cmpq	%r13, %rbx
	jne	LBB8_96
LBB8_95:
Ltmp19:
	callq	___cxa_rethrow
Ltmp20:
LBB8_71:
	ud2
LBB8_97:
Ltmp21:
	movq	%rax, %rbx
Ltmp22:
	callq	___cxa_end_catch
Ltmp23:
LBB8_160:
	cmpq	$0, -48(%rbp)                   ## 8-byte Folded Reload
	je	LBB8_162
## %bb.161:
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZdlPv
LBB8_162:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB8_163:
Ltmp24:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception2:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.uleb128 Ltmp11-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp11
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin2            ## >> Call Site 2 <<
	.uleb128 Ltmp14-Ltmp11                  ##   Call between Ltmp11 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin2            ##     jumps to Ltmp15
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp14-Lfunc_begin2            ## >> Call Site 3 <<
	.uleb128 Ltmp25-Ltmp14                  ##   Call between Ltmp14 and Ltmp25
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin2            ## >> Call Site 4 <<
	.uleb128 Ltmp26-Ltmp25                  ##   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin2            ##     jumps to Ltmp27
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin2            ## >> Call Site 5 <<
	.uleb128 Ltmp31-Ltmp26                  ##   Call between Ltmp26 and Ltmp31
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin2            ## >> Call Site 6 <<
	.uleb128 Ltmp32-Ltmp31                  ##   Call between Ltmp31 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin2            ##     jumps to Ltmp33
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin2            ## >> Call Site 7 <<
	.uleb128 Ltmp16-Ltmp32                  ##   Call between Ltmp32 and Ltmp16
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin2            ## >> Call Site 8 <<
	.uleb128 Ltmp17-Ltmp16                  ##   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin2            ##     jumps to Ltmp18
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp28-Lfunc_begin2            ## >> Call Site 9 <<
	.uleb128 Ltmp29-Ltmp28                  ##   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin2            ##     jumps to Ltmp30
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin2            ## >> Call Site 10 <<
	.uleb128 Ltmp35-Ltmp34                  ##   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin2            ##     jumps to Ltmp36
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin2            ## >> Call Site 11 <<
	.uleb128 Ltmp19-Ltmp35                  ##   Call between Ltmp35 and Ltmp19
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin2            ## >> Call Site 12 <<
	.uleb128 Ltmp20-Ltmp19                  ##   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin2            ##     jumps to Ltmp21
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin2            ## >> Call Site 13 <<
	.uleb128 Ltmp23-Ltmp22                  ##   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin2            ##     jumps to Ltmp24
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp23-Lfunc_begin2            ## >> Call Site 14 <<
	.uleb128 Lfunc_end2-Ltmp23              ##   Call between Ltmp23 and Lfunc_end2
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end2:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE9push_backEOS1_ ## -- Begin function _ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE9push_backEOS1_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE9push_backEOS1_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE9push_backEOS1_: ## @_ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE9push_backEOS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	16(%rdi), %r13
	cmpq	24(%rdi), %r13
	jne	LBB9_20
## %bb.1:
	movq	(%r12), %rcx
	movq	8(%r12), %rbx
	movq	%rbx, %rax
	subq	%rcx, %rax
	jbe	LBB9_3
## %bb.2:
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r14
	incq	%r14
	shrq	%r14
	shlq	$3, %r14
	movq	%rbx, %rdi
	subq	%r14, %rdi
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movq	%rbx, %rsi
	callq	_memmove
	subq	%r14, %r13
	movq	%r13, 16(%r12)
	subq	%r14, 8(%r12)
	jmp	LBB9_20
LBB9_3:
	movq	%r15, -56(%rbp)                 ## 8-byte Spill
	movq	%r13, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rcx, -48(%rbp)                 ## 8-byte Spill
	cmpq	%rcx, %r13
	movl	$1, %r15d
	cmovneq	%rax, %r15
	movq	%r15, %rax
	shrq	$61, %rax
	jne	LBB9_21
## %bb.4:
	movq	%r15, %r14
	shrq	$2, %r14
	leaq	(,%r15,8), %rdi
	callq	__Znwm
	leaq	(%rax,%r14,8), %r11
	movq	%r13, %rcx
	subq	%rbx, %rcx
	leaq	(%rax,%r15,8), %r9
	movq	%r11, %rsi
	subq	%rbx, %r13
	movq	-56(%rbp), %r15                 ## 8-byte Reload
	je	LBB9_18
## %bb.5:
	andq	$-8, %rcx
	movq	%rcx, %rsi
	addq	%r11, %rsi
	addq	$-8, %r13
	cmpq	$104, %r13
	jae	LBB9_7
## %bb.6:
	movq	%r11, %rdx
	jmp	LBB9_17
LBB9_7:
	leaq	(%rax,%r14,8), %rcx
	subq	%rbx, %rcx
	cmpq	$32, %rcx
	jae	LBB9_9
## %bb.8:
	movq	%r11, %rdx
	jmp	LBB9_17
LBB9_9:
	shrq	$3, %r13
	incq	%r13
	movq	%r13, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r10
	shrq	$2, %r10
	incq	%r10
	testq	%rcx, %rcx
	je	LBB9_10
## %bb.11:
	shlq	$3, %r14
	movq	%r10, %rdi
	andq	$-2, %rdi
	leaq	(%r14,%rax), %rcx
	addq	$48, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB9_12:                                ## =>This Inner Loop Header: Depth=1
	movups	(%rbx,%rdx), %xmm0
	movups	16(%rbx,%rdx), %xmm1
	movups	%xmm0, -48(%rcx,%rdx)
	movups	%xmm1, -32(%rcx,%rdx)
	movups	32(%rbx,%rdx), %xmm0
	movups	48(%rbx,%rdx), %xmm1
	movups	%xmm0, -16(%rcx,%rdx)
	movups	%xmm1, (%rcx,%rdx)
	addq	$64, %rdx
	addq	$-2, %rdi
	jne	LBB9_12
	jmp	LBB9_13
LBB9_10:
	xorl	%edx, %edx
LBB9_13:
	testb	$1, %r10b
	je	LBB9_15
## %bb.14:
	movups	(%rbx,%rdx), %xmm0
	movups	16(%rbx,%rdx), %xmm1
	movups	%xmm0, (%r11,%rdx)
	movups	%xmm1, 16(%r11,%rdx)
LBB9_15:
	cmpq	%r8, %r13
	je	LBB9_18
## %bb.16:
	leaq	(%r11,%r8,8), %rdx
	leaq	(%rbx,%r8,8), %rbx
	.p2align	4, 0x90
LBB9_17:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	addq	$8, %rbx
	cmpq	%rsi, %rdx
	jne	LBB9_17
LBB9_18:
	movq	%rax, (%r12)
	movq	%r11, 8(%r12)
	movq	%rsi, 16(%r12)
	movq	%r9, 24(%r12)
	movq	%rsi, %r13
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB9_20
## %bb.19:
	callq	__ZdlPv
	movq	16(%r12), %r13
LBB9_20:
	movq	(%r15), %rax
	movq	%rax, (%r13)
	addq	$8, 16(%r12)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_21:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE10push_frontEOS1_ ## -- Begin function _ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE10push_frontEOS1_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE10push_frontEOS1_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE10push_frontEOS1_: ## @_ZNSt3__114__split_bufferIPbNS_9allocatorIS1_EEE10push_frontEOS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	8(%rdi), %r12
	cmpq	(%rdi), %r12
	je	LBB10_2
## %bb.1:
	movq	%r12, %r13
	jmp	LBB10_21
LBB10_2:
	movq	%rbx, -48(%rbp)                 ## 8-byte Spill
	movq	16(%r15), %rdx
	movq	24(%r15), %rax
	cmpq	%rax, %rdx
	jae	LBB10_6
## %bb.3:
	subq	%rdx, %rax
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r14
	incq	%r14
	sarq	%r14
	leaq	(%rdx,%r14,8), %r13
	subq	%r12, %rdx
	je	LBB10_5
## %bb.4:
	subq	%rdx, %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_memmove
	movq	16(%r15), %r12
LBB10_5:
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	movq	%r13, 8(%r15)
	leaq	(%r12,%r14,8), %rax
	movq	%rax, 16(%r15)
	jmp	LBB10_21
LBB10_6:
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	movq	%rax, %rcx
	subq	%r12, %rcx
	sarq	$2, %rcx
	cmpq	%r12, %rax
	movl	$1, %r14d
	cmovneq	%rcx, %r14
	movq	%r14, %rax
	shrq	$61, %rax
	jne	LBB10_22
## %bb.7:
	leaq	3(%r14), %rbx
	shrq	$2, %rbx
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rbx, %r11
	leaq	(%rax,%rbx,8), %r13
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %rcx
	subq	%r12, %rcx
	leaq	(%rax,%r14,8), %r9
	movq	%r13, %rdx
	subq	%r12, %rbx
	je	LBB10_19
## %bb.8:
	andq	$-8, %rcx
	movq	%rcx, %rdx
	addq	%r13, %rdx
	addq	$-8, %rbx
	movq	%r13, %rsi
	movq	%r12, %rcx
	cmpq	$104, %rbx
	jb	LBB10_18
## %bb.9:
	leaq	(%rax,%r11,8), %rdi
	subq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	cmpq	$32, %rdi
	jb	LBB10_18
## %bb.10:
	shrq	$3, %rbx
	incq	%rbx
	movq	%rbx, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r10
	shrq	$2, %r10
	incq	%r10
	testq	%rcx, %rcx
	je	LBB10_11
## %bb.12:
	shlq	$3, %r11
	movq	%r10, %rdi
	andq	$-2, %rdi
	leaq	(%r11,%rax), %rcx
	addq	$48, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB10_13:                               ## =>This Inner Loop Header: Depth=1
	movups	(%r12,%rsi), %xmm0
	movups	16(%r12,%rsi), %xmm1
	movups	%xmm0, -48(%rcx,%rsi)
	movups	%xmm1, -32(%rcx,%rsi)
	movups	32(%r12,%rsi), %xmm0
	movups	48(%r12,%rsi), %xmm1
	movups	%xmm0, -16(%rcx,%rsi)
	movups	%xmm1, (%rcx,%rsi)
	addq	$64, %rsi
	addq	$-2, %rdi
	jne	LBB10_13
	jmp	LBB10_14
LBB10_11:
	xorl	%esi, %esi
LBB10_14:
	testb	$1, %r10b
	je	LBB10_16
## %bb.15:
	movups	(%r12,%rsi), %xmm0
	movups	16(%r12,%rsi), %xmm1
	movups	%xmm0, (%r13,%rsi)
	movups	%xmm1, 16(%r13,%rsi)
LBB10_16:
	cmpq	%r8, %rbx
	je	LBB10_19
## %bb.17:
	leaq	(,%r8,8), %rsi
	addq	%r13, %rsi
	leaq	(%r12,%r8,8), %rcx
	.p2align	4, 0x90
LBB10_18:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rdi
	movq	%rdi, (%rsi)
	addq	$8, %rsi
	addq	$8, %rcx
	cmpq	%rdx, %rsi
	jne	LBB10_18
LBB10_19:
	movq	%rax, (%r15)
	movq	%r13, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%r9, 24(%r15)
	testq	%r12, %r12
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	je	LBB10_21
## %bb.20:
	movq	%r12, %rdi
	callq	__ZdlPv
	movq	8(%r15), %r13
LBB10_21:
	movq	(%rbx), %rax
	movq	%rax, -8(%r13)
	addq	$-8, 8(%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB10_22:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB6v15003v ## -- Begin function _ZSt28__throw_bad_array_new_lengthB6v15003v
	.globl	__ZSt28__throw_bad_array_new_lengthB6v15003v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB6v15003v
	.p2align	4, 0x90
__ZSt28__throw_bad_array_new_lengthB6v15003v: ## @_ZSt28__throw_bad_array_new_lengthB6v15003v
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	__ZNSt20bad_array_new_lengthC1Ev
	movq	__ZTISt20bad_array_new_length@GOTPCREL(%rip), %rsi
	movq	__ZNSt20bad_array_new_lengthD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv ## -- Begin function _ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv
	.weak_def_can_be_hidden	__ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv
	.p2align	4, 0x90
__ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv: ## @_ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	cmpq	$1024, %rax                     ## imm = 0x400
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	jb	LBB12_22
## %bb.1:
	addq	$-1024, %rax                    ## imm = 0xFC00
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %r13
	movq	16(%rbx), %r12
	movq	(%r13), %r14
	leaq	8(%r13), %r15
	movq	%r15, 8(%rbx)
	cmpq	24(%rbx), %r12
	jne	LBB12_21
## %bb.2:
	movq	(%rbx), %rcx
	movq	%r15, %rax
	subq	%rcx, %rax
	jbe	LBB12_4
LBB12_3:
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	movq	%r14, %rbx
	leaq	(%rax,%rcx), %r14
	incq	%r14
	shrq	%r14
	shlq	$3, %r14
	movq	%r15, %rdi
	subq	%r14, %rdi
	movq	%r12, %rdx
	subq	%r15, %rdx
	movq	%r15, %rsi
	callq	_memmove
	subq	%r14, %r12
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movq	%r12, 16(%rax)
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	subq	%r14, 8(%rax)
	movq	%rbx, %r14
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	jmp	LBB12_21
LBB12_22:
	movq	16(%rbx), %rdi
	movq	(%rbx), %r8
	movq	8(%rbx), %rax
	movq	%rbx, %rcx
	movq	%rdi, %r14
	subq	%rax, %r14
	movq	%r14, %rbx
	sarq	$3, %rbx
	movq	24(%rcx), %rdx
	movq	%rdx, %rcx
	subq	%r8, %rcx
	movq	%rcx, %rsi
	sarq	$3, %rsi
	cmpq	%rsi, %rbx
	jae	LBB12_43
## %bb.23:
	cmpq	%rdi, %rdx
	je	LBB12_26
## %bb.24:
	movl	$4096, %edi                     ## imm = 0x1000
	callq	__Znwm
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_
	jmp	LBB12_25
LBB12_43:
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	sarq	$2, %rcx
	cmpq	%r8, %rdx
	movl	$1, %r13d
	cmovneq	%rcx, %r13
	movq	%r13, %rax
	shrq	$61, %rax
	jne	LBB12_88
## %bb.44:
	leaq	(,%r13,8), %rdi
	callq	__Znwm
	movq	%rax, %r15
Ltmp37:
	movl	$4096, %edi                     ## imm = 0x1000
	callq	__Znwm
Ltmp38:
## %bb.45:
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	leaq	(%r15,%rbx,8), %r12
	leaq	(%r15,%r13,8), %r8
	cmpq	%r13, %rbx
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	movq	%r15, %rax
	jne	LBB12_46
## %bb.47:
	movq	%rax, %r15
	testq	%r14, %r14
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	jle	LBB12_49
## %bb.48:
	leaq	1(%rbx), %rax
	shrq	$63, %rax
	addq	%rbx, %rax
	incq	%rax
	shlq	$2, %rax
	andq	$-8, %rax
	subq	%rax, %r12
	movq	%r15, %rax
	jmp	LBB12_54
LBB12_46:
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	jmp	LBB12_54
LBB12_4:
	movq	%r14, -48(%rbp)                 ## 8-byte Spill
	movq	%r12, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rcx, -64(%rbp)                 ## 8-byte Spill
	cmpq	%rcx, %r12
	movl	$1, %ebx
	cmovneq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	LBB12_88
## %bb.5:
	movq	%rbx, %r14
	shrq	$2, %r14
	leaq	(,%rbx,8), %rdi
	callq	__Znwm
	leaq	(%rax,%r14,8), %r11
	movq	%r12, %rcx
	subq	%r15, %rcx
	leaq	(%rax,%rbx,8), %r9
	movq	%r11, %rsi
	subq	%r15, %r12
	je	LBB12_19
## %bb.6:
	andq	$-8, %rcx
	movq	%rcx, %rsi
	addq	%r11, %rsi
	addq	$-8, %r12
	cmpq	$104, %r12
	jae	LBB12_8
## %bb.7:
	movq	%r11, %rdx
	jmp	LBB12_18
LBB12_26:
	movl	$4096, %edi                     ## imm = 0x1000
	callq	__Znwm
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rsi
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %rdi
	callq	__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_
	movq	8(%rbx), %r13
	movq	16(%rbx), %r12
	movq	(%r13), %r14
	leaq	8(%r13), %r15
	movq	%r15, 8(%rbx)
	cmpq	24(%rbx), %r12
	jne	LBB12_21
## %bb.27:
	movq	(%rbx), %rcx
	movq	%r15, %rax
	subq	%rcx, %rax
	ja	LBB12_3
## %bb.28:
	movq	%r14, -48(%rbp)                 ## 8-byte Spill
	movq	%r12, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rcx, -64(%rbp)                 ## 8-byte Spill
	cmpq	%rcx, %r12
	movl	$1, %ebx
	cmovneq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	LBB12_88
## %bb.29:
	movq	%rbx, %r14
	shrq	$2, %r14
	leaq	(,%rbx,8), %rdi
	callq	__Znwm
	leaq	(%rax,%r14,8), %r11
	movq	%r12, %rcx
	subq	%r15, %rcx
	leaq	(%rax,%rbx,8), %r9
	movq	%r11, %rsi
	subq	%r15, %r12
	je	LBB12_19
## %bb.30:
	andq	$-8, %rcx
	movq	%rcx, %rsi
	addq	%r11, %rsi
	addq	$-8, %r12
	cmpq	$104, %r12
	jae	LBB12_32
## %bb.31:
	movq	%r11, %rdx
	jmp	LBB12_42
LBB12_49:
	sarq	$2, %r14
	cmpq	%rcx, %rsi
	movl	$1, %ebx
	cmovneq	%r14, %rbx
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB12_50
## %bb.52:
	leaq	(,%rbx,8), %rdi
Ltmp40:
	callq	__Znwm
Ltmp41:
## %bb.53:
	movq	%rax, %r14
	movq	%rbx, %rax
	andq	$-4, %rax
	leaq	(%r14,%rax,2), %r12
	leaq	(%r14,%rbx,8), %rbx
	movq	%r15, %rdi
	callq	__ZdlPv
	movq	%rbx, %r8
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	16(%rax), %rsi
	movq	%r14, %rax
LBB12_54:
	movq	-80(%rbp), %rdx                 ## 8-byte Reload
	movq	%rdx, (%r12)
	leaq	8(%r12), %r13
	cmpq	%rcx, %rsi
	je	LBB12_55
## %bb.59:
	movq	-56(%rbp), %r14                 ## 8-byte Reload
	jmp	LBB12_60
	.p2align	4, 0x90
LBB12_61:                               ##   in Loop: Header=BB12_60 Depth=1
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	%r12, %rbx
	movq	%r13, %r15
LBB12_82:                               ##   in Loop: Header=BB12_60 Depth=1
	addq	$-8, %rsi
	movq	(%rsi), %rax
	movq	%rax, -8(%rbx)
	addq	$-8, %rbx
	movq	%r15, %r13
	movq	%rbx, %r12
	cmpq	8(%r14), %rsi
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	je	LBB12_56
LBB12_60:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_75 Depth 2
                                        ##     Child Loop BB12_80 Depth 2
	cmpq	%rax, %r12
	jne	LBB12_61
## %bb.62:                              ##   in Loop: Header=BB12_60 Depth=1
	cmpq	%r8, %r13
	jae	LBB12_66
## %bb.63:                              ##   in Loop: Header=BB12_60 Depth=1
	movq	%r8, %rax
	subq	%r13, %rax
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rcx, %rax
	incq	%rax
	andq	$-2, %rax
	leaq	(,%rax,4), %r15
	addq	%r13, %r15
	movq	%r15, %rbx
	subq	%r12, %r13
	je	LBB12_65
## %bb.64:                              ##   in Loop: Header=BB12_60 Depth=1
	movq	%r15, %rbx
	subq	%r13, %rbx
	movq	%rsi, -64(%rbp)                 ## 8-byte Spill
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r8, -48(%rbp)                  ## 8-byte Spill
	movq	%r13, %rdx
	callq	_memmove
	movq	-48(%rbp), %r8                  ## 8-byte Reload
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
LBB12_65:                               ##   in Loop: Header=BB12_60 Depth=1
	movq	%r12, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB12_82
LBB12_66:                               ##   in Loop: Header=BB12_60 Depth=1
	movq	%rsi, -64(%rbp)                 ## 8-byte Spill
	movq	%r8, %r14
	subq	%r12, %r14
	sarq	$2, %r14
	cmpq	%r12, %r8
	movl	$1, %eax
	cmoveq	%rax, %r14
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r14
	ja	LBB12_67
## %bb.68:                              ##   in Loop: Header=BB12_60 Depth=1
	leaq	(,%r14,8), %rdi
Ltmp45:
	callq	__Znwm
Ltmp46:
## %bb.69:                              ##   in Loop: Header=BB12_60 Depth=1
	leaq	3(%r14), %rcx
	shrq	$2, %rcx
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	leaq	(%rax,%rcx,8), %rbx
	movq	%r13, %rax
	subq	%r12, %rax
	movq	%rbx, %r15
	subq	%r12, %r13
	je	LBB12_81
## %bb.70:                              ##   in Loop: Header=BB12_60 Depth=1
	andq	$-8, %rax
	movq	%rax, %r15
	addq	%rbx, %r15
	addq	$-8, %r13
	movq	%rbx, %rdx
	movq	%r12, %rax
	cmpq	$104, %r13
	jb	LBB12_80
## %bb.71:                              ##   in Loop: Header=BB12_60 Depth=1
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	leaq	(%rax,%rcx,8), %rsi
	subq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rax
	cmpq	$32, %rsi
	jb	LBB12_80
## %bb.72:                              ##   in Loop: Header=BB12_60 Depth=1
	shrq	$3, %r13
	incq	%r13
	movq	%r13, %rax
	andq	$-4, %rax
	leaq	-4(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	incq	%rdx
	testq	%rsi, %rsi
	je	LBB12_73
## %bb.74:                              ##   in Loop: Header=BB12_60 Depth=1
	shlq	$3, %rcx
	movq	%rdx, %rsi
	andq	$-2, %rsi
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	addq	%rcx, %rdi
	addq	$48, %rdi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB12_75:                               ##   Parent Loop BB12_60 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movups	(%r12,%rcx,8), %xmm0
	movups	16(%r12,%rcx,8), %xmm1
	movups	%xmm0, -48(%rdi,%rcx,8)
	movups	%xmm1, -32(%rdi,%rcx,8)
	movups	32(%r12,%rcx,8), %xmm0
	movups	48(%r12,%rcx,8), %xmm1
	movups	%xmm0, -16(%rdi,%rcx,8)
	movups	%xmm1, (%rdi,%rcx,8)
	addq	$8, %rcx
	addq	$-2, %rsi
	jne	LBB12_75
## %bb.76:                              ##   in Loop: Header=BB12_60 Depth=1
	testb	$1, %dl
	je	LBB12_78
LBB12_77:                               ##   in Loop: Header=BB12_60 Depth=1
	movups	(%r12,%rcx,8), %xmm0
	movups	16(%r12,%rcx,8), %xmm1
	movups	%xmm0, (%rbx,%rcx,8)
	movups	%xmm1, 16(%rbx,%rcx,8)
LBB12_78:                               ##   in Loop: Header=BB12_60 Depth=1
	cmpq	%rax, %r13
	je	LBB12_81
## %bb.79:                              ##   in Loop: Header=BB12_60 Depth=1
	leaq	(%rbx,%rax,8), %rdx
	leaq	(%r12,%rax,8), %rax
	.p2align	4, 0x90
LBB12_80:                               ##   Parent Loop BB12_60 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	addq	$8, %rax
	cmpq	%r15, %rdx
	jne	LBB12_80
LBB12_81:                               ##   in Loop: Header=BB12_60 Depth=1
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	leaq	(%rax,%r14,8), %r14
	movq	%r12, %rdi
	callq	__ZdlPv
	movq	%r14, %r8
	movq	-56(%rbp), %r14                 ## 8-byte Reload
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	jmp	LBB12_82
LBB12_73:                               ##   in Loop: Header=BB12_60 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %dl
	jne	LBB12_77
	jmp	LBB12_78
LBB12_55:
	movq	%r12, %rbx
	movq	%r13, %r15
	movq	-56(%rbp), %r14                 ## 8-byte Reload
LBB12_56:
	movq	(%r14), %rdi
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	%r15, 16(%r14)
	movq	%r8, 24(%r14)
	testq	%rdi, %rdi
	je	LBB12_25
## %bb.57:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                         ## TAILCALL
LBB12_8:
	leaq	(%rax,%r14,8), %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jae	LBB12_10
## %bb.9:
	movq	%r11, %rdx
	jmp	LBB12_18
LBB12_10:
	shrq	$3, %r12
	incq	%r12
	movq	%r12, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r10
	shrq	$2, %r10
	incq	%r10
	testq	%rcx, %rcx
	je	LBB12_11
## %bb.12:
	shlq	$3, %r14
	movq	%r10, %rdi
	andq	$-2, %rdi
	leaq	(%r14,%rax), %rcx
	addq	$48, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB12_13:                               ## =>This Inner Loop Header: Depth=1
	movups	8(%r13,%rdx), %xmm0
	movups	24(%r13,%rdx), %xmm1
	movups	%xmm0, -48(%rcx,%rdx)
	movups	%xmm1, -32(%rcx,%rdx)
	movups	40(%r13,%rdx), %xmm0
	movups	56(%r13,%rdx), %xmm1
	movups	%xmm0, -16(%rcx,%rdx)
	movups	%xmm1, (%rcx,%rdx)
	addq	$64, %rdx
	addq	$-2, %rdi
	jne	LBB12_13
	jmp	LBB12_14
LBB12_32:
	leaq	(%rax,%r14,8), %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jae	LBB12_34
## %bb.33:
	movq	%r11, %rdx
	jmp	LBB12_42
LBB12_11:
	xorl	%edx, %edx
LBB12_14:
	testb	$1, %r10b
	je	LBB12_16
## %bb.15:
	movups	(%r15,%rdx), %xmm0
	movups	16(%r15,%rdx), %xmm1
	movups	%xmm0, (%r11,%rdx)
	movups	%xmm1, 16(%r11,%rdx)
LBB12_16:
	cmpq	%r8, %r12
	je	LBB12_19
## %bb.17:
	leaq	(%r11,%r8,8), %rdx
	leaq	(%r15,%r8,8), %r15
	.p2align	4, 0x90
LBB12_18:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15), %rcx
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	addq	$8, %r15
	cmpq	%rsi, %rdx
	jne	LBB12_18
LBB12_19:
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	movq	%rax, (%rbx)
	movq	%r11, 8(%rbx)
	movq	%rsi, 16(%rbx)
	movq	%r9, 24(%rbx)
	movq	%rsi, %r12
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	movq	-48(%rbp), %r14                 ## 8-byte Reload
	je	LBB12_21
## %bb.20:
	callq	__ZdlPv
	movq	16(%rbx), %r12
LBB12_21:
	movq	%r14, (%r12)
	addq	$8, 16(%rbx)
LBB12_25:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB12_34:
	shrq	$3, %r12
	incq	%r12
	movq	%r12, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r10
	shrq	$2, %r10
	incq	%r10
	testq	%rcx, %rcx
	je	LBB12_35
## %bb.36:
	shlq	$3, %r14
	movq	%r10, %rdi
	andq	$-2, %rdi
	leaq	(%r14,%rax), %rcx
	addq	$48, %rcx
	xorl	%edx, %edx
LBB12_37:                               ## =>This Inner Loop Header: Depth=1
	movups	8(%r13,%rdx), %xmm0
	movups	24(%r13,%rdx), %xmm1
	movups	%xmm0, -48(%rcx,%rdx)
	movups	%xmm1, -32(%rcx,%rdx)
	movups	40(%r13,%rdx), %xmm0
	movups	56(%r13,%rdx), %xmm1
	movups	%xmm0, -16(%rcx,%rdx)
	movups	%xmm1, (%rcx,%rdx)
	addq	$64, %rdx
	addq	$-2, %rdi
	jne	LBB12_37
	jmp	LBB12_38
LBB12_35:
	xorl	%edx, %edx
LBB12_38:
	testb	$1, %r10b
	je	LBB12_40
## %bb.39:
	movups	(%r15,%rdx), %xmm0
	movups	16(%r15,%rdx), %xmm1
	movups	%xmm0, (%r11,%rdx)
	movups	%xmm1, 16(%r11,%rdx)
LBB12_40:
	cmpq	%r8, %r12
	je	LBB12_19
## %bb.41:
	leaq	(%r11,%r8,8), %rdx
	leaq	(%r15,%r8,8), %r15
	.p2align	4, 0x90
LBB12_42:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15), %rcx
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	addq	$8, %r15
	cmpq	%rsi, %rdx
	jne	LBB12_42
	jmp	LBB12_19
LBB12_67:
Ltmp48:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
Ltmp49:
	jmp	LBB12_51
LBB12_88:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
LBB12_50:
Ltmp42:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
Ltmp43:
LBB12_51:
	ud2
LBB12_83:
Ltmp44:
	movq	%rax, %r14
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZdlPv
	jmp	LBB12_87
LBB12_58:
Ltmp39:
	movq	%rax, %r14
	jmp	LBB12_87
LBB12_85:
Ltmp50:
	jmp	LBB12_86
LBB12_84:
Ltmp47:
LBB12_86:
	movq	%rax, %r14
	movq	%r12, %r15
LBB12_87:
	movq	%r15, %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table12:
Lexception3:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.uleb128 Ltmp37-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp37
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin3            ## >> Call Site 2 <<
	.uleb128 Ltmp38-Ltmp37                  ##   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin3            ##     jumps to Ltmp39
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin3            ## >> Call Site 3 <<
	.uleb128 Ltmp40-Ltmp38                  ##   Call between Ltmp38 and Ltmp40
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin3            ## >> Call Site 4 <<
	.uleb128 Ltmp41-Ltmp40                  ##   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp44-Lfunc_begin3            ##     jumps to Ltmp44
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin3            ## >> Call Site 5 <<
	.uleb128 Ltmp45-Ltmp41                  ##   Call between Ltmp41 and Ltmp45
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin3            ## >> Call Site 6 <<
	.uleb128 Ltmp46-Ltmp45                  ##   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin3            ##     jumps to Ltmp47
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin3            ## >> Call Site 7 <<
	.uleb128 Ltmp49-Ltmp48                  ##   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin3            ##     jumps to Ltmp50
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin3            ## >> Call Site 8 <<
	.uleb128 Ltmp42-Ltmp49                  ##   Call between Ltmp49 and Ltmp42
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin3            ## >> Call Site 9 <<
	.uleb128 Ltmp43-Ltmp42                  ##   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin3            ##     jumps to Ltmp44
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin3            ## >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp43              ##   Call between Ltmp43 and Lfunc_end3
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_ ## -- Begin function _ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_: ## @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	16(%rdi), %r13
	cmpq	24(%rdi), %r13
	jne	LBB13_20
## %bb.1:
	movq	(%r12), %rcx
	movq	8(%r12), %rbx
	movq	%rbx, %rax
	subq	%rcx, %rax
	jbe	LBB13_3
## %bb.2:
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r14
	incq	%r14
	shrq	%r14
	shlq	$3, %r14
	movq	%rbx, %rdi
	subq	%r14, %rdi
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movq	%rbx, %rsi
	callq	_memmove
	subq	%r14, %r13
	movq	%r13, 16(%r12)
	subq	%r14, 8(%r12)
	jmp	LBB13_20
LBB13_3:
	movq	%r15, -56(%rbp)                 ## 8-byte Spill
	movq	%r13, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rcx, -48(%rbp)                 ## 8-byte Spill
	cmpq	%rcx, %r13
	movl	$1, %r15d
	cmovneq	%rax, %r15
	movq	%r15, %rax
	shrq	$61, %rax
	jne	LBB13_21
## %bb.4:
	movq	%r15, %r14
	shrq	$2, %r14
	leaq	(,%r15,8), %rdi
	callq	__Znwm
	leaq	(%rax,%r14,8), %r11
	movq	%r13, %rcx
	subq	%rbx, %rcx
	leaq	(%rax,%r15,8), %r9
	movq	%r11, %rsi
	subq	%rbx, %r13
	movq	-56(%rbp), %r15                 ## 8-byte Reload
	je	LBB13_18
## %bb.5:
	andq	$-8, %rcx
	movq	%rcx, %rsi
	addq	%r11, %rsi
	addq	$-8, %r13
	cmpq	$104, %r13
	jae	LBB13_7
## %bb.6:
	movq	%r11, %rdx
	jmp	LBB13_17
LBB13_7:
	leaq	(%rax,%r14,8), %rcx
	subq	%rbx, %rcx
	cmpq	$32, %rcx
	jae	LBB13_9
## %bb.8:
	movq	%r11, %rdx
	jmp	LBB13_17
LBB13_9:
	shrq	$3, %r13
	incq	%r13
	movq	%r13, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r10
	shrq	$2, %r10
	incq	%r10
	testq	%rcx, %rcx
	je	LBB13_10
## %bb.11:
	shlq	$3, %r14
	movq	%r10, %rdi
	andq	$-2, %rdi
	leaq	(%r14,%rax), %rcx
	addq	$48, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB13_12:                               ## =>This Inner Loop Header: Depth=1
	movups	(%rbx,%rdx), %xmm0
	movups	16(%rbx,%rdx), %xmm1
	movups	%xmm0, -48(%rcx,%rdx)
	movups	%xmm1, -32(%rcx,%rdx)
	movups	32(%rbx,%rdx), %xmm0
	movups	48(%rbx,%rdx), %xmm1
	movups	%xmm0, -16(%rcx,%rdx)
	movups	%xmm1, (%rcx,%rdx)
	addq	$64, %rdx
	addq	$-2, %rdi
	jne	LBB13_12
	jmp	LBB13_13
LBB13_10:
	xorl	%edx, %edx
LBB13_13:
	testb	$1, %r10b
	je	LBB13_15
## %bb.14:
	movups	(%rbx,%rdx), %xmm0
	movups	16(%rbx,%rdx), %xmm1
	movups	%xmm0, (%r11,%rdx)
	movups	%xmm1, 16(%r11,%rdx)
LBB13_15:
	cmpq	%r8, %r13
	je	LBB13_18
## %bb.16:
	leaq	(%r11,%r8,8), %rdx
	leaq	(%rbx,%r8,8), %rbx
	.p2align	4, 0x90
LBB13_17:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	addq	$8, %rbx
	cmpq	%rsi, %rdx
	jne	LBB13_17
LBB13_18:
	movq	%rax, (%r12)
	movq	%r11, 8(%r12)
	movq	%rsi, 16(%r12)
	movq	%r9, 24(%r12)
	movq	%rsi, %r13
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB13_20
## %bb.19:
	callq	__ZdlPv
	movq	16(%r12), %r13
LBB13_20:
	movq	(%r15), %rax
	movq	%rax, (%r13)
	addq	$8, 16(%r12)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_21:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_ ## -- Begin function _ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_: ## @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	8(%rdi), %r12
	cmpq	(%rdi), %r12
	je	LBB14_2
## %bb.1:
	movq	%r12, %r13
	jmp	LBB14_21
LBB14_2:
	movq	%rbx, -48(%rbp)                 ## 8-byte Spill
	movq	16(%r15), %rdx
	movq	24(%r15), %rax
	cmpq	%rax, %rdx
	jae	LBB14_6
## %bb.3:
	subq	%rdx, %rax
	sarq	$3, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %r14
	incq	%r14
	sarq	%r14
	leaq	(%rdx,%r14,8), %r13
	subq	%r12, %rdx
	je	LBB14_5
## %bb.4:
	subq	%rdx, %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_memmove
	movq	16(%r15), %r12
LBB14_5:
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	movq	%r13, 8(%r15)
	leaq	(%r12,%r14,8), %rax
	movq	%rax, 16(%r15)
	jmp	LBB14_21
LBB14_6:
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	movq	%rax, %rcx
	subq	%r12, %rcx
	sarq	$2, %rcx
	cmpq	%r12, %rax
	movl	$1, %r14d
	cmovneq	%rcx, %r14
	movq	%r14, %rax
	shrq	$61, %rax
	jne	LBB14_22
## %bb.7:
	leaq	3(%r14), %rbx
	shrq	$2, %rbx
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rbx, %r11
	leaq	(%rax,%rbx,8), %r13
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %rcx
	subq	%r12, %rcx
	leaq	(%rax,%r14,8), %r9
	movq	%r13, %rdx
	subq	%r12, %rbx
	je	LBB14_19
## %bb.8:
	andq	$-8, %rcx
	movq	%rcx, %rdx
	addq	%r13, %rdx
	addq	$-8, %rbx
	movq	%r13, %rsi
	movq	%r12, %rcx
	cmpq	$104, %rbx
	jb	LBB14_18
## %bb.9:
	leaq	(%rax,%r11,8), %rdi
	subq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	cmpq	$32, %rdi
	jb	LBB14_18
## %bb.10:
	shrq	$3, %rbx
	incq	%rbx
	movq	%rbx, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r10
	shrq	$2, %r10
	incq	%r10
	testq	%rcx, %rcx
	je	LBB14_11
## %bb.12:
	shlq	$3, %r11
	movq	%r10, %rdi
	andq	$-2, %rdi
	leaq	(%r11,%rax), %rcx
	addq	$48, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB14_13:                               ## =>This Inner Loop Header: Depth=1
	movups	(%r12,%rsi), %xmm0
	movups	16(%r12,%rsi), %xmm1
	movups	%xmm0, -48(%rcx,%rsi)
	movups	%xmm1, -32(%rcx,%rsi)
	movups	32(%r12,%rsi), %xmm0
	movups	48(%r12,%rsi), %xmm1
	movups	%xmm0, -16(%rcx,%rsi)
	movups	%xmm1, (%rcx,%rsi)
	addq	$64, %rsi
	addq	$-2, %rdi
	jne	LBB14_13
	jmp	LBB14_14
LBB14_11:
	xorl	%esi, %esi
LBB14_14:
	testb	$1, %r10b
	je	LBB14_16
## %bb.15:
	movups	(%r12,%rsi), %xmm0
	movups	16(%r12,%rsi), %xmm1
	movups	%xmm0, (%r13,%rsi)
	movups	%xmm1, 16(%r13,%rsi)
LBB14_16:
	cmpq	%r8, %rbx
	je	LBB14_19
## %bb.17:
	leaq	(,%r8,8), %rsi
	addq	%r13, %rsi
	leaq	(%r12,%r8,8), %rcx
	.p2align	4, 0x90
LBB14_18:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rdi
	movq	%rdi, (%rsi)
	addq	$8, %rsi
	addq	$8, %rcx
	cmpq	%rdx, %rsi
	jne	LBB14_18
LBB14_19:
	movq	%rax, (%r15)
	movq	%r13, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%r9, 24(%r15)
	testq	%r12, %r12
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	je	LBB14_21
## %bb.20:
	movq	%r12, %rdi
	callq	__ZdlPv
	movq	8(%r15), %r13
LBB14_21:
	movq	(%rbx), %rax
	movq	%rax, -8(%r13)
	addq	$-8, 8(%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB14_22:
	callq	__ZSt28__throw_bad_array_new_lengthB6v15003v
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_fact                           ## @fact
	.p2align	3
_fact:
	.quad	__Z13factorialIteriii
	.long	1                               ## 0x1
	.long	1                               ## 0x1

.subsections_via_symbols
