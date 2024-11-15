#### DATA SEGMENT ####
.data
	num:	.space	12
	total:	.word	100

#### CODE SEGMENT ####
.text
.globl main
	main:
		la $t0, num 		# load address of array #
		lw $t1, total 		# $t1 will be 100 #
		sw $t1, 8($t0)		# saves 100 into num[2] #
		addi $t1, $t1, 1	# adds 1 to $t1, 1 + 100 = 101, stored into $t1 #
		sw $t1, 0($t0)		# saves 101 into num[0] #
		addi $t1, $t1, 1	# adds 1 to $t1, 1 + 101 = 102, stores into $t1 #
		sw $t1, 4($t0)		# saves 102 into num[2] #
		li $v0, 10			# EXIT PROGRAM #
		syscall
