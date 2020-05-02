import 'package:flutter/material.dart';
import 'package:test1/concave_decorations.dart';

import 'package:test1/decorations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Insti Super App',
        home: Container(
          decoration: baseInputDown,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Container(
                    child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 265,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Text(
                      "email",
                      style: inputText(15),
                    )),
                SizedBox(height: 5),
                InputTextField(hintText: "kichappa@gmail.com"),
                SizedBox(height: 3),
                Container(
                    width: 265,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Text(
                      "password",
                      style: inputText(15),
                    )),
                SizedBox(height: 5),
                InputTextField(hintText: "••••••••")
              ],
            ))),
          ),
        ));
  }
}

class InputTextField extends StatelessWidget {
  final String hintText;

  InputTextField({@required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 309,
        height: 63,
        decoration: inputShadow,
        child: Center(
            child: Container(
                width: 309,
                height: 60,
                decoration: inputInnerShadow,
                child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        width: 265,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: hintText,
                            border: InputBorder.none,
                          ),
                          style: inputText(18),
                          cursorColor: Color(0xff6F6F6F),
                          cursorWidth: 3,
                        ))))));
  }
}
