import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  @override
  _MyAnimatedOpacityState createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity"),
      ),

      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),

          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {  // 이거 빼먹으면 값이 바뀌어도 화면이 리프래시 안되서 안보임
            _visible = !_visible;
          });
        },
      ),
    );
  }
}
