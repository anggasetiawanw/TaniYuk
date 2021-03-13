import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tanikyukv2/services/auth_firebase.dart';
import 'package:tanikyukv2/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tanikyukv2/ui/main_page/main_page.dart';
import 'package:tanikyukv2/ui/splash/splash_screen.dart';
import 'package:tanikyukv2/warpper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

int initScreen;

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return SplashScreen();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamProvider.value(
            value: AuthServices.user,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "TaniYuk",
              theme: theme(),
              // home: SplashScreen()
              // initialRoute: SplashScreen.routeName,
              //routes: routes,
              initialRoute:
                  initScreen == 0 || initScreen == null ? "first" : "/",
              routes: {
                '/': (context) => Wrapper(),
                "first": (context) => SplashScreen(),
              },
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MainPage();
      },
    );
  }
}
