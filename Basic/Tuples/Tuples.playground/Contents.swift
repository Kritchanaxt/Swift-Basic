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
