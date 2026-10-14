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
      home: OrganizerScreen(),
    );
  }
}

class OrganizerScreen extends StatefulWidget {
  const OrganizerScreen({super.key});

  @override
  State<OrganizerScreen> createState() => _OrganizerScreenState();
}

class _OrganizerScreenState extends State<OrganizerScreen> {
  final Color purple = const Color(0xFF5865FF);
  final Color lightPurple = const Color(0xFFEEEEFF);
  final Color darkText = const Color(0xFF202635);
  final Color greyText = const Color(0xFF626979);

  int selectedTab = 0;
  bool isFollowing = false;
  bool isExpanded = false;

  final String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
      'sed do eiusmod tempor incididunt ut labore et dolore '
      'magna aliqua. Ut enim ad minim veniam, quis nostrud '
      'exercitation ullamco laboris nisi ut Lorem ipsum dolor sit '
      'amet, consectetur adipiscing elit, sed do eiusmod tempor '
      'incididunt ut labore et dolore magna aliqua.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(23, 24, 23, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_back,
                      color: purple,
                      size: 23,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      'Organizer',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: darkText,
                      ),
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: lightPurple,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.more_vert,
                        color: purple,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Center(
                child: SizedBox(
                  width: 145,
                  height: 120,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 15,
                        top: 0,
                        child: Container(
                          width: 115,
                          height: 115,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFE5E3EE),
                            border: Border.all(
                              color: const Color(0xFFF1F0F5),
                              width: 2,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'lib/img/5.png',
                              width: 115,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  'Albert Flores',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: darkText,
                  ),
                ),
              ),
              const SizedBox(height: 23),
              Row(
                children: [
                  _statItem('2,368', 'Followers'),
                  _statDivider(),
                  _statItem('346', 'Following'),
                  _statDivider(),
                  _statItem('13', 'Events'),
                ],
              ),
              const SizedBox(height: 21),
              const Divider(
                color: Color(0xFFEEEEF3),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isFollowing = !isFollowing;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: purple,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              isFollowing
                                  ? Icons.check
                                  : Icons.person_add,
                              size: 16,
                            ),
                            const SizedBox(width: 7),
                            Text(
                              isFollowing ? 'Following' : 'Follow',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: purple,
                          side: BorderSide(
                            color: purple,
                            width: 2,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat,
                              size: 15,
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Messages',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              const Divider(
                color: Color(0xFFEEEEF3),
                thickness: 1,
                height: 1,
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  _tabButton('About', 0),
                  const SizedBox(width: 7),
                  _tabButton('Events', 1),
                  const SizedBox(width: 7),
                  _tabButton('Reviews', 2),
                ],
              ),
              const SizedBox(height: 26),
              if (selectedTab == 0) ...[
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414B5C),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  isExpanded
                      ? description
                      : description.length > 200
                          ? '${description.substring(0, 200)}...'
                          : description,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: greyText,
                  ),
                ),
                const SizedBox(height: 2),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                    isExpanded ? 'Read less...' : 'Read more...',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: purple,
                    ),
                  ),
                ),
              ],
              if (selectedTab == 1) ...[
                Text(
                  'Events',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: darkText,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'No upcoming events yet.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF626979),
                  ),
                ),
              ],
              if (selectedTab == 2) ...[
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: darkText,
                  ),
                ),
                const SizedBox(height: 12),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFC247),
                      size: 22,
                    ),
                    SizedBox(width: 6),
                    Text(
                      '4.9 / 5.0',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _statItem(String number, String label) {
    return Expanded(
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: darkText,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: const Color(0xFF414B5C),
            ),
          ),
        ],
      ),
    );
  }

  Widget _statDivider() {
    return Container(
      width: 1,
      height: 63,
      color: const Color(0xFFEEEEF3),
    );
  }

  Widget _tabButton(String title, int index) {
    final bool isSelected = selectedTab == index;

    return Expanded(
      child: SizedBox(
        height: 41,
        child: isSelected
            ? ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTab = index;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: purple,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            : OutlinedButton(
                onPressed: () {
                  setState(() {
                    selectedTab = index;
                  });
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: purple,
                  padding: EdgeInsets.zero,
                  side: BorderSide(
                    color: purple,
                    width: 1.8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
      ),
    );
  }
}