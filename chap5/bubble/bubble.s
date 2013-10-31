	.file	"bubble.c"
	.section	.rodata
.LC0:
	.string	"args error"
	.text
	.globl	bubble_sort
	.type	bubble_sort, @function
bubble_sort:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	.L2
	cmpl	$0, 12(%ebp)
	jg	.L3
.L2:
	movl	$.LC0, (%esp)
	call	puts
	jmp	.L1
.L3:
	movl	$0, -20(%ebp)
	jmp	.L5
.L9:
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L6
.L8:
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	addl	$1, %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jle	.L7
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	$1, %edx
	sall	$2, %edx
	addl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
.L7:
	addl	$1, -16(%ebp)
.L6:
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	-16(%ebp), %eax
	jg	.L8
	addl	$1, -20(%ebp)
.L5:
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	-20(%ebp), %eax
	jg	.L9
.L1:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	bubble_sort, .-bubble_sort
	.section	.rodata
.LC1:
	.string	"%d\t"
	.text
	.globl	print
	.type	print, @function
print:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	je	.L11
	cmpl	$0, 12(%ebp)
	jg	.L12
.L11:
	movl	$.LC0, (%esp)
	call	puts
	jmp	.L10
.L12:
	movl	$0, -12(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L14
.L15:
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	$.LC1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	addl	$1, -12(%ebp)
.L14:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L15
.L10:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	print, .-print
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	movl	$30, 20(%esp)
	movl	$4, 24(%esp)
	movl	$13, 28(%esp)
	movl	$54, 32(%esp)
	movl	$34, 36(%esp)
	movl	$23, 40(%esp)
	movl	$98, 44(%esp)
	movl	$78, 48(%esp)
	movl	$76, 52(%esp)
	movl	$100, 56(%esp)
	movl	$10, 60(%esp)
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	print
	movl	$10, (%esp)
	call	putchar
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	bubble_sort
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	print
	movl	$10, (%esp)
	call	putchar
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
