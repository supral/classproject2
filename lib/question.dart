import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(
        question,
        style: TextStyle(fontSize: 22, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
