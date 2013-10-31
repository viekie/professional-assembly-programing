#betterloop.s - an example of the loop and jcxz instruction

.section .data
output:
    .asciz "the value is: %d\n"

.section .text
.globl _start
_start:
    movl $0, %eax
    movl $100, %ecx
    jcxz done

loop1:
    addl %ecx, %eax
    loop loop1

done:
    pushl %eax
    pushl $output
    call printf
    movl $1, %eax
    movl $0, %ebx
    int $0x80
