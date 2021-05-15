import 'package:flutter/material.dart';
import 'package:timetotrain3/screens/remind_screen.dart';
import 'result.dart';

class ScheduleScreen extends StatefulWidget {
  static const String id = 'schedule_screen';
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Text(
                'About You__',
                style: TextStyle(
                    color: Colors.lime[400],
                    fontSize: 60.0,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Are you a fitness enthusiast looking to connect with an expert?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 240.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RemindScreen.id); //goes to remind screen
                    },
                    minWidth: 100.0,
                    height: 130.0,
                    child: Text(
                      'I am a fitness Enthusiast',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.lime[400],
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, Result.id); //goes to result screen
                    },
                    minWidth: 100.0,
                    height: 130.0,
                    child: Text(
                      'I am an Expert Trainer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
