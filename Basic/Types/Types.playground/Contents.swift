import UIKit
import Foundation

// var ใช้ประกาศค่าตัวแปรและสามารถเปลี่ยนแปลงค่าได้
// let ใช้ประกาศค่าคงที่ที่สามารถเปลี่ยนแปลงได้หลังจากกำหนดค่าเริ่มต้น (constant)
// static ใช้เพื่อกำหนดว่าสมาชิกหรือเมทอดใดๆ ในคลาสจะเป็นของคลาสและเรียกใช้ได้โดยตรงผ่านชื่อคลาส โดยไม่ต้องสร้างอ็อบเจกต์ของคลาสก่อน

var Types = "Hello, Types"
print(Types)

let pi = 3.14 // pi = 3.14159 ไม่สามารถทำได้ เนื่องจาก pi เป็นค่าคงที่
print("The value of pi is: \(pi)")

class MathOperations {
    static func square(_ number: Int) -> Int {
        return number * number
    }
}

let result = MathOperations.square(5) // เรียกใช้ static method โดยไม่ต้องสร้างอ็อบเจกต์
print("The value of square is: \(result)")

var THB = 25
THB = 30 // ตัวแปร age สามารถเปลี่ยนแปลงค่าได้
print("The value of THB is: \(THB)")

var x = 3 // Integer
var name = "Joe" // String
print("x: \(x), name: \(name)")

var lastName: String = "123"
print("last Name: \(lastName)")

let age: Int = 22
let price: Double = 1.99
var height: Float = 200.12345233243

class Person {
}

var john: Person = Person()
print("An instance Person created")

var button1: UIButton = UIButton()
print("An instance UIButton created")

var iscomplete: Bool = false
iscomplete = true
print("Is Complete? \(iscomplete)")


