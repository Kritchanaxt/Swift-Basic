import UIKit

var Classes2 = "Hello, Classes2"
print(Classes2)

class Car{
    var topSeed = 200
    
    func drive(){
        print("Driving at \(topSeed)")
    }
}

class Futurecar: Car{
    func fly(){
        print("Flying")
    }
}

let myRide = Car()
myRide.topSeed
myRide.drive()

let myNewRide = Futurecar()
myNewRide.topSeed
myNewRide.drive()
myNewRide.fly()
