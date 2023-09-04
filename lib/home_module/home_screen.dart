import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geogeroccer_app/common_widget/commom_widget.dart';
import 'package:geogeroccer_app/config/theme.dart';
import 'package:geogeroccer_app/home_module/model/category_model.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    Images.sliderImage1,
    Images.sliderImage2,
    Images.sliderImage1
  ];
  List<CategoryModel> categoryData = [];
  int _current = 0;

  @override
  void initState() {
    super.initState();
    categoryData = [
      CategoryModel(image: Images.appImage, name: "Food"),
      CategoryModel(image: Images.appImage, name: "Gift"),
      CategoryModel(image: "", name: "Fashion"),
      CategoryModel(image: "", name: "Toys")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.appColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            CommonAppBarClass(
              title: StringConstant.categories,
              image: Images.menu,
            ),
            CommonSearchClass(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    height: context.width,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  items: imageList.map((img) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SvgPicture.asset(img),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: imageList.asMap().entries.map(
                                  (image) {
                                    return Container(
                                      width: _current == image.key ? 16 : 8.0,
                                      height: 5,
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 2.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _current == image.key
                                            ? ColorConstant.selectedIndicator
                                            : ColorConstant.unSelectedIndicator,
                                      ),
                                    );
                                  },
                                ).toList()),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            _buildCategory(),
            // _buildFeature(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonText(
            title: StringConstant.address,
            style: TitlesTextStyles.commonTextStyle,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              padding: EdgeInsets.only(
                left: 16,
              ),
              itemBuilder: (context, index) {
                return _buildCategoryList(categoryData[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryList(CategoryModel categoryModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: SvgPicture.asset(
              'assets/images/RT/app_logo.svg',
              height: 24,
              width: 24,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 20,
            child: CommonText(
              title: categoryModel.name,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFeature() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonText(
                title: StringConstant.featuredProduct,
                style: TitlesTextStyles.commonTextStyle,
              ),
              Spacer(),
              CommonText(
                title: StringConstant.seeAll,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 22 / 12,
                    color: ColorConstant.seeAll),
              ),
            ],
          ),
          Expanded(
            child : SizedBox(
              height: 156,
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  itemBuilder: (context, index) {
                    return _buildFeatureList(categoryData[index]);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureList(CategoryModel categoryModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: ColorConstant.address,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: ColorConstant.borderColor,
                      width: 1,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConstant.searchBg,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 16,
                            decoration: BoxDecoration(
                              color: ColorConstant.searchBg,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 24,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
