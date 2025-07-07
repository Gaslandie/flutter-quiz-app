import 'package:flutter/material.dart'; // Importe les widgets de base de Flutter.

// Déclare un widget sans état (StatelessWidget) appelé StartScreen.
class StartScreen extends StatelessWidget {
  // Le constructeur prend une fonction à appeler quand on démarre le quiz.
  const StartScreen(this.startQuiz, {super.key});

  final void Function()
  startQuiz; // Fonction à appeler quand on clique sur le bouton.

  @override
  Widget build(context) {
    // Centre le contenu à l'écran.
    return Center(
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // La colonne prend juste la place nécessaire.
        children: [
          // Affiche le logo du quiz.
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(
              123,
              255,
              255,
              255,
            ), // Ajoute un effet de transparence.
          ),
          const SizedBox(height: 80), // Espace vertical.
          const Text(
            'Learn Flutter the fun way!', // Texte d'accroche.
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 40), // Autre espace vertical.
          // Bouton pour démarrer le quiz.
          OutlinedButton.icon(
            onPressed:
                startQuiz, // Quand on clique, on appelle la fonction startQuiz.
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt), // Icône flèche.
            label: Text('Start Quiz'), // Texte du bouton.
          ),
        ],
      ),
    );
  }
}
