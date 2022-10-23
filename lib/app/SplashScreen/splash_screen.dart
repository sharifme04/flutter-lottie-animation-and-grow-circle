import 'dart:async';

import 'package:animation_splash/app/AnimatedContainer/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import '../AnimatedContainer/animation_circle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(
          seconds: 4,
        ),
        (() => Navigator.push(
              context,
              //MaterialPageRoute(builder: (context) => const AnimationCircle()),
              MaterialPageRoute(
                  builder: (context) => const StateUpdateScreen()),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.red),
        child: Lottie.asset('assets/splash/31979-fast-food.json'),
      ),
    );
  }
}
