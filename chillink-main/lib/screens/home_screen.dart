import 'package:chillink_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'paranormal_screen.dart';
import 'urban_legend_screen.dart';
import 'real_life_screen.dart';
import 'folklore_screen.dart';
import 'completed_stories_screen.dart';
import 'chat_bot_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreenContent(),
    const ChatBotScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: const Text('ChillInk'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black38,
                image: DecorationImage(
                  image: AssetImage('assets/images/MainMenu.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Main Menu',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            _buildDrawerItem(
                icon: Icons.person,
                text: 'Profile',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                }),
            _buildDrawerItem(
              icon: Icons.check_circle,
              text: 'Completed Stories',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CompletedStoriesScreen()),
                );
              },
            ),
            _buildDrawerItem(
                icon: Icons.email,
                text: 'Contact',
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Contact us at ChillInk@gmail.com')),
                  );
                }),
            _buildDrawerItem(
                icon: Icons.settings,
                text: 'Settings',
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Coming Soon in Next Update')),
                  );
                }),
          ],
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat AI',
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
        required IconData icon,
        required String text,
        required GestureTapCallback onTap}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      leading: Icon(icon, color: Colors.black54),
      title: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
      onTap: onTap,
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  Widget _buildImageBox(
    BuildContext context, String imagePath, String title, Widget screen,
    {required TextStyle textStyle}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Text(
            title,
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 20.0,
          children: [
            _buildImageBox(
              context,
              'assets/images/paranormal.jpg',
              'Paranormal',
              const ParanormalScreen(),
              textStyle: const TextStyle(fontFamily: 'FontMain', fontSize: 32.0),
            ),
            _buildImageBox(
              context,
              'assets/images/urban_legend.jpg',
              'Urban Legend',
              const UrbanLegendScreen(),
              textStyle: const TextStyle(fontFamily: 'FontMain', fontSize: 32.0),
            ),
            _buildImageBox(
              context,
              'assets/images/real_life.jpg',
              'Real Life',
              const RealLifeScreen(),
              textStyle: const TextStyle(fontFamily: 'FontMain', fontSize: 32.0),
            ),
            _buildImageBox(
              context,
              'assets/images/folklore.jpg',
              'Folklore',
              const FolkloreScreen(),
              textStyle: const TextStyle(fontFamily: 'FontMain', fontSize: 32.0),
            ),
          ],
        ),
      ),
    );
  }
}
