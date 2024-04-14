import UIKit

struct Person {
    private var _name: String // Private backing property
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
}

var person = Person(_name: "John")
print(person.name)

person.name = "Doe"
print(person.name) 

