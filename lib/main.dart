// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  var jokes = [
    {
      "question": "What does a baby computer call it's farther? ",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasors called? ",
      "answer": "pointer"
    },
    {
      "question": "Why is calendar always scared? ",
      "answer": "Because it's days are numberd"
    },
    {"question": "What do call a fish with no eye? ", "answer": "N-fish"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
                child: Text(
                  jokes[0]["question"] as String,
                  style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: Text(
                  jokes[0]["answer"] as String,
                  style:
                      TextStyle(fontSize: 22.5, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: FloatingActionButton(
                      onPressed: null,
                      child: Icon(
                        Icons.arrow_left_rounded,
                        size: 60,
                      ),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: FloatingActionButton(
                      onPressed: null,
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 60,
                      ),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
