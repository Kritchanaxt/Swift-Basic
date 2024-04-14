import UIKit

var Guard = "Guard Statsments"
print(Guard)
//guard ต้องมี return
//guard เป็นคำสั่งใน Swift ที่ใช้ในการตรวจสอบเงื่อนไขและจัดการโค้ดเมื่อเงื่อนไขไม่เป็นจริง ช่วยให้โค้ดมีลักษณะ Flat และเพิ่มความปลอดภัยให้กับโปรแกรมด้วยการ validate ข้อมูลก่อนการใช้งาน
//โครงสร้างของ guard ประกอบด้วยเงื่อนไขที่ต้องเป็นจริง (true) และคำสั่งที่ต้องการให้ทำงานเมื่อเงื่อนไขเป็นเท็จ (false) ซึ่งใช้คำสั่ง else เพื่อระบุบล็อกของโค้ดที่จะทำงานเมื่อเงื่อนไขไม่เป็นจริง

func numberLargerThanFive(number: Int) -> Bool {
    guard number > 5 else {
        return false
    }
    return true
}


func greet(name: String?) {
    guard let unwrappedName = name else {
        return
    }
    print("Hello, \(unwrappedName)!")
}


func checkAge(age: Int?) {
    guard let unwrappedAge = age, unwrappedAge >= 18 else {
        return
    }
    print("You are \(unwrappedAge) years old.")
}


func processArray(array: [Int]?) {
    guard let unwrappedArray = array, !unwrappedArray.isEmpty else {
        return
    }
}


func processDictionary(dictionary: [String: Any]?) {
    guard let unwrappedDictionary = dictionary, !unwrappedDictionary.isEmpty else {
        return
    }
}


func processOptionalValue(value: Int?) -> Int {
    guard let unwrappedValue = value else {
        return 0
    }
    return unwrappedValue * 2
}


// สร้างฟังก์ชันเพื่อแสดงผล
func printResult() {
    print(numberLargerThanFive(number: 4)) // ผลลัพธ์ควรเป็น false
    greet(name: "Alice") // ควรพิมพ์ "Hello, Alice!"
    checkAge(age: 20) // ควรพิมพ์ "You are 20 years old."
    processArray(array: [5]) // ผลลัพธ์ควรเป็น nil (ไม่มีการพิมพ์)
    processDictionary(dictionary: ["key1": "value1", "key2": 123, "key3": true]) // ผลลัพธ์ควรเป็น nil (ไม่มีการพิมพ์)
    print(processOptionalValue(value: 10)) // ผลลัพธ์ควรเป็น 20
}
printResult()
