import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();
  FocusNode nameFocusNode;
  final nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    nameFocusNode.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Validation"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "공백은 허용되지 않습니다.";
                  }
                  if (value.length > 10) {
                    return "최대 10글자 이내로 작성해주세요";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate())
                        Scaffold.of(_formKey.currentContext)
                            .showSnackBar(SnackBar(content: Text("처리중"),));
                  },
                  child: Text("완료"),
                ),
              ),

              TextField(
                controller: nameController,
                autofocus: true,  // 화면 전환시 자동 포커스
                decoration: InputDecoration(
                  labelText: "이름",
                  hintText: "이름을 입력해 주세요",
                  border: InputBorder.none,  // 밑줄
                ),
                focusNode: nameFocusNode,
                onChanged: (text) {
                  print(text);
                },
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(nameFocusNode);
                      },
                      child: Text("이름으로 포커스"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(nameController.text),
                            );
                          }
                        );
                      },
                      child: Text("Text 값 받아오기"),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
