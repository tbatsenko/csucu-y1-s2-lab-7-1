	.file	"game1.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	movl	$0, 28(%esp)
	jmp	L2
L8:
	movl	$0, 24(%esp)
	jmp	L3
L7:
	movl	28(%esp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	je	L4
	cmpl	$0, 24(%esp)
	je	L4
	movl	20(%esp), %eax
	subl	$1, %eax
	cmpl	24(%esp), %eax
	jne	L5
L4:
	movl	$42, (%esp)
	call	_putchar
	jmp	L6
L5:
	movl	$32, (%esp)
	call	_putchar
L6:
	addl	$1, 24(%esp)
L3:
	movl	20(%esp), %eax
	cmpl	%eax, 24(%esp)
	jl	L7
	movl	$10, (%esp)
	call	_putchar
	addl	$1, 28(%esp)
L2:
	movl	20(%esp), %eax
	cmpl	%eax, 28(%esp)
	jl	L8
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.ident	"GCC: (i686-posix-dwarf-rev1, Built by MinGW-W64 project) 6.3.0"
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
