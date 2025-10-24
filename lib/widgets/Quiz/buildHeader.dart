import 'package:flutter/material.dart';

class buildHeader extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBack;
  final VoidCallback? onSkip;
  final String title;

  const buildHeader({
    Key? key,
    this.onBack,
    this.onSkip,
    this.title = 'Math Quiz',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFEF7EE),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            IconButton(
              onPressed: onBack ?? () => Navigator.maybePop(context),
              icon: const Icon(
                Icons.chevron_left_rounded,
                color: Color(0xFF5B2D12),
                size: 28,
              ),
              splashRadius: 22,
            ),

            // Centered title: expand and center
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF5B2D12),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
            ),

            // Right skip with same width as back button to keep true center
            SizedBox(
              width: 48, // ~IconButton width
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: onSkip,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    foregroundColor: const Color(0xFFD97706),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Color(0xFFD68B4A)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 8);
}
