import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(
        selectedAnswer); // widget is a speacial property using which we use the onSelectAnswer function inside the state class
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // We want to dynamically generate answer button based on the actual
            //amount of answers we have for the question
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  }); // passing the function answerQuestion as a value
            }),
            //currentQuestion.answer -> list of strings
            //map method will transform the list of strings to list of widgets
            // function passed to map will be executed by dart for every list item
            // dart will pass the list item for which it is currently executing this function
            // as an argument to the function

            // inside the function body, we return the transformed item
            // i.e. the new value(widget in this case) instead of the old item
            // so we are basically replacing all items of the list based on the old item

            // the map function will not change the original list
            // it will create a new list object in memory bt both lists coexist in memory

            // map() yields an iterable(~a list)
            // in the above code we are returning a nested list(list inside list)
            // (list of widgets inside inside the children's list)
            // but 'children' wants only widgets inside the list

            // ... is called SPREADING
            // it takes all the values in a list or iterable and pulls it out of iterable
            // and places the values of list/iterable as comma separated values
          ],
        ),
      ),
    );
  }
}
