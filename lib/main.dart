import 'package:flutter/material.dart';
import 'package:test3/pages/splash_page.dart';

void main(List<String> args) {
  runApp(MyrirstPage());
}

class MyrirstPage extends StatelessWidget {
  const MyrirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScrinPage(),
    );
  }
}
