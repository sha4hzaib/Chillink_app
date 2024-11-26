import 'dart:developer';
import 'package:chillink_app/services/auth_service.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _auth = AuthService();
  final _firestore = FirebaseFirestore.instance;

  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _ageController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _ageController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _signup() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final name = _nameController.text.trim();
    final username = _usernameController.text.trim();
    final phoneNumberText = _phoneNumberController.text.trim();
    final ageText = _ageController.text.trim();

    if (email.isEmpty) {
      _showErrorDialog("Please provide either an email");
      return;
    }

    if (name.isEmpty || username.isEmpty || ageText.isEmpty || password.isEmpty || phoneNumberText.isEmpty) {
      _showErrorDialog("Please fill in all the fields.");
      return;
    }

    int? age;

    try {
      age = int.parse(ageText);
    } catch (e) {
      _showErrorDialog("Age must be a valid number.");
      return;
    }

    if (email.isNotEmpty) {
      await _signupWithEmail(email, password, name, username, phoneNumberText, age);
    } else if (phoneNumberText.isNotEmpty) {

    }
  }

  Future<void> _signupWithEmail(String email, String password, String name,
      String username, String phoneNumber, int age) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(email, password);
      if (user != null) {
        log("User Created Successfully");

        await _firestore.collection('users').doc(user.uid).set({
          'name': name,
          'username': username,
          'email': email,
          'phoneNumber': phoneNumber,
          'age': age,
        });

        goToHome(context);
      }
    } catch (e) {
      log("Signup Error: $e");
      _showErrorDialog("Signup failed. Please try again.");
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void goToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void goToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Signup",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 50),
            _buildTextField("Name", "Enter Name", _nameController),
            const SizedBox(height: 20),
            _buildTextField("Username", "Enter Username", _usernameController),
            const SizedBox(height: 20),
            _buildTextField("Email", "Enter Email (optional)", _emailController),
            const SizedBox(height: 20),
            _buildTextField("Phone Number", "Enter Phone Number", _phoneNumberController),
            const SizedBox(height: 20),
            _buildTextField("Age", "Enter Age", _ageController),
            const SizedBox(height: 20),
            _buildTextField("Password", "Enter Password", _passwordController, obscureText: true),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _signup,
              child: const Text("Confirm"),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Already have an account? "),
                InkWell(
                  onTap: () => goToLogin(context),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint,
    TextEditingController controller,
    {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    );
  }
}
