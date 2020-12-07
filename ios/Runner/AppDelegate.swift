import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "example.com/value",
                                                  binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler{
          (call, result) in
            if (call.method == "getValue") {
              result("성공 (환경 : IOS)")
            } else {
              result(FlutterMethodNotImplemented)
        }


    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
