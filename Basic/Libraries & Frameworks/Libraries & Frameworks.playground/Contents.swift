import Alamofire

// ส่ง HTTP request ด้วย Alamofire
Alamofire.request("https://api.example.com/data").responseJSON { response in
    // ประมวลผลผลลัพธ์ที่ได้
    if let json = response.value {
        print("JSON: \(json)")
    }
}

import UIKit

// สร้างหน้าจอแรกของแอปพลิเคชันด้วย UIKit
let viewController = UIViewController()
viewController.view.backgroundColor = .white
let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
label.text = "Hello, UIKit!"
viewController.view.addSubview(label)

//Libraries:
//Alamofire: ชุดไลบรารีที่ใช้สำหรับการจัดการกับ HTTP requests ในแอปพลิเคชัน iOS.
//SwiftyJSON: ชุดไลบรารีที่ช่วยในการประมวลผล JSON ให้ง่ายขึ้นและสะดวกมากขึ้นใน Swift.
//Realm: ชุดไลบรารีฐานข้อมูลเบสิก NoSQL ที่เหมาะสำหรับการใช้งานในแอปพลิเคชัน iOS.

//Frameworks:
//UIKit: เฟรมเวิร์กสำหรับสร้างแอปพลิเคชัน iOS และ iPadOS โดยมีองค์ประกอบพื้นฐานเช่น หน้าจอ (UIView), ปุ่ม (UIButton), และเมนู (UINavigationBar) ฯลฯ
//SwiftUI: เฟรมเวิร์กสำหรับสร้าง UI ด้วยการเขียนโค้ดในรูปแบบธรรมดา และใช้งานได้กับ iOS, iPadOS, macOS, และ watchOS.
//Core Data: เฟรมเวิร์กสำหรับจัดการข้อมูลฐานข้อมูลในแอปพลิเคชัน iOS และ macOS โดยใช้ระบบ ORM (Object-Relational Mapping).
