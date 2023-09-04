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
  static String get best => 'Best Offer on \nthis Friday';
  static String get categories => 'Categories';
  static String get featuredProduct => 'Featured Product';
  static String get seeAll => 'See All';
}

class ColorConstant{
  ColorConstant._();
  static Color get appColor => Color(0xFFFFFFFF);
  static Color get searchBg => Color(0xFFF2F3F2);
  static Color get searchText => Color(0xFF7C7C7C);
  static Color get address => Color(0xFF4C4F4D);
  static Color get selectedIndicator => Color(0xFF030303);
  static Color get unSelectedIndicator => Color(0xFF1F222B);
  static Color get seeAll => Color(0xFFCF0B15);
  static Color get borderColor => Color(0xFFE2E2E2);
  static Color get percentage => Color(0xFF1F222B);
  static Color get categoryBg => Color(0xFFE4F3EA);
}


class Images{
  Images._();

  static String appImage = 'assets/images/RT/app_logo.svg';
  static String backImage = 'assets/images/RT/back_arrow.svg';
  static String splashImage = 'assets/images/RT/splash_image.svg';
  static String menu = 'assets/images/RT/menu.svg';
  static String shoppingCart = 'assets/images/RT/shopping_cart.svg';
  static String notification = 'assets/images/RT/bell.svg';
  static String location = 'assets/images/RT/location.svg';
  static String search = 'assets/images/RT/search.svg';
  static String sliderImage1 = 'assets/images/RT/slider_image1.svg';
  static String sliderImage2 = 'assets/images/RT/slider_image2.svg';
}