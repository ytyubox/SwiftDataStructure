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
		let node = Node(value: value, next: nil)
		XCTAssertEqual(node.value, value)
	}

}
