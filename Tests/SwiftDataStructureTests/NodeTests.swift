//
//  NodeTests.swift
//  SwiftDataStructure
//
//  Created by 游宗諭 on 2020/2/5.
//

import XCTest
import SwiftDataStructure

class NodeTests: XCTestCase {
	func testNodeCreate() {
		let value = 1
		let node = Node(value: value)
		XCTAssertEqual(node.value, value)
	}
	func testLinkedNodeCreate() {
		let value = 1
		let nextNode:LinkedNode<Int>? = nil
		let node = LinkedNode(value: value, next: nextNode)
		XCTAssertEqual(node.value, value)
		XCTAssertEqual(node.next, nextNode)
	}
	
}
