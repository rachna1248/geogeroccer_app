import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geogeroccer_app/config/theme.dart';

class CommonAppBarClass extends StatefulWidget {
  String? image;
  String? title;

  CommonAppBarClass({Key? key, this.image, this.title}) : super(key: key);

  @override
  State<CommonAppBarClass> createState() => _CommonAppBarClassState();
}

class _CommonAppBarClassState extends State<CommonAppBarClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Container(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                Images.backImage,
                height: 15,
                width: 15,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SvgPicture.asset(
                Images.backImage,
                height: 15,
                width: 15,
                fit: BoxFit.fill,
              ),
            ),
            CommonText(
              title: widget.title ?? StringConstant.appName,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Images.backImage,
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
                SvgPicture.asset(
                  Images.backImage,
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CommonText extends StatefulWidget {
  String? title;
  TextStyle? style;

  CommonText({
    Key? key,
    this.title,
    this.style,
  }) : super(key: key);

  @override
  State<CommonText> createState() => _CommonTextState();
}

class _CommonTextState extends State<CommonText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.title ?? StringConstant.appName,
        style: AppBarTextStyles.commonTextStyle);
  }
}

class ImageWidget {
  static SvgPicture image = SvgPicture.asset(
    Images.appImage,
  );
}

class AppBarTextStyles {
  static TextStyle commonTextStyle = TextStyle(
    fontSize: 14,
    color: ColorConstant.appColor,
    fontWeight: FontWeight.w400,
    height: 21 / 14,
  );
}

class SearchTextStyles {
  static TextStyle commonTextStyle = TextStyle(
    fontSize: 14,
    color: ColorConstant.searchText,
    fontWeight: FontWeight.w400,
    height: 21 / 14,
  );
}

class searchFormFieldDecoration {
  static TextStyle commonTextStyle = TextStyle(
    fontSize: 14,
    color: ColorConstant.searchText,
    fontWeight: FontWeight.w400,
    height: 21 / 14,
  );
}

// class DecorationConstant{
//   DecorationConstant._();
//
//   static InputDecoration searchFieldDecoration
// }

class CommonSearchClass extends StatefulWidget {
  const CommonSearchClass({Key? key}) : super(key: key);

  @override
  State<CommonSearchClass> createState() => _CommonSearchClassState();
}

class _CommonSearchClassState extends State<CommonSearchClass> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConstant.searchBg,
        ),
        child: TextField(
          autofocus: false,
          decoration: InputDecoration(
            filled: true,
            contentPadding: EdgeInsets.all(8),
            fillColor: ColorConstant.searchBg,
            border: InputBorder.none,
            hintText: StringConstant.searchProduct,
            hintStyle: SearchTextStyles.commonTextStyle,
          ),
        ),

      ),
    );
  }
}
