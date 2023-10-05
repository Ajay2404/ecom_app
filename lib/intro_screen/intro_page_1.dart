import 'package:flutter/material.dart';

class intropage1 extends StatelessWidget {
  const intropage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('image/p1.jpg'),
        ),
        Container(
          child: Center(child: Text("20% Discount New Arrival Product")),
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
