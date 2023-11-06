//  Created by Donnukrit Satirakul on 3/11/2566 BE.

class Person {
    // Store Property
    
    var firstName: String?
    var lastName: String?
    var age: Int = 0
    var gender: String?
    
    // Computed Property
    
    var fullname: String {
        // Getter
        
        get {
            guard let firstName = firstName else {
                return ""
            }
        
            guard let lastName = lastName else {
                return ""
            }
            return "\(firstName) \(lastName)"
        }
        
        // Setter
        
        set {
            let fullName = newValue.split(separator: " ")
            
            guard fullName.count >= 1 else {
                return
            }
            firstName = String(fullName[0])
            
            guard fullName.count >= 2 else {
                return
            }
        
            lastName = String(fullName[1])
        }
    }
    
    // Constructor
    
    init(firstName: String? = nil, lastName: String? = nil, age: Int, gender: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
    }
    
    func introduce() {
        print("My name is \(fullname). I am \(age) years old. I am \(gender ?? "M")")
    }
}

class Student: Person {
    var faculty: String?
    init(firstName: String? = nil, lastName: String? = nil, age: Int, gender: String? = nil, faculty: String) {
        super.init(firstName: firstName, lastName: lastName, age: age, gender: gender)
        self.faculty = faculty
    }
    
    override func introduce() {
        print("My name is \(fullname). I am \(age) years old. I am \(gender ?? "M") , \(faculty ?? "")")
    }
}

protocol PersonProtocol {
//    var firstName : String { get set }
//    var lastName : String {get set }
    
    func speak()
    func walk()
    func run()
}

protocol StudentProtocol {}

// Adopt and Conform

struct PersonStruct: PersonProtocol {
    var firstName: String?
    var lastName: String?
    var age: Int
     
    func introduce() {
        print("\(firstName ?? "") \(lastName ?? "") | \(age)")
    }
    
    func speak() {
        print("\(firstName ?? "") is Speaking...")
    }
    
    func walk() {
        print("\(firstName ?? "") is Walking...")
    }
    
    func run() {
        print("\(firstName ?? "") is Running...")
    }
}

struct StudentStruct: StudentProtocol {}

extension PersonStruct {
    func jump() {
        print("\(firstName ?? "") is Jumping...")
    }
}
