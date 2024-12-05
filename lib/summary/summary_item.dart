import 'package:first_app/summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAns = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemData['question_index'] as int, 
          isCorrect: isCorrectAns
        ),
        const SizedBox(width: 20,),

        Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(itemData['question'].toString(), style: GoogleFonts.lato(
                            color : const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ), textAlign: TextAlign.center,),

                        SizedBox(height: 10,),

                        Text(itemData['user_answer'].toString(), style: GoogleFonts.lato(
                            color : const Color.fromARGB(255, 204, 167, 167),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),

                          SizedBox(height: 2,),

                        Text(itemData['correct_answer'].toString(), style: GoogleFonts.lato(
                            color : const Color.fromARGB(255, 122, 197, 248),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),

                          SizedBox(height: 15,),
                      ],
                    ),
                  )
      ],
    );
  }

}