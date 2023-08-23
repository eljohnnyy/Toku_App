import 'package:flutter/material.dart';
import 'package:project2/component/numall.dart';
import 'package:project2/models/numbermodel.dart';
import 'package:project2/screens/homepage.dart';

class numberspage extends StatelessWidget {
  const numberspage({super.key});

  final List<item> numbers = const [
    item(
      sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jbname: 'ichi',
        enname: 'one'),
    item(
       sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jbname: 'Ni',
        enname: 'two'),
    item(
       sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jbname: 'San',
        enname: 'three'),
    item(
       sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jbname: 'Shi',
        enname: 'four'),
    item(
       sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jbname: 'Go',
        enname: 'five'),
    item(
       sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jbname: 'Roku',
        enname: 'six'),
    item(
       sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jbname: 'Sebun',
        enname: 'seven'),
    item(
       sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jbname: 'hachi',
        enname: 'eight'),
    item(
       sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jbname: 'Kyu',
        enname: 'nine'),
    item(
       sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jbname: 'Ju',
        enname: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Numbers'),
          backgroundColor: const Color.fromARGB(255, 82, 55, 46),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return numall(number: numbers[index],color: Colors.orange,);
          },
       
        ),
      ),
    );
  }
 
}
