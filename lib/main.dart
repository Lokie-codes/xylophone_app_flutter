import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio(
      'assets/note$noteNumber.wav',
    ));
  }

  Expanded createKeyNote(Color buttonColor, int noteNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: Colors.white,
        ),
        child: const Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createKeyNote(Colors.purple, 1),
                createKeyNote(Colors.indigo, 2),
                createKeyNote(Colors.blue, 3),
                createKeyNote(Colors.green, 4),
                createKeyNote(Colors.yellow, 5),
                createKeyNote(Colors.orange, 6),
                createKeyNote(Colors.red, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
