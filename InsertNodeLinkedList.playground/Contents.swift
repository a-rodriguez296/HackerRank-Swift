//: Playground - noun: a place where people can play

import UIKit
import Foundation

final class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?
    
    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class SinglyLinkedList {
    var head: SinglyLinkedListNode?
    var tail: SinglyLinkedListNode?
    
    public init() {}
    
    public func insertNode(nodeData: Int) {
        self.insertNode(node: SinglyLinkedListNode(nodeData: nodeData))
    }
    
    private func insertNode(node: SinglyLinkedListNode) {
        if let tail = tail {
            tail.next = node
        } else {
            head = node
        }
        
        tail = node
    }
}

func insertNodeAtPosition(llist: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
    
    let newNode = SinglyLinkedListNode(nodeData: data)
    if position == 0 {
        
        
        newNode.next = llist
        return newNode
    } else {
        
        var currentPosition = 0
        var currentNode = llist
        while currentPosition < position - 1 {
            currentNode = currentNode?.next
            currentPosition += 1
        }
        
        if let nextNode = currentNode?.next {
            newNode.next = nextNode
            currentNode?.next = newNode
        }
        
        return llist
    }
}
