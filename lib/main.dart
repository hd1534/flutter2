import 'package:flutter/material.dart';
import 'package:flutter_cookbook/MyAnimatedContainer.dart';
import 'package:flutter_cookbook/MyAnimatedOpacity.dart';
import 'package:flutter_cookbook/MyDrawer.dart';
import 'package:flutter_cookbook/MyOrientation.dart';
import 'package:flutter_cookbook/MySnackBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AnimatedContainer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flutter cookbook")),
      body: ListView(
        children: [

          ListTile(
            title: Text("AnimatedContainer"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
            },
          ),
          ListTile(
            title: Text("AnimatedOpacityContainer"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
            },
          ),
          ListTile(
            title: Text("Drawer"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()));
            },
          ),
          ListTile(
            title: Text("SnackBar"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MySnackBar()));
            },
          ),
          ListTile(
            title: Text("Orientation"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrientation()));
            },
          ),

        ],
      ),
    );
  }
}
