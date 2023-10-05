import 'package:ecom_app/start_shopping.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class signup_sucess extends StatefulWidget {
  const signup_sucess({Key? key}) : super(key: key);

  @override
  State<signup_sucess> createState() => _signup_sucessState();
}

class _signup_sucessState extends State<signup_sucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 190),
            child: Lottie.asset("image/loading_animation.json",
                height: 190, width: 190, alignment: Alignment.topCenter),
          )),
          Text('Successful!',
              style: TextStyle(
                  height: 4, fontSize: 40, fontWeight: FontWeight.w900)),
          Center(
            child: Text('''You have successfully registered in 
 our app and start working in it.''',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey)),
          ),
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 190),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Home_pg();
                    },
                  ));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Start Shopping',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
