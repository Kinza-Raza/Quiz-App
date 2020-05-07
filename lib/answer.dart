import "package:flutter/material.dart";

class Answer extends StatelessWidget{

  final Function abc;
  final String answertext;
  Answer(this.abc, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child: RaisedButton(
          color: Colors.lightBlue,
          textColor: Colors.white,
          child: Text(answertext),
          onPressed: abc),
    );
  }
}