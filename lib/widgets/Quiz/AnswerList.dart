import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  final List<AnswerOption> options;
  final int? selectedIndex;
  final ValueChanged<int>? onTap;

  const AnswerList({
    super.key,
    required this.options,
    this.selectedIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: options.asMap().entries.map((entry) {
          final index = entry.key;
          final option = entry.value;
          final isSelected = selectedIndex == index;

          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _AnswerCard(
              text: option.text,
              isSelected: isSelected,
              isCorrect: option.isCorrect,
              explanation: option.explanation,
              onTap: () => onTap?.call(index),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class AnswerOption {
  final String text;
  final bool isCorrect;
  final String? explanation;

  const AnswerOption({
    required this.text,
    required this.isCorrect,
    this.explanation,
  });
}

class _AnswerCard extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool isCorrect;
  final String? explanation;
  final VoidCallback? onTap;

  const _AnswerCard({
    required this.text,
    required this.isSelected,
    required this.isCorrect,
    this.explanation,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Use a neutral highlight for selection, don't show correctness
    final bgColor = isSelected ? const Color(0xFFD97706) : Colors.white;
    final icon = isSelected ? Icons.chevron_right : null;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0D000000),
                blurRadius: 4,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    color: isSelected ? Colors.white : const Color(0xFF5B2D12),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              if (icon != null) Icon(icon, color: Colors.white, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
