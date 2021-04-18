import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanikyukv2/services/auth_firebase.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isHidden = true;
  TextEditingController signInEmail = TextEditingController(text: "");
  TextEditingController signInPassword = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
              child: TextField(
                controller: signInEmail,
                decoration: InputDecoration(
                    hintText: "Enter email or username",
                    hintStyle: TextStyle(
                        fontSize: 10,
                        color: Color(0xff707070),
                        fontFamily: "poppins"),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEAEAF5))),
                    labelStyle: TextStyle(color: Colors.black)),
              )),
          TextField(
            controller: signInPassword,
            obscureText: _isHidden,
            decoration: InputDecoration(
                hintText: "Password",
                suffix: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                    _isHidden ? Icons.visibility : Icons.visibility_off,
                    size: 10,
                  ),
                ),
                hintStyle: TextStyle(
                    fontSize: 10,
                    color: Color(0xff707070),
                    fontFamily: "poppins"),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffEAEAF5))),
                labelStyle: TextStyle(color: Colors.black)),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      fontFamily: "poppins",
                      color: Color(0xff707070),
                      fontSize: 8),
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF00843D)),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Color(0x0fFFCD00),
                        onTap: () {
                          context.read<AuthServices>().signIn(
                              signInEmail.text, signInPassword.text, context);
                        },
                        child: Center(
                            child: Text(
                          "Log In",
                          style: TextStyle(
                              color: Color(0xffFFCD00),
                              fontSize: 14,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  )),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: Text(
                  "OR",
                  style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 12,
                      fontFamily: "poppins"),
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    heroTag: "f4",
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    child: SvgPicture.asset(
                      "assets/icons/google-icon.svg",
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(30),
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: "f5",
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    child: SvgPicture.asset(
                      "assets/icons/facebook-2.svg",
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(30),
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: "f6",
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    child: SvgPicture.asset(
                      "assets/icons/twitter.svg",
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(30),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
