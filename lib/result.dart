import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetData;

  Result(this.score, this.resetData);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (score >= 6) {
      resultText = 'You are techno-savvy! and got more then 6';
    } else if (score >= 5) {
      resultText = 'You are neutral! and got more then5 and less then 6';
    } else {
      resultText = "You are technophobic! as score is less then 5";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red, // Set text color to red
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => resetData(),
            child: Text("Restart"),
          ),
        ],
      ),
    );
  }
}
