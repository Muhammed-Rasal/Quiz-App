import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp2/controller/provider.dart';
import 'view/Splash_Screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ChangeIndex(),
    child: const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
