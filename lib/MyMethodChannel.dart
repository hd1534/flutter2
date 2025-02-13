import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMethodChannel extends StatefulWidget {
  @override
  _MyMethodChannelState createState() => _MyMethodChannelState();
}

class _MyMethodChannelState extends State<MyMethodChannel> {
  static const platform = const MethodChannel("example.com/value");
  String _value;
  Future<void> _getNativeValue() async {
    String value;
    try {
      value = await platform.invokeMethod("getValue");
    } on PlatformException catch (e) {
      value = "네이티브 코드 실행 에러 : ${e.message}";
    }
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Method Channel"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("네이티브 값 : $_value"),
            RaisedButton(
              child: Text("네이티브 값 얻기"),
              onPressed: _getNativeValue,
            )
          ],
        ),
      ),
    );
  }
}
