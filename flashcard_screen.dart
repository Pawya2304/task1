import 'package:flutter/material.dart';
import 'flashcard.dart';

class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({super.key});

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  int _currentIndex = 0;
  bool _showAnswer = false;

  // Sample flashcards
  final List<Flashcard> _flashcards = [
    Flashcard(question: 'What is the capital of France?', answer: 'Paris'),
    Flashcard(question: 'What is 2 + 2?', answer: '4'),
    Flashcard(question: 'What is the color of the sky?', answer: 'Blue'),
    Flashcard(question: 'what is 24*3', answer: '72'),
    Flashcard(question: 'what is the national flower?', answer:'lotus'),
  ];

  void _nextFlashcard() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _flashcards.length;
      _showAnswer = false;
    });
  }

  void _toggleAnswer() {
    setState(() {
      _showAnswer = !_showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentFlashcard = _flashcards[_currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Flash Card Quiz')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _showAnswer ? currentFlashcard.answer : currentFlashcard.question,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleAnswer,
                child: Text(_showAnswer ? 'Show Question' : 'Show Answer'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _nextFlashcard,
                child: const Text('Next Flashcard'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}