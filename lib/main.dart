// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _jokes = [
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
    {"question": "What do call a fish with no eye? ", "answer": "fsh"}
  ];

  var _jokeIndex = 0;

  void _changeJokeIndex(String direction) {
    if (direction == 'next') {
      if (_jokeIndex != _jokes.length - 1) {
        setState(() {
          _jokeIndex++;
        });
      } else {
        setState(() {
          _jokeIndex = 0;
        });
      }
    } else if (direction == 'prev') {
      if (_jokeIndex != 0) {
        setState(() {
          _jokeIndex--;
        });
      } else {
        setState(() {
          _jokeIndex = _jokes.length - 1;
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
              Question(question: _jokes[_jokeIndex]["question"] as String),
              Answer(answer: _jokes[_jokeIndex]["answer"] as String),
              Buttons(changeJokeIndex: _changeJokeIndex),
            ],
          ),
        ),
      ),
    );
  }
}
