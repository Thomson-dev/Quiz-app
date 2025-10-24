import 'package:flutter/material.dart';

class QuizProgress extends StatelessWidget {
  final int current;
  final int total;

  const QuizProgress({super.key, required this.current, required this.total});

  @override
  Widget build(BuildContext context) {
    final double value = (total == 0) ? 0 : current.clamp(0, total) / total;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 8),
      color: const Color(0xFFFEF7EE), // warm background
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              backgroundColor: const Color(0xFFF5D9B9), // peach trail
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFF2E9B6B),
              ), // green
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$current',
                  style: const TextStyle(
                    color: Color(0xFF2E9B6B),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                TextSpan(
                  text: '/$total',
                  style: const TextStyle(
                    color: Color(0xFFD68B4A),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
