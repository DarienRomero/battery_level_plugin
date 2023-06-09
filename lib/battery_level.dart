
import 'dart:async';

import 'package:flutter/services.dart';

class BatteryLevel {
  static const MethodChannel _channel = MethodChannel('samples.darien.dev/battery_level');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
