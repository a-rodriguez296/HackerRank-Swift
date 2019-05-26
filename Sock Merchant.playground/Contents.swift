//: Playground - noun: a place where people can play

import UIKit

var array = [10, 20, 20, 10, 10, 30, 50, 10, 20]


func sockMerchant(with array: [Int]) -> Int {
    
    let countedSet = NSCountedSet(array: array)
    var counter = 0
    
    let enumerator = countedSet.objectEnumerator()
    var element = enumerator.nextObject()
    
    while (element != nil) {
        
        if let unwrappedElement = element {
            counter +=  (countedSet.count(for: unwrappedElement) / 2)
        }
        element = enumerator.nextObject()
    }
    return counter
}


sockMerchant(with: array)
