#movtest1.s - a example of moving data from memroy to a register

.section .data
    value :
	.int 1
.section .text
.globl _start
_start:
    nop
    movl value, %eax
    movl $1, %eax
    movl $0, %eax
    int $0x80
