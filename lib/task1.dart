import 'package:flutter/material.dart';

import 'emojiState.dart'; // Ensure this file exists and contains the EmojiState class

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Moody',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, size: 35),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, ',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Sara Rose',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'How are you feeling today',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: EmojiState(
                      imageURL: 'assets/images/love.png',
                      state: 'Love',
                    ),
                  ),
                  Expanded(
                    child: EmojiState(
                      imageURL: 'assets/images/Frame 10.png',
                      state: 'Cool',
                    ),
                  ),
                  Expanded(
                    child: EmojiState(
                      imageURL: 'assets/images/Frame 8.png',
                      state: 'Happy',
                    ),
                  ),
                  Expanded(
                    child: EmojiState(
                      imageURL: 'assets/images/Frame 12.png',
                      state: 'Sad',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'See more >',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4.0,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Positive vibes',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Boost your mood with\n positive vibes',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.play_circle_outline_outlined,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  '10 mins',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Image.asset('assets/images/Walking the Dog.png'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Exercise',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 16.0),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ExerciseCard(
                    icon: Icons.self_improvement,
                    text: 'Relaxation',
                    color: Colors.purple[50]!,
                    iconColor: Colors.purple,
                  ),
                  ExerciseCard(
                    icon: Icons.self_improvement,
                    text: 'Meditation',
                    color: Colors.pink[50]!,
                    iconColor: Colors.pink,
                  ),
                  ExerciseCard(
                    icon: Icons.waves,
                    text: 'Breathing',
                    color: Colors.orange[50]!,
                    iconColor: Colors.orange,
                  ),
                  ExerciseCard(
                    icon: Icons.accessibility_new,
                    text: 'Yoga',
                    color: Colors.blue[50]!,
                    iconColor: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: 'Grid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          // Handle item tap if needed
        },
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;

  ExerciseCard({
    required this.icon,
    required this.text,
    required this.color,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40.0,
            color: iconColor,
          ),
          SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

// Make sure this is your EmojiState class
class EmojiState extends StatelessWidget {
  final String imageURL;
  final String state;

  const EmojiState({required this.imageURL, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageURL),
        Text(state),
      ],
    );
  }
}
