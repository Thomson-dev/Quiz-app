import 'package:flutter/material.dart';
import 'package:tech_trivia_quiz/screens/QuizScreen.dart';

void _goToQuizScreen(BuildContext context, String subject) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => QuizScreen(subject: subject)),
  );
}

class ContinueStudying extends StatelessWidget {
  const ContinueStudying({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFEF7EE),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '✍️ Continue Studying',
            style: TextStyle(
              color: Color(0xFF3A2C1A),
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              letterSpacing: 0.12,
            ),
          ),
          const SizedBox(height: 12),
          StudyCard(
            letter: 'JS',
            letterColor: const Color(0xFFE11D48),
            title: 'JavaScript',
            subtitle: '12 questions left',
            onTap: () => _goToQuizScreen(context, 'JavaScript'),
          ),
          const SizedBox(height: 12),
          StudyCard(
            letter: 'PY',
            letterColor: const Color(0xFFF59E0B),
            title: 'Python',
            subtitle: '6 questions left',
            onTap: () => _goToQuizScreen(context, 'Python'),
          ),
          const SizedBox(height: 12),
          StudyCard(
            letter: 'FL',
            letterColor: const Color(0xFF10B981),
            title: 'Flutter',
            subtitle: '20 questions left',
            onTap: () => _goToQuizScreen(context, 'Flutter'),
          ),
        ],
      ),
    );
  }
}

class StudyCard extends StatelessWidget {
  final String letter;
  final Color letterColor;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const StudyCard({
    super.key,
    required this.letter,
    required this.letterColor,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: Ink(
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xFFF8E5D1), // warm beige
            borderRadius: BorderRadius.circular(22),
            boxShadow: const [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 16),
              _classBadge(letter: letter, accent: letterColor),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF2D1B06),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        letterSpacing: -0.04,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFF7A4A2A),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: Color(0xFF7A4A2A),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _classBadge({required String letter, required Color accent}) {
  return Container(
    width: 64,
    height: 64,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [BoxShadow(color: Color(0x0D000000), blurRadius: 4)],
    ),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          letter,
          style: TextStyle(
            color: accent,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            letterSpacing: 0.22,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          'Class',
          style: TextStyle(
            color: accent.withOpacity(.85),
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            letterSpacing: 0.12,
          ),
        ),
      ],
    ),
  );
}
