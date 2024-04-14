import UIKit

// Protocol เปรียบเสมือนสัญญาที่คลาสหรือโครงสร้างข้อมูลต้องปฏิบัติตาม
// ทำหน้าที่หรือคุณสมบัติที่ต้องมีในตัวแปรหรืออ็อบเจกต์ที่ปฏิบัติตาม Protocol นั้น ๆ ของลักษณะการทำงานที่ต่างกันไป หรือตามสัญญาที่ Protocol กำหนดไว้

protocol Vehicle {
    var numberOfWheels: Int { get }
    var color: String { get set }
    
    func start()
    func stop()
}

class Car: Vehicle {
    var numberOfWheels: Int = 4
    var color: String = "Red"
    
    func start() {
        print("Car starting...")
    }
    
    func stop() {
        print("Car stopping...")
    }
}

class Bike: Vehicle {
    var numberOfWheels: Int = 2
    var color: String = "Blue"
    
    func start() {
        print("Bike starting...")
    }
    
    func stop() {
        print("Bike stopping...")
    }
}

