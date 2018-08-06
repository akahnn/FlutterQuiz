import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../ui/answer_button.dart';
import '../ui/question_text.dart';

class QuizPage extends StatefulWidget {  //immutable..
@override
State createState () => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {  //mutable...
@override
Widget build(BuildContext context){
  return new Stack(
    children: <Widget>[
      new Column(
        children: <Widget>[
        new AnswerButton(true, () {print("You answered True!");}),
        new QuestionText(),
        new AnswerButton(false, () {print("You answered False!");}),
        ],
      )
    ],
  );
}
}