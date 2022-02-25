// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function(String) changeJokeIndex;
  const Buttons({required this.changeJokeIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex("prev");
            },
            child: const Icon(
              Icons.arrow_left_rounded,
              size: 60,
            ),
            backgroundColor: Colors.orange,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex("next");
            },
            child: const Icon(
              Icons.arrow_right_rounded,
              size: 60,
            ),
            backgroundColor: Colors.orange,
          ),
        ),
      ],
    );
  }
}
