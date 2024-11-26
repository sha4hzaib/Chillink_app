import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      log("Error creating user: $e");
      return null;
    }
  }

  Future<User?> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      log("Error logging in: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      log("User signed out successfully.");
    } catch (e) {
      log("Error signing out: $e");
    }
  }


  User? getCurrentUser() {
    try {
      return _auth.currentUser;
    } catch (e) {
      log("Error fetching current user: $e");
      return null;
    }
  }

  bool isUserLoggedIn() {
    return _auth.currentUser != null;
  }
}
