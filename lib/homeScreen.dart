// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

import 'gameScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int playerCount = 1;

  void startGame() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GameScreen(playerCount),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottle Flip Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Flip Type',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () { const ScaffoldMessenger(child: Text("Forward Flip"),);},
                  child: const Text('Forward Flip'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {const ScaffoldMessenger(child: Text("Reverse Flip"),);},
                  child: const Text('Reverse Flip'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Number of Players',
              style: TextStyle(fontSize: 20),
            ),
            Slider(
              value: playerCount.toDouble(),
              min: 1,
              max: 10,
              divisions: 9,
              onChanged: (value) {
                setState(() {
                  playerCount = value.toInt();
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => startGame(),
              child: const Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }
}