import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SuhuKelembaban extends StatelessWidget {
  const SuhuKelembaban({
    Key? key,
    this.suhu,
    this.kel,
  }) : super(key: key);
  final String? suhu, kel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(65),
      width: getProportionateScreenWidth(160),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: kBorderColor,
            offset: Offset(4, 5),
            blurRadius: 5,
            spreadRadius: 0.0)
      ], color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(getProportionateScreenWidth(5)),
      padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(0),
          getProportionateScreenHeight(10),
          getProportionateScreenWidth(5),
          getProportionateScreenHeight(10)),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/temp.svg",
            height: getProportionateScreenHeight(40),
          ),
          Text(
            suhu!,
            style: TextStyle(
                fontSize: getProportionateScreenHeight(15),
                color: Colors.white,
                fontFamily: "poppins",
                fontWeight: FontWeight.bold),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SvgPicture.asset(
              "assets/icons/cel.svg",
              height: getProportionateScreenHeight(20),
            ),
          ),
          SvgPicture.asset(
            "assets/icons/hum.svg",
            height: getProportionateScreenHeight(40),
          ),
          Text(
            kel!,
            style: TextStyle(
                fontSize: getProportionateScreenHeight(15),
                color: Colors.white,
                fontFamily: "poppins",
                fontWeight: FontWeight.bold),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "%",
              style: TextStyle(
                  fontSize: getProportionateScreenHeight(14),
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
