//: Playground - noun: a place where people can play

import UIKit


func hourglassSum(arr: [[Int]]) -> Int {
    
    var x = 0
    var y = 0
    var currentEndingX = 2
    var currentEndingY = 2
    var maxResult = Int.min
    
    
    while currentEndingX < arr.count {
        
        while currentEndingY < arr.count {
            
            let a = arr[x][y]
            print(a)
            let b = arr[x][y+1]
            print(b)
            let c = arr[x][y+2]
            print(c)
            let d = arr[x+1][y+1]
            print(d)
            let e = arr [x+2][y]
            print(e)
            let f = arr[x+2][y+1]
            print(f)
            let g = arr[x+2][y+2]
            print(g)
            
            
            let localSum = a+b+c+d+e+f+g
            print("local sum:\(localSum)")
            print("========================================")
            if localSum > maxResult {
                maxResult = localSum
            }
            currentEndingY += 1
            y += 1
        }
        
        currentEndingY = 2
        y = 0
        currentEndingX += 1
        x += 1
    }
    
    return maxResult
    
}
