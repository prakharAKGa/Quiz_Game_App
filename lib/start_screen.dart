import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class StartScreen extends StatelessWidget{
const StartScreen(this.startQuiz,{super.key});

final void Function () startQuiz;
@override
Widget build(context) {

  return  Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
     Image.asset(
      'assets/images/istockphoto-1441760990-612x612-removebg-preview.png'
      ),
      const SizedBox(height: 80,
       ),
   Text(
    'HISTORY QUIZ ',
    textAlign: TextAlign.center,
    style: GoogleFonts.croissantOne(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
           ),
   ),
     
     const SizedBox(height: 30
     ),
     OutlinedButton.icon(
      onPressed: startQuiz,
        

        
      
     style:OutlinedButton.styleFrom(
      
     ) ,
     icon:const Icon(Icons.arrow_right_alt), 
     label:const  Text('Start Quiz'),
     
     )
    ],)
    ) ;
}

}