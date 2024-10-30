import UIKit

//Getter for Property
struct Person {
    var name: String
    
    // Getter for name property
    var capitaliziedFirstLetterOfName: String {
        return name.prefix(1).capitalized + name.dropFirst()
    }
}

//MARK: การทำงานของคอมพิวเต็ดพรอเพอร์ตี้นี้
/*
 name.prefix(1) ดึงตัวอักษรตัวแรกของ name ออกมาเป็น Substring
 .capitalized ทำให้ตัวอักษรตัวแรกของ Substring นี้เป็นตัวพิมพ์ใหญ่
 name.dropFirst() เอาตัวอักษรตั้งแต่ตำแหน่งที่ 2 จนถึงตัวสุดท้ายของ name
 ใช้ + รวมตัวอักษรพิมพ์ใหญ่ที่ได้จาก prefix(1).capitalized กับตัวอักษรที่เหลือจาก dropFirst()
*/

let person = Person(name: "Wave")
print(person.capitaliziedFirstLetterOfName)

//Computed Property
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double{
        return width * height
    }
}
let rectangle = Rectangle(width: 83, height: 168)
print(rectangle)
print(rectangle.area)

//Getter for Collection Element
let numbers = [1, 2, 3, 4, 5]

if let firstNumber = numbers.first {
    print(firstNumber) // Output: 1
}

