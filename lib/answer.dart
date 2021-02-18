import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final: property marked as final cannot change at runtime
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
