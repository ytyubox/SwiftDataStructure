import XCTest
import SwiftDataStructure

class BinaryTreeTests: XCTestCase {
	let node5 = BinaryTreeNode.node(.empty, "5", .empty)
	let nodeA = BinaryTreeNode.node(.empty, "a", .empty)
	let node10 = BinaryTreeNode.node(.empty, "10", .empty)
	let node4 = BinaryTreeNode.node(.empty, "4", .empty)
	let node3 = BinaryTreeNode.node(.empty, "3", .empty)
	let nodeB = BinaryTreeNode.node(.empty, "b", .empty)

	lazy var tree:BinaryTreeNode<String> = {
		let aMinus10 = BinaryTreeNode.node(nodeA, "-", node10)
		let timesLeft = BinaryTreeNode.node(node5, "*", aMinus10)
		
		// intermediate nodes on the right
		let minus4 = BinaryTreeNode.node(.empty, "-", node4)
		let divide3andB = BinaryTreeNode.node(node3, "/", nodeB)
		let timesRight = BinaryTreeNode.node(minus4, "*", divide3andB)
		return BinaryTreeNode.node(timesLeft, "+", timesRight)
	}()
	// intermediate nodes on the left

	// root node
	
	func testBinaryTree() {
		print(tree)
		for option in [BinaryTreeNode<String>.TraverseOption.pre,.in,.post] {
			print(option.description(tabWithMax: 5), terminator: "")
			tree.traverse(by: option) { (str) in
				print(str, separator: "", terminator: " ")
			}
			print()
		}
	}
	
}
