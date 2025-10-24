import 'package:flutter/material.dart';

class PracticeDashboard extends StatelessWidget {
  const PracticeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFEF7EE),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ExpPointsCard(),
          SizedBox(height: 10),
          Text(
            ' Practice More',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xFF7A4A2A),
            ),
          ),
          SizedBox(height: 10),
          DailyQuizCard(),
        ],
      ),
    );
  }
}

class ExpPointsCard extends StatelessWidget {
  const ExpPointsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(
          colors: [Color(0xFFFF8A3D), Color(0xFFFF7A3D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          // subtle ornaments
          Positioned(
            right: -40,
            top: -30,
            child: _blob(160, Colors.white.withOpacity(.05)),
          ),
          Positioned(
            left: -30,
            bottom: -50,
            child: _blob(140, Colors.white.withOpacity(.06)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                _circleIcon(
                  icon: Icons.military_tech_rounded,
                  bg: Colors.white.withOpacity(.2),
                  fg: Colors.white,
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '2300',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Exp. Points',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
                const Spacer(),
                _circleIcon(
                  icon: Icons.emoji_events_rounded,
                  bg: Colors.white.withOpacity(.2),
                  fg: Colors.white,
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '32',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Ranking',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DailyQuizCard extends StatelessWidget {
  const DailyQuizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        gradient: const LinearGradient(
          colors: [Color(0xFF0E9E6E), Color(0xFF0B7F59)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          // ornaments
          Positioned(
            right: -30,
            bottom: -20,
            child: _blob(120, Colors.black.withOpacity(.06)),
          ),
          Positioned(right: 22, bottom: 22, child: _chevrons()),
          Row(
            children: [
              // left time chip with curved edge
              Container(
                width: 68,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    bottomLeft: Radius.circular(26),
                    topRight: Radius.circular(48),
                    bottomRight: Radius.circular(48),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  '3h',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.group_rounded,
                            size: 16,
                            color: Colors.white70,
                          ),
                          SizedBox(width: 6),
                          Text(
                            '120 participated',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Daily Quiz',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        '20 mixed questions',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// helpers
Widget _blob(double size, Color color) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}

Widget _circleIcon({
  required IconData icon,
  required Color bg,
  required Color fg,
}) {
  return Container(
    width: 44,
    height: 44,
    decoration: BoxDecoration(color: bg, shape: BoxShape.circle),
    child: Icon(icon, color: fg, size: 35),
  );
}

Widget _chevrons() {
  return Row(
    children: List.generate(3, (i) {
      return Padding(
        padding: EdgeInsets.only(left: i == 0 ? 0 : 3),
        child: Icon(
          Icons.play_arrow_rounded,
          size: 18,
          color: Colors.black.withOpacity(.15),
        ),
      );
    }),
  );
}
