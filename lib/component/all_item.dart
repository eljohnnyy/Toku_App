import 'package:flutter/material.dart';
class all extends StatelessWidget {
 all({this.text,this.color,this.ontap});
String? text;
Color? color;
Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return      GestureDetector(
      onTap: ontap,
      child: Container(
                padding: EdgeInsets.only(left: 24),
                height: 65,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                color:color,
                child: Text(
                text!,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
    );
  }
}