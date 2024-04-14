import UIKit

var Classes3 = "Hello, Classes3"
print(Classes3)

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func celebrateBirthday() {
        age += 1
    }
}

var person1 = Person(name: "John", age: 30)
var person2 = person1 // person2 และ person1 ชี้ไปที่อ็อบเจกต์เดียวกัน

person1.celebrateBirthday()
print(person1.name)
print(person2.age)
