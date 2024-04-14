import UIKit

var Structs1 = "Struct"
print(Structs1)

struct Piont {
    var x: Double
    var y: Double
}

// Using Struct
var piont1 = Piont(x: 1.0, y: 2.0)
var piont2 = piont1 // point2 and point1 have separate(แยกกัน) values ​​and do not share memory.

piont1.x = 5.0
piont2.y = 6.0

print(piont1.x)
print(piont1.y)

print(piont2.x)
print(piont2.y)

print(piont1)
print(piont2)

struct Car {
    let make: String
    let color: String
    
    init(make: String, color: String){
        self.make = make
        self.color = color
    }
}

var bmw = Car(make: "BMW", color: "Blue")
var car2 = bmw
// car2 -> bmw
// car2 | bmw

print(bmw)
print(car2)
