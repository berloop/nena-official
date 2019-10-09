import 'package:flutter/material.dart';

import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          ImageTopPart(),
          WelcomingText(),
          ButtonsToInteractWith(),
        ],
      ),
    );
  }
}

class ImageTopPart extends StatefulWidget {
  @override
  _ImageTopPartState createState() => _ImageTopPartState();
}

class _ImageTopPartState extends State<ImageTopPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470.0,
      child: Image.asset(
        'assets/images/recording.png',
        height: 0.0,
        fit: BoxFit.cover,
      ),
    );
  }
}

class WelcomingText extends StatefulWidget {
  final Color nena = Color(0xFFD4145A);
  @override
  _WelcomingTextState createState() => _WelcomingTextState();
}

class _WelcomingTextState extends State<WelcomingText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome Aboard!",
                style: TextStyle(fontSize: 30.0, color: Colors.black87),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sign up to join awesome Nena Community!",
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ButtonsToInteractWith extends StatefulWidget {
  @override
  _ButtonsToInteractWithState createState() => _ButtonsToInteractWithState();
}

class _ButtonsToInteractWithState extends State<ButtonsToInteractWith> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
          child: SizedBox(
            height: 40.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                //Navigate to homescreen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              textColor: Color(0xFFD4145A),
              color: Color(0xFFD4145A),
              splashColor: Colors.pink.withOpacity(.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                height: 50.0,
                width: 255.0,
                child: Center(
                  child: Text(
                    'Continue with Google',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
       
      ],
    );
  }
}
