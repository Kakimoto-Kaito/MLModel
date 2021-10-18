import Flutter
import UIKit
import CoreBluetooth
import CoreLocation

public class SwiftKimicrewFlutterpackagePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "kimicrew_flutterpackage", binaryMessenger: registrar.messenger())
        let instance = SwiftKimicrewFlutterpackagePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "PlatformVersion":
            result(UIDevice.current.systemVersion)
            break
        case "BLEAvailable":
            result(getBLEAvailable())
            break
        case "BTEnabled":
            result(getBTEnabled())
            break
        case "LocateAvailable":
            result(getLocateAvailable())
            break
        default:
            print("エラー")
            break
        }
    }
    
    func getBLEAvailable() -> Bool {
        // 初期化処理
        let manager = CBCentralManager()
        
        // Bluetoothステータスを確認
        switch manager.state {
        //電源ONのとき
        case CBManagerState.poweredOn:
            print("Bluetooth poweredOn")
            return true
            break
        default:
            print("Bluetooth not poweredOn")
            return false
            break
        }
    }
    
    func getBTEnabled() -> Bool {
        // 初期化処理
        let manager = CBCentralManager()
        
        // Bluetoothステータスを確認
        switch manager.state {
        //電源ONのとき
        case CBManagerState.poweredOn:
            print("Bluetooth poweredOn")
            return true
            break
        default:
            print("Bluetooth not poweredOn")
            return false
            break
        }
    }
    
    func getLocateAvailable() -> Bool {
        // 位置情報が利用可能かどうか
        return CLLocationManager.locationServicesEnabled()
    }
}
