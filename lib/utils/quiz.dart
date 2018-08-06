import './question.dart';

class Quiz {

  //adding _ makes it a private variable
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

Quiz(this._questions){
  _questions.shuffle();
}

// getters 
int get lenght => questions.length;
int get score => _score;
int get currentQuestionIndex => _currentQuestionIndex;
List<Question> get questions  => _questions;

Question get nextQuestion {
    _currentQuestionIndex++;
    if (_currentQuestionIndex >= lenght) return null;
    return questions[_currentQuestionIndex];
}

void answer(bool isCorrect) {
if (isCorrect) _score++;
}
}