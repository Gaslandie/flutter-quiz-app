import 'package:flutter/material.dart'; // Importe les widgets de base de Flutter.
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/questions_screen.dart'; // Importe l'écran des questions.
import 'package:quiz_app/start_screen.dart'; // Importe l'écran de démarrage.

// Déclare un widget d'état (StatefulWidget) appelé Quiz.
class Quiz extends StatefulWidget {
  const Quiz({super.key}); // Constructeur avec clé optionnelle.

  @override
  State<Quiz> createState() {
    return _QuizState(); // Crée l'état associé à ce widget.
  }
}

// Classe privée qui gère l'état du widget Quiz.
class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen =
      'start-screen'; // Variable pour savoir quel écran afficher.

  // Fonction pour changer d'écran (appelée quand on veut passer à l'écran des questions).
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; // Change la valeur de activeScreen.
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    // Selon la valeur de activeScreen, on affiche l'écran de démarrage ou des questions.
    var screenWidget = activeScreen == 'start-screen'
        ? StartScreen(
            switchScreen,
          ) // Passe la fonction switchScreen à StartScreen.
        : QuestionsScreen(
            onSelectAnswer: chooseAnswer,
          ); // Affiche l'écran des questions.
    if (activeScreen == 'results-screen') {
      screenWidget =  ResultsScreen(chosenAnswers: selectedAnswers,);
    }
    // Structure principale de l'application.
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // Ajoute un fond en dégradé.
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 56, 15, 126), // Couleur en haut à gauche.
                Color.fromARGB(255, 26, 4, 64), // Couleur en bas à droite.
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, // Affiche l'écran choisi.
        ),
      ),
    );
  }
}
