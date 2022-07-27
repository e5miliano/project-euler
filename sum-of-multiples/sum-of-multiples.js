// Problem 1

// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.



const isDivisibleByN = n => {
    return function(x) {
        return x % n == 0
    }
}

let numbers = Array.from([...Array(1000).keys()], x => x + 1).filter(isDivisibleByN(5)).filter(isDivisibleByN(3))

console.log(numbers.reduce((a, b) => a + b, 0))

