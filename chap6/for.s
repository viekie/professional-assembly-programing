
.section .data
output:
    .asciz "the loop is %d\n"

.section .text
.globl _start
_start:
 
    movl $10, %eax
    movl $0, %ebx

for:
    cmp %eax, %ebx
    jbe forcode
    jmp end 
forcode:
    pushl %ebx
    pushl $output
    call printf
    add $8, %esp
    inc %ebx
    jmp for
end:
    movl $1, %eax
    movl $0, %ebx
    int $0x80
