import UIKit

//type aliases ใช้เพื่อสร้างชื่ออื่นๆ ให้กับชนิดข้อมูลที่มีอยู่แล้ว เพื่อให้โค้ดมีความอ่านง่ายขึ้นหรือใช้งานที่สะดวกมากขึ้น
typealias Code = String
typealias Name = String
typealias Coordinates = (Double,Double)
typealias UserDictionary = [String: Any]
typealias Age = Int

// ประกาศชื่อย่อสำหรับ Tuple ที่มีสมาชิกสองตัวเป็น String
typealias Coordinate = (x: String, y: String)

// ประกาศชื่อย่อสำหรับ Function Type ที่รับพารามิเตอร์เป็น String และส่งคืน Int
typealias StringToIntConverter = (String) -> Int

//ประกาศตัวแปร Distance และกำหนดให้เป็นชนิดข้อมูล Double
typealias Distance = Double

//ประกาศตัวแปร NameList และกำหนดให้เป็นชนิดข้อมูล Array ของ String
typealias NameList = [String]

var code: Code = ""
var username: Name = "John"
var coodinates: Coordinates = (40.7128,  -74.0060)
var userDitionary: UserDictionary = ["name": "John", "age": 30]
var age: Age = 20

// ใช้ชื่อย่อในการประกาศ Tuple
var point: Coordinate = (x: "10", y: "20")

// ใช้ชื่อย่อในการประกาศฟังก์ชัน
var converToInt: StringToIntConverter = { str in
    return Int(str) ?? 0
}
// เรียกใช้งาน converToInt ด้วยการใช้ชื่อตัวแปรเดียวกับตัวแปรที่ประกาศไว้
let result = converToInt("123")

let distance: Distance = 10.5 // 10.5 ประกาศระยะทาง

let name: NameList = ["Alice", "Bob", "Charlie"]


print(converToInt)
print(result)
print(username)
print(userDitionary)
print(age)
print(point)
print(coodinates)
print(name)
print(distance)


