import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View"),),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.indigo,
          ),
          Container(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
