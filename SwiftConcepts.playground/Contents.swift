//: Playground - noun: a place where people can play

import UIKit
// SWIFT SEQUENCES

/*  1. print odd numbers only  */
func printOdds(num: Int, even: Bool) -> [Int] {
    var listOfOdds = [Int]()
    var number1 = 1
    var number2 = 2
    if even == false {
        for _ in 0...num {
            if number1 <= num {
                listOfOdds.append(number1)
                number1 += 2
            }
        }
    } else {
        for _ in 0...num {
            if number2 <= num {
                listOfOdds.append(number2)
                number2 += 2
            }
        }
    }
    return listOfOdds
}
print(printOdds(num: 10, even: false))


/* 2. print the power of a number until a limit  */
func powerOfNum(number: Int, limit: Int) -> [Int] {
    var powers = [Int]()
    var start = number
    for _ in 0...limit {
        if start <= limit {
            powers.append(start)
            start *= number
        }
    }
    return powers
}
print(powerOfNum(number: 2, limit: 64))


/* 3. fibonacci numbers (the previous number adds itself)  */
func fibonacciNumbers(limitOfTimes: Int) -> [Int] {
    var fiboNumbers = [Int]()
    var x = 0
    var y = 1
    fiboNumbers.append(x)
    for _ in 0...limitOfTimes {
        let z = x + y
        x = y
        y = z
        fiboNumbers.append(z)
        
    }
    return fiboNumbers
}
print(fibonacciNumbers(limitOfTimes: 10))


/* 4. alternating order (last num then first num)  */
func alternatingOrderOfNumbers(numbers: Int) -> [Int] {
    var alternatingOrderOfNumbers = [Int]()
    var start = 1
    var end = numbers
    while start < end {
        alternatingOrderOfNumbers.append(start)
        alternatingOrderOfNumbers.append(end)
        start += 1
        end -= 1
        if start == end {
            alternatingOrderOfNumbers.append(start)
        }
    }
    return alternatingOrderOfNumbers
}
print(alternatingOrderOfNumbers(numbers: 5))


/* 5. print the times table of a given number with the given times  */


