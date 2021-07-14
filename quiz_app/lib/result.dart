import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = ' youpi you did it';

    if (resultScore <= 8) {
      resultText = 'you are awesome';
    } else if (resultScore <= 12) {
      resultText = 'it\s bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
            onPressed: resetHandler,
            child: Text(
              'Restart',
              style: TextStyle(fontSize: 40),
            ))
      ],
    );
  }
}
