import UIKit

let x = 20

if x < 4 {
    print("Only if a less than 4")
} else if x < 8 {
    print("Only if a less thsn 8")
} else if x == 20 {
    print("Only is a less than 10")
} else {
    print("Nothing was true!!!")
}

let a = 1
let b = 1
let c = 3

if (a < 4 || b < 4) && c != 3 {
    print("Branch 1")
} else if a < 8 {
    print("Branch 2")
} else if !(a == 10 && b == 1){
    print("Branch 3")
}
