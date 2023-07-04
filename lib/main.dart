import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: magicBall(),
    );
  }
}

class magicBall extends StatelessWidget {
  const magicBall({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask me Anything"),
      ),
      backgroundColor: Colors.blue[900],
      body: imageContainer(),
    );
  }
}

class imageContainer extends StatefulWidget {
  const imageContainer({super.key});
  @override
  State<imageContainer> createState() => _imageContainerState();
}

class _imageContainerState extends State<imageContainer> {
  int ball = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            
          ball = Random().nextInt(5) + 1;
          });

          debugPrint("I got clicked!! $ball");
        },
        child: Image.asset('images/ball$ball.png'),
      ),
    );
  }
}
