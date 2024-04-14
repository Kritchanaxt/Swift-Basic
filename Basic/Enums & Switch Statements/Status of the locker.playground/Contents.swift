import UIKit

enum ConnectionState {
    case connected
    case disconnected
    case connecting
}

func checkConnectionState(state: ConnectionState){
    switch state {
    case .connected:
        print("Divice is connected")
    case .disconnected:
        print("Divice is disconnected")
    case .connecting:
        print("Divce is connecting")
    }
}

checkConnectionState(state: .connected)
checkConnectionState(state: .disconnected)
checkConnectionState(state: .connecting)
