import 'package:bottleapp/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BottleFlipApp());
}

class BottleFlipApp extends StatelessWidget {
  const BottleFlipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottle Flip Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}