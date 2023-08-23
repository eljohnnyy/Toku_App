import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:project2/models/numbermodel.dart';




class numall extends StatelessWidget {
  const numall({super.key, required this.number,required this.color});
final item number;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jbname,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enname,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                  final player = AudioPlayer();

                 player.play(AssetSource(number.sound));
                
                
               
        
              },
              icon: Icon(
                 Icons.play_arrow,
                 color: Colors.white,
                 size: 32,
               ),
            ),
          ),
        ],
      ),
    );
  }
}
