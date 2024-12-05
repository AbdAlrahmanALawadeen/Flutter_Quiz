import 'package:first_app/data/questions.dart';
import 'package:first_app/models/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen>{
  var currentIndex = 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectedAnswer(selectedAnswer);
    
    setState(() {
      currentIndex++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
            
          children: [
            Text(
              currentQuestion.question, 
              style: GoogleFonts.lato(
                color : const Color.fromARGB(255, 221, 203, 203),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            ...currentQuestion.getShuffledAnswer().map((answers){
              return AnswerButton(answer: answers, onTap: (){
                answerQuestion(answers);
              });
            })
          ],
        ),
      ),
    );
  }

}