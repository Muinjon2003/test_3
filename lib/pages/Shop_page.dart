import 'package:flutter/material.dart';
import 'package:test3/pages/Fiveth_page.dart';
import 'package:test3/pages/Listvieev_page.dart';
import 'package:test3/pages/Second_page.dart';
import 'package:test3/pages/Third_page.dart';

class ShopePage extends StatefulWidget {
  ShopePage({super.key});

  @override
  State<ShopePage> createState() => _MyappState();
}

class _MyappState extends State<ShopePage> {
  @override
  List<String> surat1 = [
    "images/banana.png",
    "images/apple.png",
    "images/banana.png",
    "images/apple.png",
  ];
  List<String> mevagi = [
    "Organic Bananas",
    "Organic Bananas",
    "Red Apple",
    "Red Apple",
  ];
  List<String> text11 = [
    "Organic Bananas",
    "Red Apple",
    "Organic Bananas",
    "Red Apple",
  ];
  List<String> gulho = [
    "images/donagi.png",
    "images/birinj.png",
    "images/donagi.png",
    "images/birinj.png",
  ];
  List<String> textiglo = [
    "Pulses",
    "Rice",
    "Pulses",
    "Rice",
  ];
  List<String> sabzavot = [
    "images/bargali.png",
    "images/gumay.png",
    "images/bargali.png",
    "images/gumay.png",
  ];
  List<String> sabzatext = [
    "Bell Pepper Red",
    "Ginger",
    "Bell Pepper Red",
    "Ginger",
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("Dhaka, Banassre")),
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Exclusive Offer",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page5()));
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff53B175)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 220,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return ListviewPage(
                            surat: surat1[index],
                          );
                        })),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Groceries",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color(0xff030303)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff53B175)),
                        ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 110,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Page2(
                            surat: gulho[index],
                            text1: textiglo[index],
                          );
                        })),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Best Selling",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color(0xff030303)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff53B175)),
                        ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Page3(
                            surat: sabzavot[index],
                            text1: sabzatext[index],
                          );
                        })),
              ],
            ),
          ))),
    );
  }
}
