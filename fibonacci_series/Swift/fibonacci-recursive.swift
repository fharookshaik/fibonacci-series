func fibonacci(n:Int)->Int{
	if (n==0) || (n==1){
		return n  //In case n==0 or n==1, we don't always print the first two elements
	}
	else
	{
		return fibonacci(n:n-1) + fibonacci(n:n-2)
	}
}

print("Enter the number of elements:")
let number = readLine()
var num=Int(number!)
var i=0
while(num!>=i){
	print(fibonacci(n:i))
	i+=1
}