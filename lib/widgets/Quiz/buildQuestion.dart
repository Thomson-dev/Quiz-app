import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String question;

  const QuestionCard({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),

      child: Text(
        question,
        style: const TextStyle(
          color: Color(0xFF5B2D12),
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 1.5, // Moderate line height for readability
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
