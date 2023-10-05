import 'package:flutter/material.dart';

import 'allcat.dart';

class Home_pg extends StatefulWidget {
  const Home_pg({Key? key}) : super(key: key);

  @override
  State<Home_pg> createState() => _Home_pgState();
}

class _Home_pgState extends State<Home_pg> {
  List categories = [
    "New Arrivals",
    "Clothes",
    "Bags",
    "Shoes",
    "Electronics",
    "jewellery",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          toolbarHeight: 70,
          leading: IconButton(
            padding: EdgeInsets.only(top: 10, left: 20),
            onPressed: () {},
            icon: Icon(Icons.arrow_circle_left_rounded),
            color: Colors.black,
            iconSize: 50,
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.only(top: 10, right: 30),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return alcat();
                  },
                ));
              },
              icon: Icon(Icons.search),
              iconSize: 30,
              color: Colors.black,
            ),
          ]),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10, right: 10),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    height: 70,
                    margin: EdgeInsets.all(08),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(20),
                    child: Text(categories[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
