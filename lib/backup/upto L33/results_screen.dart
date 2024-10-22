import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';
class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key,required this.chosenAnswers});
  final List<String> chosenAnswers;
  List<Map<String,Object>> getSummaryData(){
    //Map is a collection of key value pairs
    // Map is a generic type -> keys and values can be of any type
    //values can be accessed (read or modified) via []
    // Key of String type here
    // Value of object type. In dart, all everything is an object so using Object gives us flexibility
    final List<Map<String,Object>> summary =[];
    for(var i=0;i<chosenAnswers.length;i++){
      summary.add({
        'question_index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer':chosenAnswers[i]
      });
    }
    return summary;
  }
  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child:Container(
        margin:const EdgeInsets.all(40),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('You answered X out of Y Questions Correctly'),
              const SizedBox(height: 30,),
              QuestionsSummary(getSummaryData()),
              const SizedBox(height: 30,),
              TextButton(
                onPressed: (){},
                child: const Text('Restart Quiz'),
              ),
          ])
      )
    );
  }
}