public final class Node<Element> {
	public init(value: Element, next: Node<Element>? = nil) {
		self.value = value
		self.next = next
	}
	
	public var value:Element
	public var next:Node?
}
