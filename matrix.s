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
# A in %rdi, N in %rsi

# for n = 0 to N - 1
#     for m = n + 1 to N
#         swap A(n,m) with A(m,n)

# Set up registers
    xorl %eax, %eax            # set %eax to 0
    xorl %ecx, %ecx            # i = 0 (row index i is in %ecx)

# For each row
tRowLoop:
    movl %ecx, %r8d            # j = i (column index j in %r8d)
    incl %r8d
    cmpl %edx, %ecx            # while i < N (i - N < 0)
    jge tDoneWithRows

# For each cell of this row
tColLoop:
    cmpl %edx, %r8d            # while j < N (j - N < 0)
    jge tDoneWithCells

# WORKING SWAP CODE
# 
# %ecx = i
# %r8d = j
#
# movl %ecx, %r9d
# imulq %rsi, %r9
# leaq (%rdi, %r9), %rdx
#
# movl %r8d, %r10d
# imulq %rsi, %r10
# leaq (%rdi, %r10), %r12
#
# movb (%rdx, %r8), %r11b
# movb (%r12, %rcx), %r13b
#
# movb %r11b, (%r12, %rcx)
# movb %r13b, (%rdx, %r8)

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
    jmp rowLoop                # go to next row

tDoneWithRows:                  # bye! bye!
    ret


#####################
	.globl	reverseColumns
reverseColumns:


	ret
