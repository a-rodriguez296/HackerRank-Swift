//: Playground - noun: a place where people can play

import UIKit
import Foundation

final class DoublyLinkedListNode {
    var data: Int
    var next: DoublyLinkedListNode?
    weak var prev: DoublyLinkedListNode?
    
    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class DoublyLinkedList {
    var head: DoublyLinkedListNode?
    var tail: DoublyLinkedListNode?
    
    public init() {}
    
    public func insertNode(nodeData: Int) {
        self.insertNode(node: DoublyLinkedListNode(nodeData: nodeData))
    }
    
    private func insertNode(node: DoublyLinkedListNode) {
        if let tail = tail {
            tail.next = node
            node.prev = tail
        } else {
            head = node
        }
        
        tail = node
    }
}

func printDoublyLinkedList(head: DoublyLinkedListNode?, sep: String, fileHandle: FileHandle) {
    var node = head
    
    while node != nil {
        fileHandle.write(String(node!.data).data(using: .utf8)!)
        
        node = node!.next
        
        if node != nil {
            fileHandle.write(sep.data(using: .utf8)!)
        }
    }
}

// Complete the reverse function below.

/*
 * For your reference:
 *
 * DoublyLinkedListNode {
 *     data: Int
 *     next: DoublyLinkedListNode?
 *     prev: DoublyLinkedListNode?
 * }
 *
 */
func reverse(llist: DoublyLinkedListNode?) -> DoublyLinkedListNode? {
    
    //llist == nil
    if llist == nil {
        return nil
    } else {
        
        //One link list
        if llist?.next == nil {
            return llist
        } else {
            
            var auxHead = llist
            var previous:DoublyLinkedListNode? = nil
            
            while auxHead != nil {
                let next = auxHead?.next
                auxHead?.next = previous
                previous = auxHead
                
                if next == nil {
                    break
                } else {
                    auxHead = next
                }
            }
            return auxHead
        }
    }
    
}
