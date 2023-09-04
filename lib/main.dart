import 'package:flutter/material.dart';
import 'package:geogeroccer_app/config/theme.dart';
import 'package:geogeroccer_app/splash_module/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: FontFamily.poppins,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

