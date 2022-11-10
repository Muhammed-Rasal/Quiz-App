import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/index_controller.dart';
import 'view/screens/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<IndexController>(
      create: (context) => IndexController(),
      child: const MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
