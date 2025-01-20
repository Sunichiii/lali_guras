import 'dart:async';
import 'package:flutter/material.dart';
import '../intro_screen/intro_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
          () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => IntroScreen())),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/logo.png"),
      ),
    );
  }
}
