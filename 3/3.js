const primeFactors = (n) => {
  
    let factors = Array.from([...Array(n-1).keys()], x => x + 2).filter(x => n % x === 0)
    factors.pop() 
    
    if (factors.length > 0){
      factors = [factors[0]].concat(primeFactors(n / factors[0]))
    }else{
      return [n]
    }
  
    return factors
  }
  
  
  console.log('35', primeFactors(35))
  