import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playSound(int sound) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$sound.wav'));
  }

  Widget buildKey(Color color, int keyNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          playSound(keyNumber);
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.green, 4),
            buildKey(Colors.teal, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
