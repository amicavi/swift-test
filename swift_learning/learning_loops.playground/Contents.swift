//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// While

var i = 1

while i <= 20 {
    
    print(i * 7)
    
    i = i + 1
    
}

var myArray = [7, 23, 98, 1, 0, 763]
var j = 0

while j < myArray.count {
    
    myArray[j] += 1
    
    j = j + 1
    
}

print(myArray)

// For Loops

let arrayNum = [8, 4, 8, 1]

for number in arrayNum {
    print(number)
}

//

var family = ["Margarita", "Alberto", "Mayeri", "Patsy"]

for member in family {
    
    print("Hi there \(member)!")
}

//

var numbers = [7, 2, 9, 4, 1]

for (index, value) in numbers.enumerated() {
    
    numbers[index] += 1
    
}

print(numbers)

//

var half = [Decimal]()
half = [8, 7, 19, 28]


for (index, value) in half.enumerated() {
    
    half[index] = value / 2
    
}

print(half)



