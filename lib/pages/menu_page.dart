import 'package:flutter/material.dart';
import 'package:test3/pages/login_page.dart';

class MenyPage extends StatelessWidget {
  const MenyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/kayaminik.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: 400,
          left: 80,
          child: Column(
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                "to our store",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 353,
                    height: 67,
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadiusDirectional.circular(19),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
