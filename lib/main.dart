import 'package:f_a/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main () {
runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return MyAppState();
  }
}

class MyAppState extends State {

  var _questions = [{'questiontext': 'What\'s your favourite animal?',
    'answer':[{'text':'cat','score':10},
              {'text':'dog','score':4},
              {'text':'rabbit','score':5},
              {'text':'elephant','score':3}]},
    {'questiontext':'What\'s your favourite colour?',
      'answer':[{'text':'Red','score':10},
                {'text':'Black','score':8},
                {'text':'Blue','score':6},
                {'text':'Pink','score':2}]},
    {'questiontext':'What\'s your favourite show?',
      'answer':[{'text':'GoT','score':10},
                {'text':'Peaky Blinders','score':8},
                {'text':'Brooklyn 99','score':7},
                {'text':'FRIENDS','score':3}]}];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answer(int score) {

    _totalScore += score;
    setState(() {
      _questionIndex= _questionIndex + 1;
    });

   print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

      return MaterialApp(home:Scaffold(
        appBar: AppBar(title: Text("Quiz")),
        body: _questionIndex < _questions.length ? Quiz( _answer, _questions, _questionIndex):
        Result(_totalScore, _resetQuiz),),
      );
  }
}

