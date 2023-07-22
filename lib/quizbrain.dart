import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('The Great Wall of China can be seen from space.', false),
    Question('The Earth\'s moon is larger than Pluto.', false),
    Question('The human body has four lungs.', false),
    Question('Brazil is the largest country in South America.', true),
    Question(
        'The Statue of Liberty was a gift from France to the United States.',
        true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was  \"Moon\".', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    print(_questionNumber);
    print(_questionBank.length);
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAns() {
    return _questionBank[_questionNumber].questionAns;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  reset() {
    _questionNumber = 0;
  }
}
