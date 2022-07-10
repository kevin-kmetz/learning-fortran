program weight_converter

    implicit none

    character(len=:), allocatable :: fmt_i, fmt_o
    
    character(len=2) :: selection
    real :: weight, converted_weight

    fmt_i = "(a,$)"
    fmt_o = "(*(1x, g0))"

    print fmt_o, "Weight Convertor"
    print *
    print fmt_o, "To convert from from lbs to kgs, type 'lk'."
    print fmt_o, "To convert from kg to lbs, type 'kl'."

    print fmt_i, "Selection:"
    read *, selection

    print fmt_i, "Enter the weight to convert:"
    read *, weight

    if (selection == "lk") then
        converted_weight = weight / 2.205
    else if (selection == "kl") then
        converted_weight = weight * 2.205
    end if

    print fmt_o, "The converted weight is:", converted_weight

end program weight_converter