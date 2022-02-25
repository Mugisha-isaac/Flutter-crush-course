// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 45),
      child: Text(
        question,
        style: const TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
