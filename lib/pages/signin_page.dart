import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40), // Space from the top
            Image.asset(
              'assets/logo-blue.png', // Path to your logo
              width: 170, // Adjust the width as needed
              fit: BoxFit.cover, // Ensure the image covers the available space
            ),
            SizedBox(height: 20),
            Text(
              'Sign In to Your Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Please enter your registered phone number & email address to access your account.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email Or Phone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Navigate to password reset page
                },
                child: Text('forget password?'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform sign-in action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2B39B9), // Background color
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('or sign in with'),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Perform Google sign-in action
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                side: BorderSide(color: Color(0xFF2B39B9)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.facebook, color: Color(0xFF2B39B9)),
                    SizedBox(width: 10),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF2B39B9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigate to create account page
              },
              child: Text(
                'Don\'t have an account? Sign Up',
                style: TextStyle(
                  color: Color(0xFF2B39B9),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
