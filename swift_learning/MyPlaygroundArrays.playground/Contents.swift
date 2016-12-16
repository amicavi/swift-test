//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myArray = [35, 36, 5, 2]

print(myArray[0])

print(myArray.count)

myArray.append(1)

myArray.remove(at: 1)

myArray.sort()

print(myArray)

var arrayChallenge = [3.87, 7.1, 8.9]

arrayChallenge.remove(at: 1)

arrayChallenge.append(arrayChallenge[0] * arrayChallenge[1])

let mixArray = ["Patsy", 29, true] as [Any]

let stringArray = [String]()


// Dictionary

var myDictionary = ["computer": "It my tool for work", "coffee": "Best drink ever"]

print(myDictionary["computer"]!)

print(myDictionary.count)

myDictionary["pen"] = "Something to write ideas"

myDictionary.removeValue(forKey: "computer")

print(myDictionary)

var gameOfCharacters = [String : Decimal]()

gameOfCharacters["ghost"] = 8.7


// Dictionary Challenge
let menu = ["Pizza": 10.99, "Ice cream": 4.99, "Salad": 7.99]

print("The total cost of my meal is \(menu["Pizza"]! + menu["Ice cream"]!)")

