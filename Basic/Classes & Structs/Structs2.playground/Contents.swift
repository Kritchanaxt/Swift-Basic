import UIKit

var Structs2 = "Caculator"
print(Structs2)

struct Caculator {
    var number1: Double
    var number2: Double
    
    // Method for addition
    func add() -> Double {
        return number1 + number2
    }
    
    // Method for subtract
    func subtract() -> Double {
        return number1 - number2
    }
}

let caculator = Caculator(number1: 0.2, number2: 0.1)

let sum = caculator.add()
print("Sum: \(sum)")

let diffrence = caculator.subtract()
print("Diffrence: \(diffrence)")
