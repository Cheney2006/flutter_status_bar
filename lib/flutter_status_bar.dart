import 'dart:io';

import 'package:flutter/services.dart';

class FlutterStatusBar {
  static const MethodChannel _channel =
      const MethodChannel('flutter_status_bar');

  static void setTranslucent() {
    if(Platform.isAndroid){
      _channel.invokeMethod('setTransparent');
    }
  }

  static void setLightStatusBar() {
    if(Platform.isAndroid){
      _channel.invokeMethod('setLightStatusBar');
    }

  }
}
