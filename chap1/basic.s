testvalue:
	.long 150
message:
	.ascii "This is a test message"
pi:
	.float 3.14159

movl testvalue, %ebx
addl $10, %ebx
movl %ebx, testvalue 
