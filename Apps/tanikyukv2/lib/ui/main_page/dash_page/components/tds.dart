import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class TDS extends StatelessWidget {
  const TDS({
    Key key, this.text,
  }) : super(key: key);
  final String text;
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
            "TDS",
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
                text,
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(40),
                    color: Colors.white,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "\nppm",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(12),
                      color: Colors.white,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
