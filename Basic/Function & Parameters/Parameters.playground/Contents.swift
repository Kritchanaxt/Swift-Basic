import UIKit

var Parameters = "Hello, Parameters"
print(Parameters)

func addTwoNumber1(arg para : Int, arg2 para2 : Int) -> Int {
    let a = para
    let b = 1
    return a + b
}

let sum1 = addTwoNumber1(arg:2, arg2:2)
print("a + b = \(sum1)")


func addTwoNumber2(para : Int, para2 : Int) -> Int {
    return para + para2
}

let sum2 = addTwoNumber2(para:2, para2:2)
print("a + b = \(sum2)")


func addTwoNumber3(_ para : Int, _ para2 : Int) -> Int {
    return para + para2
}

let sum3 = addTwoNumber3(5, 5)
print("a + b = \(sum3)")


func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}

let result = isEven(number: 4)
let result1 = isEven(number: 7)
let result2 = isEven(number: 720)

print(result)
print(result1)
print(result2)


