#### DATA SEGMENT
.data
	val1:	.word 100
	val2:	.word 200
	val3:	.word 0

#### CODE SEGMENT
.text
.globl main
	main:
		lw $t0, val1
		lw $t1, val2
		addu $t2, $t1, $t0
		sw $t2, val3
		li $v0, 10 # EXIT PROGRAM #
		syscall
		
