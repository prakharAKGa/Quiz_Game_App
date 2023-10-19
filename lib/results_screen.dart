import 'package:flutter/material.dart';
import 'package:app1/data/questions.dart';
import 'package:app1/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app1/summary_item.dart';
class ResultScreen extends StatelessWidget{
const ResultScreen({super.key, required this.chosenAnswers,required this.onRestart});
final void Function() onRestart;

final List<String> chosenAnswers;

List<Map<String,Object>> getSummaryData() {
final List<Map<String,Object>> summary = [];

for(var i=0; i <chosenAnswers.length; i++){

  summary.add({
    'question_index' : i,
    'question' :questions[i].text,
    'correct_answer' : questions[i].answers[0],
    'user_answer': chosenAnswers[i]
  });
}
return summary;
}

@override
Widget build(BuildContext context) {
  final summaryData = getSummaryData();
  final numTotalQuestions =questions.length;
  final numCorrectQuestions =summaryData.where((data) {
    return data['user_answer'] == data['correct_answer'];
  }).length;
  
  return SizedBox(
  width: double.infinity,
   child: Container(
    margin: const EdgeInsets.all(15),
  child : Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
       Text(
        
        'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly! ',
        style: GoogleFonts.croissantOne(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        ),
      const SizedBox(height: 30,),
      
     QuestionsSummary(summaryData),
      const SizedBox(height: 30,),
      TextButton.icon(
        onPressed: onRestart,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
        ), 
        icon: const Icon(Icons.refresh),
        label:const  Text('Restart Quiz! '),
        )
    ],
  ),
   ),
  );
}


}