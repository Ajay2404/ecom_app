import 'package:ecom_app/signup_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class login_or_sign_up extends StatefulWidget {
  const login_or_sign_up({Key? key}) : super(key: key);

  @override
  State<login_or_sign_up> createState() => _login_or_sign_upState();
}

class _login_or_sign_upState extends State<login_or_sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Image.asset(
              alignment: Alignment.center,
              "image/p6.jpg",
              height: double.infinity,
              fit: BoxFit.cover),
        ),
        Column(
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return loginpg();
                    },
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 740),
                  child: Center(
                    child: Container(
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 23),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return signuppg();
                  },
                ));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
                child: Center(
                  child: Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
