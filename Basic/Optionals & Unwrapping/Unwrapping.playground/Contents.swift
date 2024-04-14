import UIKit

//การ Force Unwrapping โดยใช้เครื่องหมาย !
var optionalString: String? = "Hello, Swift"
let unwrappedString = optionalString!
print("Unwrapped string: \(unwrappedString)")

//-------------------------------//

//การใช้ guard เพื่อตรวจสอบค่าที่ไม่ใช่ nil และทำการ Unwrapping
func greet(name: String?) {
    guard let unwrappedName = name else {
        print("Name is nil")
        return
    }
    print("Hello, \(unwrappedName)!")
}
greet(name: "John")
greet(name: nil)

//-------------------------------//

//การใช้ Guard เพื่อตรวจสอบเงื่อนไขและ Unwrapping ในการตรวจสอบค่าที่ไม่ใช่ nil
//unwrappedNumber != 0 หมายถึงการตรวจสอบว่าค่าที่ถูก Unwrapped ไม่เท่ากับ 0 ซึ่งมีค่าที่ไม่ใช่ 0 หรือ nil จะถือว่าเป็นจริง ในทางกลับกันถ้ามีค่าเป็น 0 หรือ nil จะถือว่าเป็นเท็จ
func divide(number: Int?){
    guard let unwrappedNumber = number, unwrappedNumber != 0 else {
        print("Tnvalid number or division by zero")
        return
    }
    let result = 100 / unwrappedNumber
    print("Result of division: \(result)")
}

divide(number: 10)
divide(number: 20)
divide(number: nil)
divide(number: 0)

//-------------------------------//

var text: String?
text = "Hello World"

if let value = text {
}

func printValue(){
    guard let value = text else {
        return
    }
    print(value)
}
printValue()

//guard ต้องมี return
//guard เป็นคำสั่งใน Swift ที่ใช้ในการตรวจสอบเงื่อนไขและจัดการโค้ดเมื่อเงื่อนไขไม่เป็นจริง ช่วยให้โค้ดมีลักษณะ Flat และเพิ่มความปลอดภัยให้กับโปรแกรมด้วยการ validate ข้อมูลก่อนการใช้งาน
//โครงสร้างของ guard ประกอบด้วยเงื่อนไขที่ต้องเป็นจริง (true) และคำสั่งที่ต้องการให้ทำงานเมื่อเงื่อนไขเป็นเท็จ (false) ซึ่งใช้คำสั่ง else เพื่อระบุบล็อกของโค้ดที่จะทำงานเมื่อเงื่อนไขไม่เป็นจริง
