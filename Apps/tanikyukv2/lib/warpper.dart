import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tanikyukv2/ui/main_page/main_page.dart';
import 'package:tanikyukv2/ui/sign_in/sign_in_screen.dart';

class Wrapper extends StatelessWidget {
  static String routeName = "/wrapper";
  @override
  Widget build(BuildContext context) {
    final user = context.watch<User?>();
    if (user != null) {
      print("User Already Signed In");
      return MainPage();
    }
    return SignInScreen();
    // return Provider<User>(
    //   create: (_) => AuthServices.user(),

    // );
  }
}
