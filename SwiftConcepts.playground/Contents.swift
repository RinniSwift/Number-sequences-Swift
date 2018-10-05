//: Playground - noun: a place where people can play

import UIKit

// swift sequences

// 1. print odd numbers only
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
