import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

Widget buildKey(int number, Color color){
             return Expanded(
              child: FlatButton(
                onPressed: () => playSound(number),
                color: color,
              ),
            );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.yellow),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.green),
              buildKey(7, Colors.white),



          ]),
        ),
      ),
    );
  }
}
