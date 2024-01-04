import 'package:flutter/material.dart';
import 'tab_bar_bot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarBot(),
      debugShowCheckedModeBanner: false,
    );
  }
}
