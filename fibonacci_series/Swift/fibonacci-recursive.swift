func fibonacci(num: Int) -> Int {
	if (num==0) || (num==1) {
		return num }  //In case n==0 or n==1, we don't always print the first two elements 
	else {
		return fibonacci(num: num-1) + fibonacci(num: num-2) }
}

print("Enter the number of elements:")
let number = readLine()
var numInt=Int(number!)
var iterator=0
while numInt!>=iterator {
	print(fibonacci(num: iterator))
	iterator+=1 }
