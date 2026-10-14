
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeditateScreen(),
    );
  }
}

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  static const Color teal = Color(0xFF079FA3);
  static const Color background = Color(0xFFF3F3F3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 780),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5CA49),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'lib/img/2.png',
                      width: double.infinity,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Peter Mach',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Mind Deep Relax',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF222222),
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Join the Community as we prepare over 33 days '
                  'to relax and feel joy with the mind and happiness '
                  'session across the World.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.55,
                    color: Color(0xFF444444),
                  ),
                ),

                const SizedBox(height: 23),

                SizedBox(
                  width: double.infinity,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: teal,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow, size: 23),
                        SizedBox(width: 10),
                        Text(
                          'Play Next Session',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const SessionTile(
                  title: 'Sweet Memories',
                  subtitle: 'December 29 Pre-Launch',
                  color: Color(0xFF3885F5),
                ),

                const SessionTile(
                  title: 'A Day Dream',
                  subtitle: 'December 29 Pre-Launch',
                  color: Color(0xFF079FA3),
                ),

                const SessionTile(
                  title: 'Mind Explore',
                  subtitle: 'December 29 Pre-Launch',
                  color: Color(0xFFF49332),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SessionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  const SessionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFF0F0F0),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 41,
            height: 41,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(11),
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 25,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF292929),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.more_horiz,
            color: Color(0xFFD8D8D8),
            size: 27,
          ),
        ],
      ),
    );
  }
}
