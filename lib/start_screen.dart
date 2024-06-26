import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        // child: Text('Start Screen'),
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(100, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    ));
  }
}
