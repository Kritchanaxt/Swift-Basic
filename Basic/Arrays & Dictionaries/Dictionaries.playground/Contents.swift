import UIKit

var cities = ["Bangkok": "BKK", "New York": "NYC", "London": "LDN"]
let cityCode = cities["Bangkok"]
print(cityCode)

var cities2 = ["Bangkok": "BKK", "New York": "NYC", "London": "LDN"]
if let cityCode2 = cities2["Bangkok"] {
    print(cityCode2)
}

//----------------------//
var numbers: [Int] = [1, 2, 3]
var cars: [String: Int] = ["bmw": 3, "Honda": 1, "lexus": 12]
for(key, value) in cars {
    print(key,value)
}
