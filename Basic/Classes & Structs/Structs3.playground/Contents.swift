import UIKit

var Structs3 = "Product List"
print(Structs3)

struct Product {
    var name: String
    var price: Double
    var quantity: Int // quantity = ปริมาณ
    
    // Method for calculating the total price
    func CaculatorTotalPrice() -> Double {
        return price * Double(quantity)
    }
}

// Create an instance of Product
let laptop = Product(name: "Laptop", price: 1200.50, quantity: 2)
let mobile = Product(name: "Moblie", price: 400.50, quantity: 5)

// Call the method to calculate the total price
let TotalPriceLaptop = laptop.CaculatorTotalPrice()
let TotalPriceMobile = mobile.CaculatorTotalPrice()

print("Total Price: $\(TotalPriceLaptop)")
print("Total Price: $\(TotalPriceMobile)")



