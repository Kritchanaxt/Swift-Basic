import UIKit

var x: Int? = 3
var y: Int? = 12

if let value = x {
    
    if let value2 = y {
        let result = value + value2
        print(result)

        }
    }


var price: Double? = nil
print(price)

price = 1.23
print(price)
//คำสั่ง type(of: price) จะคืนค่าเป็นประเภทของตัวแปร price ซึ่งในกรณีนี้คืนค่าเป็น Optional<Double>.Type
type(of: price)


//การใช้ Optional Binding ใน if let
var optionalNumber: Int? = 42
if let unwrappedNumber = optionalNumber {
    print("Optional number is: \(unwrappedNumber)")
} else {
    print("Optional number is nil")
}

var optionalNumber1: Int? = nil
if let unwrappedNumber1 = optionalNumber1 {
    print("Optional number is: \(unwrappedNumber1)")
} else {
    print("Optional number is nil")
}


//Optional Chaining
struct Person {
    var name: String
    var address: Address?
    var color: Color?
}

struct Address {
    var city: String
}

struct Color {
    var color: String
}

let person: Person? = Person(name: "John", address: Address(city: "New York"), color: Color(color: "Red"))
let city = person?.address?.city
let name = person?.name
let color = person?.color?.color

print("City: \(city ?? "Unknown"), Name: \(name ?? "Unknown"), Color: \(color ?? "Unknown")")
print("City: \(city), Name: \(name), Color: \(color)") 
// ?? ใช้ในการกำหนดค่าเริ่มต้นให้กับตัวแปร Optional ในกรณีที่ตัวแปร Optional มีค่าเป็น nil
