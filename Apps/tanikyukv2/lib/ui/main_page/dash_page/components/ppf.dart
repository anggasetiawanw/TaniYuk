import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class PPF extends StatelessWidget {
  const PPF({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(65),
      width: getProportionateScreenWidth(160),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: kBorderColor,
                offset: Offset(4, 5),
                blurRadius: 5,
                spreadRadius: 0.0)
          ]),
      margin: EdgeInsets.all(getProportionateScreenWidth(5)),
      padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(15),
          getProportionateScreenHeight(5),
          getProportionateScreenWidth(20),
          getProportionateScreenHeight(5)),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/sun.svg",
            height: getProportionateScreenHeight(28),
          ),
          Spacer(
            flex: 2,
          ),
          Text(
            text!,
            style: TextStyle(
                fontSize: getProportionateScreenHeight(20),
                color: Colors.white,
                fontFamily: "poppins",
                fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 1,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Lux",
              style: TextStyle(
                  fontSize: getProportionateScreenHeight(16),
                  color: Colors.white,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
