import 'package:flutter/material.dart';
import 'package:flutter_cookbook/MyAnimatedContainer.dart';
import 'package:flutter_cookbook/MyAnimatedOpacity.dart';
import 'package:flutter_cookbook/MyDrawer.dart';
import 'package:flutter_cookbook/MyFormValidation.dart';
import 'package:flutter_cookbook/MyOrientation.dart';
import 'package:flutter_cookbook/MySnackBar.dart';
import 'package:flutter_cookbook/MySwipeToDismiss.dart';
import 'package:flutter_cookbook/MyTabController.dart';

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

      /*
      brightness: Brightness.dark,  // 테마
      primaryColor: Colors.green,
      accentColor: Colors.yellow,
*/
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
            title: Text("Orientation (화면 방향에 따른 처리)"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrientation()));
            },
          ),
          ListTile(
            title: Text("TabController"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabController()));
            },
          ),
          ListTile(
            title: Text("Form Validation"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyFormValidation()));
            },
          ),
          ListTile(
            title: Text("Swipe To Dismiss"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MySwipeToDismissState()));
            },
          ),

        ],
      ),
    );
  }
}
