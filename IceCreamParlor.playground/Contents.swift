//: Playground - noun: a place where people can play

import UIKit

func whatFlavors(cost: [Int], money: Int) -> Void {
    
    var responsePositions = (0,0)
    var responseSum = 0
    var i = 0
    var j = i + 1
    
    
    while i < cost.count {
        
        let firstValue = cost[i]
        
        while j < cost.count {
            
            let secondValue = cost[j]
            let sum = firstValue + secondValue
            
            if sum > responseSum && sum <= money {
                responseSum = sum
                responsePositions = (i,j)
                
                if sum == money {
                    print("\(responsePositions.0 + 1) \(responsePositions.1 + 1)")
                    return
                }
            }
            j += 1
        }
        i += 1
        j = i + 1
    }
    
    print("\(responsePositions.0 + 1) \(responsePositions.1 + 1)")
}


let array = [4,3,2,5,7]
let money = 8

whatFlavors(cost: array, money: money)
