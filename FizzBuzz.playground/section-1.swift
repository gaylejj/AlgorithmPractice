// Playground - noun: a place where people can play

import Foundation

//for i in 1..<100 {
//    switch i {
//    case 1: i % 3
//        println("Fizz")
//    case 2: i%5
//        println("Buzz")
//    case 3: i % 3 && i % 5
//        println("FizzBuzz")
//    default:
//        println("/(i)")
//    }
//}


//for i in 1...100 {
//    switch i {
//    case 1: i % 3 != 0 && i % 5 != 0
//        println("FizzBuzz")
//    case 2: i % 3
//        println("Fizz")
//    case 3: i % 5
//        println("Buzz")
//    default:
//    if i % 3 == 0 {
//        println("Fizz")
//    } else if i % 5 == 0 {
//        println("Buzz")
//    } else if i % 5 == 0 && i % 3 == 0 {
//        println("FizzBuzz")
//    } else {
//        println(i)
//
//    }
//    }
//}

func fizzbuzz(i: Int) -> String {
    
    let result = (i % 3, i % 5)
    
    switch result {
    case (0,0):
        return "Fizz Buzz"
    case (0,_):
        return "Fizz"
    case (_,0):
        return "Buzz"
    default:
        return "\(i)"
    }
}

for number in 1...100 {
    println(fizzbuzz(number))
}




