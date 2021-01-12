import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandlar;
  final String answerText;

  Answer(this.selectHandlar, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        // color: Colors.blue[200],
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.blueAccent,
          ),
        ),
        onPressed: selectHandlar,
      ),
    );
  }
}
