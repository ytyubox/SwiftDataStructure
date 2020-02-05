//
//  Node.swift
//  
//
//  Created by 游宗諭 on 2020/2/5.
//

open class Node<Element> {
	public init(value: Element) {
		self.value = value
	}
	
	/// the value of this node
	public var value:Element
	/// the referance of next node
}

extension Node:Equatable where Element:Equatable {
	public static func == (lhs: Node<Element>, rhs: Node<Element>) -> Bool {
		lhs.value == rhs.value
	}
}


