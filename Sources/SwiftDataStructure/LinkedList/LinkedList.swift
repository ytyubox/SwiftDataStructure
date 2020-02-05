//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/2/5.
//

struct LinkedList<Element> {
	typealias Node = LinkedNode<Element>
	private var head:Node?
	
	public var isEmpty:Bool {head == nil}
	
	public var first:Node? {head}
	
	public var last: Node? {
		guard var node = head else {
			return nil
		}
		
		while let next = node.next {
			node = next
		}
		return node
	}
	public mutating func append(value: Element) {
		let newNode = Node(value: value)
		if let lastNode = last {
			lastNode.next = newNode
		} else {
			head = newNode
		}
	}
	public var count: Int {
		guard var node = head else {
			return 0
		}
		
		var count = 1
		while let next = node.next {
			node = next
			count += 1
		}
		return count
	}
	
	public func node(at index: Int) -> Node {
		if index == 0 {
			return head!
		} else {
			var node = head!.next
			for _ in 1..<index {
				node = node?.next
				if node == nil { //(*1)
					break
				}
			}
			return node!
		}
	}
	public subscript(index: Int) -> Element {
		let node = self.node(at: index)
		return node.value
	}
	public mutating func insert(_ node: Node, atIndex index: Int) {
		let newNode = node
		if index == 0 {
			newNode.next = head
			head = newNode
		} else {
			let prev = self.node(at: index-1)
			let next = prev.next
			newNode.next = prev.next
			prev.next = newNode
		}
	}
	public mutating func removeAll() {
		head = nil
	}
	public mutating func remove(node: Node) -> Element {
		let next = node.next
		
		do {
			head = next
		}
		
		node.next = nil
		return node.value
	}
	
	public mutating func removeLast() -> Element {
		assert(!isEmpty)
		return remove(node: last!)
	}
	
	public mutating func removeAt(_ index: Int) -> Element {
		let node = self.node(at: index)
		assert(node != nil)
		return remove(node: node)
	}
	public mutating func reverse() {
	   var node = head
	   while let currentNode = node {
		 node = currentNode.next
//		 swap(&currentNode.next, &currentNode.previous)
		 head = currentNode
	   }
	 }
	public func map<U>(transform: T -> U) -> LinkedList<U> {
	  let result = LinkedList<U>()
	  var node = head
	  while node != nil {
		result.append(transform(node!.value))
		node = node!.next
	  }
	  return result
	}
}

extension LinkedList: CustomStringConvertible {
  public var description: String {
    var s = "["
    var node = head
    while node != nil {
      s += "\(node!.value)"
      node = node!.next
      if node != nil { s += ", " }
    }
    return s + "]"
  }
}
