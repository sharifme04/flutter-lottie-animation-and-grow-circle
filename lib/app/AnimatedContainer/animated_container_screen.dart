import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double boxWidth = 100;
  double boxHeight = 100;

  void _expandBox() {
    setState(() {
      boxHeight = 400;
      boxWidth = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _expandBox,
        child: Scaffold(
            // ignore: avoid_unnecessary_containers
            backgroundColor: Colors.deepOrange[200],
            body: Center(
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                width: boxWidth,
                height: boxHeight,
                color: Colors.deepOrange[700],
              ),
            )));
  }
}
