//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func convertStringToInt(with string:String) -> Int {
    
    var counter = Double(string.count - 1)
    var result = 0
    var flag = false
    
    for char in string {
        
        if let number = Int(String(char)) {
            let expo = Int(pow(10.0, counter))
            let localNumber = number * expo
            print("expo:\(expo) ")
            result += localNumber
            
        } else {
            flag = true
        }
        counter -= 1
    }
    
    
    
    
    return !flag ? result : -result
}

convertStringToInt(with: "-6001")
