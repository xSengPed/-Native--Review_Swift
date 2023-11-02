class Human {
    
    // store property
    var name : String
    var firstName : String?
    var lastName : String?
    
    // computed property
    
    var fullName : String {
        // Read
        get {
            
            guard let firstName = firstName  else  {
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
            
            self.firstName = String(names[0])
            
            
            guard names.count >= 2 else {
                return
            }
            
            self.lastName = String(names[1])
            
        }
    }
    // Constructor
    init() {
        self.name = ""
    }
    
    init(name :String) {
        self.name = name
    }
    
    // Methods
    
    func speak() {
        print("Speaking... My name is \(fullName)")
    }
    
}


// Protocol (Interface)

protocol HumanProtocol {
//    var name : String { get set }
//    var firstName : String? { get set }
//    var lastName : String? { get set }
    func speak()
//    func walk()
}



// Adopt
struct HumanStruct :  HumanProtocol {
    // store property
    var name : String
    var firstName : String?
    var lastName : String?
    
        func speak() {
            print("\(name) speak...")
        }
    
    
    
}


// Struct unneccessary to initial value

extension HumanStruct {
    
    func walk() {
        print("walking")
    }
    
    func run() {
        print("run")
    }
}






