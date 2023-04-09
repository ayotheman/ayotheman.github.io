import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text('Flutter is Fun!')),
        body: ElevatedButton(
          child: const Text('Navigate'),
          onPressed: () {
            Navigator.of(context).pushNamed("AboutScreen");
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Flutter is Fun!')),
      ),
      routes: {
        "AboutScreen": (context) => const AboutScreen(),
        },
    );
  }
}
