import UIKit

// เป็นกระบวนการในการจัดการกับข้อผิดพลาดที่อาจเกิดขึ้นในระหว่างการทำงานของโปรแกรม
// ใน Swift, เราใช้ do, try, catch เพื่อจัดการกับข้อผิดพลาด
// func doSomething() throws { คำสั่งที่อาจเกิดข้อผิดพลาด

//โครงสร้าง Error handling
func doSomething() throws {
    // คำสั่งที่อาจเกิดข้อผิดพลาด
}
do {
   try doSomething()
   //ทำงานเมื่อไม่เกิดข้อผิดพลาด
   } catch {
   //จัดการกับข้อผิดพลาดที่เกิดขึ้น
   }

// การใช้งาน do-try-catch เพื่อจัดการข้อผิดพลาด
enum CustomError: Error {
    case outOfStock
}

func buyProduct(quantity: Int) throws {
    if quantity <= 0 {
        throw CustomError.outOfStock
    }
    print("Purchase succesful for \(quantity) items.")
}

do {
    try buyProduct(quantity: 5)
} catch CustomError.outOfStock {
    print("Product out of stock.")
} catch {
    print("An unknown error occurred.")
}

// การใช้งาน try? เพื่อการรับค่าแบบ Optional:
func loadData() throws -> Data {
    print("Kritchanat Malaikwan")//โค้ดโหลดข้อมูล
    return Data()
}
let data = try? loadData()

