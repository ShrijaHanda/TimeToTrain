import 'registration_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  child: Image.asset('images/logo.png'),
                  height: 120.0,
                ),
                SizedBox(
                  height: 70.0,
                ),
                Text(
                  '__TIME TO TRAIN__',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'AllertaStencil',
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lime[400],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, LoginScreen.id); //Go to login screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Log In', style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                    //Go to registration screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
