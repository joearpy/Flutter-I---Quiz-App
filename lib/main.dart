import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

//alternative syntax
//runApp() -> this function builds the main widget and calls build() on it
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// <MyApp> this state belongs to MyApp class
// private class
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ]
    },
    {
      'questionText': 'Who is your favorite actor?',
      'answers': [
        {'text': 'David Hasselhof', 'score': 2},
        {'text': 'Nicolas Cage', 'score': 8},
        {'text': 'Stevan Segal', 'score': 5},
        {'text': 'Chuck Norris', 'score': 1},
      ]
    }
  ];

  // private property
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      
    });
    _questionIndex = 0;
    _totalScore = 0;
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    // setState uses the StatefulWidget right now
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  //build returns the widgets (widget tree) which should be rendered onto the screen
  Widget build(BuildContext context) {
    return MaterialApp(
      //Scaffold is create a basic design
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        // add Widgets under each other in body
        // Create Column in the Body
        // if the statement true get the column, if not centered text
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
