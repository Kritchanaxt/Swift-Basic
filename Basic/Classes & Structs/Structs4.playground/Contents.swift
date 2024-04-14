import UIKit

var Structs4 = "Point2D"
print(Structs4)

struct Point2D {
    var x: Double
    var y: Double
    
    // Method for calculating the distance(ระยะทาง) between points.
    func distance(to otherPoint: Point2D) -> Double {
            let deltaX = x - otherPoint.x
            let deltaY = y - otherPoint.y
            return sqrt(deltaX * deltaX + deltaY * deltaY)
    }
}

let pointA = Point2D(x: 1.0, y: 2.0)
let pointB = Point2D(x: 4.0, y: 6.0)


let distance = pointA.distance(to: pointB)
print("Distance between points: \(distance)")

