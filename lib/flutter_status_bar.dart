import 'package:flutter/services.dart';

class FlutterStatusBar {
  static const MethodChannel _channel =
      const MethodChannel('flutter_status_bar');

  static void setTranslucent() {
    _channel.invokeMethod('setTransparent');
  }

  static void setLightStatusBar() {
    _channel.invokeMethod('setLightStatusBar');
  }
}
