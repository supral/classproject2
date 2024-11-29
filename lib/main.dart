import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'question': 'What\'s your favourite subject?',
      'answers': [
        {'text': 'Data Structure & Algorithm', 'score': 2},
        {'text': 'Programming', 'score': 2},
        {'text': 'PMO', 'score': 1},
        {'text': 'Business Communication', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite movie genre?',
      'answers': [
        {'text': 'Science and Technology', 'score': 2},
        {'text': 'Space Adventure', 'score': 2},
        {'text': 'Horror & Thriller', 'score': 1},
        {'text': 'Brain Less Comedy', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite game?',
      'answers': [
        {'text': 'Cricket', 'score': 1},
        {'text': 'BasketBall', 'score': 1},
        {'text': 'Chess', 'score': 2},
        {'text': 'Checkers', 'score': 2}
      ]
    },
  ];

  void _answerPressed(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Score: $_totalScore", // Score tracker here
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpeg"), // Background image
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(),
              if (_questionIndex < _questions.length)
                Quiz(
                  questionIndex: _questionIndex,
                  questions: _questions,
                  answerQuestion: _answerPressed,
                )
              else
                Result(_totalScore, _resetQuiz),
            ],
          ),
        ),
      ),
    );
  }
}
