import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  double _width = 100;
  double _height = 100;

  Color _color = Colors.teal;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void _onPressed() {
    setState(() {
      final random = Random();

      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: _onPressed,
        child: const Icon(Icons.play_arrow_rounded, color: Colors.white),
      ),
    );
  }
}
