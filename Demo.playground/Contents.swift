//1
public class Node<Value> {
   public var value: Value
   public var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}
//2
extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value)->" + String(describing: next) + " "
    }
    
}
//3
example(of: "push") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 3)
    let node3 = Node(value: 6)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}

func push(_ value: Value) {
    head = Node(value: value, next: head)
    if tail == nil {
        tail = head
    }
}

