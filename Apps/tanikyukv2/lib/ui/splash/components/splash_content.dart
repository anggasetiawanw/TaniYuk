import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContens extends StatelessWidget {
  const SplashContens({
    Key? key,
    this.text,
    this.texts,
    this.image,
  }) : super(key: key);
  final String? text, texts, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(350),
          width: getProportionateScreenWidth(300),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          texts!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14, color: kPrimaryColor, fontFamily: "Roboto"),
        ),
      ],
    );
  }
}
