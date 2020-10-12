import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(), // == EdgeInsert.zero  // 이거를 안하면 위에 노치같은 뷰일때 따로 논다.
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
                title: Text("Item 1"),
              onTap: () {
                  Navigator.pop(context);  // 이게 있어야지 닫힌다.
              },
            ),
            ListTile(
                title: Text("Item 2")
            )
          ],
        ),
      ),

      body: Center(
        child: Text("Drawer 예제\n옆에 나오는 메뉴", textAlign: TextAlign.center,),
      )
    );
  }
}
