import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar"),),

      // builder는 새로운 컨텍스트를 만드는데, 여기서 snackbar는 다른 scaffold 위에서 사용 불가하다 해서 새로 빌드하고 쓰는거
      body: Builder(builder: (context) => Center(
          child: RaisedButton(
            child: Text("Show SnackBar"),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text("작업이 완료되었습니다."),
                action: SnackBarAction(label: "취소", onPressed: () {

                }),
              );

              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ),
    );
  }
}
