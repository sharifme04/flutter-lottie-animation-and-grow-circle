import 'dart:async';

import 'package:flutter/material.dart';

class AnimationCircle extends StatefulWidget {
  const AnimationCircle({super.key});

  @override
  State<AnimationCircle> createState() => _AnimationCircleState();
}

class _AnimationCircleState extends State<AnimationCircle> {
  double circleWidth = 100;
  double circleHeight = 100;
  //double circleRadius = 50;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 0), (() => _expandCircle()));
  }

  void _expandCircle() {
    setState(() {
      circleHeight = 600;
      circleWidth = 600;
      //circleRadius = circleWidth / 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // onTap: _expandCircle,
        child: Scaffold(
      backgroundColor:
          Theme.of(context).primaryColor, //Theme.of(context).textTheme
      body: Center(
        child: Transform.scale(
          scale: 2,
          child: AnimatedContainer(
            duration: const Duration(seconds: 8),
            height: circleHeight,
            width: circleWidth,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.grey)),
                        child: Container(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
