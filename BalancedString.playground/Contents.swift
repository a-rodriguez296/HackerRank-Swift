//: Playground - noun: a place where people can play

import UIKit

var auxDic = [Character:Character]()

auxDic[Character("(")] = Character(")")
auxDic[Character("[")] = Character("]")
auxDic[Character("{")] = Character("}")


struct Stack<Element> {
    
    var array = [Element]()
    
    mutating func push(integer: Element) {
        array.insert(integer, at: 0)
    }
    
    mutating func pop() -> Element?{
        if array.count > 0 {
            return array.removeFirst()
        } else {
            return nil
        }
    }
    
    func peek() -> Element? {
        return array.first
    }
    
    func isEmpty() -> Bool {
        return array.count == 0
    }
    
    func count() -> Int {
        return array.count
    }
    
    mutating func restartStack() {
        array.removeAll()
    }
}

var stack = Stack<Character>()




func isBalanced(s: String) -> String{
    stack.restartStack()
    for char in s.characters {
        if !isClosingCharacter(with: char) {
            stack.push(integer: char)
        } else {
            if let lastElement = stack.peek(), let dictPair = auxDic[lastElement], char == dictPair {
                stack.pop()
                continue
            } else {
                return "NO"
            }
        }
    }
    return stack.isEmpty() == true ? "YES" : "NO"
}

func isClosingCharacter(with character:Character) -> Bool{
    if character == Character(")") || character == Character("]") || character == Character("}") {
        return true
    } else {
        return false
    }
}




