import 'package:flutter/material.dart';
import 'package:project2/screens/homepage.dart';
import 'package:project2/screens/numberspage.dart';

void main() {
  runApp(toku());
}

class toku extends StatelessWidget {
  toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
