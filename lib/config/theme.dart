import 'package:flutter/cupertino.dart';

class FontFamily {
  FontFamily._();

  static String get poppins => 'Poppins';
}

class StringConstant{
  StringConstant._();

  static String get appName => 'Geogeroccer';
  static String get address => 'New york, USA';
  static String get searchProduct => 'Search products';
}

class ColorConstant{
  ColorConstant._();
  static Color get appColor => Color(0xFFFFFFFF);
  static Color get searchBg => Color(0xFFF2F3F2);
  static Color get searchText => Color(0xFF7C7C7C);
}


class Images{
  Images._();

  static String appImage = 'assets/images/RT/app_logo.svg';
  static String backImage = 'assets/images/RT/back_arrow.svg';
  static String splashImage = 'assets/images/RT/splash_image.svg';
}