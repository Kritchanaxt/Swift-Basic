import UIKit

//ถ้าไม่มีอ้างอิง strong อื่นๆ ออบเจกต์ที่ถูกอ้างอิง weak จะถูกทำลายโดยอัตโนมัติ เมื่อจำนวนอ้างอิง strong ลดลงเป็นศูนย์
class MyClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

weak var weakReference: MyClass? = MyClass(name: "Object B")

