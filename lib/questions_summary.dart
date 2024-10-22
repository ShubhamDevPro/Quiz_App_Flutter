import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // when height of SizedBox is set then the child(in this column)
      // will be cut off if it exceeds that height
      //so we wrapped the Column inside SingleChildScrollView
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            //map (method) is unrelated to Map (value type)
            // map means we map a value to a new value
            // children needs a list of widgets and list of maps
            // map method transforms list of maps to list of widgets
        
            // the function receives an argument automatically passed in by dart
            // in this case it will be one piece of data
        
            return Row(
              children: [
                Text(((data['question_index'] as int )+1).toString()),
                Expanded( // text too long for a single line is
                  // broken across multiple lines
                  // bcz Column takes an infinite width
                  // even if it cross screen boundaries
        
                  //using Expanded inside Row means the Widget
                  //wont be able to take more space the row's width
                  child: Column(children: [
                    Text((data['question'] as String)),
                    const SizedBox(height:5),
                    Text(data['user_answer'] as String),
                    const SizedBox(height: 5,),
                    Text(data['correct_answer'] as String),
                  ],),
                )
              ],
            );
          },).toList(),
          // map returns an iterable object so it needs to be convert
          // to List using .toList()
        ),
      ),
    );
  }
}
