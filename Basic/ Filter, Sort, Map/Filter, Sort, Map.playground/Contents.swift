import UIKit

// "Filter", "Sort", และ "Map" เป็นเมธอดของ Collection
// สามารถจัดการข้อมูลใน Collection ได้อย่างมีประสิทธิภาพ

// $0 $1 แทนค่าของแต่ละองค์ประกอบใน numbers

// Filter: ใช้สำหรับกรองข้อมูลใน Collection โดยให้เงื่อนไข ค่าที่เป็นจริงจะถูกเก็บไว้ ส่วนค่าที่เป็นเท็จจะถูกกรองออกไป
let numbers1 = [1, 2, 3, 4, 5]
let evenNumbers = numbers1.filter { $0 % 2 == 0 } //กรองเลขคู่จากอาร์เรย์
print(evenNumbers)

// Sort: ใช้ในการเรียงลำดับข้อมูลใน Collection ตามเงื่อนไขที่กำหนด
let numbers2 = [5, 2, 8, 3, 1]
let sortedNumbers = numbers2.sorted { $0 < $1 } // เรียงลำดับตัวเลขในอาร์เรย์จากน้อยไปหามาก
print(sortedNumbers)

// Map: ใช้ในการแปลงค่าข้อมูลใน Collection โดยใช้เงื่อนไขหรือการประมวลผลที่กำหนด
let numbers3 = [1, 2, 3, 4, 5]
let squaredNumbers = numbers3.map { $0 * $0 } //ทำการคูณแต่ละค่าในอาร์เรย์ด้วยตัวเอง (ยกกำลังสอง)
print(squaredNumbers)

print("\n")

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Emily", isPremium: false, order: 1),
    DatabaseUser(name: "Samantha", isPremium: true, order: 3),
    DatabaseUser(name: "Chris", isPremium: false, order: 2),
]

var allPreamiumUsers: [DatabaseUser] = allUsers.filter{ user in //กรองผู้ใช้ที่เป็นสมาชิกพรีเมียมจากอาร์เรย์ allUsers และเก็บผลลัพธ์ลงใน allPremiumUsers
    user.isPremium
}
print(allPreamiumUsers)

//รูปแบบที่สั้นลง
var allPremiumUsers2: [DatabaseUser] = allUsers.filter ({ $0.isPremium }) // กรองสมาชิกพรีเมียมจากอาร์เรย์ allUsers และเก็บผลลัพธ์ลงใน allPremiumUsers2
print(allPremiumUsers2)
print("\n")

var orderedUsers: [DatabaseUser] = allUsers.sorted{ user1, user2 in
    return user1.order < user2.order //ใช้ค่า order ในการเปรียบเทียบ และเก็บผลลัพธ์ในตัวแปร
}
print(orderedUsers)

//รูปแบบที่สั้นลง
var orderedUers2: [DatabaseUser] = allUsers.sorted(by: { $0.order < $1.order }) //การเปรียบเทียบ และเก็บผลลัพธ์ในตัวแปร
print(orderedUers2)
print("\n")

var userNames: [String] = allUsers.map { user in
    return user.name  //userNames ที่เก็บชื่อของแต่ละผู้ใช้ในอาร์เรย์ allUsers โดยเรียกใช้ user.name และเก็บผลลัพธ์ใน userNames
}
print(userNames)

//รูปแบบที่สั้นลง
var userNames2: [String] = allUsers.map({ $0.name }) // สร้างอาร์เรย์ใหม่ที่เก็บชื่อของแต่ละผู้ใช้ในอาร์เรย์ allUsers
print(userNames2)

