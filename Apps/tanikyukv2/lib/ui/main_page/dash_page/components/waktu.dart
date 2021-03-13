import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class Waktu extends StatelessWidget {
  const Waktu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(200),
      width: getProportionateScreenWidth(160),
      margin: EdgeInsets.all(getProportionateScreenWidth(5)),
      decoration: BoxDecoration(
          color: kSecondColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor,
                offset: Offset(4, 6),
                blurRadius: 6,
                spreadRadius: 0.0)
          ]),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: getProportionateScreenHeight(25),
              width: getProportionateScreenWidth(160),
              margin: EdgeInsets.fromLTRB(getProportionateScreenWidth(15),
                  getProportionateScreenHeight(5), 0, 0),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/alarm.svg"),
                  Text(
                    "  Lahan 1",
                    style: TextStyle(
                        fontSize: getProportionateScreenHeight(10),
                        color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(70),
            width: getProportionateScreenWidth(160),
            margin: EdgeInsets.fromLTRB(
                getProportionateScreenWidth(20),
                getProportionateScreenHeight(10),
                getProportionateScreenWidth(20),
                getProportionateScreenHeight(10)),
            child: Row(
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  "17",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppins"),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "Hari\nMenuju\nPanen",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(12),
                      color: kPrimaryColor,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          Container(
            height: getProportionateScreenHeight(30),
            width: getProportionateScreenWidth(160),
            margin: EdgeInsets.fromLTRB(
                getProportionateScreenWidth(30),
                getProportionateScreenHeight(20),
                getProportionateScreenWidth(30),
                getProportionateScreenHeight(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
            child: Center(
              child: Text(
                "Brokoli",
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(14),
                    color: kSecondColor,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
