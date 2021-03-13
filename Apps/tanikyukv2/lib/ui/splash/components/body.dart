import 'package:flutter/material.dart';
import 'package:tanikyukv2/components/default_button.dart';
import 'package:tanikyukv2/constants.dart';
import 'package:tanikyukv2/size_config.dart';
import 'package:tanikyukv2/ui/splash/components/splash_content.dart';
import 'package:tanikyukv2/warpper.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Three Things To Know \nAbout TaniYUK",
      "texts": "Here's why farmers must use TaniYUK in their \nfarming",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "You Can Monitor Your Plant\nEverywhere & Everytime",
      "texts":
          "You can monitor the condition of your plants \nanywhere and anytime via your smartphone",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Make Your Plant \nIs Safe",
      "texts":
          "Because the condition of your plants is monitored, \nyour plant handler will automatically get better",
      "image": "assets/images/splash_3.png"
    },
    {
      "text": "You Can Find Out \nThe Harvest Schedule",
      "texts":
          "You can find out the harvest schedule, so that \nyour farm management will be better",
      "image": "assets/images/splash_4.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContens(
                          image: splashData[index]["image"],
                          text: splashData[index]["text"],
                          texts: splashData[index]["texts"],
                        ))),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(50)),
                  child: Column(
                    children: [
                      Spacer(flex: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index)),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      currentPage == 3
                          ? DefaultButton(
                              text: "Get Started Now",
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Wrapper()));
                              },
                            )
                          : Container(),
                      Spacer(flex: 2),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
