// OOP ( Object-Oriented Programing )
class Human {
    // store property
    var name: String
    var firstName: String?
    var lastName: String?

    // computed property

    var fullName: String {
        // Read
        get {
            guard let firstName = firstName else {
                return ""
            }

            guard let lastName = lastName else {
                return ""
            }
            return "\(firstName) \(lastName)"
        }
        // Write
        set {
            let names = newValue.split(separator: " ")
            guard names.count >= 1 else {
                return
            }

            firstName = String(names[0])

            guard names.count >= 2 else {
                return
            }

            lastName = String(names[1])
        }
    }

    // Constructor
    init() {
        self.name = ""
    }

    init(name: String) {
        self.name = name
    }

    // Methods

    func speak() {
        print("Speaking... My name is \(fullName)")
    }

    func action() {}
}

// Inheritance

class HumanExtend: Human {
    func walk() {
        print("Walking...")
    }

    override func action() {
        print("Human")
    }
}

class IronMan: HumanExtend {
    func fly() {
        print("\(name) Flying...")
    }

    override func action() {
        print("\(name) : Iron Man Action")
    }
}

class SpiderMan: HumanExtend {
    func shoot() {
        print("\(name) Shoot...")
    }

    override func action() {
        print("\(name) : Spiderman Action ")
    }
}

// Protocol Oriented Programing

// Protocol (Interface)

protocol HumanProtocol {
    var name: String { get set } // Computed Property มี Get Set แต่ยัง ไม่ Implements
    var firstName: String? { get set } // ? = Optional
    var lastName: String? { get set }
    func speak()
    func walk()
}

extension HumanProtocol {
    func speak() {
        print("\(name) | Speak...")
    }

    func walk() {
        print("\(name) | Wakling...")
    }
}

protocol IronManProtocol: HumanProtocol {
    func fly()
}

protocol SpidermanProtocol: HumanProtocol {
    func shoot()
}

protocol ActionProtocol {
    func action()
}

// Adopt (Implements in JAVA or DART) // เรียกการ Implements ว่า Conform คือ การ Implements Method ที่มีใน Protocol

struct HumanStruct: HumanProtocol {
    var name: String

    var firstName: String?

    var lastName: String?
}

// Struct unneccessary to initial value but [ Class ] is Neccessary

// Extension คือ การเพิ่มเติมความสามารถให้ Struct นั้นมี Method เพิ่มเติมจากเดิม เหมาะสำหรับการเพิ่ม Feature ให้ Struct เติม เพิ่ม Code Reuseablity

// extension HumanStruct {
//    func walk() {
//        print("Walking...")
//    }
//
//    func speak() {
//        print("\(name) speak...")
//    }
// }

struct IronManStruct: IronManProtocol, ActionProtocol {
    var name: String

    var firstName: String?

    var lastName: String?

    func fly() {
        print("\(name) | Flying...")
    }

    func action() {
        fly()
    }
}

struct SpidermanStruct: SpidermanProtocol {
    var name: String

    var firstName: String?

    var lastName: String?

    func shoot() {
        print("\(name) | Shoot...")
    }
}

extension SpidermanStruct: ActionProtocol {
    func action() {
        shoot()
    }
}
