#signtest.s - an example of using the sing flag

.section .data
value:
    .int 21, 15, 34, 11, 6, 50, 32, 80, 10, 2

output:
    .asciz "the value is %d\n"

.section .text
.globl _start
_start:
    movl $0, %edi

loop:
    pushl value(, %edi, 4)
    pushl $output
    call printf

    add $8, %esp
    inc %edi 
    
    cmp $9, %edi
    jbe loop
    movl $1, %eax
    movl $0, %ebx

    int $0x80
