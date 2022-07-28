##Problem 21

##Evaluate the sum of all the amicable numbers under 10000.

def properDivisors(n):
    divisors = list(filter(lambda x: (n % x == 0), [ x for x in range(1,n-1)])) 
    return divisors

numbers = [x for x in range(1,50)]

divs = list(zip(numbers, map(sum, map(properDivisors, numbers))))

number_list = [ x for x in range(1,1000) if x % 5 == 0 and x % 3 == 0]

#def amicable(rangemax=20000):
#    n2divsum = {n: sum(proper_divs(n)) for n in range(1, rangemax + 1)}
#    for num, divsum in n2divsum.items():
#        if num < divsum and divsum <= rangemax and n2divsum[divsum] == num:
#            yield num, divsum

print(divs)

