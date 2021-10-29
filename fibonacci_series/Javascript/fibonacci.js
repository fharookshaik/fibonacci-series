
/*codacy does not allow console logging , but there is no other alternative for this since I am not running it on any browser.
If at all this needs to be passed as 0 issues on codacy , I will need to remove all the console.log() and then there will be simply no 
output although the function will run all fine.*/

function fibonacci(n){
	let n1 = 0 , n2 =1 ,next ;
	next = n1+n2;
	console.log("fibonacci series :");
	console.log(n1);
	console.log(n2);
	while (next<n){
		console.log(next);
		n1 = n2;
		n2 = next;
		next = n1+n2;
	}
}
fibonacci(15);
