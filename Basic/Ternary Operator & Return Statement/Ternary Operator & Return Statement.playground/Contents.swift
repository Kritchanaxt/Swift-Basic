import UIKit

//Ternary Operator  ใช้สำหรับการทำงานของเงื่อนไขแบบสั้น ๆ
//Struct: condition ? valueIfTrue : valueIfFalse
var age = 20
let result = age >= 18 ? "Adult" : "Child" //ถ้าอายุมากกว่าหรือเท่ากับ
print(result)

var year = 2004
let resultYear = year <= 1980 ? "Gen Y" : "Gen Z"
print(resultYear)

// Return Statement ใช้ในการส่งค่ากลับจากฟังก์ชัน
// return value
func checkAdult(age: Int) -> String {
    return age >= 18 ? "Adult" : "Chlid"
}
let CheckAdult = checkAdult(age: 10)
print(CheckAdult)

func isBiggerThanFive(number: Int) -> Bool {
    return number > 5 ? true : false
}
let Check = isBiggerThanFive(number: 4)
print(Check)

func randomNumber() -> Int {
    let x = 5
    let result = x > 3 ? 12 : 2
    return result
}
let check = randomNumber()
print(check)
