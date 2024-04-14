import UIKit
import Foundation

//Access Control ใช้เพื่อควบคุมการเข้าถึงและการมองเห็นของสมาชิกในคลาส โครงสร้าง หรือโมดูลของโปรแกรม เพื่อป้องกันข้อมูลหรือโค้ดที่สำคัญไม่ถูกเข้าถึงหรือแก้ไขจากตัวอื่น โดยทั่วไปมีการกำหนดเป็น public, internal, fileprivate, private ซึ่งเราสามารถใช้เพื่อกำหนดระดับการเข้าถึงของสมาชิกต่างๆ ในโปรเจคของเรา

var greeting = "Hello, Access Control"
print(greeting)

public class MyClass {
    public var publicProperty: Int // สามารถเข้าถึงได้จากโมดูลอื่น ๆ ที่นำเข้า (import)
    internal var internalProperty: String // สามารถเข้าถึงได้ภายในโปรเจคเดียวกันเท่านั้น
    fileprivate var fileprivateProperty: Double // สามารถเข้าถึงได้ในไฟล์เดียวกันเท่านั้น
    private var privateProperty: Bool // สามารถเข้าถึงได้ภายในคลาส MyClass เท่านั้น

    // สร้าง initializer ของ MyClass ซึ่งสามารถใช้สร้าง instance ของ MyClass ได้
    public init() {
        publicProperty = 0  // กำหนดค่าเริ่มต้นเป็น 0
        internalProperty = "" // กำหนดค่าเริ่มต้นเป็นสตริงว่าง
        fileprivateProperty = 0.0 // กำหนดค่าเริ่มต้นเป็น 0.0
        privateProperty = false // กำหนดค่าเริ่มต้นเป็น false
    }
}

// " Rule of thumb ! "
// We want everything to be as private as possible!
// This makes your code easier to read/debug and is good coding practice!

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool // บอกว่าภาพยนตร์นี้เป็นเรื่องโปรดหรือไม่
    
    
    // ฟังก์ชันสำหรับอัพเดตสถานะของภาพยนตร์ที่เป็นเรื่องโปรด
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        return MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    // ฟังก์ชันสำหรับอัพเดตและมีการเปลี่ยนแปลงค่าแบบ in-place
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    
    // ประกาศตัวแปรเป็นสาธารณะ (public) ซึ่งสามารถเข้าถึงได้จากภายนอกคลาส
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // ประกาศตัวแปรเป็นส่วนตัว (private) ซึ่งสามารถเข้าถึงได้ภายในคลาสเท่านั้น
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // ประกาศตัวแปรเป็นสาธารณะ (public) ซึ่งสามารถอ่านค่าได้จากภายนอกคลาส แต่ไม่สามารถกำหนดค่าได้ภายนอกคลาส
    private(set) var movie3 = MovieModel(title: "Avenger", genre: .action, isFavorite: false)
    
    // ฟังก์ชันสำหรับอัพเดตสถานะของภาพยนตร์ movie3
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
}

let manager = MovieManager()

let someValue = manager.movie3

manager.updateMovie3(isFavorite: true)
print(manager.movie3)

//----------------------------------------------------//
// Version 1
// We can GET and SET the value from outside the object.
// "too public"
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
print(manager.movie1)

//----------------------------------------------------//
// Version 2
// We can GET or SET the value from outside the object.
// "cannot access"
let movie2 = manager.movie2
manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: true)

//----------------------------------------------------//
// Version 3
// We can GET or SET the value from outside the object, but we can't SET the value from outside the object.
let movie3 = manager.movie3
//manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: true)
manager.updateMovie3(isFavorite: true)

//------------------------ Note: private & public are by far the most common but there are many others ----------------------------//

// open: คลาสหรือสมาชิกสามารถ subclass หรือ override ได้จากโมดูลอื่น ๆ ที่นำเข้า
// public: สมาชิกสามารถเข้าถึงได้จากโมดูลอื่น ๆ ที่นำเข้า แต่ไม่สามารถ subclass หรือ override ได้
// internal: สมาชิกสามารถเข้าถึงได้ภายในโมดูลเท่านั้น โมดูลคือไฟล์หรือโปรเจคที่เราทำงานอยู่
// fileprivate: สมาชิกสามารถเข้าถึงได้ภายในไฟล์เดียวกันเท่านั้น
// private: สมาชิกสามารถเข้าถึงได้ภายในโครงสร้างเดียวกันเท่านั้น
