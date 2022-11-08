import strutils as str
echo "enter how many fibonacci numbers you want"

var num:int = str.parseInt(readLine(stdin))

var num0: int = 0
var num1: int = 1
var num2: int = 0 
var i: int= 1

while i < num or i == num:
    echo num1
    num0 = num1
    num1 = num2
    num2 = num0+num1
    i = i + 1