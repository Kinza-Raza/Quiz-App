import 'package:flutter/material.dart';


class Result  extends StatelessWidget {

  final int resultScore;
  final Function restart;

  Result(this.resultScore, this.restart);

  String get resultphrase {
    var resultText = "You reached the end!";
    if (resultScore <= 9) {
      resultText = "You've got a meh personality.";
    }
    else if (resultScore > 9 && resultScore <= 15){
      resultText = "You're just fine.";
    }
    else if (resultScore >= 15 && resultScore <=24){
      resultText = "Can we be friends?";
    }
    else if(resultScore >= 25) {
      resultText = "You're the bomb!";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent, margin:EdgeInsets.all(20),
        child: Center(child: Column(children: <Widget>
        [ Text(resultphrase, style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic ),
    ),
          FlatButton(onPressed:restart, child: Text("Restart Quiz"), textColor: Colors.white,),
    ],
        ),
        )
    );
  }
}
