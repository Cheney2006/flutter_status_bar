#import "FlutterStatusBarPlugin.h"

@implementation FlutterStatusBarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_status_bar"
            binaryMessenger:[registrar messenger]];
  FlutterStatusBarPlugin* instance = [[FlutterStatusBarPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {

}

@end
