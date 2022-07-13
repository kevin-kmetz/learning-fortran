program number_guessing_game

    implicit none

    integer :: guess, winning_number
    logical :: is_correct

    character(len=:), allocatable :: fmt_i, fmt_o
    fmt_i = "(a, $)"
    fmt_o = "(*(1x, g0))"

    winning_number = generate_random_number()
    is_correct = .false.

    print fmt_o, "Number Guessing Game"
    print fmt_o, "Guess a number between 0 and 100, and you will be told"
    print fmt_o, "whether your guess is too high, too low, or correct."

    do

        guess = solicit_guess()
        is_correct = evaluate_guess(guess, winning_number)

        if (is_correct) exit

    end do

    contains

    function solicit_guess() result (guess)

        integer :: guess

        print fmt_i, "Guess: "
        read *, guess

    end function solicit_guess

    function evaluate_guess(guess, winning_number) result (is_correct)

        integer, intent(in) :: guess, winning_number
        logical :: is_correct
        
        is_correct = .false.

        if (guess < winning_number) then
            print fmt_o, "Too low!"
        else if (guess > winning_number) then 
            print fmt_o, "Too high!"
        else if (guess == winning_number) then
            print fmt_o, "Exactly right!"
            is_correct = .true.
        end if

    end function evaluate_guess

    function generate_random_number() result (random_integer)

        real :: random_real
        integer :: random_integer

        call random_number(random_real)

        random_integer = int(random_real * 100.0)

    end function generate_random_number

end program number_guessing_game