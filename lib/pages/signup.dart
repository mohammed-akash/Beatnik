import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
              height: 120, // Adjust the height as needed
              width: 120, // Adjust the width as needed
              fit: BoxFit.cover, // Ensure the image covers the available space
            ),
            SizedBox(height: 20),
            Text(
              'Create a New Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Please enter your valid email and password, or continue with Phone',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email/Phone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                  },
                ),
                Text('Terms & Conditions'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform create account action
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
                  'Create Account',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('OR'),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // Perform Facebook sign-in action
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      side: BorderSide(color: Color(0xFF2F17B1)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.facebook, color: Color(0xFF2F17B1)),
                        SizedBox(width: 10),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF2F17B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigate to sign-in page
              },
              child: Text(
                'Already have an account? Sign in',
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
