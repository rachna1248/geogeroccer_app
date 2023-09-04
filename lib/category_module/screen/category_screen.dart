import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geogeroccer_app/config/theme.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildCategory(),
    );
  }

  Widget _buildCategory(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 130,
        width: context.width,
        decoration: BoxDecoration(
          color: ColorConstant.categoryBg,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
