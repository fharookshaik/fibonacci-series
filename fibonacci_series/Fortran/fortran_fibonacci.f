program fibonacci
    implicit none
    integer :: fib_limit, i
    integer :: fib_series(100)  ! Adjust the size of the array as needed
    
    ! Prompt the user for the limit of the Fibonacci series
    print *, "Enter the number of Fibonacci numbers to generate:"
    read(*, *) fib_limit
    
    ! Generate the Fibonacci series
    fib_series(1) = 0
    fib_series(2) = 1
    do i = 3, fib_limit
        fib_series(i) = fib_series(i-1) + fib_series(i-2)
    end do
    
    ! Print the Fibonacci series
    print *, "Fibonacci series up to ", fib_limit, " numbers:"
    do i = 1, fib_limit
        print *, fib_series(i)
    end do
    
end program fibonacci
