import 'package:flutter/material.dart';
import 'package:tanikyukv2/ui/sign_in/components/register_form.dart';
import 'package:tanikyukv2/ui/sign_in/components/sign_in_form.dart';
import '../../../size_config.dart';
import 'package:tanikyukv2/constants.dart';
import 'background.dart';
import 'dart:ui';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Expanded(
                flex: 4,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff99D599).withOpacity(0.3),
                              offset: Offset(0.0, 0.0),
                              blurRadius: 8,
                              spreadRadius: 0.0)
                        ]),
                    margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/logo_tn.png",
                              height: getProportionateScreenHeight(40),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: getProportionateScreenHeight(30),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffEAEAF5)),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TabBar(
                                indicator: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                indicatorColor: Colors.white,
                                labelStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                labelColor: kSecondColor,
                                unselectedLabelColor: kPrimaryColor,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                tabs: [
                                  Tab(text: "Log In"),
                                  Tab(text: "Register")
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                                child: Container(
                              child: TabBarView(
                                children: [
                                  LoginForm(),
                                  RegisterForm(),
                                ],
                              ),
                            ))
                          ],
                        ))),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
