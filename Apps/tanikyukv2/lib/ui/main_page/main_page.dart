import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tanikyukv2/constants.dart';
import 'package:tanikyukv2/ui/main_page/settings_page/settings_page.dart';

import 'dash_page/dash_page.dart';
import 'home_page/home_page.dart';
import 'package:tanikyukv2/size_config.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    HomePage(),
    DashPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        height: getProportionateScreenHeight(50),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20, color: Color(0x000000).withOpacity(0.16))
            ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                textStyle: TextStyle(
                    fontSize: 18, fontFamily: "poppins", color: kPrimaryColor),
                rippleColor: kSecondColor,
                hoverColor: kSecondColor,
                gap: 8,
                activeColor: kPrimaryColor,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: kSecondColor,
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    iconColor: kSecondColor,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.beer,
                    iconColor: kSecondColor,
                    text: 'Farm',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    iconColor: kSecondColor,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
