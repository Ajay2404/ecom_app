import 'package:flutter/material.dart';

class intropage3 extends StatelessWidget {
  const intropage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('image/p4.jpg'),
        ),
        Container(
          child: Center(child: Text("All Types Offers Within Your Reach")),
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
