	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	L_str(%rip), %rdi
	callq	_puts
	leaq	_A(%rip), %r12
	movsbl	_A(%rip), %esi
	leaq	L_.str.5(%rip), %r15
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+1(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+2(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+3(%rip), %esi
	leaq	L_.str.4(%rip), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	_A+4(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+5(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+6(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+7(%rip), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	_A+8(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+9(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+10(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+11(%rip), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	_A+12(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+13(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+14(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	_A+15(%rip), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movl	$10, %edi
	callq	_putchar
	leaq	L_str.7(%rip), %rdi
	callq	_puts
	movq	_C@GOTPCREL(%rip), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	$4, %edx
	callq	_copy
	leaq	L_str.8(%rip), %rdi
	callq	_puts
	movsbl	(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	1(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	2(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	3(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	4(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	5(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	6(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	7(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	8(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	9(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	10(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	11(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	12(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	13(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	14(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	15(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movl	$10, %edi
	callq	_putchar
	leaq	L_str.9(%rip), %rdi
	callq	_puts
	movsbl	(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	1(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	2(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	3(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	4(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	5(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	6(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	7(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	8(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	9(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	10(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	11(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movsbl	12(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	13(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	14(%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_printf
	movsbl	15(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	movl	$10, %edi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_putchar                        ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_printMatrixByRow               ## -- Begin function printMatrixByRow
	.p2align	4, 0x90
_printMatrixByRow:                      ## @printMatrixByRow
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $esi killed $esi def $rsi
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	movq	%rsi, -56(%rbp)                 ## 8-byte Spill
	testl	%esi, %esi
	je	LBB1_5
## %bb.1:
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	leal	-1(%rax), %r12d
	movl	%eax, %ebx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movq	%rcx, -72(%rbp)                 ## 8-byte Spill
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	movl	%eax, %r15d
	addq	-64(%rbp), %r15                 ## 8-byte Folded Reload
	xorl	%r13d, %r13d
	leaq	L_.str.5(%rip), %r14
	.p2align	4, 0x90
LBB1_3:                                 ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%r13, %r12
	movq	%r14, %rdi
	leaq	L_.str.4(%rip), %rax
	cmoveq	%rax, %rdi
	movsbl	(%r15,%r13), %esi
	xorl	%eax, %eax
	callq	_printf
	addq	$1, %r13
	cmpq	%r13, %rbx
	jne	LBB1_3
## %bb.4:                               ##   in Loop: Header=BB1_2 Depth=1
	movl	$10, %edi
	callq	_putchar
	movq	-72(%rbp), %rcx                 ## 8-byte Reload
	addq	$1, %rcx
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	addl	-56(%rbp), %eax                 ## 4-byte Folded Reload
	cmpq	%rbx, %rcx
	jne	LBB1_2
LBB1_5:
	movl	$10, %edi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_putchar                        ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_A                              ## @A
	.p2align	4
_A:
	.ascii	"\001\376\003\374"
	.ascii	"\373\006\371\b"
	.ascii	"\377\002\375\004"
	.ascii	"\005\372\007\370"

	.comm	_C,16,4                         ## @C
	.section	__TEXT,__cstring,cstring_literals
L_.str.4:                               ## @.str.4
	.asciz	"%4d"

L_.str.5:                               ## @.str.5
	.asciz	"%4d "

L_str:                                  ## @str
	.asciz	"Matrix A: "

L_str.7:                                ## @str.7
	.asciz	"Copy A to C"

L_str.8:                                ## @str.8
	.asciz	"\nMatrix C: "

L_str.9:                                ## @str.9
	.asciz	"Rotating the matrix C by 90 degrees clockwise: "

.subsections_via_symbols
