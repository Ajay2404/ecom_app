import 'package:flutter/material.dart';

class intropage2 extends StatelessWidget {
  const intropage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('image/p3.jpg'),
        ),
        Container(
          child: Center(child: Text("Take Advantage Of The Offer Shopping")),
        ),
        Container(
          child: Center(
              child: Text(
                  "Publish up your selfies to make yourself more beautiful with this app")),
        ),
      ],
    );
  }
}
