import 'package:flutter/material.dart';
import 'dart:async';
import 'package:tech_trivia_quiz/data/quesion.dart';
import 'package:tech_trivia_quiz/screens/ResultScreen.dart';
import 'package:tech_trivia_quiz/widgets/Quiz/AnswerList.dart';

import 'package:tech_trivia_quiz/widgets/Quiz/buildHeader.dart';
import 'package:tech_trivia_quiz/widgets/Quiz/buildProgressBar.dart';
import 'package:tech_trivia_quiz/widgets/Quiz/buildQuestion.dart';

class QuizScreen extends StatefulWidget {
  final String subject;
  const QuizScreen({super.key, required this.subject});

  @override
  State<QuizScreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<QuizScreen> {
  int secondsLeft = 15;
  Timer? timer;
  final int questionDuration = 15; // seconds per question
  int currentQuestion = 0;
  late List<int?> selectedAnswers;

  @override
  void initState() {
    super.initState();
    // Load questions for the selected subject
    questions = questionsByCategory[widget.subject] ?? [];
    selectedAnswers = List<int?>.filled(questions.length, null);
    startTimer();
  }

  void startTimer() {
    timer?.cancel();
    setState(() {
      secondsLeft = questionDuration;
    });
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (secondsLeft > 0) {
        setState(() {
          secondsLeft--;
        });
      } else {
        t.cancel();
        // Move to next question or finish
        if (currentQuestion < questions.length - 1) {
          setState(() {
            currentQuestion++;
          });
          startTimer();
        } else {
          // Optionally, finish the quiz
          int score = 0;
          for (int i = 0; i < questions.length; i++) {
            final correctIndex = (questions[i]['options'] as List).indexWhere(
              (opt) => opt['isCorrect'] == true,
            );
            if (selectedAnswers[i] == correctIndex) score++;
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => QuizResultsScreen(
                correctAnswers: score,
                totalQuestions: questions.length,
                userName: 'Thomson',
                userImageUrl: 'https://i.pravatar.cc/150?img=3',
                rank: 1,
                onExploreMore: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  late List<Map<String, dynamic>> questions;

  @override
  Widget build(BuildContext context) {
    final q = questions[currentQuestion];

    return Container(
      color: const Color(0xFFFEF7EE),
      child: SafeArea(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Color(0xFF3A2C1A),
          ),
          child: Column(
            children: [
              buildHeader(title: widget.subject),
              QuizProgress(
                current: currentQuestion + 1,
                total: questions.length,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Time left: $secondsLeft s',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionCard(question: q['question'] as String),
                      const SizedBox(height: 24),
                      AnswerList(
                        selectedIndex: selectedAnswers[currentQuestion],
                        options: List<AnswerOption>.from(
                          (q['options'] as List).map(
                            (opt) => AnswerOption(
                              text: opt['text'],
                              isCorrect: opt['isCorrect'] ?? false,
                              explanation: opt['explanation'],
                            ),
                          ),
                        ),
                        onTap: (index) {
                          setState(() {
                            selectedAnswers[currentQuestion] = index;
                          });
                        },
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: currentQuestion > 0
                                ? () {
                                    setState(() => currentQuestion--);
                                    startTimer();
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFD68B4A),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text('Previous'),
                          ),
                          ElevatedButton(
                            onPressed: currentQuestion < questions.length - 1
                                ? () {
                                    setState(() => currentQuestion++);
                                    startTimer();
                                  }
                                : () {
                                    // Calculate score and navigate to result screen
                                    int score = 0;
                                    for (int i = 0; i < questions.length; i++) {
                                      final correctIndex =
                                          (questions[i]['options'] as List)
                                              .indexWhere(
                                                (opt) =>
                                                    opt['isCorrect'] == true,
                                              );
                                      if (selectedAnswers[i] == correctIndex)
                                        score++;
                                    }
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => QuizResultsScreen(
                                          correctAnswers: score,
                                          totalQuestions: questions.length,
                                          userName:
                                              'Thomson', // Replace with actual user name if available
                                          userImageUrl:
                                              'https://i.pravatar.cc/150?img=3', // Replace with actual image URL
                                          rank:
                                              1, // Replace with actual rank logic if needed
                                          onExploreMore: () {
                                            Navigator.pop(
                                              context,
                                            ); // Or navigate to another screen
                                          },
                                        ),
                                      ),
                                    );
                                  },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2E9B6B),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              currentQuestion < questions.length - 1
                                  ? 'Next'
                                  : 'Finish',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
