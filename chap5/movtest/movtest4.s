#movtest4.s - an example of using mova test

.section .data
values:
    .int 10, 30, 20, 50, 18, 40, 22, 15, 28, 44
output:
    .asciz "the max num is %d\n"

.section .text

.globl _start
_start:
    nop
    movl $1, %edi
    movl values, %ebx

loop:
    movl values( , %edi, 4), %eax
    cmp %ebx, %eax
    cmova %eax, %ebx
    inc %edi
    cmp $10, %edi
    jne loop

    pushl %ebx
    pushl $output

    call printf

    addl $8, %esp
    pushl $0
    call exit
