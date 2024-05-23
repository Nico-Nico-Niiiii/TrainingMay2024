	.file	"dikstra.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\nDistance from source to %d: %d"
	.text
	.globl	Dijkstra
	.type	Dijkstra, @function
Dijkstra:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$608, %rsp
	movq	%rdi, -600(%rbp)
	movl	%esi, -604(%rbp)
	movl	%edx, -608(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -568(%rbp)
	jmp	.L2
.L7:
	movl	$0, -564(%rbp)
	jmp	.L3
.L6:
	movl	-568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	addq	%rax, %rdx
	movl	-564(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	testl	%eax, %eax
	jne	.L4
	movl	-564(%rbp), %eax
	movslq	%eax, %rcx
	movl	-568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	$9999, -416(%rbp,%rax,4)
	jmp	.L5
.L4:
	movl	-568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	addq	%rax, %rdx
	movl	-564(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-564(%rbp), %eax
	movslq	%eax, %rsi
	movl	-568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movl	%ecx, -416(%rbp,%rax,4)
.L5:
	addl	$1, -564(%rbp)
.L3:
	movl	-564(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jl	.L6
	addl	$1, -568(%rbp)
.L2:
	movl	-568(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jl	.L7
	movl	$0, -568(%rbp)
	jmp	.L8
.L9:
	movl	-568(%rbp), %eax
	movslq	%eax, %rcx
	movl	-608(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	-416(%rbp,%rax,4), %edx
	movl	-568(%rbp), %eax
	cltq
	movl	%edx, -560(%rbp,%rax,4)
	movl	-568(%rbp), %eax
	cltq
	movl	-608(%rbp), %edx
	movl	%edx, -512(%rbp,%rax,4)
	movl	-568(%rbp), %eax
	cltq
	movl	$0, -464(%rbp,%rax,4)
	addl	$1, -568(%rbp)
.L8:
	movl	-568(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jl	.L9
	movl	-608(%rbp), %eax
	cltq
	movl	$0, -560(%rbp,%rax,4)
	movl	-608(%rbp), %eax
	cltq
	movl	$1, -464(%rbp,%rax,4)
	movl	$1, -580(%rbp)
	jmp	.L10
.L17:
	movl	$9999, -576(%rbp)
	movl	$0, -568(%rbp)
	jmp	.L11
.L13:
	movl	-568(%rbp), %eax
	cltq
	movl	-560(%rbp,%rax,4), %eax
	cmpl	%eax, -576(%rbp)
	jle	.L12
	movl	-568(%rbp), %eax
	cltq
	movl	-464(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L12
	movl	-568(%rbp), %eax
	cltq
	movl	-560(%rbp,%rax,4), %eax
	movl	%eax, -576(%rbp)
	movl	-568(%rbp), %eax
	movl	%eax, -572(%rbp)
.L12:
	addl	$1, -568(%rbp)
.L11:
	movl	-568(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jl	.L13
	movl	-572(%rbp), %eax
	cltq
	movl	$1, -464(%rbp,%rax,4)
	movl	$0, -568(%rbp)
	jmp	.L14
.L16:
	movl	-568(%rbp), %eax
	cltq
	movl	-464(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L15
	movl	-568(%rbp), %eax
	movslq	%eax, %rcx
	movl	-572(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	-416(%rbp,%rax,4), %edx
	movl	-576(%rbp), %eax
	addl	%eax, %edx
	movl	-568(%rbp), %eax
	cltq
	movl	-560(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jge	.L15
	movl	-568(%rbp), %eax
	movslq	%eax, %rcx
	movl	-572(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	-416(%rbp,%rax,4), %edx
	movl	-576(%rbp), %eax
	addl	%eax, %edx
	movl	-568(%rbp), %eax
	cltq
	movl	%edx, -560(%rbp,%rax,4)
	movl	-568(%rbp), %eax
	cltq
	movl	-572(%rbp), %edx
	movl	%edx, -512(%rbp,%rax,4)
.L15:
	addl	$1, -568(%rbp)
.L14:
	movl	-568(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jl	.L16
	addl	$1, -580(%rbp)
.L10:
	movl	-604(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -580(%rbp)
	jl	.L17
	movl	$0, -568(%rbp)
	jmp	.L18
.L20:
	movl	-568(%rbp), %eax
	cmpl	-608(%rbp), %eax
	je	.L19
	movl	-568(%rbp), %eax
	cltq
	movl	-560(%rbp,%rax,4), %edx
	movl	-568(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L19:
	addl	$1, -568(%rbp)
.L18:
	movl	-568(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jl	.L20
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	Dijkstra, .-Dijkstra
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$432, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$7, -424(%rbp)
	movl	$0, -416(%rbp)
	movl	$0, -412(%rbp)
	movl	$1, -408(%rbp)
	movl	$2, -404(%rbp)
	movl	$0, -400(%rbp)
	movl	$0, -396(%rbp)
	movl	$0, -392(%rbp)
	movl	$0, -376(%rbp)
	movl	$0, -372(%rbp)
	movl	$2, -368(%rbp)
	movl	$0, -364(%rbp)
	movl	$0, -360(%rbp)
	movl	$3, -356(%rbp)
	movl	$0, -352(%rbp)
	movl	$1, -336(%rbp)
	movl	$2, -332(%rbp)
	movl	$0, -328(%rbp)
	movl	$1, -324(%rbp)
	movl	$3, -320(%rbp)
	movl	$0, -316(%rbp)
	movl	$0, -312(%rbp)
	movl	$2, -296(%rbp)
	movl	$0, -292(%rbp)
	movl	$1, -288(%rbp)
	movl	$0, -284(%rbp)
	movl	$0, -280(%rbp)
	movl	$0, -276(%rbp)
	movl	$1, -272(%rbp)
	movl	$0, -256(%rbp)
	movl	$0, -252(%rbp)
	movl	$3, -248(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -240(%rbp)
	movl	$2, -236(%rbp)
	movl	$0, -232(%rbp)
	movl	$0, -216(%rbp)
	movl	$3, -212(%rbp)
	movl	$0, -208(%rbp)
	movl	$0, -204(%rbp)
	movl	$2, -200(%rbp)
	movl	$0, -196(%rbp)
	movl	$1, -192(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -168(%rbp)
	movl	$1, -164(%rbp)
	movl	$0, -160(%rbp)
	movl	$1, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -420(%rbp)
	movl	-420(%rbp), %edx
	movl	-424(%rbp), %ecx
	leaq	-416(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	Dijkstra
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
