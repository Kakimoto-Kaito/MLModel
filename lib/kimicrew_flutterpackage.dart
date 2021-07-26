
import 'dart:async';

import 'package:flutter/services.dart';

class KimicrewFlutterpackage {
  static const MethodChannel _channel =
      const MethodChannel('kimicrew_flutterpackage');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
