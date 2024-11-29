import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() answerPressed;
  final String answer;

  Answer(this.answerPressed, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ElevatedButton(
        onPressed: answerPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
        ),
        child: Text(
          answer,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
