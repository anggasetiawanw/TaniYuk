import 'package:flutter/material.dart';
import 'package:tanikyukv2/constants.dart';
import '../../../size_config.dart';
import 'dart:ui';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({
    Key? key, this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: -getProportionateScreenWidth(375) * 10 / 8 / 6,
            top: -getProportionateScreenWidth(375) * 10 / 8 / 2,
            child: Container(
              width: getProportionateScreenWidth(375) * 10 / 8,
              height: getProportionateScreenWidth(375) * 10 / 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/bg_atas.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                child: Container(
                  width: getProportionateScreenWidth(375) * 10 / 8,
                  height: getProportionateScreenWidth(375) * 10 / 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF00843D).withOpacity(0.75),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/ujung_bawah_kiri.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/ujung_bawah_kanan.png"),
          ),
          Positioned(
            bottom: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Support By",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/images/tasik_logo.png",
                  width: getProportionateScreenWidth(100),
                  height: getProportionateScreenHeight(50),
                ),
              ],
            ),
          ),
          child!,
        ],
      ),
    );
  }
}
