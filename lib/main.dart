import 'package:flutter/material.dart';
// import 'package:test1/concave_decorations.dart';

import 'package:test1/decorations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: baseBack,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                // decoration: BoxDecoration(color: Colors.red),
                child: Stack(children: [
                  LoginInputContainer(),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: LoginButtons(),
                  ),
                ]))),
      ),
    );
  }
}

class LoginButtons extends StatelessWidget {
  LoginButtons();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 30, bottom: 43),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            LoginButton(title: "Use\nGoogle"),
            SizedBox(width: 15),
            LoginButton(title: "Login"),
          ],
        ));
  }
}

class LoginButton extends StatefulWidget {
  final String title;
  final bool isChosen;
  // final VoidCallback onPressed;
  LoginButton({
    Key key,
    @required this.title,
    this.isChosen = false,
    // @required this.onPressed,
  }) : super(key: key);
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool _isPressed = false;
  var screenWidth, screenHeight;

  void _onPointerDown(PointerDownEvent event) {
    setState(() => _isPressed = true);
    // widget.onPressed();
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() => _isPressed = widget.isChosen);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        // decoration: BoxDecoration(color: Colors.blue),
        child: Listener(
            onPointerDown: _onPointerDown,
            onPointerUp: _onPointerUp,
            child: AnimatedContainer(
              width: MediaQuery.of(context).size.width * 120 / 375,
              height: MediaQuery.of(context).size.height * 143 / 812,
              duration: const Duration(milliseconds: 100),
              decoration: _isPressed ? buttonDownOuter : baseTileUpOuter,
              child: Container(
                  decoration: _isPressed ? buttonDownInner : baseTileUpInner,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: _isPressed ? 21 : 20,
                        bottom: _isPressed ? 19 : 20,
                        child: Text(
                          widget.title,
                          style: inputText(20),
                        ),
                      )
                    ],
                  )),
            )));
  }
}

class LoginInputContainer extends StatelessWidget {
  LoginInputContainer();
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.blue),
      child: Align(
        alignment: Alignment.center,
        child: Container(
            // decoration: BoxDecoration(color: Colors.red),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height*51.5/812),
            FractionallySizedBox(
                widthFactor: 265 / 375,
                child: Text(
                  "email",
                  style: inputText(15),
                )),
            SizedBox(height: 5),
            InputTextField(hintText: "kichappa@gmail.com"),
            SizedBox(height: 3),
            FractionallySizedBox(
                widthFactor: 265 / 375,
                child: Text(
                  "password",
                  style: inputText(15),
                )),
            SizedBox(height: 5),
            InputTextField(hintText: "••••••••")
          ],
        )),
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  final String hintText;

  InputTextField({@required this.hintText});

  @override
  Widget build(BuildContext context) {
    return
        // FractionallySizedBox(
        // widthFactor: 309 / 375,
        // heightFactor: 0.3,
        // child:
        Container(
      width: 309,
      height: 60,
      decoration: baseTileUpOuter,
      child: Center(
          child: Container(
              decoration: inputInner,
              child: Center(
                  child: TextField(
                decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20.0)),
                style: inputText(18),
                cursorColor: Color(0xff6F6F6F),
                cursorWidth: 3,
              )))),
      // ),
    );
  }
}
