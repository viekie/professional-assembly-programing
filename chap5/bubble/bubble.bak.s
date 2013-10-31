#bubble.s - an example of bubble sort

.section .data
values:
    .int 10, 20, 30, 1, 34, 23, 54, 12, 45, 11

.section .text
.globl _start

_start:
    movl $values, %esi
    movl $9, %ecx
    movl $9, %ebx

loop:
    movl (%esi), %eax
    cmp %eax, 4(%esi)

    jge skip
     
    xchg %eax, 4(%esi)
    movl %eax, (%esi)

skip:
    add $4, %esi
    dec %ebx
    jnz loop
    dec %ecx
    jz end

movl $values, %esi
movl %ecx, %ebx
jmp loop

end:
    movl $1, %eax
    movl $0, %ebx
   
    int $0x80
