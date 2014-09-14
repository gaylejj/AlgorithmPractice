// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// this is O(n)
for number in numbers {
    if number == 10 {
        println("Found 10")
    }
}

// this is O(n)^2
for number in numbers {
    println(number)
    for otherNumber in numbers {
        println(number + otherNumber)
    }
}

// Big O Cheatsheet 