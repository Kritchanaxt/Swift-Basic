import UIKit

//Tuples เป็นโครงสร้างข้อมูลที่ใช้เก็บกลุ่มของค่าที่เกี่ยวข้องกัน โดยค่าแต่ละตัวสามารถเป็นประเภทข้อมูลที่แตกต่างกันได้

var greeting = "Hello, Tuples"
print(greeting)

let myTuple = (1, "Hello", true)
print(myTuple.0)
print(myTuple.1)
print(myTuple.2)

var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true


func getUserName() -> String {
    userName
}

func getUserIsPremium() -> Bool {
    userIsPremium
}

// limited to 1 return type
// จำกัด อยู่ที่ 1 ประเภทการส่งคืน
func getUserIsInfo() -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return name
}

// tuple can combine multiple pieces of data
// tuple สามารถรวมข้อมูลได้หลายส่วน
func getUserIsInfo2() -> (String,Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return(name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info1 = getUserIsInfo2()
let name1: String = info1.0 //เพื่อให้มันเป็น String คุณสามารถเข้าถึงได้โดยใช้ .0

func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return(name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name //เพื่อเข้าถึง name

func getUserIsInfo3() -> (name: String, isPremium: Bool, isNew: Bool) {
   return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    
}

let info = getUserIsInfo3()
doSomethingWithUserInfo(info: info) //ส่งค่า info เข้าไปทำงานใน func


// การใช้งาน Tuples

// 1.การประกาศและการใช้งาน Tuples
let person: (String, Int, Double) = ("Alice", 30, 5.5)

/// การเข้าถึงค่าภายใน Tuple:
let name = person.0      // "Alice"
let age = person.1       // 30
let height = person.2    // 5.5

// 2.การใช้งาน Named Tuples
let person = (name: "Alice", age: 30, height: 5.5)

/// การเข้าถึงค่าภายใน Tuple:
let name = person.name   // "Alice"
let age = person.age     // 30
let height = person.height  // 5.5

// 3.การเปลี่ยนค่าใน Tuple (ถ้า Tuple เป็นตัวแปร):
var person = (name: "Alice", age: 30, height: 5.5)
person.age = 31         // เปลี่ยนค่าอายุเป็น 31

// 4. การใช้งาน Tuple เพื่อการคืนค่าจากฟังก์ชัน:
func getUser() -> (name: String, age: Int) {
    return ("Bob", 25)
}

let user = getUser()
print("Name: \(user.name), Age: \(user.age)")

// 5. การเปรียบเทียบ Tuples:
let tuple1 = (1, "A")
let tuple2 = (1, "B")
let tuple3 = (2, "A")

print(tuple1 < tuple2)  // true เพราะ 1 < 1 คือ false และ "A" < "B" คือ true
print(tuple1 < tuple3)  // true เพราะ 1 < 2 คือ true

// 6. การใช้ Tuple เพื่อการสลับค่า:
var a = 5
var b = 10
(a, b) = (b, a)  // สลับค่าของ a และ b
print("a: \(a), b: \(b)")  // a: 10, b: 5







