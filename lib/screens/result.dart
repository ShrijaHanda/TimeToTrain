import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Result extends StatefulWidget {
  static const String id = 'result';
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  FlutterLocalNotificationsPlugin fltrNotification;
  String _selectedParam;
  String task;
  int val;

  @override
  void initState() {
    super.initState();
    var androidInitilize = new AndroidInitializationSettings('app_icon');
    var iOSinitilize = new IOSInitializationSettings();
    var initilizationsSettings =
        new InitializationSettings(androidInitilize, iOSinitilize);
    fltrNotification = new FlutterLocalNotificationsPlugin();
    fltrNotification.initialize(initilizationsSettings,
        onSelectNotification: notificationSelected);
  }

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
        "Channel ID", "Time to Train", "This is my channel",
        importance: Importance.Max);
    var iSODetails = new IOSNotificationDetails();
    var generalNotificationDetails =
        new NotificationDetails(androidDetails, iSODetails);

    //await fltrNotification.show(
    //0, "Hurry up!", "It's time to workout", generalNotificationDetails,
    //payload: "Task");

    var scheduledTime;
    if (_selectedParam == "Hour") {
      scheduledTime = DateTime.now().add(Duration(hours: val));
    } else if (_selectedParam == "Minute") {
      scheduledTime = DateTime.now().add(Duration(minutes: val));
    } else {
      scheduledTime = DateTime.now().add(Duration(seconds: val));
    }

    fltrNotification.schedule(
        1, "Time To Train", task, scheduledTime, generalNotificationDetails);
  }

  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  '__WORKOUTS PLANNED BY TRAINER__',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lime[400],
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  children: <Widget>[
                    CheckboxListTile(
                      secondary: const Icon(Icons.alarm),
                      title: const Text('Burpees'),
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      secondary: const Icon(Icons.alarm),
                      title: const Text('Abdominal Crunches'),
                      value: this.valuesecond,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuesecond = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      secondary: const Icon(Icons.alarm),
                      title: const Text('50 Push Ups'),
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      secondary: const Icon(Icons.alarm),
                      title: const Text('Side Planks'),
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusColor: Colors.lime[400],
                        ),
                        onChanged: (_val) {
                          task = _val;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropdownButton(
                          value: _selectedParam,
                          items: [
                            DropdownMenuItem(
                              child: Text("Seconds"),
                              value: "Seconds",
                            ),
                            DropdownMenuItem(
                              child: Text("Minutes"),
                              value: "Minutes",
                            ),
                            DropdownMenuItem(
                              child: Text("Hour"),
                              value: "Hour",
                            ),
                          ],
                          hint: Text(
                            "Select Your Field.",
                            style: TextStyle(
                              color: Colors.lime[400],
                            ),
                          ),
                          onChanged: (_val) {
                            setState(() {
                              _selectedParam = _val;
                            });
                          },
                        ),
                        DropdownButton(
                          value: val,
                          items: [
                            DropdownMenuItem(
                              child: Text("1"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("2"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text("3"),
                              value: 3,
                            ),
                            DropdownMenuItem(
                              child: Text("4"),
                              value: 4,
                            ),
                          ],
                          hint: Text(
                            "Select Value",
                            style: TextStyle(
                              color: Colors.lime[400],
                            ),
                          ),
                          onChanged: (_val) {
                            setState(() {
                              val = _val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  height: 70.0,
                  child: RaisedButton(
                    color: Colors.lime[400],
                    onPressed: _showNotification,
                    child: new Text(
                      'SCHEDULE',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future notificationSelected(String payload) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Notification : $payload"),
      ),
    );
  }
}
