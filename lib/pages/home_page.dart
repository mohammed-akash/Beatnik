import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Intro'),
    ),
    body: Column(
      children: [
        Text('Welcome to the Home Page',style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold
        ),),
      ],
    )
  );
  }
  
}