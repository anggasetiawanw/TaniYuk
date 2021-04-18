import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';


class Background extends StatelessWidget {
  final Widget? child;
  const Background({
    Key? key, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: getProportionateScreenHeight(225),
              width: getProportionateScreenWidth(375),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Image.asset("assets/images/ujung_kanan.png")),
              child!,
        ],
      ),
    );
  }
}
