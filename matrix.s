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
    movl %ecx, %r8d            # j = 0 (column index j in %r8d)
    incl %r8d
    cmpl %edx, %ecx            # while i < N (i - N < 0)
    jge tDoneWithRows

# For each cell of this row
tColLoop:
    cmpl %edx, %r8d            # while j < N (j - N < 0)
    jge tDoneWithCells


    # Get A[i][j] into %r10
    movl %ecx, %r9d              # i -> %r9
    imulq %rsi, %r9             # N * i -> %r9
    leaq (%rdi, %r9), %rdx      # A + (N * i) -> %rax
    
    # Get A[j][i] into %r11
    movl %r8d, %r9d             # j -> %r9
    imulq %rsi, %r9             # N * j -> %r9
    leaq (%rdi, %r9), %r12      # A + (N * j) -> %rax

    # Swap A[i][j] (%r10) with A[j][i] (%r11)
    movq (%r12, %rsi), %r9
    movq (%rdx, %r8), %r10
    movq %r10, (%r12, %rsi)
    movq %r9, (%rdx, %r8)

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
