(defun fibRecursive (n)
  (if (< n 2)
      n
      (+ (fibRecursive (- n 1))
         (fibRecursive (- n 2)))))

(defun fibIterative(num)
  (do ((n 0 (1+ n))
       (cur 0 next)
       (next 1 (+ cur next)))
      ((= num n) cur)))