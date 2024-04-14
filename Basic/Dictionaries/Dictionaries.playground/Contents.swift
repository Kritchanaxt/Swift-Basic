import UIKit

//Dictionaries เป็นโครงสร้างข้อมูลที่เก็บข้อมูลในรูปแบบของคีย์-ค่า (key-value pairs) โดยสามารถเข้าถึงค่าได้ด้วยการอ้างอิงคีย์

var greeting = "Hello, Dictionaries"
print(greeting)

var myDictionary: [String: Any] = ["name": "John", "age": 30, "isStudent": false]

// ใช้ Optional binding เป็นวิธีที่ปลอดภัยการเช็คและใช้ข้อมูลใน Dictionary โดยไม่ต้องกังวลเรื่องค่า nil
if let name = myDictionary["name"] as? String {
    print(name)
}
if let age = myDictionary["age"] as? Int {
    print(age)
}
if let isStudent = myDictionary["isStudent"] as? Bool {
    print(isStudent)
}

print("\n")

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

let myFruit = finalFruits[1] // เข้าถึงค่าในอาร์เรย์ที่ตำแหน่งที่ 1
print(myFruit)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

var myFirstDictionary: [String : Bool] = [
    "Apple" : true,
    "Orange" : false
]
if let item1 = myFirstDictionary["Orange"] {
    print(item1)
}

var anotherDictionary: [String : String] = [
    "abc" : "Apple",
    "def" : "Banana"
]
if let item2 = anotherDictionary["abc"] {
    print(item2)
}

anotherDictionary["xyz"] = "Mango" // กำหนดค่าใหม่ใน Dictionary

anotherDictionary.removeValue(forKey: "def") //ลบค่าใน Dictionary

print(anotherDictionary)

struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 7),
    PostModel(id: "xyz9", title: "Post 3", likeCount: 217),
]
if postArray.indices.contains(1) { // ตรวจสอบว่าที่กำหนดมีอยู่ในช่วงของอาร์เรย์หรือไม่
    let item = postArray[1]
    print(item)
}

var postDict: [String:PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678" : PostModel(id: "def678", title: "Post 2", likeCount: 7),
    "xyz987" : PostModel(id: "xyz9", title: "Post 3", likeCount: 217),
]
if let myNewItem = postDict["xyz987"] {
    print(myNewItem)
}

