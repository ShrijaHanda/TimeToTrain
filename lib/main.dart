import 'package:flutter/material.dart';
import 'package:timetotrain3/screens/result.dart';
import 'package:timetotrain3/screens/welcome_screen.dart';
import 'package:timetotrain3/screens/registration_screen.dart';
import 'package:timetotrain3/screens/login_screen.dart';
import 'package:timetotrain3/screens/schedule_screen.dart';
import 'package:timetotrain3/screens/remind_screen.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() => runApp(TimeToTrain());

class TimeToTrain extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ScheduleScreen.id: (context) => ScheduleScreen(),
        RemindScreen.id: (context) => RemindScreen(),
        Result.id: (context) => Result(),
      },
    );
  }
}
