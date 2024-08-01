import 'package:flutter/material.dart';
import 'package:test3/pages/Gride_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  List<String> suratho = [
    "images/yashik.png",
    "images/rugan.png",
    "images/gusht.png",
    "images/nun.png",
    "images/shir.png",
    "images/ob.png",
    "images/yashik.png",
    "images/yashik.png",
  ];
  List<String> textyakum = [
    "Frash Fruits",
    "Cooking Oil",
    "Frash Fruits",
    "Cooking Oil",
    "Frash Fruits",
    "Cooking Oil",
    "Frash Fruits",
    "Cooking Oil",
  ];
  List<String> textduyum = [
    "& Vegetable",
    "& Ghee",
    "& Vegetable",
    "& Ghee",
    "& Vegetable",
    "& Ghee",
    "& Vegetable",
    "& Ghee",
  ];
  List<Color> rangho = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
    const Color(0xff836AF6),
    const Color(0xff8B91A0),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find Products",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 550,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: suratho.length,
                itemBuilder: (context, index) {
                  return GridPage(
                    suratay: suratho[index],
                    text1: textyakum[index],
                    text2: textduyum[index],
                    rang: rangho[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
