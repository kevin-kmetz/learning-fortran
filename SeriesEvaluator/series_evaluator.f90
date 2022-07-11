! This program sums the integer values between a lower bound
! and an upper bound, inclusive. It is primarily written as 
! a means for to get acclimated to functions in Fortran.

program series_evaluator

    implicit none

    integer :: lower_bound, upper_bound

    character(len=:), allocatable :: fmt_i, fmt_o
    fmt_i = "(a, $)"
    fmt_o = "(*(1x, g0))"

    print fmt_o, "Series Evaluator"
    print fmt_o, "Enter a lower and upper bound (inclusive) from which to sum."

    print fmt_i, "Lower bound: "
    read *, lower_bound

    print fmt_i, "Upper bound: "
    read *, upper_bound

    print fmt_o, "The calculated sum is: ", series_sum(lower_bound, upper_bound)

    contains

    function series_sum(a, b) result (summation)

        integer, intent(in) :: a, b
        integer :: summation

        summation = (b*(b+1) - (a-1)*a)/2

    end function series_sum

end program series_evaluator