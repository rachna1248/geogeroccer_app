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
                widget.image ?? Images.appImage,
                height: 15,
                width: 15,
                fit: BoxFit.fill,
              ),
            ),
            Spacer(),
            SvgPicture.asset(
              Images.location,
              height: 15,
              width: 15,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CommonText(
                  title: widget.title ?? StringConstant.appName,
                  style: AppBarTextStyles.commonTextStyle,
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                SvgPicture.asset(
                  Images.shoppingCart,
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 21,
                ),
                SvgPicture.asset(
                  Images.notification,
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
    return Text(
      widget.title ?? StringConstant.appName,
      maxLines: 1,
      style: widget.style,
    );
  }
}

class ImageWidget {
  static SvgPicture image = SvgPicture.asset(
    Images.appImage,
  );
}

class TitlesTextStyles {
  static TextStyle commonTextStyle = TextStyle(
    fontSize: 16,
    color: ColorConstant.address,
    fontWeight: FontWeight.w600,
    height: 25 / 16,
    overflow: TextOverflow.ellipsis,
  );
}

class AppBarTextStyles {
  static TextStyle commonTextStyle = TextStyle(
    fontSize: 14,
    color: ColorConstant.address,
    fontWeight: FontWeight.w400,
    height: 21 / 14,
    overflow: TextOverflow.ellipsis,
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

class DecorationConstant {
  DecorationConstant._();

  static InputDecoration searchFieldDecoration({
    String? hint,
    double? contentPadding,
    double? verticalContentPadding = 0,
    bool showPrefix = false,
    bool showSuffix = false,
    String? prefixImage,
    String? suffixImage,
    Function()? onSuffix,
    bool fillColor = false,
    bool isColor = false,
  }) {
    contentPadding ??= 25;
    return InputDecoration(
      hintText: hint,
      hintStyle: SearchTextStyles.commonTextStyle,
      filled: fillColor,
      fillColor: fillColor ? ColorConstant.searchBg : ColorConstant.appColor,
      suffixIcon: showSuffix
          ? Padding(
              padding: const EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                  Images.search,
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
              ),
            )
          : SvgPicture.asset(Images.search,
              height: 15, width: 15, fit: BoxFit.fill),
      enabledBorder: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide.none),
      border: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide.none),
      errorBorder: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide.none),
      focusedErrorBorder: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide.none),
      errorMaxLines: 2,
    );
  }
}

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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConstant.searchBg,
        ),
        child: TextField(
          autofocus: false,
          decoration: DecorationConstant.searchFieldDecoration(
            contentPadding: 20,
            hint: StringConstant.searchProduct,
            fillColor: true,
            isColor: true,
            showPrefix: false,
            showSuffix: true,
          ),
        ),
      ),
    );
  }
}
