# Filename: matrix.s
# Author: Anne Lavergne, John Ivison (301474639)
# Date: March 10th, 2023
#


    .globl copy
# ***** Version 2 *****
copy:
# A in %rdi, C in %rsi, N in %edx

# Using A and C as pointers

# This function is not a "caller", i.e., it does not call functions. 
# It is a leaf function (a callee). 
# Hence it does not have the responsibility of saving "caller-saved" registers 
# such as %rax, %rdi, %rsi, %rdx, %rcx, %r8 and %r9.
# This signifies that it can use these registers without 
# first saving their content if it needs to use registers.

# Set up registers
    xorl %eax, %eax            # set %eax to 0
    xorl %ecx, %ecx            # i = 0 (row index i is in %ecx)

# For each row
rowLoop:
    xorl %r8d, %r8d            # j = 0 (column index j in %r8d)
    cmpl %edx, %ecx            # while i < N (i - N < 0)
    jge doneWithRows

# For each cell of this row
colLoop:
    cmpl %edx, %r8d            # while j < N (j - N < 0)
    jge doneWithCells

# Copy the element A points to (%rdi) to the cell C points to (%rsi)
    movb (%rdi), %r9b          # temp = element A points to
    movb %r9b, (%rsi)          # cell C points to = temp

# Update A and C so they now point to their next element 
    incq %rdi
    incq %rsi

    incl %r8d                  # j++ (column index in %r8d)
    jmp colLoop                # go to next cell

# Go to next row
doneWithCells:
    incl %ecx                  # i++ (row index in %ecx)
    jmp rowLoop                # go to next row

doneWithRows:                  # bye! bye!
    ret


#####################
    .globl transpose
transpose:
    push %r12
    push %r13

    # A in %rdi
    # N in %rsi

# Set up registers
    xorl %eax, %eax            # set %eax to 0
    xorl %ecx, %ecx            # i = 0 (row index i is in %ecx)

# For each row
tRowLoop:
    movl %ecx, %r8d            # j = i (column index j in %r8d)
    incl %r8d
    cmpl %esi, %ecx            # while i < N (i - N < 0)
    jge tDoneWithRows

# For each cell of this row
tColLoop:
    cmpl %esi, %r8d            # while j < N (j - N < 0)
    jge tDoneWithCells

    # Calculate A[i] -> rdx
    movl %ecx, %r9d             # i -> r9
    imulq %rsi, %r9             # i * N -> r9
    leaq (%rdi, %r9), %rdx      # A + (i * N) -> rdx
    
    # Calculate A[j] -> r12
    movl %r8d, %r10d            # j -> r10
    imulq %rsi, %r10            # j * N -> r10
    leaq (%rdi, %r10), %r12     # A + (j * N) -> r12

    # Swap A[i][j] with A[j][i]
    movb (%rdx, %r8), %r11b     # A[i][j] -> r11
    movb (%r12, %rcx), %r13b    # A[j][i] -> r13

    movb %r11b, (%r12, %rcx)    # r11 -> A[j][i]
    movb %r13b, (%rdx, %r8)     # r13 -> A[i][j]

    incl %r8d                   # j++ (column index in %r8d)
    jmp tColLoop                # go to next cell

# Go to next row
tDoneWithCells:
    incl %ecx                  # i++ (row index in %ecx)
    jmp tRowLoop                # go to next row

tDoneWithRows:                  # bye! bye!
    pop %r13
    pop %r12

    ret




	.globl	reverseColumns
reverseColumns:
    push %r12
    push %r13
    push %rbx

    # A in %rdi
    # N in %rsi

    xorl %eax, %eax         # set %eax to 0
    xorl %ecx, %ecx         # i = 0 (column index i is in %ecx)
    
    
rColLoop:    
    # Jump if half the table has been swapped
    movl %ecx, %r8d
    imull $2, %r8d
    incl %r8d
    cmpl %esi, %r8d
    jge rDoneWithCols
    
    movl %esi, %eax # N -> eax
    subl %ecx, %eax # Subtract the current index from the total columns, getting the column to swap with
    decl %eax       # Accounting for index being Length - 1 

    xorl %r8d, %r8d

rSwap:
    cmpl %esi, %r8d
    jge rDoneWithSwap

    # Swap A[k][i] with A[k][j]
    # i = %ecx (current index)
    # j = %eax
    # k = %r8d

    # Calculate A[k] -> rdx
    movl %r8d, %r9d             # k -> r9
    imulq %rsi, %r9             # k * N -> r9
    leaq (%rdi, %r9), %rdx      # A + (k * N) {A[k]} -> rdx
     
    # Swap A[k][i] with A[k][j]
    movb (%rdx, %rcx), %r11b    # A[k][i] -> r11
    movb (%rdx, %rax), %r13b    # A[k][j] -> r13

    movb %r11b, (%rdx, %rax)    # r11 -> A[k][j]
    movb %r13b, (%rdx, %rcx)    # r13 -> A[k][i]

    incl %r8d
    jmp rSwap
    
rDoneWithSwap:
    incl %ecx
    jmp rColLoop

rDoneWithCols:
    pop %rbx
    pop %r13
    pop %r12
	ret


