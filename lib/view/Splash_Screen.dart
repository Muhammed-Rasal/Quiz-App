

import 'package:flutter/material.dart';

import 'Home_Screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToFirstPage();
  }

  _navigateToFirstPage() async {
    await Future.delayed(Duration(milliseconds: 2200), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>  HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              width: 150,
              height: 150,
              child: Image.asset('Assets/logo_quiz_app.png')),
        ]),
      ),
    );
  }
}
