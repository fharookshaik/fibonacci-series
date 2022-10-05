def fib( n):
	if n == 0: return 0
	elif n == 1: return 1
	else: res = { 0: 0,1: 1}
	for i in range(1, n):
		temp = res[i] + res[i-1]
		res[i+1] = temp
	return list(res.values())[-1]
fib(int(input()))
