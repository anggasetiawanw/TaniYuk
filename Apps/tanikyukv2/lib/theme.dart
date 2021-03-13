import 'package:flutter/material.dart';

import 'constants.dart';


ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "poppins",
    textTheme: TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor)),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
