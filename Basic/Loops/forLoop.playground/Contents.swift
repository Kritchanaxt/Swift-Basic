import UIKit

var forLoop = "ForLoop"
print(forLoop)

print("--------------------------------------------")
let names = ["Wave", "Diw", "Win", "Got", "Nut"]
for name in names {
    print("Hello \(name)!")
}

print("--------------------------------------------")
let numbers = [1,2,3,4,5]
for thing in numbers {
    let result = thing * 2
    print(result)
}

print("--------------------------------------------")
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

print("--------------------------------------------")
for index in 1...5 {
    print("\(index) time 5 is \(index * 5)")
}

print("--------------------------------------------")
let base = 3
let power = 5
var answer = 1
for _ in 1...power {
    answer += base
    print("\(base) to the power of \(power) is \(answer)")
}
