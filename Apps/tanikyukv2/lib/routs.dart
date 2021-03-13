import 'package:flutter/widgets.dart';
import 'package:tanikyukv2/ui/sign_in/sign_in_screen.dart';
import 'package:tanikyukv2/ui/splash/splash_screen.dart';
import 'package:tanikyukv2/warpper.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  Wrapper.routeName: (context) => Wrapper(),
};
