import 'package:flutter/material.dart';
import 'tab_bar1.dart';
import 'tab_bar2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
      ),
      home: const TabBar1(),
    );
  }
}
