import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio(
      'assets/note$noteNumber.wav',
    ));
  }

  Expanded createKeyNote({Color? buttonColor, required int noteNumber}) =>
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
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
      ),
    );

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
                createKeyNote(buttonColor: Colors.purple, noteNumber: 1),
                createKeyNote(buttonColor: Colors.indigo, noteNumber: 2),
                createKeyNote(buttonColor: Colors.blue, noteNumber: 3),
                createKeyNote(buttonColor: Colors.green, noteNumber: 4),
                createKeyNote(buttonColor: Colors.yellow, noteNumber: 5),
                createKeyNote(buttonColor: Colors.orange, noteNumber: 6),
                createKeyNote(buttonColor: Colors.red, noteNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
