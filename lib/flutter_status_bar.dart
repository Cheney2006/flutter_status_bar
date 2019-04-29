import 'dart:io';

import 'package:flutter/services.dart';

class FlutterStatusBar {
  static const MethodChannel _channel =
      const MethodChannel('flutter_status_bar');

  ///设置 android 状态栏透明，IOS flutter 已内置，直接设置 appbar [brightness] [backgroundColor]
  static void setTranslucent() {
    if (Platform.isAndroid) {
      _channel.invokeMethod('setTransparent');
    }
  }

  ///设置 android 状态栏图标，IOS flutter 已内置，直接设置 appbar [brightness] [backgroundColor]
  static void setLightStatusBar() {
    if (Platform.isAndroid) {
      _channel.invokeMethod('setLightStatusBar');
    }
  }
}
