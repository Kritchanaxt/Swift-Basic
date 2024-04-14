import UIKit

// Searching เป็นกระบวนการค้นหาค่าที่ต้องการในชุดข้อมูลที่มีอยู่
let number = [4, 2, 8, 1, 5, 9, 3]
let searchValue = 5
if number.contains(searchValue) {
    print("\(searchValue) found in the array.")
} else {
    print("\(searchValue) not found in the array.")
}

func isNumberInArray(number: Int, array: [Int]) -> Bool {
    for x in array {
        if x == number {
            return true
        }
    }
    return false
}

let result = isNumberInArray(number: 10, array: number)
print(result)


// Sorting เป็นกระบวนการจัดเรียงค่าในชุดข้อมูลให้เรียงลำดับตามลำดับที่กำหนด
var unsortedNumbers = [4, 2, 8, 1, 5, 9, 3]
unsortedNumbers.sort()
print("Sorted numbers: \(unsortedNumbers)")

