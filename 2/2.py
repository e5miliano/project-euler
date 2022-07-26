## Problem 2

## Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
## 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
## By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

import sys
sys.setrecursionlimit(20000)
   
def fib(n):

    if n == 0:
        return 0
    elif n == 1:
        return 1
    else: 
        return (fib(n-1) + fib(n-2))

def fibOneLine(n):
    return (0 if (n == 0) else (1 if (n == 1) else (fib(n-1) + fib(n-2))))
