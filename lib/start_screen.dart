import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', 
            width: 200,
            color: const Color.fromARGB(123, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: () {}, 
                         style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white
                         ),
                         icon:Icon(Icons.arrow_right_alt),
                         label: Text('Start Quiz')
          ),
        ],
      ),
    );
  }
}
