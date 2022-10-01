10 INPUT "Elements to print";elements
15 LET firstElement = 0
20 LET previous = 1
30 LET current = 1
40 PRINT firstElement 
40 PRINT previous
50 PRINT current
60 FOR i = 1 TO elements
70 LET newCurrent = current + previous
80 PRINT newCurrent
90 LET previous = current
100 LET current = newCurrent
110 NEXT i
