/**
A general-purpose binary tree.
Nodes don't have a reference to their parent.
*/
public indirect enum BinaryTreeNode<T> {
	case node(BinaryTreeNode<T>, T, BinaryTreeNode<T>)
	case empty
	
	public var count: Int {
		switch self {
		case let .node(left, _, right):
			return left.count + 1 + right.count
		case .empty:
			return 0
		}
	}
}

extension BinaryTreeNode: CustomStringConvertible {
	public var description: String {
		switch self {
		case let .node(left, value, right):
			return "value: \(value), left = [\(left.description)], right = [\(right.description)]"
		case .empty:
			return ""
		}
	}
}

extension BinaryTreeNode {
	public enum TraverseOption:CustomStringConvertible {
		public var description: String {
			switch self {
			case .pre:  return "pre"
			case .in:   return "in"
			case .post: return "post"
			}
		}
		
		case pre,`in`, post
	}
	public func traverse(by option:TraverseOption,
						 process: (T) -> Void) {
		switch option {
		case .pre:  traversePreOrder(process: process)
		case .in:   traverseInOrder(process: process)
		case .post: traversePostOrder(process: process)
		}
	}
	public func traverseInOrder(process: (T) -> Void) {
		if case let .node(left, value, right) = self {
			left.traverseInOrder(process: process)
			process(value)
			right.traverseInOrder(process: process)
		}
	}
	
	public func traversePreOrder(process: (T) -> Void) {
		if case let .node(left, value, right) = self {
			process(value)
			left.traversePreOrder(process: process)
			right.traversePreOrder(process: process)
		}
	}
	
	public func traversePostOrder(process: (T) -> Void) {
		if case let .node(left, value, right) = self {
			left.traversePostOrder(process: process)
			right.traversePostOrder(process: process)
			process(value)
		}
	}
}

extension BinaryTreeNode {
	func invert() -> BinaryTreeNode {
		if case let .node(left, value, right) = self {
			return .node(right.invert(), value, left.invert())
		} else {
			return .empty
		}
	}
}


public class BinaryTree {
	
}
