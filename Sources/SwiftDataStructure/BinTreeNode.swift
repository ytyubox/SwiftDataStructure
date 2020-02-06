//
//  BinTreeNode.swift
//  
//
//  Created by 游宗諭 on 2020/2/6.
//

public class BintreeNode<Element> {
	public init(_ value: Element,
				  left: Node? = nil,
				  right: Node? = nil) {
		self.value = value
		self.left = left
		self.right = right
	}
	
	public typealias Node = BintreeNode<Element>
	public var value:Element
	public var left: Node?
	public var right: Node?
}
