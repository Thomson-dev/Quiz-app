import 'package:flutter/material.dart';
import 'package:tech_trivia_quiz/widgets/Home/Header.dart' show GreetingHeader;
import 'package:tech_trivia_quiz/widgets/Home/StudyCard.dart';
import 'package:tech_trivia_quiz/widgets/Home/pratice.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFEF7EE), Color(0xFFFEF7EE), Color(0xFFFEF7EE)],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GreetingHeader(name: 'Thomson'),
                PracticeDashboard(),
                ContinueStudying(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
