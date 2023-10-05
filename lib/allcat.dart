import 'package:ecom_app/start_shopping.dart';
import 'package:flutter/material.dart';

class alcat extends StatefulWidget {
  const alcat({Key? key}) : super(key: key);

  @override
  State<alcat> createState() => _alcatState();
}

class _alcatState extends State<alcat> {
  List<String> myProducts = [
    "newp1.jpg",
    "newp2.jpg",
    "newp3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Home_pg();
                  },
                ));
              },
              icon: Icon(Icons.arrow_circle_left_rounded)),
        ),
        body: Container(
            child: GridView.builder(
                itemCount: myProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image:
                                      AssetImage("image/${myProducts[index]}"),
                                  fit: BoxFit.cover))));
                })));
  }
}
