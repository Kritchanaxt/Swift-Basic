import UIKit

// while: ใช้เมื่อต้องการทำงานวนลูปขณะที่เงื่อนไขยังคงเป็นจริง ทำงานไปเลื่อยๆ จนกว่าจะมีค่าเท่าหรือมากกว่า

var whileLoop = "WhlieLoop"
print(whileLoop)

var counter = 5
while counter > 0 {
    print("Hello")
    counter -= 1
}

repeat{
    print("Hello Swift")
}while counter > 0

//--------------------------------
var x = 0
while x <= 3 {
    print(x)
    x += 1
}

while true {
    print("Number: \(n)")
    n += 1
    
    if n > 5 {
        break
    }
}
