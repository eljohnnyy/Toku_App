import 'package:flutter/material.dart';
import 'package:project2/component/phrases_all.dart';
import 'package:project2/models/phrasesmodel.dart';
import 'package:project2/screens/colors.dart';
import 'package:project2/screens/goal.dart';
import 'package:project2/screens/family.dart';
import 'package:project2/screens/numberspage.dart';

import '../component/all_item.dart';
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xffFEF6DB),
        appBar: AppBar(
          title: Text('TOKU'),
          backgroundColor: const Color.fromARGB(255, 82, 55, 46),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            all(text: 'Numbers',color:Colors.orange ,ontap:()
            {Navigator.push(context
            ,MaterialPageRoute(builder:( cotext){

              return numberspage();
            } ) );
            },),
           all(text: 'Family Member',color:Colors.green ,
           ontap:()
            {Navigator.push(context
            ,MaterialPageRoute(builder:( cotext){

              return Family();
            } ) );}
           ),
           all(text: 'Colors',color:Color.fromARGB(255, 119, 0, 255) ,
            ontap:()
            {Navigator.push(context
            ,MaterialPageRoute(builder:( cotext){

              return colors();
            } ) );}
           
           ),
           all(text: 'phrases',color:const Color.fromARGB(255, 0, 195, 255),
             ontap:()
            {Navigator.push(context
            ,MaterialPageRoute(builder:( cotext){

              return MyWidget();
            } ) );}
           ),
          
          ],
        ),
      ) ;
  }
}
