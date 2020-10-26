import 'package:flutter/material.dart';

class MySwipeToDismissState extends StatefulWidget {
  @override
  _MySwipeToDismissStateState createState() => _MySwipeToDismissStateState();
}

class _MySwipeToDismissStateState extends State<MySwipeToDismissState> {
  final items = List<String>.generate(20, (index) => "Item $index");

  var deleteBackground = Container(
      color: Colors.red,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Delete"),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Swipe To Dismiss"),),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            background: deleteBackground,
            key: Key(items[index]),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
              child: ListTile(title: Text(items[index].toString()),)
          );
        }
      ),
    );
  }
}
