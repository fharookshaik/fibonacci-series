Fibonacci Sequence Program in bhai lang

hi bhai

  bhai ye hai t1 = 0;
  bhai ye hai t2 = 1;

  bhai ye hai numberOfTerms = 50;
  bhai ye hai nextTerm = 0;
  jab tak bhai (numberOfTerms > 0) {
      bol bhai nextTerm;
      t1 = t2;
      t2 = nextTerm;
      nextTerm = t1 + t2;
      numberOfTerms = numberOfTerms - 1;
  }
bye bhai
