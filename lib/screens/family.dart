import 'package:flutter/material.dart';
import 'package:project2/component/numall.dart';
import 'package:project2/models/numbermodel.dart';
import 'package:project2/screens/homepage.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  final List<item> members = const [
    item(
      sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jbname: 'Chichioya',
        enname: 'father'),
    item(
       sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jbname: 'Musume',
        enname: 'daughter'),
    item(
       sound: 'sounds/family_members/grandfather.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jbname: 'Ojisan',
        enname: 'grand father'),
    item(
       sound: 'sounds/family_members/grandmother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jbname: 'Sobo',
        enname: 'grand mother'),
    item(
       sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jbname: 'Hahaoya',
        enname: 'mother'),
    item(
       sound: 'sounds/family_members/olderbother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jbname: 'Nisan',
        enname: 'older brother'),
    item(
       sound: 'sounds/family_members/oldersister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jbname: 'Ane',
        enname: 'older sister'),
    item(
       sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jbname: 'Musuko',
        enname: 'son'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Family_Members'),
          backgroundColor: const Color.fromARGB(255, 82, 55, 46),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return numall(number: members[index],color: Colors.green,);
          },
       
        ),
      ),
    );
  }

}
