import 'package:app1/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:app1/questions_screen.dart';
import 'package:app1/start_screen.dart';
import 'package:app1/data/questions.dart';
import 'package:app1/results_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
 
  @override
  State<Quiz> createState() {
  return _QuizState();
  }

}

class _QuizState extends State<Quiz>{
 List<String> selectedAnswers =[];
var activeScreen = 'start-screen';

void switchScreen(){
  setState((){
   
    activeScreen = 'questions-screen';

  });
}

void chooseAnswer(String answer){
selectedAnswers.add(answer);

if(selectedAnswers.length == questions.length){
  setState(() {
    
    activeScreen='results-screen';
  });
}

}

void restartQuiz(){
  setState(() {
    
    selectedAnswers =[];
    activeScreen = 'question-screen';
  });
}
@override
Widget build(context) {
Widget screenWidget =StartScreen(switchScreen);
if(activeScreen ==  'questions-screen') {

screenWidget = QuestionsScreen(onSelectAnswer:chooseAnswer);

}
 if(activeScreen=='results-screen'){
  screenWidget= ResultScreen(
    chosenAnswers:selectedAnswers ,
    onRestart: restartQuiz,
  );
 } 

  return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:  [
                // Color.fromARGB(255, 94, 5, 5),
                 Color.fromARGB(255, 167, 100, 160),
                //Color.fromARGB(255, 2, 79, 61),
                //Color.fromARGB(255, 20, 52, 44),
               // Color.fromARGB(255, 4, 20, 17),
                 Color.fromARGB(255, 50, 6, 46),
                Color.fromARGB(255, 94, 5, 5)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              ),
          ),
          child:screenWidget,
          
            
          
        ),
   ),
   ) ;
}

}