import UIKit

// สร้างอาร์เรย์ของตัวเลข
var numbers = [1, 2, 3, 4, 5]

// เข้าถึงข้อมูลในอาร์เรย์ด้วยดัชนี
let firstNumber = numbers[4] // ค่าเป็น 4
print(firstNumber)

//---------------//
let num = [1, 2, 3, 4, 5]

// ใช้ลูป for เพื่อแสดงค่าใน Array ทั้งหมด
for num2 in num {
    print(num2)
}

// ใช้ลูป for เพื่อหาผลรวมของตัวเลขที่มากกว่า 2
var sum = 0
for num2 in num {
    if num2 > 2 {
        sum += num2
    }
}
print("Sum of numbers greater than 2: \(sum)")

// ใช้ if-else เพื่อตรวจสอบว่า Array ว่างหรือไม่
if num.isEmpty {
    print("Array is empty")
} else {
    print("Array is not empty")
}
