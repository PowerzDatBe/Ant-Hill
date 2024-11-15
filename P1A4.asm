.data
	num1:	.word 10, 20, 30
	num2:	.space 12
	temp:	.word 100

.text
.globl main
	main:
		# GOAL: num2[2] = tmp + num1[2] #
		# STEP 1: load num1[2] #
		la	$t0, num1	# load base address of num1 #
		lw	$t2, 8($t0)	# $t2 = value of num1[2] = 30 #
		# STEP 2: LOAD TEMP TO $t3 #
		lw	$t3, temp	# $t3 = temp = 100 #
		add	$t4, $t2, $t3	# $t4 = 30 + 100 = 130 #
		# STEP 3: STORE $t4 TO num2[2] #
		la	$t1, num2	# load base add of num2 #
		sw	$t4, 8($t1)	# save value at num2[2] directly to $t4 #
# NOT NEEDED	lw	$t5, 8($t1)	  $t5 = address of num2[2] #
# NOT NEEDED	sw	$t4, $t5
		# EXIT PROGRAM #
		li 	$v0, 10
		syscall


####	REG TABLE	####
# $t0: address of num1
# $t1: address of num2
# $t2: holds value of num1[2]
# $t3: value of temp
# $t4: temporary register to hold sum of $t2, $t3
# NOT NEEDED | $t5: address of num2[2]
