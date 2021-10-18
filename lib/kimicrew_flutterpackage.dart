import 'dart:async';

import 'package:flutter/services.dart';

class KimicrewFlutterpackage {
  static const MethodChannel _channel =
      const MethodChannel('kimicrew_flutterpackage');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('PlatformVersion');
    return version;
  }

  static Future<String?> get getBLEAvailable async {
    final String? ble = await _channel.invokeMethod('BLEAvailable');
    return ble;
  }

  static Future<String?> get getBTEnabled async {
    final String? bt = await _channel.invokeMethod('BTEnabled');
    return bt;
  }

  static Future<String?> get getLocateAvailable async {
    final String? locate = await _channel.invokeMethod('LocateAvailable');
    return locate;
  }
}
