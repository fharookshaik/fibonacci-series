const fibonacciIterative = (n) => {
  if (n <= 1) {
    return n;
  }

  let prev = 0;
  let curr = 1;

  for (let i = 2; i <= n; i++) {
    let temp = curr;
    curr = curr + prev;
    prev = temp;
  }
  return curr;
};
