import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Xylophone(),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              onPressed: () {
                playSound(1);
              },
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              onPressed: () {
                playSound(2);
              },
              child: Container(
                color: Colors.orange,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              onPressed: () {
                playSound(3);
              },
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              onPressed: () {
                playSound(4);
              },
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              onPressed: () {
                playSound(5);
              },
              child: Container(
                color: Colors.blueAccent.shade400,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              onPressed: () {
                playSound(6);
              },
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              onPressed: () {
                playSound(7);
              },
              child: Container(
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void playSound(note) {
  final player = AudioPlayer();
  player.play(AssetSource('audio/note$note.wav'));
}