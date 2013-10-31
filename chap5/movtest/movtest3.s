#movtest3.s - an example of using indexed memory location

.section .data
output:
    .asciz "The number is %d\n"
values:
    .int 10, 20, 30, 40, 50, 60, 70, 80, 90

.section .text
.globl _start

_start:
    nop
    movl $0, %edi

loop:
    movl values( , %edi, 4), %eax
    pushl %eax
    pushl $output
    call printf

    addl $8, %esp
    inc %edi
    cmpl $9, %edi
    jne loop

movl $0, %ebx
movl $1, %eax

int $0x80
