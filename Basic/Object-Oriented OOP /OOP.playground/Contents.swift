import UIKit

// สรุปโดยย่อ OOP ใน Swift ช่วยให้โปรแกรมมีโครงสร้างที่เป็นระเบียบและง่ายต่อการจัดการ และช่วยให้การพัฒนาโปรแกรมเป็นไปอย่างมีประสิทธิภาพและปลอดภัยมากขึ้นด้วย

// override: ใช้เพื่อแทนที่หรือปรับปรุงการทำงานของฟังก์ชัน, คุณสมบัติ, หรือตัวแปรจาก superclass ใน subclass

// super: ใช้เรียกใช้โค้ดหรือฟังก์ชันของ superclass จากภายใน subclass ที่ override หรือสืบทอดมา


//คลาส: การสร้างคลาสเป็นรูปแบบหลักในการใช้งาน OOP ใน Swift โดยคลาสสามารถมี properties, methods, และ initializers เพื่อสร้างอ็อบเจกต์ของคลาสนั้นๆ
class Car {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    func startEngine() {
        print("Engine started for \(brand) \(model)")
    }
}

let myCar = Car(brand: "Toyoto", model: "Camry")
myCar.startEngine()

//การสืบทอด (Inheritance): การสืบทอดเป็นส่วนหนึ่งใน OOP ที่ใช้ในการสร้างคลาสใหม่โดยใช้คุณสมบัติและพฤติกรรมจากคลาสที่มีอยู่แล้ว
class ElectricCar: Car {
    var batteryLevel: Double
    
    init(brand: String, model: String, batteryLevel: Double) {
        self.batteryLevel = batteryLevel
        super.init(brand: brand, model: model)
    }
    func chargeBattery() {
        print("Battery charged for \(brand) \(model) battery level: \(batteryLevel)%")
    }
}

let myElectricCar = ElectricCar(brand: "Tesla", model: "Model S", batteryLevel: 80.0)
myElectricCar.chargeBattery()

//การโอเวอร์ไรด์ (Override): การโอเวอร์ไรด์เป็นการนำเอาเมธอดจากคลาสที่สืบทอดมาแล้วและทำการปรับปรุงหรือเปลี่ยนแปลงเพื่อให้ตรงกับคลาสลูก
class ElectricCar1: Car {
    var batteryLevel: Double
    
    init(brand: String, model: String, batteryLevel: Double) {
        self.batteryLevel = batteryLevel
        super.init(brand: brand, model: model)
    }
    override func startEngine() {
        print("Engine staet for \(brand) \(model) with electric motor")
    }
}

let myElectricCar1 = ElectricCar1(brand: "Tesla", model: "Model Y", batteryLevel: 120.0)
myElectricCar1.startEngine()
