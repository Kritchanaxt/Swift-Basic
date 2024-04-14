import UIKit

var optionalValue: Int? = nil

func getValue() -> Int? {
    // การคืนค่า optional
    return Int.random(in: 0...10)
}

if let value = optionalValue {
    // ถ้ามีค่า value ไม่เท่ากับ nil
    print("Value is: \(value)")
} else {
    // ถ้าค่า value เป็น nil
    print("No value")
}

// ใช้ some เพื่อระบุว่าฟังก์ชันจะคืนค่าที่ไม่เป็น nil
if let value = getValue() {
    print("Value is: \(value)")
} else {
    print("No value")
}
