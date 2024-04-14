import UIKit

var Classes4 = "Pet storage"
print(Classes4)

//Class For pet storage
class Pet {
    var name: String
    var breed: String
    var age: Int
    
    //Initializer(ค่าเริ่มต้น) in class
    init(name: String, breed: String, age: Int){
        self.name = name
        self.breed = breed
        self.age = age
    }
    
    //Method(วิธี) in class
    func speak(){
        print("Hello, I'm a \(name)!")
    }
        
        // Method for calculating(คำนวณ) pet details(รายละเอียด)
    func details() -> String {
        return "Name: \(name), Breed: \(breed), Age: \(age) years"
    }
}
    
//Ceate an instanat of pet
let dog = Pet(name: "Buddy", breed: "Golden Retriever", age: 3)
let cat = Pet(name: "Tiger", breed: "Persian", age: 2)
    
//Call method in instant
dog.speak()
    
//Call the method calculating for details
let PetDetails = dog.details()
print(PetDetails)

cat.speak()
let petDetails = cat.details()
print(petDetails)



