import 'package:first_app/data/questions.dart';
import 'package:first_app/questions_screen.dart';
import 'package:first_app/results_screen.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  Widget? currentScreen;

  @override
  void initState(){
    currentScreen = StartScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        currentScreen = ResultsScreen(chosenAnswers: selectedAnswers, onRestart: RestartQuiz,);
      });
    }
  }

  void switchScreen(){
    setState(() {
      selectedAnswers = [];
      currentScreen = QuestionsScreen(onSelectedAnswer: chooseAnswer,);
    });
  }

  void RestartQuiz(){
    setState(() {
      selectedAnswers = [];
      currentScreen = QuestionsScreen(onSelectedAnswer: chooseAnswer,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 93, 18, 190),
          body: Container(
            child: currentScreen,
          ),
        ),
      ),
    );
  }

}