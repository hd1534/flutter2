import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedcontainer extends StatefulWidget {
  @override
  _MyAnimatedcontainerState createState() => _MyAnimatedcontainerState();
}

class _MyAnimatedcontainerState extends State<MyAnimatedcontainer> {
  final random = Random();
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(random.nextInt(100).toDouble())
          ),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1
            );
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
