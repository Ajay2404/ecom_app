import 'package:ecom_app/intro_screen/intro_page_1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_screen/intro_page_2.dart';
import 'intro_screen/intro_page_3.dart';
import 'loginorsignup.dart';

class onboardingScreen   extends StatefulWidget {
  const onboardingScreen({Key? key}) : super(key: key);

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            intropage1(),
            intropage2(),
            intropage3(),
          ],
        ),
        Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment(-06, 0.90),
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotWidth: 10.0,
                      dotColor: Colors.grey,
                      dotHeight: 8.0,
                      activeDotColor: Colors.black),
                ),
                Spacer(),
                onLastPage
                    ? IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return login_or_sign_up();
                            },
                          ));
                        },
                        icon: Icon(Icons.arrow_circle_right_rounded),
                        iconSize: 60,
                      )
                    : IconButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease);
                        },
                        icon: Icon(Icons.arrow_circle_right_rounded),
                        iconSize: 60,
                      )
              ],
            )),
      ],
    ));
  }
}
