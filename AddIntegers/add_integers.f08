! This program prompts the user for two integers,
! and then displays the sum.

program add_integers

	implicit none

	integer :: a, b, c

	character(len=:), allocatable :: fmt_i, fmt_o
	fmt_i = "(a,$)"
	fmt_o = "(*(1x, g0))"

	print fmt_i, "Please enter an integer: "
	read *, a

	print fmt_i, "Please enter another integer: "
	read *, b

	c = a + b
	print fmt_o, "a + b =", c

end program add_integers