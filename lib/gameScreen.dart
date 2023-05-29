// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:math';

import 'resultScreen.dart';
class GameScreen extends StatelessWidget {
  final int playerCount;

  const GameScreen(this.playerCount, {super.key});

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
              'Rotate the Bottle to a Player',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
             Container(
  width: 100,
  height: 200,
  decoration: const BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
      topRight: Radius.circular(50),
      bottomLeft: Radius.circular(200),
      bottomRight: Radius.circular(200)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 5,
        blurRadius: 10
      )
    ]
  ), 
              child: const Center(
                child: Text(
                  'Bottle',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Players:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: playerCount,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Player ${index + 1}'),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      'Player ${Random().nextInt(playerCount) + 1}',
                    ),
                  ),
                );
              },
              child: const Text('Rotate'),
            ),
          ],
        ),
      ),
    );
  }
}