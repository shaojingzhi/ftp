	.file	"api.c"
	.text
	.globl	send_response
	.type	send_response, @function
send_response:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -8(%rbp)
	jmp	.L2
.L5:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	write
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L8
	movl	-4(%rbp), %eax
	addl	%eax, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L5
	movl	$0, %eax
	jmp	.L1
.L8:
	nop
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	send_response, .-send_response
	.globl	parse_port
	.type	parse_port, @function
parse_port:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -36(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L10
.L13:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L11
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	atoi
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -48(%rbp)
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, -52(%rbp)
	jmp	.L12
.L11:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-52(%rbp), %eax
	cltq
	movb	%dl, -32(%rbp,%rax)
	addl	$1, -52(%rbp)
.L12:
	addl	$1, -44(%rbp)
.L10:
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L13
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	atoi
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	movl	$0, -40(%rbp)
	jmp	.L14
.L15:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -40(%rbp)
.L14:
	cmpl	$3, -40(%rbp)
	jle	.L15
	movzbl	-12(%rbp), %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-11(%rbp), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L17
	call	__stack_chk_fail
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	parse_port, .-parse_port
	.globl	parse_dir
	.type	parse_dir, @function
parse_dir:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L19
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	jmp	.L22
.L19:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$1, %rax
	jbe	.L21
	movq	-24(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
.L21:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L22:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	parse_dir, .-parse_dir
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
