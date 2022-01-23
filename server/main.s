	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"Parameters Error."
.LC1:
	.string	"-port"
.LC2:
	.string	"-root"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$21, -128(%rbp)
	movq	$1886221359, -112(%rbp)
	leaq	-104(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	cmpl	$1, -132(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L12
.L2:
	cmpl	$3, -132(%rbp)
	je	.L4
	cmpl	$5, -132(%rbp)
	je	.L4
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.L4:
	cmpl	$3, -132(%rbp)
	jne	.L5
	movq	-144(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	movq	-144(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	atoi
	movl	%eax, -128(%rbp)
	jmp	.L5
.L6:
	movq	-144(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	movq	-144(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
.L5:
	cmpl	$5, -132(%rbp)
	jne	.L7
	movl	$0, -124(%rbp)
	jmp	.L8
.L11:
	movl	-124(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	movl	-124(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	atoi
	movl	%eax, -128(%rbp)
	jmp	.L10
.L9:
	movl	-124(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	movl	-124(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
.L10:
	addl	$1, -124(%rbp)
.L8:
	cmpl	$1, -124(%rbp)
	jle	.L11
.L7:
	movl	$120, %edi
	call	malloc
	movq	%rax, -120(%rbp)
	leaq	-112(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	init_server
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	run_server
	movl	$0, %eax
.L12:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L13
	call	__stack_chk_fail
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
