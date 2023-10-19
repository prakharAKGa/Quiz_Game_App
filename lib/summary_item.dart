import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app1/question_identifier.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem (this.itemData,{super.key});

final Map<String, Object> itemData;

@override
Widget build(BuildContext context) {
  final isCorrectAnswer = 
  itemData['user_answer'] == itemData['correct_answer'];
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 010.0,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifer(
          isCorrectAnswer: isCorrectAnswer,
           questionIndex: itemData['question_index'] as int,),
      const SizedBox(width: 20,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              itemData['question'] as String,
              style: GoogleFonts.croissantOne(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(itemData['user_answer'] as String,
              style:GoogleFonts.croissantOne(
                fontSize: 17,
                
                 fontWeight: FontWeight.w500,
                color:const Color.fromARGB(255, 14, 255, 247),
              ),
              ),
              Text(itemData['correct_answer']as String,
              style: GoogleFonts.croissantOne(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color:const  Color.fromARGB(255, 99, 240, 104),
              ),
              )
          ]
          ))
      ],
    ),
  ) ;
}

}