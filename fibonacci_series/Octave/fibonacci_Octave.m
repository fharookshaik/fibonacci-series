function[f] = fibnocci(x)
    f(1)=0;
    f(2)=1;
    n=3;
    while n<=x
        f(n) = f(n-2)+f(n-1);
        n=n+1;
    end
end

z=input('Enter Number To Calculate Fibnocci : ');
fibnocci(z)