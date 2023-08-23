import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geogeroccer_app/config/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.appColor,
      body: SafeArea(
        bottom: false,
        child: Container(

        )
      ),
    );
  }
}
