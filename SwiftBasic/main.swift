
/*
 Swift Programing Basic Practice
 Author : Donnukrit Satirakul
 */

// MARK: 0 : - Basic Print

print("Hello, World!")

// MARK: 1 : - Variable

// [ Primative Type ]

var number: Int = 10
var decimal: Float = 10.0

// use "\(var_name)" for String Interpolation

print("number is \(number) | Decimal is \(decimal)")

// [ Reference Type ]

// [ Array - Ordered ]

var fruits: [String] = ["Apple", "Orange", "Mango"]
print(fruits)

// [ Dictionary (Map (k,v)) ]

var personInfo: [String: String] = [
    "first_name": "Donnukrit",
    "last_name": "Satirakul",
]

print("\(personInfo["first_name"] ?? "") \(personInfo["last_name"] ?? "")")

// [ Tuple ]
var sampleTuple: (code: Int, status: String, message: String) = (200, "OK", "Server is Running")

// Extract Value from Tuple

var statusCode: Int = sampleTuple.code
var status: String = sampleTuple.status
var message: String = sampleTuple.message

// [ Set - Unordered ]

var setA: Set<Int> = [1, 2, 3, 4, 5]
var setB: Set<Int> = [2, 4, 6, 8, 10]
var setC: Set<Int> = [1, 2, 3, 6, 8, 9, 10]

var a_union_b = setA.union(setB)
print("Result A [- UNION -] B is \(a_union_b)")
var a_intersect_c = setA.intersection(setC)
print("Result A [- INTERSECTION -] B is \(a_intersect_c)")
var diff_a_b = setA.subtracting(setB)
print("Result A [- DIFFERENCE -] B is \(diff_a_b)")

// [ Type Inference ( Dynamic Type ) ]

var words = ["Car", "Speak", "Caption", "Description"]
var int_num = 10
var dec_num = 10.25
var tp = (200, "OK", "HTTPMessage")
var dict = ["key": 0, "value": 200]

// [ Constant ( Assign value only once ) ]

let pi: Float = 3.14

let k: Float
k = 1.234

print("PI is \(pi)")
print("K is \(k)")

// [ Nilable Variable ]
var code: Int?
code = 500

if code != nil {
    print("Code is \(code!)")
}

// [ Type Conversion]

var point: Int = 100
// Convert to String
var pointToString: String = .init(point)
// Convert Int To Double
var pointToDouble: Double = .init(point)
print("[Convert to String / Int To Double] -> Result :-> \(pointToString) : \(pointToDouble)")

// Parse String To Double
var doubleStr: String = "20.25"
var doubleStringToDouble: Double = .init(doubleStr) ?? 0.0
print("[Parse String To Double] - Result :-> \(doubleStringToDouble)")

// MARK: 2 : - Flow Control Statement //

// [ Condtion ] //

// [ If - Else ] //

var con_in: Int = 1
let con_target: Int = 10

if con_in < con_target {
    print("Number is Less than \(con_target)")
} else if con_in == con_target {
    print("Number is Equal \(con_target)")
} else {
    print("Number is Greather than \(con_target)")
}

// [ Nest If Condition ]

// Ex. 1 : Nil validation and Check Greter than Between First & Second

if let first = Int("10"), let second = Int("20"), first < second {
    print("\(first) : \(second)")
}

// Ex.2 : Multiple Condtion Check ( It same has 3 IF Inside )

let nc_a: Int = 1
let nc_b: Int = 2
let nc_c: Int = 3

if nc_a < nc_b, nc_c < nc_a { // 1 < 2 , 3 < 1 : False, False
    print("If Above condition is True Excute this line")
} else if nc_a == nc_b, nc_c == nc_a {
    print("If nc_a == nc_b , nc_c == nc_a (All Equal)  is True Excute this line")
} else {
    print("If Above condition is False Excute this line")
}

// [ Switch Case ] with Range case condition
var exam_score: Float = 30.0
print("Grade : ", terminator: "")
switch exam_score {
case 95, 96, 97, 98, 99, 100: print("A+")
case 90 ... 94: print("A")
case 85 ..< 90: print("B+")
case 80 ..< 85: print("B")
case 75 ..< 80: print("C+")
case 70 ..< 75: print("C")
case 65 ..< 70: print("D+")
case 50 ..< 65: print("D")
case ..<50: print("F")
default: print("Not In Case")
}

// [ Repetion ]
// For Loop

var loopSum: Int = 0

for i in 0 ... 3 {
    loopSum += i
}

print("[For Loop] - Sum is -> \(loopSum)")

// While Loop

loopSum = 0 // Reset
while loopSum < 10 {
    loopSum += 1
}

print("[While Loop] - Sum -> \(loopSum)")

// For In

var carBrands: [String] = ["Honda", "Subaru"]
for brand in carBrands {
    print("\(brand) ", terminator: "")
}

print("")

// MARK: 3 : - Enumerations //

enum PinStatus {
    case Granted, Denied, Incorrect, InActive
}

// [ Enum with Default Value ]

enum HttpStatus: String {
    case OK = "statusOK"
    case BadRequest = "statusBadRequest"
    case InteralServerError = "statusInteralServerError"
}

// [ Enum with Argument]
enum HTTPMessage {
    case OK(desc: String)
}

// [ Enum Implementation ]

// Regular Enum

var pinStatus: PinStatus = .InActive

if pinStatus == .Denied, pinStatus == .Incorrect {
    print("[ PIN ] -> Access Denied")
} else if pinStatus == .Granted {
    print("[ PIN ] -> Access Granted")
} else {
    print("[ PIN ] -> Show Pin Pad")
}

// Get Raw Value of Enum

var httpStatus: HttpStatus = .InteralServerError
print("[ Enum ] -> Raw Value -> \(httpStatus.rawValue)")

// Raw Value Definedable Enum

var msg: HTTPMessage = .OK(desc: "HTTPMessage is Ok!")
print("[ Enum ] -> Raw Value -> \(msg)")

// [ Function ]

// [Simple Function]

/*
      func fn_name(arg : <arg_type> , arg : <arg_type>) -> <return_type> {
             /
                 Do something !
             /
      }
 */

/* Void Function ( No Return ) */

func printSomething() { // if function is void unneccessary to add return type -> Void
    print("Print Something!")
}

// Excuting Function

printSomething()

/* Return Function */

var fn_result = 0

func additionWithPostionArgument(x: Int, y: Int) -> Int {
    // You can add return or not if func has one line
    x + y // same as return x + y
}

fn_result = additionWithPostionArgument(x: 10, y: 20)
print("Ex.1 -> \(fn_result)")

func additionWithOutPostionArgument(_ x: Int, _ y: Int) -> Int {
    x + y // same as return x + y
}

fn_result = additionWithOutPostionArgument(30, 40)
print("Ex.2 -> \(fn_result)")

func additionWithArgumentLabel(postion_a x: Int, position_b y: Int) -> Int {
    x + y // same as return x + y
}

fn_result = additionWithArgumentLabel(postion_a: 10, position_b: 5)
print("Ex.3 -> \(fn_result)")

/* Function with Optional Default Value */

func division(x: Float, y: Float = 1.0) -> Float {
    x / y
}

/* Tuple Return Function */
func getStatus(status: Int, msg: String) -> (status: Int, msg: String) {
    return (status, msg)
}

var statusTuple = getStatus(status: 200, msg: "OK")
print("[getStatus] -> \(statusTuple.status) , \(statusTuple.msg)")

// How Declare Function Professional Style For Swift

func show(message text: String) {
    print("show -> \(text)")
}

func show(status code: Int) {
    print("show -> \(code)")
}

func difference(between x: Int, and y: Int) -> Int {
    x - y
}

show(status: 200)

show(message: "done!")

/* Variadic Parameters */

func getAvg(numbers: Double...) -> Double {
    let count: Int = numbers.count
    var sum: Double = 0
    for number in numbers {
        sum += number
    }
    return sum / Double(count)
}

var average: Double = getAvg(numbers: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print("Average -> \(average)")

// [ Pointer / Call By Reference ]

func swap(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var dd = 10
var ee = 20
swap(a: &dd, b: &ee)

// [ Closure ]

var numbers = [1, 2, 3, 4, 5]
numbers.sort(by: { $0 > $1 })
print(numbers)

// [ Type Alias ] - TBC

var foo: (Int, Int) -> Int // Function Type
foo = additionWithPostionArgument(x:y:)

typealias AdditionFunction = (Int, Int) -> Int // New type has been defined
typealias AverageFunction = (Double...) -> Double

var find_addition: AdditionFunction
find_addition = additionWithPostionArgument(x:y:)

func calculate(a: Int, b: Int, c: AdditionFunction) -> Int {
    return c(a, b)
}

print("[ Calculated ] -> \(calculate(a: 2, b: 3, c: find_addition))")

var find_average: AverageFunction
find_average = getAvg(numbers:)

func sumWithAverage(a: Int, numbers: Double..., avg: AverageFunction) -> Double {
    return Double(a) + avg(1, 2, 3, 4, 5)
}

var sumWithAvgResult: Double = sumWithAverage(a: 100, numbers: 2, 4, 6, 8, avg: find_average)
print("[ SumWithAvgResult ] -> \(sumWithAvgResult)")

/*
 [ Object Oriented Programing / Swift is (Protocal-Oriented Programing) ]
 */

var person: Person = .init(firstName: "Donnukrit", lastName: "Satirakul", age: 26, gender: "M")
person.introduce()

var student: Student = .init(firstName: "John", lastName: "Doe", age: 26, gender: "M", faculty: "Faculty of Science")
student.introduce()

var personStruct: PersonStruct = .init(firstName: "TEST_FIRSTNAME", lastName: "TEST_TEST_FIRSTNAME", age: 22)
personStruct.introduce()
personStruct.speak()
personStruct.run()
personStruct.walk()
personStruct.jump()

var humanStruct: HumanStruct = .init(name: "Donnukrit")
humanStruct.speak()
humanStruct.walk()

var ironMan: IronManStruct = .init(name: "Iron Man")
ironMan.fly()
ironMan.speak()
ironMan.walk()

var spiderman: SpidermanStruct = .init(name: "Spider", firstName: "Man")
spiderman.shoot()
spiderman.speak()
spiderman.walk()

// Polymophism ( Class )

var ironMan_1: Human = IronMan(name: "Phone")
ironMan_1.action()
var avengersClass: [Human] = [
    IronMan(name: "A"),
    SpiderMan(name: "B"),
]

for i in avengersClass {
    i.action()
}

// Polymorphism ( Protocol )

var avengersStruct: [ActionProtocol] = [
    IronManStruct(name: "AA"),
    SpidermanStruct(name: "BB"),
]

for i in avengersStruct {
    i.action()
}

// Processor Pipeline

let complete = CompleteProcessor(next: nil)
let shipping = ShippingProcessor(next: complete)
let payment = PaymentProcessor(next: shipping)
let order = OrderProcessor(next: payment)

var order_1 = OrderMessage(id: 1)
var order_2 = OrderMessage(id: 2)

order.process(message: order_1)
order.process(message: order_2)

// Error Handling

enum SearchStatus: Error {
    case NotFound
    case InvalidRequest
}

func search(text: String?) throws -> String {
    let names: Set = ["Phone", "Folk", "Rose", "Ploy", "Wish"]

    guard let text = text else {
        throw SearchStatus.InvalidRequest
    }

    guard names.contains(text) else {
        throw SearchStatus.NotFound
    }

    return text
}

// Method 1 - With do-catch

do {
    let result = try search(text: "Folk")
    print("Search Result -> \(result)")
} catch SearchStatus.NotFound {
    print("Search Not Found")

} catch SearchStatus.InvalidRequest {
    print("Search Invalid")
} catch {
    print("Search Failed")
}

// Method 2 - with try?
if let result = try? search(text: "Phone") {
    print("Search Result -> \(result)")
}
