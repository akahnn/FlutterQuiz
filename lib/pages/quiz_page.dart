import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../ui/answer_button.dart';
import '../ui/question_text.dart';
import '../ui/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {  //immutable..
@override
State createState () => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {  //mutable...

Question currentQuestion;
Quiz quiz = new Quiz([
new Question("Alaska is a part of Canada", false),
new Question("Pakistan is in the Middle East", false),
new Question("There are 50 national parks in the US", true),
new Question("React Native is better than Flutter", false),
] 
);

String questionText;
int questionNumber;
bool isCorrect;
bool overlayShouldBeVisible = false; 

 @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.currentQuestionIndex;
  }

  void handleAnswer (bool answer){

    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(((){
    overlayShouldBeVisible = true;
    })); //changing the state --- showing overlay


  }

@override
Widget build(BuildContext context){
  return new Stack(
    fit: StackFit.expand,
    children: <Widget>[
      new Column(
        children: <Widget>[
        new AnswerButton(true, () => handleAnswer(true)),
        new QuestionText(questionText, 1),
        new AnswerButton(false, () => handleAnswer(false)),
        ],
      ),
       overlayShouldBeVisible == true ? new CorrectWrongOverlay(
         isCorrect,
         () {
           currentQuestion = quiz.nextQuestion;
           this.setState((){
             overlayShouldBeVisible = false;
             questionText = currentQuestion.question;
           });

         }
          ) : new Container()
    ],
  );
}
}