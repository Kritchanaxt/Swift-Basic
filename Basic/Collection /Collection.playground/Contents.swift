import UIKit

//คือโครงสร้างข้อมูลที่ใช้ในการจัดเก็บข้อมูลหลาย ๆ รายการใน Swift เช่น Array, Dictionary, Set
//ใช้สำหรับการจัดเก็บข้อมูลเพื่อดำเนินการต่าง ๆ อย่างง่ายและมีประสิทธิภาพ

//Arrays
var numbers = [1, 2, 3, 4, 5]
numbers.append(6)
numbers.remove(at: 2)// ทำการลบสมาชิกที่ตำแหน่งที่ 2 ออกจากอาร์เรย์ ซึ่งในที่นี้คือ ค่า 3
print(numbers)

//Dictionarie
var fruits = ["apple": 5, "banana": 3, "orange": 7]
fruits["grape"] = 9
fruits.removeValue(forKey: "banana")//แทนค่า grape แทนค่า banana
print(fruits)

//Set
var uniquenumbers: Set<Int> = [1, 2, 3, 4, 5]
uniquenumbers.insert(6)
uniquenumbers.remove(3)
print(uniquenumbers)
//การทำงานของโค้ดคือ Set ที่ประกอบด้วยตัวเลขที่ไม่ซ้ำกันและไม่รวมตัวเลข 3
