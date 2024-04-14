import UIKit
import Foundation

let a = 10
let b = 2

// add(a, b) ฟังก์ชั่นบวกเลข
func Myadd(x: Int, y: Int) -> Int {
    var add = x + y
    return add
}
let addResult = Myadd(x: 10, y: 2)
print("add \(addResult)")

// subtract(a, b) ฟังก์ชั่นลบเลข
func Mysubtract(x: Int, y: Int) -> Int {
    var subtract = x - y
    return subtract
}
let subtractResult = Mysubtract(x: 10, y: 2)
print("subtract \(subtractResult)")

// multiply(a, b) ฟังก์ชันคูณเลข
func Mymultiply(x: Int, y: Int) -> Int {
    var multiply = x * y
    return multiply
}
let multiplyResult = Mymultiply(x: 10, y: 2)
print("multiply \(multiplyResult)")

// divide(a, b) ฟังก์ชันหารเลข
func Mydivide(x: Int, y: Int) -> Int {
    var divide = x / y
    return divide
}
let divideResult = Mydivide(x: 10, y: 2)
print("divide \(divideResult)")

//-----------------------------------//
// power(base, exponent) ฟังก์ชันยกกำลัง
func Mypow(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}
let powResult = Mypow(10, 2)
print("power \(powResult)")

// sqrt(number) ฟังก์ชันรากที่สอง
func Mysqrt(_ x: Double) -> Double {
    return sqrt(x)
}
let number = 9.0
let sqrtResult = Mysqrt(number)
print("sqrt \(sqrtResult)")

//-----------------------------------//

let angle: Double = Double.pi / 4

// sin(angle) ฟังก์ชันไซน์
let sinValue = sin(angle)
print("sin(\(angle)) = \(sinValue)")

// cos(angle) ฟังก์ชันโคส
let cosValue = cos(angle)
print("cos(\(angle)) = \(cosValue)")

// tan(angle) ฟังก์ชันแทนเจนต์
let tanValue = tan(angle)
print("tan(\(angle)) = \(tanValue)")
