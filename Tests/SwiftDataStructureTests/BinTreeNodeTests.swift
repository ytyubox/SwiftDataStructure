//
//  BinTreeNodeTests.swift
//  SwiftDataStructure
//
//  Created by 游宗諭 on 2020/2/5.
//

import XCTest
import SwiftDataStructure

class BinTreeNodeTests: XCTestCase {
	func testBinNodeCreate() {
		let value = 1
		let node = BintreeNode(value)
		XCTAssertEqual(node.value, value)
	}
	func testNodeEqual() {
		let value = 1
		let node1 = BintreeNode(value)
		let node2 = node1
		XCTAssertTrue(node1 === node2)
	}
}
