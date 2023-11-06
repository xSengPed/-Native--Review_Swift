// Chain of Responsibility : Design Pattern [ Pipeline ]
// MessageProcessor Demo





// Protocol First !

protocol Message {
    var id: Int { get }
}

protocol MessageProcessor {
    init(next: MessageProcessor?)
    func process(message: Message)
}

struct OrderMessage: Message {
    var id: Int
}

struct OrderProcessor: MessageProcessor, CustomStringConvertible {
    var description: String {
        return "Order Processor"
    }

    let nextProcessor: MessageProcessor?

    init(next: MessageProcessor?) {
        nextProcessor = next
    }

    func process(message: Message) {
        // Conect Database / Api
        print("\(message) -> process by \(self)")
        nextProcessor?.process(message: message) // if nextProcessor is not Nil excuting this line
    }
}

struct PaymentProcessor: MessageProcessor, CustomStringConvertible {
    var description: String {
        return "Payment Processor"
    }

    let nextProcessor: MessageProcessor?

    init(next: MessageProcessor?) {
        nextProcessor = next
    }

    func process(message: Message) {
        // Conect Database / Api

        if message.id == 2 {
            print("\(message) payment failed")
            return
        }
        print("\(message) -> process by \(self)")
        nextProcessor?.process(message: message) // if nextProcessor is not Nil excuting this line
    }
}

struct ShippingProcessor: MessageProcessor, CustomStringConvertible {
    var description: String {
        return "Shipping Processor"
    }

    let nextProcessor: MessageProcessor?

    init(next: MessageProcessor?) {
        nextProcessor = next
    }

    func process(message: Message) {
        // Conect Database / Api
        print("\(message) -> process by \(self)")
        nextProcessor?.process(message: message) // if nextProcessor is not Nil excuting this line
    }
}

struct CompleteProcessor: MessageProcessor, CustomStringConvertible {
    var description: String {
        return "Complete Processor"
    }

    let nextProcessor: MessageProcessor?

    init(next: MessageProcessor?) {
        nextProcessor = next
    }

    func process(message: Message) {
        // Conect Database / Api
        print("\(message) -> process by \(self)")
        nextProcessor?.process(message: message) // if nextProcessor is not Nil excuting this line
    }
}
