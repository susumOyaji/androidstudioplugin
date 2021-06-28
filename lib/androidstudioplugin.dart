
import 'dart:async';

import 'package:flutter/services.dart';

class Androidstudioplugin {
  static const MethodChannel _channel =
      const MethodChannel('androidstudioplugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
