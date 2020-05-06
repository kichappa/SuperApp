import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/utilities/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'email',
          style: TextStyle(
            fontFamily : 'Oblivian Text',
            fontWeight : FontWeight.w700,
            fontSize : 18
          ) ,
    
        ),
        SizedBox(height:10),
        Container(
          width :309,
          height :69,
          decoration: BoxDecoration(
            boxShadow:[
              BoxShadow(
                color: Color.fromRGBO(43, 58, 103, 0.21),
                blurRadius: 
                8,
                offset:Offset(
                  4,
                  4,
                )
              ),
              BoxShadow(
                color:Color(0xffF7FAFD),
                blurRadius :
                10,
                offset:Offset(
                  -4,
                  -4
                ),
              ),
            ],
            borderRadius: BorderRadius.circular(26),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end : Alignment.bottomRight,
              colors:[
                const Color(0xFFE0E7F0),
                const Color(0xFFD2D9E3)
              ]
            )
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color:Colors.transparent,
              ),
              width: 265,
              child : TextField(
                decoration : InputDecoration(
                  hintText: 'kichappa@gmail.com',
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontFamily : 'Oblivian Text',
                  fontWeight :FontWeight.w700,
                  fontSize :18.0
                ),
                cursorColor: Color(0xff6F6F6F),
                cursorWidth: 3,
              )
            )
          ),

        )       

      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'password',
          style: TextStyle(
            fontFamily : 'Oblivian Text',
            fontWeight: FontWeight.w700,
            fontSize: 18
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          width: 309,
          height:69,
          decoration: BoxDecoration(
            boxShadow : [
              BoxShadow(
                color : Color.fromRGBO(43, 58, 103, 0.8),
                blurRadius:
                9,
                offset:Offset(
                  4,
                  4,
                ),
              ),
              BoxShadow(
                color: Color(0xffF7FAFD),
                blurRadius:
                10,
                offset: Offset(
                  -4,
                  -4
                ),
              ),
            ],
            borderRadius: BorderRadius.circular(26),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end :Alignment.bottomRight,
              colors:[
                const Color(0xFFE0E7F0),
                const Color(0xFFd2d9E3)
              ]
            )
          ),
          
          child: Center(
            child : Container(
              decoration: BoxDecoration(
                color : Colors.transparent,
              ),
              width: 265,
              child: TextField(
                decoration :InputDecoration(
                  border: InputBorder.none,
                  hintText: '...........',
                  
                  ),
                  obscureText: true,
                  style: TextStyle(
                    fontFamily :'Oblivian Text',
                    fontWeight :FontWeight.w900,
                    fontSize:18,
                  ),
                  cursorColor: Color(0xff6F6F6F),
                  cursorWidth: 3,
              ),
              
              )
          )
          /*
          TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),*/
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.black26,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      
      
      width: 122,
      height: 145 ,
      margin: const EdgeInsets.only(left : 10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(26),
           boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(43, 58, 103, 0.21),
              offset: Offset(4, 4),
              blurRadius: 9.0,
            ),
            BoxShadow(
              color: Color(0xffF7FAFD),
              blurRadius: 10,
              offset: Offset(-4, -4),

            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[
              const Color(0xFFE0E7F0),
              const Color(0xFFd2d9e3)
            ]
          ),
      ),
      //alignment: Alignment.bottomRight,
      child : RaisedButton(
        
        onPressed: () => print('login'),
        elevation: 5.0,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Login' ,
            border: InputBorder.none ),
          style: TextStyle(
            fontFamily:'Oblivian Text',
            fontWeight: FontWeight.w700,
            fontSize:18,
          ),
          cursorColor: Color(0xfff6f6f6f),
          cursorWidth: 3,
        ),
        
        //padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius : BorderRadius.circular(26),

        ),
        
        )
        
      
      
    );
      
  
      /*child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        //padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF527DAA),
            
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Oblivian Text',
          ),
        ),
        
      ),*/
      //alignment: Alignment.bottomRight,
    
  }

  /*Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }*/

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        height: 145.0,
        width: 122.0,
        alignment: Alignment.bottomCenter,
        
        margin: const EdgeInsets.only(left: 46),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(26),
           boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(43, 58, 103, 0.21),
              offset: Offset(4, 4),
              blurRadius: 9.0,
            ),
            BoxShadow(
              color: Color(0xffF7FAFD),
              blurRadius: 10,
              offset: Offset(-4, -4),

            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[
              const Color(0xFFE0E7F0),
              const Color(0xFFd2d9e3)
            ]
          ),
          
          
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         /* _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/logos/facebook.jpg',
            ),
          ),*/
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/logos/google.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: 812,
                width: 375,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                   
                    colors: [
                      Color(0xFFE2E8F0),
                      Color(0xFFD0D6DE),
                      //Color(0xFF478DE0),
                      //Color(0xFF398AE5),
                      //Colors.blue[200],
                      //Colors.blue[50],

                    ],
                  
                    stops: [-1, 1],
                  ),
                ),
              ),
              Container(
                
                height: 812,
                width: 375,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text(
                        'Insti \nSuper App',
                         style: TextStyle(
                        
                          fontFamily: 'Oblivian Text',
                          
                          fontSize: 50.0,
                          
                          //textAlign:TextAlign.left,
                  
                          fontWeight: FontWeight.w900,
                        ),
                        //textAlign: Alignment.centerLeft, 
                      ),
                      SizedBox(height: 30.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 25.0,
                      ),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      
                      //_buildRememberMeCheckbox(),
                      SizedBox(
                        height: 118.5,
                        
                      ),
                     
                      Row(
                        children:[
                           _buildSocialBtnRow(),
                          
                          _buildLoginBtn(),
                         
                        ]
                      )
                     
                      //_buildSocialBtnRow(),
                      
                     
                      //_buildSignInWithText(),
                      
                      //_buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
