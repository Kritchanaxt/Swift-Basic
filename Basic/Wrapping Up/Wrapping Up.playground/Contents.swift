import UIKit

//"Wrapping Up" หมายถึงการสรุปและจบการทำงานหรือฟังก์ชันบางส่วน
func calculateTotalPrice(price: Double, quantity: Int) -> Double {
    let totalPrice = price * Double(quantity)
    return totalPrice
}

let price = 10.5
let quantity = 5
let totalPrice = calculateTotalPrice(price: price, quantity: quantity)
print("Total Price: \(totalPrice)")

func sumOfArray(numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

let numbers = [1, 2, 3, 4, 5]
let total = sumOfArray(numbers: numbers)
print("Total sum: \(total)")
