import 'package:flutter/material.dart';

class QuizResultsScreen extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;
  final String userName;
  final String userImageUrl;
  final int rank;
  final VoidCallback? onExploreMore;

  const QuizResultsScreen({
    super.key,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.userName,
    required this.userImageUrl,
    required this.rank,
    this.onExploreMore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFEF7EE),
      child: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(child: _buildMainCard()),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0xFFFEF7EE),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Correct Answer',
            style: TextStyle(
              color: Color(0xFF5B2D12),
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '$correctAnswers/$totalQuestions',
            style: const TextStyle(
              color: Color(0xFF5B2D12),
              fontSize: 17,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainCard() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          _buildRankSection(),
          const SizedBox(height: 32),
          _buildCongratulationsMessage(),
          const SizedBox(height: 32),
          _buildExploreButton(),
        ],
      ),
    );
  }

  Widget _buildRankSection() {
    return Column(
      children: [
        // Neutral banner
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          decoration: BoxDecoration(
            color: const Color(0xFFFEF7EE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              // Profile image
              Container( 
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF5B2D12), width: 3),
                ),
                child: ClipOval(
                  child: Image.network(
                    userImageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.person,
                      color: Color(0xFF5B2D12),
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Name
              Text(
                userName,
                style: const TextStyle(
                  color: Color(0xFF5B2D12),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 4),
              // Rank label
              const Text(
                'Rank',
                style: TextStyle(
                  color: Color(0xFF7A4A2A),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 8),
              // Rank number
              Text(
                rank.toString(),
                style: const TextStyle(
                  color: Color(0xFF5B2D12),
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        // Decorative side elements
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildDecorativePipe(),
            const SizedBox(width: 40),
            _buildDecorativePipe(),
          ],
        ),
      ],
    );
  }

  Widget _buildDecorativePipe() {
    return Container(
      width: 40,
      height: 8,
      decoration: BoxDecoration(
        color: const Color(0xFFFEF7EE),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildCongratulationsMessage() {
    return Column(
      children: [
        const Text(
          'Congratulations, you\'ve completed this quiz!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF5B2D12),
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.2,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Let\'s keep testing your knowledge by playing more quizzes!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF7A4A2A),
            fontSize: 15,
            height: 1.4,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }

  Widget _buildExploreButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onExploreMore,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF97316), // orange
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: const Text(
          'Explore More',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
