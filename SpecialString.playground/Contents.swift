//: Playground - noun: a place where people can play

import UIKit

var str = "alateleletala"

func isSpecialString(str: String) -> Bool{
    print(str)
    if str.count == 1 {
        return true
    } else {
        
        let initialChar = str[str.startIndex]
        let finalChar = str[str.index(before: str.endIndex)]
        
        //String count == 2
        if str.count == 2 {
            return initialChar == finalChar
        } else {
            //String count > 2
            if initialChar != finalChar {
                return false
            } else {
                let range = str.index(after: str.startIndex)..<str.index(before: str.endIndex)
                return isSpecialString(str: String(str[range]))
            }
        }
    }
}

isSpecialString(str: str)
