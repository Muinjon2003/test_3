import 'package:flutter/material.dart';
import 'package:test3/pages/menu_page.dart';

class SplashScrinPage extends StatefulWidget {
  const SplashScrinPage({super.key});

  @override
  State<SplashScrinPage> createState() => _SplashScrinPageState();
}

class _SplashScrinPageState extends State<SplashScrinPage> {
  @override
  void initState() {
    super.initState();
    goToNextPage();
  }

  goToNextPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MenyPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff53B175),
      ),
      body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          color: Color(0xff53B175),
          child: Image.asset(
            "images/Group 1.png",
            width: 267,
            height: 68,
          )),
    );
  }
}
