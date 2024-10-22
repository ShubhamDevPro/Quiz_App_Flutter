import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function()
      startQuiz; // startQuiz is a function storing another function as a value
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text('Learn Flutter the fun way!',
              style: GoogleFonts.lato(color: const Color.fromARGB(255,237,223,252), fontSize: 24)),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              }, //
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(CupertinoIcons.play),
              label: const Text("Start Quiz")),
        ],
      ),
    );
  }
}