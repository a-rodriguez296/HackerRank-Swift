//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func countingValleys(n: Int, s: String) -> Int {
    
    var level = 0
    var valleyCounter = 0
    var amIInValley = false {
        willSet(newValue) {
            if amIInValley == false && newValue == true {
                valleyCounter += 1
            }
        }
    }
    
    for letter in s {
        
        if letter == "D" {
            level -= 1
        } else if letter == "U" {
            level += 1
        }
        amIInValley = level < 0
        
    }
   return valleyCounter
}
