import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget{
  const StartScreen({super.key});
  @override
  Widget build(context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(height: 80,),
            const Text('Learn Flutter the fun way!',style:TextStyle(color: Colors.white,fontSize: 24)),
            const SizedBox(height: 80,),
            OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(foregroundColor: Colors.white),child: const Text("Start Quiz")),
          ],
        ));

  }
}
// Wrapping Text('Start Screen') with Center Widget
// Center widget centers its child widget(its content) both horizontally and vertically by taking up all the space of the screen