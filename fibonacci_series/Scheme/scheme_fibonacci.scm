(display "Input Number: ")
(newline)
(define val (read)) ;sets user input to val
(display "First ")
(display val)
(display " numbers in fibonacci sequence:")
(newline)


;iterative fibonacci sequence generator
;Linear Time Complexity
;O(n)
(define (fib n)
  (let loop
    ((x 0)
      (y 1)
      (count n))
    (if (= count 0)
      x
      (loop y (+ x y) (- count 1)(if (>= count 2) (display y))(newline)))))
      ;x+y until count = 0
(display (fib val)) ;calls fib function with val

(newline)

;recursive fibonacci sequence generator
;Exponential Time Complexity
;O(2^n)

(define (fib2 n)
  (cond
    ((= n 0) 0)
    ((= n 1) 1)
    (else
      (+ (fib2 (- n 1))
          (fib2 (- n 2))))))
(display (fib2 val))

