import UIKit

//การใช้งาน defer เพื่อการทำงานหลังจากที่บล็อก catch ถูกเรียกใช้
class File {
    let filename: String
    
    init(_ filename: String) {
        self.filename = filename
        print("File \(filename) is opened.")
    }
    
    func readData() throws -> Data {
        print("Reading data from file \(filename)...")
        // ประมวลผลการอ่านข้อมูล ในที่นี้เราจะใช้ข้อมูลสมมติ
        let data = "This is sample data".data(using: .utf8)!
        return data
    }
    
    func close() {
        print("File \(filename) is closed.")
    }
}

// ฟังก์ชันเปิดไฟล์
func openFile(_ filename: String) -> File {
    return File(filename)
}

// ฟังก์ชันปิดไฟล์
func closeFile(_ file: File) {
    file.close()
}

// ฟังก์ชันอ่านไฟล์
func readFile(_ file: File) throws -> Data {
    return try file.readData()
}

// ฟังก์ชันเชิงตัวอย่างเพื่อให้ทำงานได้
func processFile(filename: String) {
    let file = openFile(filename)
    defer {
        closeFile(file)
    }

    do {
        let data = try readFile(file)
        // ทำงานกับข้อมูลที่ได้จากการอ่านไฟล์
        print("Data read from file \(filename): \(String(data: data, encoding: .utf8)!)")
    } catch {
        print("Error reading file: \(error)")
        // จัดการข้อผิดพลาดที่เกิดขึ้น
    }
}

// ทดสอบการใช้งานฟังก์ชัน processFile
processFile(filename: "example.txt")
