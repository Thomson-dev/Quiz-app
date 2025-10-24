import 'package:flutter/material.dart';

class GreetingHeader extends StatelessWidget {
  final String name;
  final String subtitle;
  final String? avatarUrl; // optional network/local asset

  const GreetingHeader({
    super.key,
    required this.name,
    this.subtitle = 'Great to see you again!',
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFFEF7EE), // warm cream bg
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left: wave + text
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('👋', style: TextStyle(fontSize: 28)),
                const SizedBox(width: 8),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF5B2D12), // deep warm brown
                          ),
                          children: [
                            const TextSpan(
                              text: 'Hi ',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                            ),
                            TextSpan(
                              text: '$name,',
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Great to see you again!',
                        style: TextStyle(
                          fontSize: 14.5,
                          color: Color(0xFF7A4A2A),
                          height: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Right: avatar with orange accent ring
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFFFFA24B), Color(0xFFFF7A3D)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.antiAlias,
                child: avatarUrl == null
                    ? const Icon(
                        Icons.person_outline,
                        size: 28,
                        color: Color(0xFF7A4A2A),
                      )
                    : Image.network(avatarUrl!, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
