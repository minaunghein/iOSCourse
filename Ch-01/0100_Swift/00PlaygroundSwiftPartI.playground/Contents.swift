//1.Variable
//Int, IntX, UIntX
//Double, Float
//String

//var / let
var name:String = "Pro iOS Developer Course" //implicit
var language:String = "Swift"
var version:Float = 4.2 //explicit
let gravity:Float  = 9.8
var num8:UInt = 3

//Type Safe Language

var greeting = name + " " + language + " " + String(version)
var greeting2 = " \(name) \(language) \(version)" //interpolate

num8 = 9223372036854775807 + 2
print(num8)



var num1   = 1  // implicit  //OS Depended
var num2:Int = 2 //Explicit , Annotation
var num3 = num1 + num2

var num4 = 3.5
var num5:Double = 4.5
var num6:Float = 3.5

var num7 = num5 + Double( num6 )
print(num7)

var greetingText = "Hello"
var ver = 4.2
// "Hello Swift 4.2"
print(greetingText + " Swift " + String(ver) )
print("\(greetingText) Swift \(ver+1.0) ") //interpolate

//2.Operators
// + , - , / , * ,  && , || , == , != , <= , >= , < , > , & , | ,<< , >> ,

//Constant variables with let
let g = 9.8
let v0 = 5.0
var v1 = v0 + g * 10

var num100 = 100
let num100A = num100

//3.Collection: Tuple, Array, Dictionary, Set

var numbers:[Int] = [1,2,3,4,5,6,7,8,9,10]
var doubleNumbers:[Double]  = [1,2,3,4,5,6.0,7,8,9,10]
var mixArray:[Any] = [1,"one",1.0] //*** Any type available

var a = mixArray[0] as! Int //Type Casting
var b = mixArray[1] as! String
var c =  mixArray[2] as! Double
print(a,b,c)
var emptyArray = [Int]() //create empty array
print(emptyArray.count )

emptyArray.append(100)
emptyArray += [200]
emptyArray.insert(150, at: 1)
let e = emptyArray.remove(at: 1)
print(emptyArray.count )

//Dictionary => Key, Value Pattern
var dict1: [String:String ] = ["A":"Apple", "B":"Banana","C":"Cake" ,"D":"Donut" ]

let apple:String? = dict1["A"]
let watermelon = dict1["W"]

var numDict:[String:Int] = ["one":1 , "two":2 , "three":3 ]
var mixDict:[String:Any] = ["name":"Tim Cook", "age": 61.0, "degree":["MBA","Engg"]]  // JSON

numDict["four"] = 4 //adding
numDict["one"] = nil // remove

let timCookName = mixDict["name"] as? String
let timAge = mixDict["age"] as? Double
let degrees = mixDict["degree"] as? [String]
print(timCookName, timAge, degrees)

var fakeArray:[Int:Int] = [1:100,2:200,3:300, 4:400]
var twoHundred = fakeArray[2] //2 is not INDEX , it is KEY
//Not in order
//Optianal always return

//Tuple
//custom type
var myTuple:(String,String,String,String) = ("A","B","C","D" )
var student:(name:String,age:Double,grade:Int ) = (name:"Mg Mg",age:14.0,grade: 11)

print(student.0 , student.1 ,student.2)
print(student.name, student.age, student.grade)

var aStudent = (name:"Marry",grade:5,age:10.2)
print(aStudent.name)

var numbers1:[Int] = [10,20,30,40,50,60,70,80,90]
var numbers2 = [1,2,3,4,5,6.5]  //auto double array
var numbers3:[Float]  = [1,2,3,4,5,6.5] // float array , must set Explicitly
var strArray:[String] = ["A","B","C","D","E"]

var numbersArray = [Int]() //create empty interger array
var dummyArray:[Any] = [1,"One", 4.5]

//numbers1.removeAll()
print(numbers1.first)
var fna = numbers1.first
print("First Element:==>",numbers1[0])
print("Total Elements:==>",numbers1.count)
print("last elements:==>", numbers1[ numbers1.count - 1 ])

//Vector
//Everthing in Swift is object !!!!!
var test = 5.advanced(by: 4)
print(test)

//3.Collection - Set

var uniqueNumbers1: Set<Int> = [1,2,3,4,5]

uniqueNumbers1.insert(5) //5 already exist , so still the same
print(uniqueNumbers1.count)

var uniqueNumbers2:Set<Int> = [2,4,6,8,8]

var un12Union = uniqueNumbers1.union(uniqueNumbers2)
var un12Intercept = uniqueNumbers1.intersection(uniqueNumbers2)
var un12subtract = uniqueNumbers1.subtracting(uniqueNumbers2)

print(un12Union,un12Intercept,un12subtract)

//4.Optional
var numberOpt:Int? = 3
print(numberOpt)
numberOpt = nil
print(numberOpt)

var numberOptAuto:Int!
numberOptAuto = 6
print(numberOptAuto)

//Check whether nil or not
//as IT IS NOT SURE VALUE HAVING OR NOT?

numberOpt =  15
if numberOpt != nil {
    //to get the value from optional variable
    //apply force unwrapping, using !
    var addition =  numberOpt! +  5
    print("Added by Optional",addition)
}

if numberOptAuto != nil {
    var addition =  numberOptAuto  +  5 // noted , where is ! !!!
    print("Added by Optional Auto",addition)
}

//using Optional Binding
if let numberNOpt = numberOpt {
    var addition = numberNOpt + 5 //numberNopt become constant as of let
    print("Added using optional binding",addition)
}


//5.Conditional Statement
let mark =  50
if mark >= 40 {
    
    if mark >= 75 {
        print("Grade A+")
    }else if mark >= 70 {
        print("Grade A")
    }else if mark >= 65 {
        print("Grade B+")
    }else if mark >= 60 {
        print("Grade B")
    }else if mark >= 55 {
        print("Grade C+")
    }else if mark >= 50 {
        print("Grade C")
    }else if mark >= 45 {
        print("Grade D+")
    }else  {
        print("Grade D")
    }
} else {
    print("Failed")
}

//6.Looping
var array = [ 10,20,30,40,50]

//While
//1. initialise
//2. Loop exit condition
//3. Condition must be met, inc or dec to the index or x

var i = 0 //1
while (i < array.count) { //2
    print(i, array[i])
    i += 2 //3
}
print("\\\\\\\\\\\\")

for e in array {      // stride(from: 0, to: array.count, by:
    print(e)
}

print("Using continue to skip, without 30")
for e in array {      // stride(from: 0, to: array.count, by:
    if e == 30 {
        continue
    }
    print(e)
}
print("----------")
print("Using break to end loop, after 30")
for e in array {      // stride(from: 0, to: array.count, by:
    
    print(e)
    if e == 30 {
        break
    }
}
print("----------")

for i in 0..<array.count { // 0..<5  , 0...5
    print(array[i])
}

var j = 10
repeat {
    
    print("=>",j)
    j += 1
}
    while j <= 20

//7.Function => func
//without return value

var eggPrice = 150.0
var bookPrice = 2500.0

func calculateTaxPrice( goodPrice:Double) -> Double
{
    let tax = 0.05 //5%
    var taxablePrice = goodPrice * tax + goodPrice + 200
    return taxablePrice
}


var finalPriceEgg = calculateTaxPrice(goodPrice:eggPrice)
var finalPriceBook = calculateTaxPrice(goodPrice: bookPrice)

print("Egg Price =>",finalPriceEgg)
print("Book Price =>",finalPriceBook)

