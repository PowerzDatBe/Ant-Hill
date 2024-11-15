#### DATA SEGMENT ####
.data
	total:	.word 0
	num: 	.word -10, 20, 30
	
#### CODE SEGMENT ####
.text
.globl main
	main:
		la		$t0, num		# base address of array num
		ori		$t2, 0			# $t1 = total = 0
		
		# total = total + num[0] #
		ori		$t1, $t0, 0
		lw		$t3, 0($t1)
		addu	$t2, $t2, $t3
		
		# total = total + num[1] #
		addu	$t1, $t1, 4
		lw		$t3, 0($t1)
		addu	$t2, $t2, $t3
		
		# total = total + num[2] #
		addu	$t1, $t1, 4
		lw		$t3, 0($t1)
		addu	$t2, $t2, $t3
		sw		$t2, total
		
		li		$v0, 10			# EXIT PROGRAM #
		syscall
		
#### REGISTER TABLE ####
