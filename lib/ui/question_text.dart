import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText>{
  @override
  Widget build(BuildContext context){
      return new Material (
          color: Colors.white,
          child: new Padding (
            padding: new EdgeInsets.all(15.0),
            child: new Center (
                  child: new Text("Questions 1 : Leice is the best!!"),
          ),
          ),
          );
  }
}

