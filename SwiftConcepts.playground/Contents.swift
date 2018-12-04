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
func timesTableOf(times: Int, numberOfTimes: Int) -> [Int] {
    var timesNumbers = [Int]()
    var number = times
    for _ in 1...numberOfTimes {
        timesNumbers.append(number)
        number += times
    }
    return timesNumbers
}
print(timesTableOf(times: 2, numberOfTimes: 5))


/* 6. counting up to numbers in 10 steps */
func countUpTenTimes(countUpTo: Int) -> [Int] {
    var numbersTo = [Int]()
    var dividedNumber = countUpTo / 10
    let num = dividedNumber
    for _ in 1...10 {
        numbersTo.append(dividedNumber)
        dividedNumber += num
    }
    return numbersTo
}
print(countUpTenTimes(countUpTo: 1000))


/* 7. alternate order of numbers. prints greater number then smaller number */
var start = 1
var end = 8
var result = [Int]()

while result.count < end {
        if start == 1 {
            result.append(start)
        } else if start % 2 == 0 {
                if start == end {
                    result.append(start)
                }
                else {
                    let next = start + 1
                    result.append(next)
                    result.append(start)
                }
            }
    start += 1
}
print(result)


/* 8. create a function that takes in an array of strings and returns back an array with all the removed duplicate strings */

/*  - you are given an array of strings and supposed to return an array of strings with no duplicates
    add the words that once checked arent duplicates to a new array
    check a set and if the word isnt in the set yet, add it to the set and add it to a new array
    this will add all the words in the original array that arent duplicates\
    ** use a set because sets have a run time of 0 to 1
 */

func removeDuplicateStrings(array: [String]) -> [String] {
    var encountered = Set<String>()
    var result = [String]()
    
    /* go through the array, add strings to a set
       search through the set, add it to a different array if the value does not equal to the value in the set
    */

    for value in array {
        if encountered.contains(value) {
            // do not add a duplicate value.
            // add to a set because the run time is 0 to 1
        } else {
            encountered.insert(value)
            result.append(value)
        }
    }
    return result
}

let animals = ["cat", "dog", "monkey", "cat", "dog", "cricket", "cricket"]
print(animals)
let remove = removeDuplicateStrings(array: animals)
print(remove)


/* 9. replace a specific letter in a string with z */


/* 10. add strings to an array */

func addStringToArray(sentence: String) -> [String] {
    let arrayOfSentence = [String]()
    var letterArray = [Character]()
    
    for letter in sentence {
        letterArray.append(letter)
    }
    for _ in letterArray {
        
    }
    
    print(letterArray)
    return arrayOfSentence
}
addStringToArray(sentence: "Hi my name is Rinni")


/* 10. add strings in array to a string */
func arrayToString(array: [String]) -> String {
    
    var sentence = array.joined(separator: " ")
    sentence.append(".")
    
    
    return sentence
}
print(arrayToString(array: ["hi", "my", "name", "is", "Rinni"]))


/* 11. check values in an array. if there is less than 2 mosquittos, "prepare to slap", if there are 5, "bring out the bug spray"
    if there are more than 5, "prepare to spray and use bug cream"
 */

var animalsInRoom = ["mosquito", "ant", "butterfly", "bug", "mosquito", "mosquito"]

func prepareForMosquitos(animals: [String]) {
    let string = "prepare to slap"
    let string2 = "bring out the bug spray"
    let string3 = "prepare to spray and use bug cream"
    
    var mosquitos = 0
    
    for animals in animals {
        if animals == "mosquito" {
            mosquitos += 1
        }
    }
    
    if mosquitos <= 2 {
        print(string)
    } else if mosquitos <= 5 {
        print(string2)
    } else {
        print(string3)
    }
}
prepareForMosquitos(animals: animalsInRoom)

/* 12. write a function that returns the factorial of N
 */
func factorial(n: Int) -> Int {
    var factorialValue = 1
    for number in 1...n {
        factorialValue *= number
    }

    return factorialValue
}
print(factorial(n: 5))

// reverse a given number
func reverseInt(num: Int) -> String {
    let stringNum = String(num)
    var emptArray = [Character]()
    let split = stringNum.split(separator: ",")
    for i in split {
        print(i)
        for j in i {
            print(j)
            emptArray.append(j)
            
        }
    }
    print(emptArray)
    emptArray.reverse()
    
    var answer = ""
    for i in emptArray {
        answer += String(i)
    }
    return answer
}
print(reverseInt(num: 564))


// use OOP to find the curcumference and area of a circle
class Circle {
    var radius: Double
    var circumference: Double
    var area: Double
    var diameter: Double
    
    init(radius: Double) {
        self.radius = radius
        self.circumference = (Double(2.0 * 3.14) * Double(radius))
        self.area = Double(3.14 * (radius * radius))
        self.diameter = radius * 2.0
    }
    
    func halfArea() -> Double {
        return area / 2
    }
}

class smallCircle: Circle {
    override init(radius: Double) {
        super.init(radius: radius)
    }
    
    
}

let circle1 = smallCircle(radius: 4)
print(circle1.area)
print(circle1.halfArea())



