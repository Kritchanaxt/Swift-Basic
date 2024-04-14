import UIKit

//Type casting เป็นกระบวนการที่ใช้ในการเปลี่ยนประเภทข้อมูลจากประเภทหนึ่งไปยังประเภทอื่น
//ใน Swift, เราใช้ as เพื่อทำการแปลงประเภทข้อมูล หรือ as? และ as! เพื่อทำการแปลงและตรวจสอบการแปลงประเภทข้อมูล

let stringValue = "123"
if let intValue = Int(stringValue) {
    print("\(intValue)")
}


//การแปลงชนิดข้อมูลแบบ Downcasting (การแปลงชนิดข้อมูลแบบลดระดับ)
  //หากการแปลงสำเร็จ ค่าที่ได้จะถูกส่งไปยังบล็อก if และทำงานในบล็อกนั้น
  //หากการแปลงไม่สำเร็จ โปรแกรมจะเข้าสู่บล็อก else และทำงานในบล็อกนั้น
class Animal {}
class Dog: Animal {}

let animal: Animal = Dog() // กำหนดให้ animal เป็น instance ของคลาส Animal ไม่ใช่ Dog จะเข้าสู๋ else
if let _ = animal as? Dog {
    print("This is a dog!")
} else {
    print("This is not a dog.")
}

//การแปลงชนิดข้อมูลแบบ Upcasting (การแปลงชนิดข้อมูลแบบเพิ่มระดับ)
  // หากไม่มีการเปลี่ยนแปลงในการแสดงผล ค่าที่ได้หลังจากการ upcasting จะมีลักษณะเหมือนกับตัวแปรต้นฉบับที่ถูกแปลง
class Animal2 {}
class Snake: Animal2 {
    var name2: String
    
    init(name2: String) {
        self.name2 = name2
    }
    
    var description2: String {
        return "Snake: \(name2)"
    }
}

let snake: Snake = Snake(name2: "Stafan")
let animal2: Animal2 = snake // Upcasting
let description2: String = (animal2 as! Snake).description2
print(description2)

//การแปลงชนิดข้อมูลด้วย forced type casting (การแปลงชนิดข้อมูลแบบบังคับ)
  // หากการแปลงสำเร็จ ค่าที่ถูกแปลงจะถูกใช้งานต่อไป
  // หากการแปลงไม่สำเร็จ โปรแกรมจะเกิด runtime error
class Animal3 {}
class Dog3: Animal3 {
    var name3: String
    
    init(name3: String) {
        self.name3 = name3
    }
    
    // กำหนดวิธีการแสดงผลเพิ่มเติมสำหรับอินสแตนซ์ของคลาส Dog3
    var description3: String {
        return "Dog: \(name3)"
    }
}

let animal3: Animal3 = Dog3(name3: "Buddy")
let dog3 = animal3 as! Dog3 // Forced type casting
let Description3: String = dog3.description3
print(Description3)


let dog = animal as! Dog // Forced type casting
