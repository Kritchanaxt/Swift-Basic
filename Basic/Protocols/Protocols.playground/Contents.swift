import UIKit

//----------- Equatable Protocol ----------//
protocol Equatable {
    static func ==(lhs: Self, rhs: Self) -> Bool
}

struct Point: Equatable {
    let x: Int
    let y: Int
}

//----------- CustomStringConvertible Protocol ----------//
protocol CustomStringConvertible {
    var description: String { get }
}

struct Person: CustomStringConvertible {
    let name: String
    var description: String {
        return "Name: \(name)"
    }
}

//----------- Codable Protocol ----------//
protocol Codable {
    func encode(to encoder: Encoder) throws
    init(from decoder: Decoder) throws
}

struct Person: Codable {
    let name: String
}
