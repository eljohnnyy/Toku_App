import 'package:flutter/material.dart';
import 'package:project2/models/phrasesmodel.dart';
import 'package:project2/component/phrases_all.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
final List<fares> youssef=const[
fares(jbname: '...', enname: 'how are you feeling?', sound: 'sounds/phrases/how_are_you_feeling.wav'),
fares(jbname: '...', enname: 'are you coming', sound: 'sounds/phrases/are_you_coming.wav'),
fares(jbname: '...', enname: 'dont forget to subscribe', sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
fares(jbname: '...', enname: 'i love anime', sound: 'sounds/phrases/i_love_anime.wav'),
fares(jbname: '...', enname: 'i love programming', sound: 'sounds/phrases/i_love_programming.wav'),
fares(jbname: '...', enname: 'what is your name?', sound: 'sounds/phrases/what_is_your_name.wav'),
fares(jbname: '...', enname: 'where are you going?', sound: 'sounds/phrases/where_are_you_going.wav'),
fares(jbname: '...', enname: 'yes iam comoing', sound: 'sounds/phrases/yes_im_coming.wav'),
];
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phrases'),
          backgroundColor: const Color.fromARGB(255, 82, 55, 46),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemCount: youssef.length,
          itemBuilder: (context, index) {
            return  phrasesall(ph: youssef[index],color: Color.fromARGB(255, 0, 195, 255) ,);
          },
       
        ),
      ),
    );
    
    
    ;
  }
}