import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

  String get resultPhrase {
    var restultText;
    if (totalScore <= 10) {
      restultText = 'You are Awesome and Innocent!';
    } else if (totalScore <= 16) {
      restultText = 'Rretty Likeable!';
    } else if (totalScore <= 20) {
      restultText = 'You are ... Strange!';
    } else {
      restultText = 'You are so bad!';
    }
    return restultText;
  }

  Result({this.totalScore, this.reset});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 25.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        FlatButton(
          textColor: Colors.blue,
          child: Text(
            'Restart!',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onPressed: reset,
        )
      ],
    );
  }
}
