import 'package:flutter/material.dart';
import 'flashcard_screen.dart';

void main() {
  runApp(FlashCardQuizApp());
}

class FlashCardQuizApp extends StatelessWidget {
  const FlashCardQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :'Flash Card Quiz',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FlashcardScreen(),
    );
  }
}
