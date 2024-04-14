import UIKit

protocol CarDataSource {
    var color: String { get set }
    
    func drive()
    func isAllWellDeive() -> Bool
}

class Car{
}

class BMW: Car, CarDataSource {
    var color: String
    
    init (color:String) {
        self.color = color
    }
    
    func drive(){
        
    }
}
