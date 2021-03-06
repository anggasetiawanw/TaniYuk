import 'package:flutter/material.dart';
import 'package:tanikyukv2/size_config.dart';
import 'package:tanikyukv2/ui/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
