program main
implicit none
integer::i=1,n,a=0,a1=1,a2=1
Print*,"Enter number of terms"
read*,n
do while(i<=n)
i=i+1
Print*,a
a1=a2
a2=a
a=a1+a2
end do
end program main
