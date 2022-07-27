def primeFactors(n):
  
  factors= list(filter(lambda x: (n % x == 0), [ x for x in range(2,n-1)])) 
  
  if len(factors) > 0:
    factors = [factors[0]] + primeFactors(int(n / factors[0]))
  else:
    return [n]
  
  return factors

print('35 prime factors', primeFactors(35)) 