import UIKit

var Structs5 = "Structs5"
print(Structs5)


// ประกาศ Struct ชื่อ Car
struct Car {
    var brand: String
    var model: String
    var year: Int
    var color: String
    
    // Method สำหรับแสดงข้อมูลของรถ
    func displayInfo(){
        print("Brand: \(brand), Model: \(model), Year: \(year), Color: \(color)")
    }
}

// สร้าง instance ของ Car
var myCar = Car(brand: "Toyota", model: "Camry", year: 2020, color: "Red")

// เรียกใช้ method เพื่อแสดงข้อมูลของรถ
myCar.displayInfo()

// สร้าง instance ใหม่ของ Car
var friendCar = Car(brand: "Honda", model: "Civic", year: 2019, color: "Blue")

// เรียกใช้ method เพื่อแสดงข้อมูลของรถของเพื่อน
friendCar.displayInfo()
