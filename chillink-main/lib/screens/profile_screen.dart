import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';
import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isLoggedIn = false;
  User? _currentUser;
  Map<String, dynamic>? _profileData;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        _isLoggedIn = true;
        _currentUser = user;
      });
      _fetchProfileData(user.uid);
    }
  }

  Future<void> _fetchProfileData(String uid) async {
    try {
      final doc = await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (doc.exists) {
        setState(() {
          _profileData = doc.data();
        });
      } else {
        setState(() {
          _profileData = {};
        });
      }
    } catch (e) {
      debugPrint("Error fetching profile data: $e");
      setState(() {
        _profileData = null;
      });
    }
  }

  void _logout() async {
    await FirebaseAuth.instance.signOut();
    setState(() {
      _isLoggedIn = false;
      _currentUser = null;
      _profileData = null;
    });
  }

  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: _isLoggedIn ? _buildProfileDetails() : _buildLoginPage(),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDetails() {
    if (_profileData == null) {
      return const CircularProgressIndicator();
    }

    if (_profileData!.isEmpty) {
      return const Center(child: Text('No profile data available.'));
    }

    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 50),
          SimpleGestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FullScreenImageView(),
                ),
              );
            },
            onDoubleTap: () {
              setState(() {
                _scale = (_scale == 1.0) ? 4.0 : 1.0;
              });
            },
            child: Transform.scale(
              scale: _scale,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Welcome, ${_profileData!['name'] ?? _currentUser!.email}!',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          _buildProfileDetailRow(Icons.email, 'Email', _currentUser?.email ?? 'Not Available'),
          _buildProfileDetailRow(Icons.phone, 'Phone Number', _profileData!['phoneNumber'] ?? 'Not Available'),
          _buildProfileDetailRow(Icons.person, 'Username', _profileData!['username'] ?? 'Not Available'),
          _buildProfileDetailRow(Icons.person_2, 'Age', _profileData!['age']?.toString() ?? 'Not Available'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _logout,
            child: const Text('Log Out'),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.black54, size: 18),
          const SizedBox(width: 10),
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginPage() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget> [
        const Text(
          'Please log in to view your profile.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}

class FullScreenImageView extends StatefulWidget {
  const FullScreenImageView({super.key});

  @override
  _FullScreenImageViewState createState() => _FullScreenImageViewState();
}

class _FullScreenImageViewState extends State<FullScreenImageView> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SimpleGestureDetector(
          onDoubleTap: () {
            setState(() {
              _scale = (_scale == 1.0) ? 4.0 : 1.0;
            });
          },
          child: InteractiveViewer(
            minScale: 1.0,
            maxScale: 4.0,
            child: Transform.scale(
              scale: _scale,
              child: Image.asset('assets/images/profile.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
