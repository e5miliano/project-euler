##Problem 21

##Evaluate the sum of all the amicable numbers under 10000.

rangemax = 5000

def proper_divs(n):
    divs = list(filter(lambda x: (n % x == 0), [ x for x in range(1,n-1)])) 
    return divs
    
n2divsum = {n: sum(proper_divs(n)) for n in range(1, rangemax)}

final = []

for num, divsum in n2divsum.items():
  if num < divsum and divsum <= rangemax and n2divsum[divsum] == num:
    final.append([num, divsum])

print(final)


