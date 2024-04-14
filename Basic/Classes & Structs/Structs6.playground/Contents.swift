import UIKit

//Getter for Property
struct Person {
    var name: String
    
    // Getter for name property
    var capitaliziedFirstLetterOfName: String {
        return name.prefix(1).capitalized + name.dropFirst()
    }
}

let person = Person(name: "Wave")
print(person.capitaliziedFirstLetterOfName)

//Computed Property
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double{
        return width * height
    }
}
let rectangle = Rectangle(width: 83, height: 168)
print(rectangle)
print(rectangle.area)

//Getter for Collection Element
let numbers = [1, 2, 3, 4, 5]

if let firstNumber = numbers.first {
    print(firstNumber) // Output: 1
}

