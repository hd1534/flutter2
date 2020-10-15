import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {
  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      child: Scaffold(
        appBar: AppBar(
          title: Text("TabController"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.alarm), text: "Tab 1",),
              Tab(icon: Icon(Icons.create),),
              Tab(text: "Tab 3",),
              Text("Tab 4"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.alarm),
            Center(child: Text("hi")),
            Icon(Icons.alarm),
            Icon(Icons.alarm),
          ],
        ),
      ),
    );
  }
}
