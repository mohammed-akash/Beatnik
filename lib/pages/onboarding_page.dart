import 'package:flutter/material.dart';
import 'package:relationsecure/pages/signin_page.dart';
import 'package:relationsecure/pages/signup.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Space from the top
          Image.asset(
            'assets/frame1.png', // Path to your logo
            height: 500, // Adjust the height as needed
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'The most trusted platform in the market',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Supporting a family member abroad? Need to pay bills? Whatever the reason, we help simplify this process!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20), // Pushes the buttons to the bottom
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage(),));
                  },
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    side: BorderSide(color: Color(0xFF2F17B1)),
                    backgroundColor: Color(0xFF2F17B1), // Background color
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
                SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage(),));
                  },
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    side: BorderSide(color: Color(0xFF2F17B1)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Create a new account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF2F17B1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
