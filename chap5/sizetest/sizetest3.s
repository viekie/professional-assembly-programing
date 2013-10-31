#sizetest3.s a sample program to view the executable size

.section .data
buffer :
    .fill 100000
.section .text
.globl _start

_start:
    movl $1, %eax
    movl $0, %ebx
    int $0x80
