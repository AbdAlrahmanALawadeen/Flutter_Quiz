import 'package:first_app/summary/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryDate, {super.key});

  final List<Map<String, Object>> summaryDate;

  
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      
      child: SingleChildScrollView(
        child: Column(
          children: summaryDate.map(
            (data){
              return SummaryItem(data);
            }
          ).toList(),
        ),
      ),
    );
  }

}