import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geogeroccer_app/common_widget/commom_widget.dart';
import 'package:geogeroccer_app/config/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            CommonAppBarClass(
              title: StringConstant.address,
            ),
          ],
        ),
      ),
    );
  }
}
