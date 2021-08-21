const getFibonacciNumbers = (seriesLength: number): number[] => {
  //Will always start with 0, 1, so we can safely initialize.
  const seriesArr: number[] = [0, 1];

  //We added the two initial numbers, so remove 2 from series length to compensate.
  for (let i = 1; i <= seriesLength - 2; i++) {
    seriesArr.push(seriesArr[i - 1] + seriesArr[i]);
  }
  return seriesArr;
};

getFibonacciNumbers(50);
