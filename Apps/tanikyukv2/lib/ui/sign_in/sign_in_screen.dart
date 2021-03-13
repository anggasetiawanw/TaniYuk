import 'package:flutter/material.dart';
import 'package:tanikyukv2/ui/sign_in/components/body.dart';


class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
  //  SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
