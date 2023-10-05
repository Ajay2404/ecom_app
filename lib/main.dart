import 'package:ecom_app/splash.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Splashscreen()));
}

class homepg extends StatefulWidget {
  const homepg({Key? key}) : super(key: key);

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  Widget build(BuildContext context) {
    return onboardingScreen();
  }
}
