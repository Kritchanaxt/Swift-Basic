import UIKit

var str = "Hello, Constants"
print(str)

// สร้างคลาส Person
class Person {
    static let age = 12
    let lastName = "Smith"
}

// สร้างอ็อบเจกต์ของคลาส Person
var Join = Person()
var Ben = Person()
var Jodan = Person()
var Curry = Person()

// เข้าถึงค่าคงที่ age จากคลาส Person
let age = Person.age
print("Age: \(age)")

// เข้าถึงค่า lastName ของแต่ละอ็อบเจกต์
print("Join's Last Name: \(Join.lastName)")
print("Jen's Last Name: \(Ben.lastName)")
print("Jodan's Last Name: \(Jodan.lastName)")
print("Curry's Last Name: \(Curry.lastName)")

// แก้ไขค่าของตัวแปร name
var name = "Joe"
print("Original Name: \(name)")

name = "Jill"
print("Updated Name: \(name)")





