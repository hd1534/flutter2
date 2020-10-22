import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Validation"),),
      body: Form(
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
                    {
                      Scaffold.of(_formKey.currentContext).showSnackBar(SnackBar(content: Text("처리중"),));
                    }
                },
                child: Text("완료"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
