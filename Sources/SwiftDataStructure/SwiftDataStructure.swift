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
