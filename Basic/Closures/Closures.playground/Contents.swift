import UIKit

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())


//---------------------------//
let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map({ $0 * 2 })
print(doubled)


//---------------------------//
let number = [1, 2, 3, 4, 5]

//ใช้ closures ในการหาผลของอาร์เรย์
//เริ่มต้นที่ 0 และเพิ่มทุกตัวเลขในอาร์เรย์เข้าไปในผลรวม initial result.
let sum = number.reduce(0, { (result, number) in
    return result + number
})
print(sum)

//---------------------------//
// ตัวอย่าง Closure ที่ไม่มีพารามิเตอร์และไม่คืนค่า
let greeting = {
    print("Hello, world!")
}

// การเรียกใช้ Closure
greeting()

// ตัวอย่าง Closure ที่รับพารามิเตอร์และคืนค่า
let add = { (a: Int, b: Int) -> Int in
    return a + b
}

// การเรียกใช้ Closure
let result = add(5, 3)
print(result) // Output: 8
