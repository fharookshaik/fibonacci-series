' Fibonacci Sequence Generator in FreeBASIC

Declare Function Fibonacci(ByVal n As Integer) As Integer

' Main program
Dim As Integer n, i

Print "Enter the number of terms for Fibonacci sequence: ";
Input n

Print "Fibonacci of "; n; ": ";
For i = 0 To n - 1
    Print Fibonacci(i); " ";
Next i

Print  ' Print a newline at the end

' Function to calculate Fibonacci number
Function Fibonacci(ByVal n As Integer) As Integer
    If n = 0 Then
        Return 0
    ElseIf n = 1 Then
        Return 1
    Else
        Return Fibonacci(n - 1) + Fibonacci(n - 2)
    End If
End Function