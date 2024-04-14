import UIKit

// สร้าง String
let message = "Hello, World!"
print(message)

// เรียกดูความยาวของ String
let length = message.count
print(length)

// เช็คว่า String มีคำว่า "Hello" อยู่ในนั้นหรือไม่
let containsHello = message.contains("Hello")
print(containsHello)

// เรียกดูตัวอักษรแรกของ String
if let firstCharacter = message.first {
    print(firstCharacter) // ผลลัพธ์: H
}

// เรียกดูตัวอักษรสุดท้ายของ String
if let lasCharacter = message.last {
    print(lasCharacter)
}

// เรียกดูตัวอักษรที่ตำแหน่งที่กำหนดของ String
let characterAtIndex = message[message.index(message.startIndex, offsetBy: 7)]
print(characterAtIndex)

// การแทนที่ข้อความภายใน String
let replacedMessage = message.replacingOccurrences(of: "World", with: "Swift")
print(replacedMessage)
