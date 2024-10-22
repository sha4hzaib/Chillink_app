import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'paranormal_screen.dart';
import 'urban_legend_screen.dart';
import 'real_life_screen.dart';
import 'folklore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildImageBox(String imagePath, String title, Widget screen) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            backgroundColor: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChillInk'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(12.0),
          children: [
            Container(
              height: 80,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black38,
                ),
                child: const Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              title: const Text('Profile', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              title: const Text('Contact', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contact us at ChillInk@gmail.com')),
                );
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              title: const Text('Settings', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Coming Soon in Next Update')),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildImageBox('assets/images/paranormal.jpg', 'Paranormal', ParanormalScreen()),
                  _buildImageBox('assets/images/urban_legend.jpg', 'Urban Legend', UrbanLegendScreen()),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildImageBox('assets/images/real_life.jpg', 'Real Life', RealLifeScreen()),
                  _buildImageBox('assets/images/folklore.jpg', 'Folklore', FolkloreScreen()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
