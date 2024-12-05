import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.asset(
              'assets/images/dice-images/dice-1.png', 
              width: 300,
            ),
          ),

          const SizedBox(height: 40),

          Text(
            'Learn Flutter',
            style: GoogleFonts.lato(
                color : const Color.fromARGB(255, 241, 230, 230),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
          ),

          const SizedBox(height: 40),

          OutlinedButton.icon(
            onPressed: startQuiz, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),

            icon: const Icon(Icons.arrow_right_alt), 

            label:  Text(
              'Start Quiz!', 
              style: GoogleFonts.lato(
                color : const Color.fromARGB(255, 248, 231, 231),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
  
}