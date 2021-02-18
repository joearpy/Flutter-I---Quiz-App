import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // store the value in the argument
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //container
    return Container(
        //width as much as needed
        width: double.infinity,
        // 10 units margin
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
