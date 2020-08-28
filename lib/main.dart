import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What is your fav Game',
      'answer': [
        {'text': 'Pubg', 'score': 1},
        {'text': 'Csgo', 'score': 10},
        {'text': 'GTA', 'score': 4},
        {'text': 'Cs1.6', 'score': 5}
      ]
    },
    {
      'question': 'What is your fav Gun',
      'answer': [
        {'text': 'M4A4', 'score': 5},
        {'text': 'AK-47', 'score': 10},
        {'text': 'AWP', 'score': 8},
        {'text': 'Uzi', 'score': 3}
      ]
    },
    {
      'question': 'What is your fav Pistol',
      'answer': [
        {'text': 'Cz', 'score': 4},
        {'text': 'P50', 'score': 3},
        {'text': 'Desert Eagle', 'score': 5},
        {'text': 'Usp', 'score': 4}
      ]
    },
    {
      'question': 'What is your fav ShotGun',
      'answer': [
        {'text': 'S1687', 'score': 5},
        {'text': 'S69', 'score': 5},
        {
          'text': 'S166',
          'score': 5,
        },
        {'text': 'S686', 'score': 5}
      ]
    }
  ];
  var _questionIndex = 0;
  var _total = 0;
  void _restart() {
    setState(() {
      _questionIndex = 0;
      _total = 0;
    });
  }

  void _answered(int score) {
    _total += score;
    setState(() {
      ++_questionIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Quiz App',
              textAlign: TextAlign.center,
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  handler: _answered,
                  questions: _questions,
                )
              : Result(_total, _restart)),
    );
  }
}
