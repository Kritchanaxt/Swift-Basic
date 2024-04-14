import UIKit

// Optional Binding 
var optionalString: String? = "Hello, Swift"

if let UnwrappedString = optionalString {
    print("Optional string contains: \(UnwrappedString)")
} else {
    print("Optional string is nil")
}

var optionalString1: String? = nil

if let UnwrappedString1 = optionalString1 {
    print("Optional string contains: \(UnwrappedString1)")
} else {
    print("Optional string is nil")
}

// Force Unwrapping
var optionalInt: Int? = 42
let UnwrappedInt = optionalInt!

print("Optional integer contins: \(UnwrappedInt)")

// Optional Chaining
struct Person {
    var name: String?
    var age: Int?
}

let person1 = Person(name: "John", age: 30)
let person2 = Person(name: "Jane", age: nil)

// Accessing optional property using optional chaining
let JohnsAge = person1.age
let JanesAge = person2.age

print("John's age: \(JohnsAge)")
print("Jane's age: \(JanesAge)")
