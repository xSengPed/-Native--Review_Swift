 
/*
 Swift Programing Basic Practice
 Author : Donnukrit Satirakul
*/

// MARK 0 : - Basic Print

print("Hello, World!")

// MARK 1 : - Variable

// [ Primative Type ]

        var number : Int = 10
        var decimal : Float = 10.0

        // use "\(var_name)" for String Interpolation

        print("number is \(number) | Decimal is \(decimal)")

// [ Reference Type ]

    // [ Array - Ordered ]

        var fruits : [String] = ["Apple","Orange","Mango"]
        print(fruits)

    // [ Dictionary (Map (k,v)) ]

        var personInfo : [String:String] = [
            "first_name" : "Donnukrit",
            "last_name" : "Satirakul"
        ]

        print("\(personInfo["first_name"] ?? "") \(personInfo["last_name"] ?? "")")

    // [ Tuple ]
        var sampleTuple : (code : Int,status : String, message : String) = (200,"OK","Server is Running")
        
        // Extract Value from Tuple

            var statusCode : Int = sampleTuple.code
            var status : String = sampleTuple.status
            var message : String = sampleTuple.message
        
    // [ Set - Unordered ]

        var setA : Set<Int> = [1,2,3,4,5,]
        var setB : Set<Int> = [2,4,6,8,10]
        var setC : Set<Int> = [1,2,3,6,8,9,10]

        var a_union_b = setA.union(setB)
            print("Result A [- UNION -] B is \(a_union_b)")
        var a_intersect_c = setA.intersection(setC)
            print("Result A [- INTERSECTION -] B is \(a_intersect_c)")
        var diff_a_b = setA.subtracting(setB)
            print("Result A [- DIFFERENCE -] B is \(diff_a_b)")
            
// [ Type Inference ( Dynamic Type ) ]
    
    var words = ["Car", "Speak" , "Caption", "Description"]
    var int_num = 10
    var dec_num = 10.25
    var tp = (200,"OK","Message")
    var dict = ["key" : 0 , "value" : 200]

// [ Constant ( Assign value only once ) ]

    let pi : Float = 3.14

    let k : Float
        k = 1.234

    print("PI is \(pi)")
    print("K is \(k)")

// [ Nilable Variable ]
var code : Int? = nil
    code = 500

    if code != nil {
        print("Code is \(code!)")
    }


// [ Type Conversion]
    
    var point : Int = 100
    // Convert to String
    var pointToString : String = String(point)
    // Convert Int To Double
    var pointToDouble : Double = Double(point)
        print("[Convert to String / Int To Double] -> Result :-> \(pointToString) : \(pointToDouble)")

    // Parse String To Double
    var doubleStr : String = "20.25"
    var doubleStringToDouble : Double = Double(doubleStr) ?? 0.0
        print("[Parse String To Double] - Result :-> \(doubleStringToDouble)")
    
// MARK 2 : - Flow Control Statement //

// [ Condtion ] //

// [ If - Else ] //

    var con_in : Int = 1
    let con_target : Int = 10

        if con_in < con_target {
            print("Number is Less than \(con_target)")
        }
        else if  con_in == con_target{
            print("Number is Equal \(con_target)")
        }
        else {
            print("Number is Greather than \(con_target)")
        }

// [ Nest If Condition ]

    // Ex. 1 : Nil validation and Check Greter than Between First & Second

        if let first = Int("10") , let second = Int("20") , first < second {
            print("\(first) : \(second)")
        }

    // Ex.2 : Multiple Condtion Check ( It same has 3 IF Inside )

        let nc_a : Int = 1
        let nc_b : Int = 2
        let nc_c : Int = 3

            if nc_a < nc_b , nc_c < nc_a , nc_b == nc_c   { // 1 < 2 , 3 < 1 : False, False
                print("If Above condition is True Excute this line")
            }
            else if nc_a == nc_b , nc_c == nc_a {
                print("If nc_a == nc_b , nc_c == nc_a  is True Excute this line")
            }
            else {
                print("If Above condition is False Excute this line")
            }

// [ Switch Case ] with Range case condition
    var exam_score : Float = 30.0
        print("Grade : ",terminator: "")
    switch exam_score {
        case 95,96,97,98,99,100 : print("A+")
        case 90...94 : print("A")
        case 85..<90 : print("B+")
        case 80..<85 : print("B")
        case 75..<80 : print("C+")
        case 70..<75 : print("C")
        case 65..<70 : print("D+")
        case 50..<65 : print("D")
        case ..<50 : print("F")
    default : print("Not In Case")
    }

// [ Repetion ]
    // For Loop

        var loopSum : Int = 0
    
        for i in 0...3 {
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

        var carBrands : [String] = ["Honda" , "Subaru"]
            for brand in carBrands {
                 print("\(brand) " , terminator: "")
            }

        print("")

// MARK 3 : - Enumerations //

enum PinStatus {
    case Granted , Denied, Incorrect
}

// [ Enum with Default Value ]

enum HttpStatus : String {
    
    case OK = "statusOK"
    case BadRequest = "statusBadRequest"
    case InteralServerError = "statusInteralServerError"
    
}

// [ Enum with Argument]
enum Message {
    case OK(desc : String)
}

enum Days {
    case monday , tuesday , wednesday
}




// Switch

let aa : Days = .tuesday

switch aa {
    
    case Days.monday :
        print("this is monday")
    case .tuesday :
        print("this is tuesday")
    default :
        print("not such a day")
}



var score  = 77

switch score {
    case 95,96,97,98,99 :
        print("A+")
    case 80...94 :
        print("A")
    case 70..<80 :
        print("B")
    default :
        print("error")
}




//var words : [Any]  = ["Hello World",123]

func foo(x : Int , y : Int) -> Int {
     return x + y
}


var r = foo(x : 10 , y : 20)


var aaa = 10


// Function

// () -> Void
func hello () {
        print("Hello World")
    
}


func hello(name : String , age : Int , gender : String = "Male" ) {
    print("Hello \(name) \(age) \(gender)")
}

func hello(_ name : String ,_ age : Int ) {
    print("Hello \(name) \(age)")
}


func showMessage(message : String) {
    
}

/// Pro

func show(message text : String) {
    
}



func show(name : String) {
    
}


func diff(between : Int , and : Int) {
    
    
}

// (Int , Int ) -> Int
func sum(a : Int , b : Int) -> Int {
    return a + b
}

// Return Tuple
func getStatus() -> (code : Int , message : String) {

    return (200,"OK")
}

let bb = getStatus()

print(bb.code)
print(bb.message)



func avg(numbers : Double...) -> Double {
    var sum = 0.0
    
    
    for n in numbers {
        
        sum += n
    }

    return sum / Double(numbers.count)
}


// Pointer / Call By Reference
func swap(a : inout Int ,  b : inout Int) {
    let temp = a
    a = b
    b = temp
}




// Function Type
var myFunc : (Int, Int) -> Int
myFunc = sum

typealias SumFunction = (Int , Int) -> Int

//print(myFunc(10, 20))

var dd = 10
var ee = 20

swap(a: &dd, b: &ee)

func add(_ a : Int , _ b : Int) -> Int {
     a + b
}


func sub(_ a : Int , _ b: Int) -> Int {
    a-b
}


func cal(_ a : Int , _ b : Int , _ c : SumFunction) -> Int {
    c (a,b)
}


var ff = cal(10 , 20 , add)

print(ff)

// Closure

//{
//    (_ a : Int , _ b :Int ) -> Int {
//        in
//        a + b
//    }
//}

//ff = cal (10 , 20 , {(a , b) in a + b}

ff = cal (10 , 20 ) {$0  + $1}
print(ff)

var numbers = [1,2,3,4,5]

numbers.sort(by:{$0 > $1})

print(numbers)

var a = Human()


a.name = "Donnukrit"


var b = Human()


print(b.fullName)

b.speak()

func sumAll(values : Int...) -> (result : Int , error : String?, message :String ){

    return (100, "err" , "ok")
    
}


var rrr = sumAll(values: 1,2,3,4,5)


if rrr.error != nil {
    
}


var aaaa = Human()

var hm = HumanStruct(name: "Human")


hm.walk()
hm.run()
