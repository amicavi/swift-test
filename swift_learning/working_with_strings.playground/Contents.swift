//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var newString = str + " Pat!"

for character in newString.characters {
    
    print(character)
    
}

let newTypeString = NSString(string: newString)

newTypeString.substring(to: 5)

newTypeString.substring(from: 4)

NSString(string: newTypeString.substring(from: 6)).substring(to: 3)

newTypeString.substring(with: NSRange(location: 6, length: 3))

if newTypeString.contains("Pat") {
    
    print("newTypeString has my name on it")
    
}

newTypeString.components(separatedBy: " ")

newTypeString.uppercased

newTypeString.lowercased