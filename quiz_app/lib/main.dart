import 'package:flutter/material.dart';
import 'package:manimals/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite animal ?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 8},
        {'text': 'fish', 'score': 5},
        {'text': 'bird', 'score': 3},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal ?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 8},
        {'text': 'fish', 'score': 5},
        {'text': 'bird', 'score': 3},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal ?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 8},
        {'text': 'fish', 'score': 5},
        {'text': 'bird', 'score': 3},
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
  }

  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question Time'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
