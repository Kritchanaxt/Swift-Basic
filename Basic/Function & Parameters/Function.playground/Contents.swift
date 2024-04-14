import UIKit

var Function = "Hello,Function"
print(Function)

func addTwoNumber() -> Int {
    let a = 2
    let b = 2
    
    return a + b
}

func subtractTwoNumber() -> Int {
    let d = 5
    let e = 1
    
    return d - e
}


let sum1 = addTwoNumber()
let sum2 = subtractTwoNumber()

print("a + b = \(sum1)")
print("d - e = \(sum2)")


func addTwoNumbers(a: Int,b: Int) -> Int {
    return a + b
}

func squareNumber(number: Int) -> Int {
    return number * number
}

func log(){
    print("Roblox")
}

var x = 5
var y = 10

let sum = addTwoNumbers(a: x,b: y)
let squaredSum = squareNumber(number: sum)

print("a + b = \(sum)")
print("Number = \(squaredSum)")

log()



