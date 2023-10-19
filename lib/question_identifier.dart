import 'package:flutter/material.dart';

class QuestionIdentifer extends StatelessWidget {
const QuestionIdentifer({
  super.key,
  required this.isCorrectAnswer,
  required this.questionIndex,
});

final int questionIndex;
final bool isCorrectAnswer;

@override

Widget build(BuildContext context) {
  final questionNumber = questionIndex + 1;
  return Container(
    width: 30,
    height: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: isCorrectAnswer
          ?const Color.fromARGB(255, 1, 169, 57)
          : const Color.fromARGB(255, 111, 0, 0),
          borderRadius: BorderRadius.circular(100),

    ),
    child: Text(
      questionNumber.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 246, 245, 237)
      )
    ),
  );
}

}