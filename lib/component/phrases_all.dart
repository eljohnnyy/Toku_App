import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:project2/models/phrasesmodel.dart';




class phrasesall extends StatelessWidget {
  const phrasesall({super.key, required this.ph,required this.color});
final fares ph;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
       
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 ph.jbname,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                 ph.enname,
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

                 player.play(AssetSource(ph.sound));

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
