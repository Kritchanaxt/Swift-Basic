import UIKit

enum TrafficLightColor {
    case red
    case yellow
    case green
}

func indicateTrafficLight(color: TrafficLightColor) {
    switch color {
    case .red:
        print("Stop")
    case .yellow:
        print("Prepare to stop")
    case .green:
        print("Go")
    }
}

indicateTrafficLight(color: .green)
