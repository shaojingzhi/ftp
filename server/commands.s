	.file	"commands.c"
	.globl	message_unknown
	.section	.rodata
.LC0:
	.string	"500 unknown command.\r\n"
	.align 8
	.type	message_unknown, @object
	.size	message_unknown, 8
message_unknown:
	.quad	.LC0
	.globl	message_requirepassword
	.align 8
.LC1:
	.string	"331 Guest login ok, send your complete e-mail address as password.\r\n"
	.align 8
	.type	message_requirepassword, @object
	.size	message_requirepassword, 8
message_requirepassword:
	.quad	.LC1
	.globl	message_haslogin
.LC2:
	.string	"530 has login.\r\n"
	.align 8
	.type	message_haslogin, @object
	.size	message_haslogin, 8
message_haslogin:
	.quad	.LC2
	.globl	message_loginsuccess
.LC3:
	.string	"230 Guest login ok.\r\n"
	.align 8
	.type	message_loginsuccess, @object
	.size	message_loginsuccess, 8
message_loginsuccess:
	.quad	.LC3
	.globl	message_loginfail
.LC4:
	.string	"530 Fail to login.\r\n"
	.align 8
	.type	message_loginfail, @object
	.size	message_loginfail, 8
message_loginfail:
	.quad	.LC4
	.globl	message_needusername
.LC5:
	.string	"530 Need username.\r\n"
	.align 8
	.type	message_needusername, @object
	.size	message_needusername, 8
message_needusername:
	.quad	.LC5
	.globl	message_requirelogin
.LC6:
	.string	"530 Please login.\r\n"
	.align 8
	.type	message_requirelogin, @object
	.size	message_requirelogin, 8
message_requirelogin:
	.quad	.LC6
	.globl	message_sys
.LC7:
	.string	"215 UNIX Type: L8\r\n"
	.align 8
	.type	message_sys, @object
	.size	message_sys, 8
message_sys:
	.quad	.LC7
	.globl	message_typeI
.LC8:
	.string	"200 Type set to I.\r\n"
	.align 8
	.type	message_typeI, @object
	.size	message_typeI, 8
message_typeI:
	.quad	.LC8
	.globl	message_typeA
.LC9:
	.string	"200 Type set to A.\r\n"
	.align 8
	.type	message_typeA, @object
	.size	message_typeA, 8
message_typeA:
	.quad	.LC9
	.globl	message_unsupported
.LC10:
	.string	"502 Type not supported.\r\n"
	.align 8
	.type	message_unsupported, @object
	.size	message_unsupported, 8
message_unsupported:
	.quad	.LC10
	.globl	message_port
	.align 8
.LC11:
	.string	"200 PORT command successful.\r\n"
	.align 8
	.type	message_port, @object
	.size	message_port, 8
message_port:
	.quad	.LC11
	.globl	message_modeundefined
.LC12:
	.string	"503 Mode undefined.\r\n"
	.align 8
	.type	message_modeundefined, @object
	.size	message_modeundefined, 8
message_modeundefined:
	.quad	.LC12
	.globl	message_221
.LC13:
	.string	"221 Goodbye.\r\n"
	.align 8
	.type	message_221, @object
	.size	message_221, 8
message_221:
	.quad	.LC13
	.globl	message_mkfail
	.align 8
.LC14:
	.string	"550 Fail to create directory.\r\n"
	.align 8
	.type	message_mkfail, @object
	.size	message_mkfail, 8
message_mkfail:
	.quad	.LC14
	.globl	message_rmfail
	.align 8
.LC15:
	.string	"550 Fail to remove directory.\r\n"
	.align 8
	.type	message_rmfail, @object
	.size	message_rmfail, 8
message_rmfail:
	.quad	.LC15
	.globl	message_350
.LC16:
	.string	"350 File exists.\r\n"
	.align 8
	.type	message_350, @object
	.size	message_350, 8
message_350:
	.quad	.LC16
	.globl	message_filenotexist
.LC17:
	.string	"550 File does not exist.\r\n"
	.align 8
	.type	message_filenotexist, @object
	.size	message_filenotexist, 8
message_filenotexist:
	.quad	.LC17
	.globl	message_nornfr
.LC18:
	.string	"503 RNTO without RNFR.\r\n"
	.align 8
	.type	message_nornfr, @object
	.size	message_nornfr, 8
message_nornfr:
	.quad	.LC18
	.globl	message_renameok
.LC19:
	.string	"250 Rename OK.\r\n"
	.align 8
	.type	message_renameok, @object
	.size	message_renameok, 8
message_renameok:
	.quad	.LC19
	.globl	message_renamefail
.LC20:
	.string	"550 Rename fail.\r\n"
	.align 8
	.type	message_renamefail, @object
	.size	message_renamefail, 8
message_renamefail:
	.quad	.LC20
	.globl	message_responsebegin
.LC21:
	.string	"150 Response begin.\r\n"
	.align 8
	.type	message_responsebegin, @object
	.size	message_responsebegin, 8
message_responsebegin:
	.quad	.LC21
	.globl	message_responseend
.LC22:
	.string	"150 Response end.\r\n"
	.align 8
	.type	message_responseend, @object
	.size	message_responseend, 8
message_responseend:
	.quad	.LC22
	.globl	message_readfail
.LC23:
	.string	"451 Read fail.\r\n"
	.align 8
	.type	message_readfail, @object
	.size	message_readfail, 8
message_readfail:
	.quad	.LC23
	.globl	message_426
.LC24:
	.string	"426 Connection break down.\r\n"
	.align 8
	.type	message_426, @object
	.size	message_426, 8
message_426:
	.quad	.LC24
	.globl	message_425
.LC25:
	.string	"425 No connection.\r\n"
	.align 8
	.type	message_425, @object
	.size	message_425, 8
message_425:
	.quad	.LC25
	.globl	message_551
.LC26:
	.string	"551 Fail to create file.\r\n"
	.align 8
	.type	message_551, @object
	.size	message_551, 8
message_551:
	.quad	.LC26
.LC27:
	.string	"USER"
.LC28:
	.string	"PASS"
.LC29:
	.string	"SYST"
.LC30:
	.string	"TYPE"
.LC31:
	.string	"PORT"
.LC32:
	.string	"PASV"
.LC33:
	.string	"RETR"
.LC34:
	.string	"STOR"
.LC35:
	.string	"MKD"
.LC36:
	.string	"CWD"
.LC37:
	.string	"PWD"
.LC38:
	.string	"LIST"
.LC39:
	.string	"RMD"
.LC40:
	.string	"RNFR"
.LC41:
	.string	"RNTO"
	.text
	.globl	response
	.type	response, @function
response:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L2
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_USER
	jmp	.L18
.L2:
	movq	-24(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L4
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_PASS
	jmp	.L18
.L4:
	movq	-24(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	c_SYST
	jmp	.L18
.L5:
	movq	-24(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_TYPE
	jmp	.L18
.L6:
	movq	-24(%rbp), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L7
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_PORT
	jmp	.L18
.L7:
	movq	-24(%rbp), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L8
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	c_PASV
	jmp	.L18
.L8:
	movq	-24(%rbp), %rax
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_RETR
	jmp	.L18
.L9:
	movq	-24(%rbp), %rax
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_STOR
	jmp	.L18
.L10:
	movq	-24(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L11
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_MKD
	jmp	.L18
.L11:
	movq	-24(%rbp), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_CWD
	jmp	.L18
.L12:
	movq	-24(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L13
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	c_PWD
	jmp	.L18
.L13:
	movq	-24(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L14
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_LIST
	jmp	.L18
.L14:
	movq	-24(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L15
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_RMD
	jmp	.L18
.L15:
	movq	-24(%rbp), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L16
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_RNFR
	jmp	.L18
.L16:
	movq	-24(%rbp), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L17
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	c_RNTO
	jmp	.L18
.L17:
	movl	$.LC0, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	response, .-response
	.globl	c_USER
	.type	c_USER, @function
c_USER:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L20
	movq	$.LC2, -8(%rbp)
	jmp	.L21
.L20:
	movq	$.LC1, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy
.L21:
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	c_USER, .-c_USER
	.section	.rodata
.LC42:
	.string	""
.LC43:
	.string	"anonymous"
	.text
	.globl	c_PASS
	.type	c_PASS, @function
c_PASS:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$36, %rax
	cmpq	$.LC42, %rax
	je	.L24
	movq	-32(%rbp), %rax
	addq	$36, %rax
	movl	$.LC43, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L25
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L25
	movq	$.LC3, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	236(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy
	movq	-32(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.L27
.L25:
	movq	$.LC4, -8(%rbp)
	jmp	.L27
.L24:
	movq	$.LC5, -8(%rbp)
.L27:
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	c_PASS, .-c_PASS
	.globl	c_SYST
	.type	c_SYST, @function
c_SYST:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movl	$.LC6, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L31
.L30:
	movl	$.LC7, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L31:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	c_SYST, .-c_SYST
	.section	.rodata
.LC44:
	.string	"I"
.LC45:
	.string	"A"
	.text
	.globl	c_TYPE
	.type	c_TYPE, @function
c_TYPE:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L34
	movl	$.LC6, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L36
	movl	$.LC8, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L38
	movl	$.LC9, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L37
.L38:
	movl	$.LC10, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L35
.L37:
	movl	$0, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	c_TYPE, .-c_TYPE
	.globl	c_PORT
	.type	c_PORT, @function
c_PORT:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L40
	movl	$.LC6, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L42
	movq	-16(%rbp), %rax
	movl	16832(%rax), %eax
	movl	%eax, %edi
	call	close
.L42:
	movq	-16(%rbp), %rax
	leaq	16828(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	16820(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_port
	movq	-16(%rbp), %rax
	movl	$1, 32(%rax)
	movl	$.LC11, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$0, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	c_PORT, .-c_PORT
	.section	.rodata
.LC46:
	.string	"%d.%d.%d.%d"
	.align 8
.LC47:
	.string	"227 Passive mode = %d,%d,%d,%d,%d,%d\r\n"
	.text
	.globl	c_PASV
	.type	c_PASV, @function
c_PASV:
.LFB8:
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
	movq	-144(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L44
	movl	$.LC6, %edx
	movl	-132(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L50
.L44:
	movq	-144(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L46
	movq	-144(%rbp), %rax
	movl	16832(%rax), %eax
	movl	%eax, %edi
	call	close
.L46:
	movq	-144(%rbp), %rax
	movl	$2, 32(%rax)
	movl	$16, -116(%rbp)
	movq	-144(%rbp), %rax
	movl	4(%rax), %eax
	leaq	-116(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname
	leaq	-80(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	4(%rdx), %rsi
	movl	$32, %ecx
	movq	%rax, %rdx
	movl	$2, %edi
	call	inet_ntop
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf
.L49:
	movl	$0, %eax
	call	get_random_port
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, 16828(%rax)
	movq	-144(%rbp), %rax
	movl	16828(%rax), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	listen_port
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, 16832(%rax)
	movq	-144(%rbp), %rax
	movl	16832(%rax), %eax
	cmpl	$-1, %eax
	jne	.L53
	jmp	.L49
.L53:
	nop
	movq	-144(%rbp), %rax
	movl	16828(%rax), %eax
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movl	%eax, %r9d
	movq	-144(%rbp), %rax
	movl	16828(%rax), %eax
	leal	255(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$8, %eax
	movl	%eax, %r8d
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %edx
	leaq	-48(%rbp), %rax
	pushq	%r9
	pushq	%r8
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	addq	$16, %rsp
	leaq	-48(%rbp), %rdx
	movl	-132(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$0, %eax
.L50:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L51
	call	__stack_chk_fail
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	c_PASV, .-c_PASV
	.section	.rodata
.LC48:
	.string	"rb"
	.text
	.globl	c_RETR
	.type	c_RETR, @function
c_RETR:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8416, %rsp
	movl	%edi, -8388(%rbp)
	movq	%rsi, -8400(%rbp)
	movq	%rdx, -8408(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8400(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L55
	movl	$.LC6, %edx
	movl	-8388(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L54
.L55:
	movq	-8400(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L57
	movq	-8400(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-8208(%rbp), %rdx
	movq	-8408(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	leaq	-8208(%rbp), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, %rdx
	movq	-8400(%rbp), %rax
	movq	%rdx, 16840(%rax)
	movq	-8400(%rbp), %rax
	movq	16840(%rax), %rax
	testq	%rax, %rax
	je	.L58
	leaq	-8352(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stat
	testl	%eax, %eax
	jne	.L58
	movq	-8400(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L59
	movq	-8400(%rbp), %rax
	movl	16832(%rax), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	accept
	movl	%eax, %edx
	movq	-8400(%rbp), %rax
	movl	%edx, 16824(%rax)
	jmp	.L60
.L59:
	movq	-8400(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L60
	movl	$6, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	movl	%eax, -8372(%rbp)
	cmpl	$-1, -8372(%rbp)
	jne	.L61
	movl	$-1, -8376(%rbp)
	jmp	.L62
.L61:
	leaq	-8368(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movw	$2, -8368(%rbp)
	movq	-8400(%rbp), %rax
	movl	16828(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons
	movw	%ax, -8366(%rbp)
	movq	-8400(%rbp), %rax
	addq	$16820, %rax
	leaq	-8368(%rbp), %rdx
	addq	$4, %rdx
	movq	%rax, %rsi
	movl	$2, %edi
	call	inet_pton
	testl	%eax, %eax
	jg	.L63
	movl	$-1, -8376(%rbp)
	jmp	.L62
.L63:
	leaq	-8368(%rbp), %rcx
	movl	-8372(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect
	testl	%eax, %eax
	jns	.L65
	movl	$-1, -8376(%rbp)
	jmp	.L62
.L65:
	movl	-8372(%rbp), %eax
	movl	%eax, -8376(%rbp)
.L62:
	movq	-8400(%rbp), %rax
	movl	-8376(%rbp), %edx
	movl	%edx, 16824(%rax)
.L60:
	movq	-8400(%rbp), %rax
	movl	16824(%rax), %eax
	cmpl	$-1, %eax
	je	.L66
	movl	$.LC21, %edx
	movl	-8388(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movq	-8400(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L72
	movq	-8400(%rbp), %rax
	movl	16832(%rax), %eax
	movl	%eax, %edi
	call	close
	jmp	.L72
.L66:
	movl	$.LC25, %edx
	movl	-8388(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L72
.L58:
	movl	$.LC26, %edx
	movl	-8388(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L70
.L57:
	movl	$.LC12, %edx
	movl	-8388(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L70
.L72:
	nop
.L70:
.L54:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L71
	call	__stack_chk_fail
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	c_RETR, .-c_RETR
	.section	.rodata
.LC49:
	.string	"%s/%s"
	.text
	.globl	c_LIST
	.type	c_LIST, @function
c_LIST:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16752, %rsp
	movl	%edi, -16724(%rbp)
	movq	%rsi, -16736(%rbp)
	movq	%rdx, -16744(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-16736(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L74
	movl	$.LC6, %edx
	movl	-16724(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L73
.L74:
	movq	-16736(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-16400(%rbp), %rdx
	movq	-16744(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	leaq	-16400(%rbp), %rax
	movq	%rax, %rdi
	call	opendir
	movq	%rax, -16704(%rbp)
	movq	-16736(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L76
	leaq	-16688(%rbp), %rdx
	leaq	-16400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stat
	testl	%eax, %eax
	je	.L77
	cmpq	$0, -16704(%rbp)
	je	.L95
.L77:
	movq	-16736(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L79
	movl	$6, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	movl	%eax, -16712(%rbp)
	cmpl	$-1, -16712(%rbp)
	jne	.L80
	movl	$-1, -16720(%rbp)
	jmp	.L81
.L80:
	leaq	-16544(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movw	$2, -16544(%rbp)
	movq	-16736(%rbp), %rax
	movl	16828(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons
	movw	%ax, -16542(%rbp)
	movq	-16736(%rbp), %rax
	addq	$16820, %rax
	leaq	-16544(%rbp), %rdx
	addq	$4, %rdx
	movq	%rax, %rsi
	movl	$2, %edi
	call	inet_pton
	testl	%eax, %eax
	jg	.L82
	movl	$-1, -16720(%rbp)
	jmp	.L81
.L82:
	leaq	-16544(%rbp), %rcx
	movl	-16712(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect
	testl	%eax, %eax
	jns	.L84
	movl	$-1, -16720(%rbp)
	jmp	.L81
.L84:
	movl	-16712(%rbp), %eax
	movl	%eax, -16720(%rbp)
.L81:
	movq	-16736(%rbp), %rax
	movl	-16720(%rbp), %edx
	movl	%edx, 16824(%rax)
	jmp	.L85
.L79:
	movq	-16736(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L85
	movq	-16736(%rbp), %rax
	movl	16832(%rax), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	accept
	movl	%eax, %edx
	movq	-16736(%rbp), %rax
	movl	%edx, 16824(%rax)
.L85:
	movq	-16736(%rbp), %rax
	movl	16824(%rax), %eax
	cmpl	$-1, %eax
	je	.L86
	movl	$.LC21, %edx
	movl	-16724(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$0, -16716(%rbp)
	cmpq	$0, -16704(%rbp)
	je	.L87
	jmp	.L88
.L90:
	movq	-16696(%rbp), %rax
	leaq	19(%rax), %rcx
	leaq	-16400(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	leaq	-16544(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stat
	movq	-16696(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-16736(%rbp), %rax
	movl	16824(%rax), %eax
	leaq	-16544(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	send_file_stat
	movl	%eax, -16708(%rbp)
	cmpl	$0, -16708(%rbp)
	jns	.L88
	movl	-16708(%rbp), %eax
	movl	%eax, -16716(%rbp)
.L88:
	movq	-16704(%rbp), %rax
	movq	%rax, %rdi
	call	readdir
	movq	%rax, -16696(%rbp)
	cmpq	$0, -16696(%rbp)
	jne	.L90
	movq	-16704(%rbp), %rax
	movl	%eax, %edi
	call	close
.L87:
	cmpl	$-1, -16716(%rbp)
	jne	.L91
	movl	$.LC23, %edx
	movl	-16724(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L92
.L91:
	cmpl	$-2, -16716(%rbp)
	jne	.L93
	movl	$.LC24, %edx
	movl	-16724(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L92
.L93:
	movl	$.LC22, %edx
	movl	-16724(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L92:
	movq	-16736(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L94
	movq	-16736(%rbp), %rax
	movl	16832(%rax), %eax
	movl	%eax, %edi
	call	close
.L94:
	movq	-16736(%rbp), %rax
	movl	16824(%rax), %eax
	movl	%eax, %edi
	call	close
	jmp	.L95
.L86:
	movl	$.LC25, %edx
	movl	-16724(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L95
.L76:
	movl	$.LC12, %edx
	movl	-16724(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L95:
.L73:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L96
	call	__stack_chk_fail
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	c_LIST, .-c_LIST
	.section	.rodata
.LC50:
	.string	"wb"
	.text
	.globl	c_STOR
	.type	c_STOR, @function
c_STOR:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8272, %rsp
	movl	%edi, -8244(%rbp)
	movq	%rsi, -8256(%rbp)
	movq	%rdx, -8264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8256(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L98
	movl	$.LC6, %edx
	movl	-8244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L97
.L98:
	movq	-8256(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L100
	movq	-8256(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-8208(%rbp), %rdx
	movq	-8264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	leaq	-8208(%rbp), %rax
	movl	$.LC50, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, %rdx
	movq	-8256(%rbp), %rax
	movq	%rdx, 16840(%rax)
	movq	-8256(%rbp), %rax
	movq	16840(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-8256(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L102
	movq	-8256(%rbp), %rax
	movl	16832(%rax), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	accept
	movl	%eax, %edx
	movq	-8256(%rbp), %rax
	movl	%edx, 16824(%rax)
	jmp	.L103
.L102:
	movq	-8256(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L103
	movl	$6, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	movl	%eax, -8228(%rbp)
	cmpl	$-1, -8228(%rbp)
	jne	.L104
	movl	$-1, -8232(%rbp)
	jmp	.L105
.L104:
	leaq	-8224(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movw	$2, -8224(%rbp)
	movq	-8256(%rbp), %rax
	movl	16828(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons
	movw	%ax, -8222(%rbp)
	movq	-8256(%rbp), %rax
	addq	$16820, %rax
	leaq	-8224(%rbp), %rdx
	addq	$4, %rdx
	movq	%rax, %rsi
	movl	$2, %edi
	call	inet_pton
	testl	%eax, %eax
	jg	.L106
	movl	$-1, -8232(%rbp)
	jmp	.L105
.L106:
	leaq	-8224(%rbp), %rcx
	movl	-8228(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect
	testl	%eax, %eax
	jns	.L108
	movl	$-1, -8232(%rbp)
	jmp	.L105
.L108:
	movl	-8228(%rbp), %eax
	movl	%eax, -8232(%rbp)
.L105:
	movq	-8256(%rbp), %rax
	movl	-8232(%rbp), %edx
	movl	%edx, 16824(%rax)
.L103:
	movq	-8256(%rbp), %rax
	movl	16824(%rax), %eax
	cmpl	$-1, %eax
	je	.L109
	movl	$.LC21, %edx
	movl	-8244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movq	-8256(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L113
	movq	-8256(%rbp), %rax
	movl	16832(%rax), %eax
	movl	%eax, %edi
	call	close
	jmp	.L113
.L109:
	movl	$.LC25, %edx
	movl	-8244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L113
.L101:
	movl	$.LC26, %edx
	movl	-8244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L113
.L100:
	movl	$.LC12, %edx
	movl	-8244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L113:
.L97:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L114
	call	__stack_chk_fail
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	c_STOR, .-c_STOR
	.section	.rodata
.LC51:
	.string	"550 No such directory\r\n"
.LC52:
	.string	"250 Okay\r\n"
	.text
	.globl	c_CWD
	.type	c_CWD, @function
c_CWD:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8528, %rsp
	movl	%edi, -8500(%rbp)
	movq	%rsi, -8512(%rbp)
	movq	%rdx, -8520(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8512(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L116
	movl	$.LC6, %edx
	movl	-8500(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L120
.L116:
	movq	-8520(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-8520(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L118
	movq	-8520(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-8520(%rbp), %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
.L118:
	movq	-8512(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-8208(%rbp), %rdx
	movq	-8520(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	movq	-8512(%rbp), %rax
	leaq	436(%rax), %rdx
	leaq	-8480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-8208(%rbp), %rdx
	leaq	-8480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	leaq	-8480(%rbp), %rax
	movq	%rax, %rdi
	call	opendir
	movq	%rax, -8488(%rbp)
	cmpq	$0, -8488(%rbp)
	je	.L119
	movl	-8500(%rbp), %eax
	movl	$.LC51, %esi
	movl	%eax, %edi
	call	send_response
	movl	$-1, %eax
	jmp	.L120
.L119:
	movl	-8500(%rbp), %eax
	movl	$.LC52, %esi
	movl	%eax, %edi
	call	send_response
	movq	-8512(%rbp), %rax
	leaq	436(%rax), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy
	movl	$0, %eax
.L120:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L121
	call	__stack_chk_fail
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	c_CWD, .-c_CWD
	.section	.rodata
.LC53:
	.string	"257 Current directory:\"%s\".\r\n"
	.text
	.globl	c_PWD
	.type	c_PWD, @function
c_PWD:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8224, %rsp
	movl	%edi, -8212(%rbp)
	movq	%rsi, -8224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8224(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L123
	movl	$.LC6, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L122
.L123:
	movq	-8224(%rbp), %rax
	leaq	436(%rax), %rdx
	leaq	-8208(%rbp), %rax
	movl	$.LC53, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	leaq	-8208(%rbp), %rdx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L122:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L125
	call	__stack_chk_fail
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	c_PWD, .-c_PWD
	.section	.rodata
.LC54:
	.string	"250 Create \"%s\" successful.\r\n"
	.text
	.globl	c_MKD
	.type	c_MKD, @function
c_MKD:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8256, %rsp
	movl	%edi, -8228(%rbp)
	movq	%rsi, -8240(%rbp)
	movq	%rdx, -8248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8240(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L127
	movl	$.LC6, %edx
	movl	-8228(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L126
.L127:
	movq	-8240(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-8208(%rbp), %rdx
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	leaq	-8208(%rbp), %rax
	movl	$509, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	mkdir
	cmpl	$-1, %eax
	jne	.L129
	movl	$.LC14, %edx
	movl	-8228(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L126
.L129:
	leaq	-8208(%rbp), %rdx
	movq	-8216(%rbp), %rax
	movl	$.LC54, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	movq	-8216(%rbp), %rdx
	movl	-8228(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
.L126:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L132
	call	__stack_chk_fail
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	c_MKD, .-c_MKD
	.section	.rodata
.LC55:
	.string	"250 Remove \"%s\" successful.\r\n"
	.text
	.globl	c_RMD
	.type	c_RMD, @function
c_RMD:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8256, %rsp
	movl	%edi, -8228(%rbp)
	movq	%rsi, -8240(%rbp)
	movq	%rdx, -8248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8240(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L134
	movl	$.LC6, %edx
	movl	-8228(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L133
.L134:
	movq	-8240(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-8208(%rbp), %rdx
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	leaq	-8208(%rbp), %rax
	movq	%rax, %rdi
	call	rmdir
	cmpl	$-1, %eax
	jne	.L136
	movl	$.LC15, %edx
	movl	-8228(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L133
.L136:
	leaq	-8208(%rbp), %rdx
	movq	-8216(%rbp), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	movq	-8216(%rbp), %rdx
	movl	-8228(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
.L133:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L138
	call	__stack_chk_fail
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	c_RMD, .-c_RMD
	.globl	c_RNFR
	.type	c_RNFR, @function
c_RNFR:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movl	%edi, -8212(%rbp)
	movq	%rsi, -8224(%rbp)
	movq	%rdx, -8232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8224(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L140
	movl	$.LC6, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L139
.L140:
	movq	-8224(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-8208(%rbp), %rdx
	movq	-8232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	leaq	-8208(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access
	testl	%eax, %eax
	jne	.L142
	movq	-8224(%rbp), %rax
	leaq	8628(%rax), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy
	movl	$.LC16, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L143
.L142:
	movl	$.LC17, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L143:
.L139:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L144
	call	__stack_chk_fail
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	c_RNFR, .-c_RNFR
	.globl	c_RNTO
	.type	c_RNTO, @function
c_RNTO:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movl	%edi, -8212(%rbp)
	movq	%rsi, -8224(%rbp)
	movq	%rdx, -8232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-8224(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L146
	movl	$.LC6, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L145
.L146:
	movq	-8224(%rbp), %rax
	addq	$8628, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L148
	movl	$.LC18, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	$1, %eax
	jmp	.L145
.L148:
	movq	-8224(%rbp), %rax
	leaq	436(%rax), %rcx
	leaq	-8208(%rbp), %rdx
	movq	-8232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_dir
	movq	-8224(%rbp), %rax
	leaq	8628(%rax), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rename
	testl	%eax, %eax
	jne	.L149
	movl	$.LC19, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	jmp	.L150
.L149:
	movl	$.LC20, %edx
	movl	-8212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
.L150:
	movq	-8224(%rbp), %rax
	addq	$8628, %rax
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
.L145:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L152
	call	__stack_chk_fail
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	c_RNTO, .-c_RNTO
	.globl	c_QUIT
	.type	c_QUIT, @function
c_QUIT:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	16832(%rax), %eax
	testl	%eax, %eax
	jle	.L154
	movq	-16(%rbp), %rax
	movl	16832(%rax), %eax
	movl	%eax, %edi
	call	close
.L154:
	movl	$.LC13, %edx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_response
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	c_QUIT, .-c_QUIT
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
