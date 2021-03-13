import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tanikyukv2/constants.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/calender.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/profile.dart';

import '../../../../size_config.dart';
import 'background.dart';
import 'dart:ui';

import 'cnbar.dart';
import 'dashboard.dart';

final List<String> imgList = [
  "assets/images/slider1.png",
  "assets/images/slider1.png",
  "assets/images/slider1.png",
  "assets/images/slider1.png",
];

final List<Widget> colorBackgrounds = imgList
    .map((image) => Container(
          //margin: EdgeInsets.all(5.0),
          child: Image.asset(
            image,
            height: getProportionateScreenHeight(200),
          ),
        ))
    .toList();

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Profile(
                image: "assets/images/wk_gb.png",
                nama: "H. Uu Ruzhanul Ulum, SE",
                owner: "Owner",
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(20),
                    0,
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(5)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff99D599).withOpacity(0.3),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 8,
                          spreadRadius: 0.0)
                    ]),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: CarouselSlider(
                        items: colorBackgrounds,
                        options: CarouselOptions(
                            enlargeCenterPage: true,
                            //height: getProportionateScreenHeight(50),
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentPage = index;
                              });
                            }),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            imgList.length, (index) => buildDots(index: index)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Calender(),
                      Container(
                        // width: double.infinity,
                        height: getProportionateScreenHeight(40),
                        margin: EdgeInsets.fromLTRB(
                            getProportionateScreenWidth(5),
                            0,
                            getProportionateScreenWidth(5),
                            0),
                        child: Row(
                          children: [
                            CnBar(text: "01"),
                            CnBar(text: "02"),
                            CnBar(text: "03"),
                            Spacer(),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    getProportionateScreenWidth(5),
                                    0,
                                    getProportionateScreenWidth(5),
                                    0),
                                width: getProportionateScreenWidth(35),
                                height: getProportionateScreenHeight(35),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(20),
                                        color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      DashBoard()
                    ],
                  ),
                )),
          ],
        ),
      )),
    );
  }

  AnimatedContainer buildDots({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: 5,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
