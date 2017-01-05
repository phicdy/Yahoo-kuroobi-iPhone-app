//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
1+2
var value :String = "Hello"
var hoge = "hoge"
let number = 1
var a = 1
var b = 2
var hogehoge = "aは\(a), bは\(b)"
var intval :Int = Int.max

var emptyArray = [String]()
var array :[String] = ["a", "b"]

var dict :[Int:String] = [1:"hoge", 2:"fuga"]

var optional :String?
optional = "hoge"
if let optional = optional {
    print(optional)
}

var unused :String? = "unused"
if let _ = unused {
    print("hoge")
}

func myFunc(value :Int) -> Int {
    return 0
}

myFunc(value: 8)

func showTestScore(mathematicsTestScore score:Int) -> String {
    return "数学は\(score)点"
}

showTestScore(mathematicsTestScore: 100)

enum MyError :Error {
    case InvalidValue
}

func doubleUp(value :Int) throws -> Int {
    if value < 0 {
        throw MyError.InvalidValue
    }
    return value*2
}

do {
    var doubleUpResult = try doubleUp(value: 10)
    print("ok")

    defer {
        print("finish: \(NSDate())")
    }
    print("start: \(NSDate())")
    try doubleUp(value: -1)
    print("ok2")
    
} catch MyError.InvalidValue {
    print("error")
}

typealias ColorCode = UInt8
let red = ColorCode.max //255

// class
import UIKit
var radio = UISwitch()

radio.isOn = true
radio.setOn(false, animated: false)

class Dog {
    private var name = ""
    func bark() {
        print("BowBow")
    }
}

var dog = Dog()
dog.bark()

class GuideDog :Dog {
    override func bark() {
        super.bark()
        print("KyanKyan")
    }
}
var guideDog = GuideDog()
guideDog.bark()

//struct
struct MyStruct {
    var value :String?
    func method(value :Int) -> Int {
        let result :Int = 0
        return result
    }
}

//enum
enum Fluit {
    case Apple
    case Orange
}

// touple
func requestMinAndMax() -> (min :Int, max :Int) {
    return (1, 100)
}
let minAndMax = requestMinAndMax()
minAndMax.min
minAndMax.0
minAndMax.max
minAndMax.1

// for

// Removed from Swift3
//for var index = 0; index < 10; index++ {
//  print("index:\(index)")
//}

for index in 0 ..< 10 {
    print("index:\(index)")
}
let values = ["りんご", "ごりら"]
for value in values {
    print(value)
}
for _ in 0...9 {
    print("hoge")
}

// if else
let tmp = 10
if tmp < 10 {
    print("under 10")
} else if tmp == 10 {
    print("10")
} else {
    print("over 10")
}

// switch
let switchVal = 10
switch switchVal {
case 10:
    print("switch 10")
default:
    print("default")
}
let switchStr = "hoge"
switch switchStr {
case "hoge":
    print("switch hoge")
default:
    print("default")
}
let apple = Fluit.Apple
switch apple {
case .Apple:
    print("Apple")
    fallthrough // Execute next case
case .Orange:
    print("Oragnge")
}

// while
var count = 0;
var result = 0;
while count < 10 {
    result += count
    count += 1
}
print("result:\(result)")

// guard
func buyItem(myMoney :Int?) {
    guard myMoney == nil else {
        return
    }
}

// filter
var nums = [1, 100, 24, 5]
let results = nums.filter { (x:Int) -> Bool in
    if x < 10 {
        return true
    }
    return false
}
print(results)
let filtered = nums.filter{$0 < 10}
print(filtered)

// map
let doubles = nums.map { (x: Int) -> Int in
        return x*2
}
print(doubles)
let mapNum = nums.map{$0 * 2}
print(mapNum)

// reduce
let total = nums.reduce(0) { (nowTotal:Int, value:Int) -> Int in
        return nowTotal + value
}
print(total)
let totalNum = nums.reduce(0, {$0 + $1})
print(totalNum)

// sort

// Swift2
/*
let sorted = nums.sort { (value1: Int, value2:Int) -> Bool in
    value1 < value2
}
print(sorted)
let oldSorted = nums.sort{$0 < $1}
print(oldSorted)
*/

// Swift3
let sortedNum = nums.sorted()

// for-in-where
for value in 0..<9 where value != 5 {
    print("value:\(value)")
}

// case-let-where
let orange = "みかん"
switch orange {
case let x where x.hasPrefix("み"):
    print("みかん")
default:
    print("default")
}

// for-case-in
let fluits :[Fluit] = [.Apple, .Orange, .Apple, .Apple]
for case .Apple in fluits {
    print("only apple")
}