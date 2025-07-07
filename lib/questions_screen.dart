import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart'; // Importe les widgets de base de Flutter.

// Déclare un widget d'état (StatefulWidget) appelé QuestionsScreen.
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key}); // Constructeur avec clé optionnelle.

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState(); // Crée l'état associé à ce widget.
  }
}

// Classe privée qui gère l'état du widget QuestionsScreen.
class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    // Affiche simplement un texte "QuestionsScreen" à l'écran.
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question...',style: TextStyle(color: Colors.white),),
          SizedBox(height: 30,),
          AnswerButton(answerText:'Answer 1', onTap:(){}),
          AnswerButton(answerText:'Answer 2', onTap:(){}),
          AnswerButton(answerText:'Answer 3', onTap:(){})
        ],
      ),
    );
  }
}
