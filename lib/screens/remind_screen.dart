import 'package:flutter/material.dart';
import 'result.dart';

class RemindScreen extends StatefulWidget {
  static const String id = 'remind_screen';
  @override
  _RemindScreenState createState() => _RemindScreenState();
}

class _RemindScreenState extends State<RemindScreen> {
  int date = 3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  '__MAKE YOUR WORKOUT ROUTINE HERE__',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lime[400],
                      fontSize: 35.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 80.0,
                ),
                SizedBox(
                  height: 80.0,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(30.0),
                      height: 100.0,
                      width: 360.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                          'How often do you want to workout? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          date.toString(),
                          style: TextStyle(
                            color: Colors.lime[400],
                            fontSize: 70.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'days/week',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.lime[400],
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        overlayColor: Color(0x15EB1555),
                      ),
                      child: Slider(
                        value: date.toDouble(),
                        min: 1.0,
                        max: 7.0,
                        onChanged: (double newvalue) {
                          setState(() {
                            date = newvalue.round();
                          });
                        },
                      ),
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
                            'SCHEDULE A SESSION',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
