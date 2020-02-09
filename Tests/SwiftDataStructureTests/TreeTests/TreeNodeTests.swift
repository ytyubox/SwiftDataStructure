import XCTest
import SwiftDataStructure

class TreeNodeTESTS: XCTestCase {
	
	let tree = TreeNode<String>(value: "beverages")
	
	let hotNode = TreeNode<String>(value: "hot")
	let coldNode = TreeNode<String>(value: "cold")
	
	let teaNode = TreeNode<String>(value: "tea")
	let coffeeNode = TreeNode<String>(value: "coffee")
	let chocolateNode = TreeNode<String>(value: "cocoa")
	
	let blackTeaNode = TreeNode<String>(value: "black")
	let greenTeaNode = TreeNode<String>(value: "green")
	let chaiTeaNode = TreeNode<String>(value: "chai")
	
	let sodaNode = TreeNode<String>(value: "soda")
	let milkNode = TreeNode<String>(value: "milk")
	
	let gingerAleNode = TreeNode<String>(value: "ginger ale")
	let bitterLemonNode = TreeNode<String>(value: "bitter lemon")
	
	func testTreeNode() {
		XCTAssertEqual(tree.value, "beverages")
		tree.addChild(hotNode)
		tree.addChild(coldNode)
		
		hotNode.addChild(teaNode)
		hotNode.addChild(coffeeNode)
		hotNode.addChild(chocolateNode)
		
		coldNode.addChild(sodaNode)
		coldNode.addChild(milkNode)
		
		teaNode.addChild(blackTeaNode)
		teaNode.addChild(greenTeaNode)
		teaNode.addChild(chaiTeaNode)
		
		sodaNode.addChild(gingerAleNode)
		sodaNode.addChild(bitterLemonNode)
		
		
		
		XCTAssertNotNil(tree.search("cocoa"))
		XCTAssertNotNil(tree.search("chai"))
		XCTAssertNil(tree.search("bubbly"))
		
		XCTAssertEqual(
			tree.description,
			"""
beverages \
{hot\
 {tea\
 {black, green, chai},\
 coffee, cocoa},\
 cold\
 {soda\
 {ginger ale, bitter lemon},\
 milk}\
}
""")
	}
}
extension TreeNode where T: Equatable {
	func search(_ value: T) -> TreeNode? {
		if value == self.value {
			return self
		}
		for child in children {
			if let found = child.search(value) {
				return found
			}
		}
		return nil
	}
}
