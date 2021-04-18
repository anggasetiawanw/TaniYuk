import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tanikyukv2/constants.dart';
import 'package:tanikyukv2/ui/main_page/home_page/components/profile.dart';

import '../../../../size_config.dart';
import 'background.dart';
import 'dart:ui';

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
                //width: double.infinity,
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
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg_atas.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color(0xFF00843D).withOpacity(0.75),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              getProportionateScreenWidth(20),
                              getProportionateScreenWidth(20),
                              getProportionateScreenWidth(20),
                              0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Belum memiliki ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontSize: getProportionateScreenHeight(16),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Image.asset(
                                "assets/images/logo_tn.png",
                                height: getProportionateScreenHeight(25),
                              ),
                              Text(
                                " ?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontSize: getProportionateScreenHeight(16),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                getProportionateScreenWidth(30),
                                getProportionateScreenWidth(20),
                                getProportionateScreenWidth(20),
                                0),
                            child: Text(
                              "TaniYUK memberikan kesempatan untuk kita semua agar bias bertani dilahan yang kecil serta tidak dipengaruhi oleh iklim dan dapat dikontrol serta dimonitor melalui gadget kalian semua. Bertani juga keren dengan TaniYUK.",
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: getProportionateScreenHeight(14),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              getProportionateScreenWidth(10),
                              getProportionateScreenWidth(20),
                              getProportionateScreenWidth(10),
                              0),
                          height: getProportionateScreenHeight(40),
                          width: getProportionateScreenWidth(340),
                          decoration: BoxDecoration(
                            color: kSecondColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: getProportionateScreenHeight(45),
                                width: getProportionateScreenWidth(150),
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text("PESAN TaniYUK",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "poppins",
                                          fontSize:
                                              getProportionateScreenHeight(14),
                                          fontWeight: FontWeight.bold,
                                          color: kSecondColor)),
                                ),
                              ),
                              Container(
                                height: getProportionateScreenHeight(45),
                                width: getProportionateScreenWidth(150),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text("Coba Demo Produk",
                                      style: TextStyle(
                                          fontFamily: "poppins",
                                          fontSize:
                                              getProportionateScreenHeight(14),
                                          fontWeight: FontWeight.bold,
                                          color: kPrimaryColor)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 5, 30, 0),
                          child: Image.asset("assets/images/bawah_hp1.png",
                              height: getProportionateScreenHeight(140)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  AnimatedContainer buildDots({int? index}) {
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
