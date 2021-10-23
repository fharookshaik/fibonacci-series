function fibonacci(n){
	let n1 = 0 , n2 =1 ,next ;
	next = n1+n2;
	console.log("fibonacci series :")
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
