// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  const Answer({required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Text(
        answer,
        style: const TextStyle(fontSize: 22.5, fontWeight: FontWeight.normal),
        textAlign: TextAlign.center,
      ),
    );
  }
}
