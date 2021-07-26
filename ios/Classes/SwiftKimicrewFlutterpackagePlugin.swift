import Flutter
import UIKit

public class SwiftKimicrewFlutterpackagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "kimicrew_flutterpackage", binaryMessenger: registrar.messenger())
    let instance = SwiftKimicrewFlutterpackagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
