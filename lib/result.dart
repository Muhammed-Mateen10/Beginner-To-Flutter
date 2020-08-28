import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restarthandler;
  Result(this.score, this.restarthandler);

  String get review {
    if (score > 28)
      return 'You are a Professional Gamer';
    else if (score > 25)
      return 'You are a Noob';
    else if (score > 20)
      return 'You are Beginner';
    else
      return 'You Are a Newbie';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            review,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restarthandler,
            textColor: Colors.blue,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
