
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
final String winner;

const ResultScreen(this.winner, {super.key});

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
                                      'Game Result',
                                      style: TextStyle(fontSize: 20),
                                    ),
  const SizedBox(height: 20),
        Text(
              'Winner: $winner',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ],
      ),
    ),
    );
    }
    }