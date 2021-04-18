import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class CnBar extends StatelessWidget {
  const CnBar({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(5), 0, getProportionateScreenWidth(5), 0),
      width: getProportionateScreenWidth(75),
      height: getProportionateScreenHeight(35),
      padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(5),
          getProportionateScreenHeight(5),
          getProportionateScreenWidth(5),
          getProportionateScreenHeight(5)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(Icons.apartment),
        Text(
          text!,
          style: TextStyle(
              fontSize: getProportionateScreenHeight(15), color: Colors.black),
        )
      ]),
    );
  }
}
