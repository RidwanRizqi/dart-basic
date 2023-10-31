import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_login_app/login_screen.dart';


void main() {
  runApp(MaterialApp(
    home: const SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/LoginScreen': (BuildContext context) => LoginScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/icon.jpg',
              width: 200,
              height: 200,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: const CircularProgressIndicator(
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}