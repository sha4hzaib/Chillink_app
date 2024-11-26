import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDUUw_FzdlkAwH0Yt4DoKWH5PUEKf6WoWs",
        authDomain: "chillink-app.firebaseapp.com",
        projectId: "chillink-app",
        storageBucket: "chillink-app.firebasestorage.app",
        messagingSenderId: "273001971903",
        appId: "1:273001971903:web:dd01dca2f45378f546860a",
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDUUw_FzdlkAwH0Yt4DoKWH5PUEKf6WoWs",
        authDomain: "chillink-app.firebaseapp.com",
        projectId: "chillink-app",
        storageBucket: "chillink-app.firebasestorage.app",
        messagingSenderId: "273001971903",
        appId: "1:273001971903:web:dd01dca2f45378f546860a",
      ),
    );
  }

  runApp(const ChillInkApp());
}

class ChillInkApp extends StatelessWidget {
  const ChillInkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChillInk',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
