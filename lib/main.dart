import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int sound)  async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$sound.wav'));
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
            Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                    ),
                    child: Container(
                        color: Colors.red,
                    ),
                    onPressed: () {
                      playSound(1);
                    },
              ),
            ),
            Expanded(

              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: () {
                    playSound(2);
                  },
              child: Container(color: Colors.orange)),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: Container(color: Colors.yellow)),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: Container(color: Colors.green)),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  child: Container(color: Colors.teal)),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: Container(color: Colors.blue)),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                  child: Container(color: Colors.purple)),
            ),
          ],
        ),
      ),
    );
  }
}
