import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget soundTitle({required Color color}) {
    final player = AudioCache();

    return Container(
      width: MediaQuery.of(context).size.height / 7.23,
      color: color,
      child: TextButton(
        onPressed: () {
          player.play("note1.wav");
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text('Flutter Xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundTitle(color: Colors.red),
            soundTitle(color: const Color.fromARGB(255, 255, 136, 0)),
            soundTitle(color: Colors.yellow),
            soundTitle(color: Colors.green),
            soundTitle(color: const Color.fromARGB(255, 14, 107, 53)),
            soundTitle(color: Colors.blue),
            soundTitle(color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
