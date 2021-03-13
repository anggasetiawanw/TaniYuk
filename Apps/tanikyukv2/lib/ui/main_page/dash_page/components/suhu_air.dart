import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SuhuAir extends StatelessWidget {
  const SuhuAir({
    Key key, this.suhuAir,
  }) : super(key: key);
  final String suhuAir;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(110),
      width: getProportionateScreenWidth(160),
      padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(30),
          getProportionateScreenHeight(10),
          getProportionateScreenWidth(5),
          getProportionateScreenHeight(10)),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: kBorderColor,
            offset: Offset(4, 5),
            blurRadius: 5,
            spreadRadius: 0.0)
      ], color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(15),
          getProportionateScreenHeight(5),
          getProportionateScreenWidth(10),
          getProportionateScreenHeight(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suhu Air",
            style: TextStyle(
                fontSize: getProportionateScreenHeight(16),
                color: Colors.white,
                fontFamily: "poppins",
                fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                suhuAir,
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(40),
                    color: Colors.white,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  "assets/icons/cel.svg",
                  height: getProportionateScreenHeight(26),
                ),
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
