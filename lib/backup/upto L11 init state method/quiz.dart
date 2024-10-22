import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  Widget? activeScreen ;// we can store widgets inside variables
  @override
  // we need to use a built in method initState to do some extra initialisation work
  // bcz both the variable initialisation of switchScreen and method creation of switchScreen happen almost simulataneously
  // so its too early to reference the switchScreen method inside the StartScreen
  // bcz its not guaranteed to exist yet
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() { // setState() function -> executes build method again when called
      activeScreen = const QuestionsScreen();
    });
  }

  Widget build(context){
    return MaterialApp(
      home: Scaffold(
          body:Container(
              decoration: const BoxDecoration(
                gradient:LinearGradient(
                    colors: [
                      Color.fromARGB(255,78,13,151),
                      Color.fromARGB(255,107,15,168),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                ),
              ),
              child: activeScreen,
          ),
      ),
    );
  }
}