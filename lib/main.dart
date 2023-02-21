import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
  XylophoneApp()  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound (int noteNumber) {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
                    assetsAudioPlayer.open(Audio(
                      'assets/note$noteNumber.wav',
                    ));
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },style: TextButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      '',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },style: TextButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      '',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      '',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      '',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      '',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },style: TextButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      '',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      '',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}