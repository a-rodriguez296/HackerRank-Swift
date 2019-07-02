//: Playground - noun: a place where people can play

import UIKit

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

// Complete the sortedInsert function below.

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
func sortedInsert(llist: DoublyLinkedListNode?, data: Int) -> DoublyLinkedListNode? {
    
    let newNode = DoublyLinkedListNode(nodeData: data)
    
    if llist == nil {
        return newNode
    } else if let head = llist {
        
        
        if data < head.data {
            newNode.next = head
            return newNode
        } else {
            
            var auxHead:DoublyLinkedListNode? = llist
            var flag = false
            //Data could be in the middle
            while auxHead != nil  && auxHead!.data < data {
                
                //Last case
                if auxHead?.next == nil {
                    flag = true
                    break
                } else {
                    auxHead = auxHead!.next
                }
            }
            
            //Middle case
            if !flag {
                if let previous = auxHead?.prev {
                    
                    previous.next = newNode
                    auxHead?.prev = newNode
                    
                    newNode.prev = previous
                    newNode.next = auxHead
                }
            } else {
                auxHead?.next = newNode
                newNode.prev = auxHead
            }
        }
    }
    return llist
}
