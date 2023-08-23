import 'package:flutter/material.dart';
import 'package:project2/component/numall.dart';
import 'package:project2/models/numbermodel.dart';
import 'package:project2/screens/homepage.dart';

class colors extends StatelessWidget {
  const colors({super.key});

  final List<item> color = const [
    item(
      sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jbname: 'Burakku',
        enname: 'black'),
    item(
       sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jbname: 'Chairo',
        enname: 'brown'),
    item(
       sound: 'sounds/colors/dustyyellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jbname: 'Hokori ppoi kiiro',
        enname: 'dusty yellow'),
    item(
       sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jbname: 'Gure',
        enname: 'gray'),
    item(
       sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jbname: 'Midori',
        enname: 'green'),
    item(
       sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jbname: 'Aka',
        enname: 'red'),
    item(
       sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jbname: 'Shiroi',
        enname: 'white'),
    item(
       sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jbname: 'Kiiro',
        enname: 'yellow'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Colors'),
          backgroundColor: const Color.fromARGB(255, 82, 55, 46),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemCount: color.length,
          itemBuilder: (context, index) {
            return numall(number: color[index],color: Color.fromARGB(255, 119, 0, 255) ,);
          },
       
        ),
      ),
    );
  }

}
