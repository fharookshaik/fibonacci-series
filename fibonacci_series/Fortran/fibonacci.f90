program FibonacciSequence
    implicit none
    integer :: n, i

    ! Get user input
    print *, "Enter the number of terms for Fibonacci sequence: "
    read *, n

    print *, "Fibonacci of ", n, ":"

    ! Print Fibonacci sequence up to the nth term
    do i = 0, n - 1
        print *, Fibonacci(i)  ! Call the 'Fibonacci' function
    end do

contains

    ! Function to calculate Fibonacci numbers
    recursive integer function Fibonacci(n) result(res)
        integer :: n
        !integer :: res  ! Declare the result variable

        if (n == 0) then
            res = 0  ! Return 0 for Fibonacci(0)
        else if (n == 1) then
            res = 1  ! Return 1 for Fibonacci(1)
        else
            res = Fibonacci(n - 1) + Fibonacci(n - 2)  ! Recursive call
        end if
    end function Fibonacci  ! Correctly end the function here

end program FibonacciSequence