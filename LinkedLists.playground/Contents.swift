import UIKit
import Foundation

class Node {
    var data: Int?
    var next: Node?
    
    init(data:Int?, next: Node?) {
        self.data = data
        self.next = next
    }
}


func lengthOflist(node: Node) -> Int {
    var len = 0
    if node.next == nil && node.data == nil {
        return 0
    }
    var current = node
    while current.next != nil {
        len += 1
        current = current.next!
    }
    return len
}

func printLastNodeData(node: Node) {
    var current = node
    while current.next != nil {
        current = current.next!
    }
    print(current.data ?? "Nil")
    print(lengthOflist(node: node))
}

func insertLinkedList(data: Int, list: Node?) {
    if list?.data == nil && list?.next == nil {
        let new = Node(data: data, next: nil)
        printLastNodeData(node: new)
    } else {
        var current = list
        while current?.next != nil {
            current = current?.next
        }
        let newNode = Node(data: data, next: nil)
        current?.next = newNode
        printLastNodeData(node: list!)
    }
    
}

func hasCycle(node: Node?) -> Bool {
    var nodeDict = [Int:Int]()
    var current = node
    while current?.next != nil {
        if let data = current?.data, nodeDict[data] != nil {
            return true
        } else {
            nodeDict[(current?.data)!] = 1
        }
        current = current?.next
    }
    
    return false
}

let node5 = Node(data: 5, next: nil)
let node4 = Node(data: 4, next: node5)
let node3 = Node(data: 3, next: node4)
let node2 = Node(data: 2, next: node3)
let node1 = Node(data: 1, next: node2)

print(hasCycle(node: node1))





