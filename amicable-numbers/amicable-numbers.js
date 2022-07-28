//Problem 21

//Evaluate the sum of all the amicable numbers under 10000.

let rangemax = 3000

const createList = n => {
  return Array.from([...Array(n).keys()], x => x)
}

const properDivisors = n =>{
    let divs = createList(n).filter(x => n % x == 0)
    return divs
}

const sum = xs => xs.reduce((a, x) => a + x, 0);

let n2divsum= {}

for (let n = 1; n < rangemax; n++) {
   n2divsum[n] = (sum(properDivisors(n)))
}

let final = []

for (const [key, value] of Object.entries(n2divsum)) {
    if ((key < value) && (value <= rangemax) && (n2divsum[value] == key)){
      final.push([key, value])  
    }
}

console.log(final)
