import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(int number, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(1, Colors.red),
            buildKey(2, Colors.orange),
            buildKey(3, Colors.yellow),
            buildKey(4, Colors.green),
            buildKey(5, Colors.teal),
            buildKey(6, Colors.blue),
            buildKey(7, Colors.indigo),
          ]),
        ),
      ),
    );
  }
}
