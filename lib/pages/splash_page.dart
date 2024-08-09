import 'dart:async';
import 'package:flutter/material.dart';
import 'package:relationsecure/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomePage after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF140A4B), // Start color
              Color(0xFF2F17B1), // End color
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/logo.png', // Path to the logo
              width: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
