//: Playground - noun: a place where people can play

import UIKit

// swift sequences

// 1. print odd numbers only
func printOdds(num: Int) -> [Int] {
    var listOfOdds = [Int]()
    var number = 1
    for _ in 0...num {
        if number <= num {
            listOfOdds.append(number)
            number += 2
        }
    }
    return listOfOdds
}
print(printOdds(num: 10))
