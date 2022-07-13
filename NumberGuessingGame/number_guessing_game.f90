program number_guessing_game

    implicit none

    character(len=:), allocatable :: fmt_i, fmt_o
    fmt_i = "(a, $)"
    fmt_o = "(*(1x, g0))"

    print fmt_o, "Number Guessing Game"
    print fmt_o, "Guess a number between 1 and 100, and you will be told"
    print fmt_o, "whether your guess is too high, too low, or correct."

    contains

    function solicit_guess() return (guess)

        integer :: guess

        print fmt_i, "Guess: "
        read *, guess

    end function solicit_guess

    function evaluate_guess(guess, winning_number) return (is_correct)

        integer, intent(in) :: guess, winning_number
        logical :: is_correct = .false.

        if (guess < winning_number) then
            print fmt_o, "Too low!"
        else if (guess > winning_number) then 
            print fmt_o, "Too high!"
        else if (guess == winning_number) then
            print fmt_o, "Exactly right!"
            is_correct = .true.
        end if

end program number_guessing_game