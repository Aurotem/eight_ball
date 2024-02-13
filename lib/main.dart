import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imgNumber = 1;
  @override
  Widget build(BuildContext context) {
    void btnHandler() {
      setState(() {
        imgNumber = Random().nextInt(5) + 1;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask me Anything'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
            onPressed: btnHandler,
            child: Image.asset('images/ball$imgNumber.png')),
      ),
    );
  }
}
