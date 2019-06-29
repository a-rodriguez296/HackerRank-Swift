//: Playground - noun: a place where people can play

import UIKit

var str = "lateleletal"

func isPalindrome(str: String) -> Bool {
    print(str)
    if str.count == 1 {
        return true
    } else if(str.count == 2) {
        let initialChar = str[str.startIndex]
        let finalChar = str[str.index(before: str.endIndex)]
        return initialChar == finalChar
    } else {
        let initialChar = str[str.startIndex]
        let finalChar = str[str.index(before: str.endIndex)]
        if initialChar == finalChar {
            let range = str.index(after: str.startIndex)..<str.index(before: str.endIndex)
            return isPalindrome(str: String(str[range]))
        } else {
            return false
        }
        
    }
}


isPalindrome(str: str)

