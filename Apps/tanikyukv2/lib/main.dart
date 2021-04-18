import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tanikyukv2/services/auth_firebase.dart';
import 'package:tanikyukv2/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tanikyukv2/ui/splash/splash_screen.dart';
import 'package:tanikyukv2/warpper.dart';
import 'package:shared_preferences/shared_preferences.dart';  
int initScreen=0;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen")!;
  await prefs.setInt("initScreen", 1);
  print('initScreen $initScreen');
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthServices>(
          create: (_) => AuthServices(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthServices>().authStateChanges,
          initialData: null,
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, theme: theme(), //home: Wrapper()
          initialRoute: initScreen == 0 ? "first" : "/",
              routes: {
                '/': (context) => Wrapper(),
                "first": (context) => SplashScreen(),
          },
          ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//   // // This widget is the root of your application.
//   Widget build(BuildContext context) {
//     // return FutureBuilder(
//     //   // Initialize FlutterFire:
//     //   future: _initialization,
//     //   builder: (context, snapshot) {
//     //     // Check for errors
//     //     if (snapshot.hasError) {
//     //       return NotConnected();
//     //     }

//     //     // Once complete, show your application
//     //     if (snapshot.connectionState == ConnectionState.done) {
//     //       return StreamProvider<User?>.value(
//     //         initialData: null,
//     //         value: AuthServices.user,
//     //         //initialData: null,
//     //         child: MaterialApp(
//     //           debugShowCheckedModeBanner: false,
//     //           title: "TaniYuk",
//     //           theme: theme(),
//     //           // home: SplashScreen()
//     //           // initialRoute: SplashScreen.routeName,
//     //           //routes: routes,
//     //           initialRoute: initScreen == 0 ? "first" : "/",
//     //           routes: {
//     //             '/': (context) => Wrapper(),
//     //             "first": (context) => SplashScreen(),
//     //           },
//     //         ),
//     //       );
//     //     }

//     //     // Otherwise, show something whilst waiting for initialization to complete
//     //     return MainPage();
//     //   },
//     // );
//   }
// }
