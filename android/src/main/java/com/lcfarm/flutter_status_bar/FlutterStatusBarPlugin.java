package com.lcfarm.flutter_status_bar;

import android.app.Activity;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterStatusBarPlugin */
public class FlutterStatusBarPlugin implements MethodCallHandler {

  private Activity mActivity;

  public FlutterStatusBarPlugin(Activity activity) {
    mActivity = activity;
  }

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_status_bar");
    channel.setMethodCallHandler(new FlutterStatusBarPlugin(registrar.activity()));
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("setTransparent")) {
      StatusBarUtil.setTransparent(mActivity);
    } else if (call.method.equals("setLightStatusBar")) {
      StatusBarUtil.setLightStatusBar(mActivity,true);
    }else {
      result.notImplemented();
    }
  }
}
