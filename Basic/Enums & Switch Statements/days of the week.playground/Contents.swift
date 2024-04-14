import UIKit

enum DayOfWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

func printDay(day: DayOfWeek) {
    switch day {
        case .sunday:
            print("Sunday")
        case .monday:
            print("Monday")
        case .tuesday:
            print("Tuesday")
        case .wednesday:
            print("Wednesday")
        case .thursday:
            print("Thursday")
        case .friday:
            print("Friday")
        case .saturday:
            print("Saturday")
    }
}

// พิมพ์วันในสัปดาห์
printDay(day: .thursday)

