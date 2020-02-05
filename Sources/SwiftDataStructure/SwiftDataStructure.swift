/// Referance type of all a single node
///
public final class Node<Element> {
	public init(value: Element, next: Node<Element>? = nil) {
		self.value = value
		self.next = next
	}
	
	/// the value of this node
	public var value:Element
	/// the referance of next node
	public var next:Node?
}

extension Node:Equatable where Element:Equatable {
	public static func == (lhs: Node<Element>, rhs: Node<Element>) -> Bool {
		lhs.value == rhs.value
	}
}
