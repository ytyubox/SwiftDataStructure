//
//  LinkedNode.swift
//  
//
//  Created by 游宗諭 on 2020/2/5.
//

public class LinkedNode<Element>:Node<Element> {
	public init(value: Element,
				  next: LinkedNode<Element>? = nil) {
		self.next = next
		super.init(value: value)
	}
	
	public var next: LinkedNode?
}
