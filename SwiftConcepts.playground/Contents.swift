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
