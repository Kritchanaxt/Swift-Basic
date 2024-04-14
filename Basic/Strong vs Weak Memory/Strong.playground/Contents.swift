import UIKit

//เมื่อมี strong reference ไปยังออบเจกต์ใด ออบเจกต์นั้นจะไม่ถูกทำลายจนกว่า strong reference ทั้งหมดจะถูกลบหรือยกเลิกการอ้างอิง
class MyClass {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

var strongReference: MyClass? = MyClass(name: "Object A")
var anotherReference = strongReference
strongReference = nil // ไม่ทำให้ Object A ถูกทำลายเพราะ anotherReference ยังคงมี strong reference
