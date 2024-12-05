import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier({super.key, required this.questionIndex, required this.isCorrect});

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final number = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect ? const Color.fromARGB(255, 51, 250, 240) : const Color.fromARGB(255, 247, 100, 149),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(number.toString(), style: TextStyle(
        color: const Color.fromARGB(255, 4, 7, 54),
        fontWeight: FontWeight.bold),
         ),
    );
  }

}