import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function handler;
  final String ans;
  Answers(this.handler, this.ans);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(ans),
          onPressed: handler,
        ));
  }
}
