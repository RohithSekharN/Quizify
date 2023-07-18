import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(q: 'The Great Wall of China can be seen from space.', a: false),
    Question(q: 'The Earth\'s moon is larger than Pluto.', a: false),
    Question(q: 'The human body has four lungs.', a: false),
    Question(q: 'Brazil is the largest country in South America.', a: true),
    Question(
        q: 'The Statue of Liberty was a gift from France to the United States.',
        a: true),
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAns() {
    return _questionBank[_questionNumber].questionAns;
  }
}
