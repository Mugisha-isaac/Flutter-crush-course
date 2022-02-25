// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
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

  var jokeIndex = 0;

  changeJokeIndex(String direction) {
    if (direction == 'next') {
      if (jokeIndex != jokes.length - 1) {
        setState(() {
          jokeIndex++;
        });
      } else {
        setState(() {
          jokeIndex = 0;
        });
      }
    } else if (direction == 'prev') {
      if (jokeIndex != 0) {
        setState(() {
          jokeIndex--;
        });
      } else {
        setState(() {
          jokeIndex = jokes.length - 1;
        });
      }
    }
  }

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
                  jokes[jokeIndex]["question"] as String,
                  style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: Text(
                  jokes[jokeIndex]["answer"] as String,
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
                      onPressed: () {
                        changeJokeIndex("prev");
                      },
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
                      onPressed: () {
                        changeJokeIndex("next");
                      },
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
