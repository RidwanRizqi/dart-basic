import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.asset(
            'images/owl.jpg',
            width: 300,
            height: 300,   
          ),
        ),
      )
    );
  }
}
