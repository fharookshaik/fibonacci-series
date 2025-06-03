DECLARE FUNCTION Fibbonacci (n)

FUNCTION Fibbonacci(n)
    IF n = 0 THEN
        Fibbonacci = 0
    ELSEIF n = 1 THEN
        Fibbonacci = 1
    ELSE
        Fibbonacci = Fibbonacci(n-1) + Fibbonacci(n-2)
    END IF
END FUNCTION

DIM n AS INTEGER
PRINT "Enter the number of terms for Fibonacci sequence: ";
INPUT n
PRINT "Fibonacci of "; n; ": "

FOR i = 0 TO n-1
    PRINT Fibbonacci(i);
NEXT i
