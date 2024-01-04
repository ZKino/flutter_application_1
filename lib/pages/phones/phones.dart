import 'package:flutter/material.dart';

class Phones extends StatefulWidget {
  const Phones({super.key, required this.title});

  final String title;

  @override
  State<Phones> createState() => _PhonesState();
}

class _PhonesState extends State<Phones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phones'),
      ),
      body: Center(
        child: Text('Phones 路由传递的参数为：${widget.title}'),
      ),
    );
  }
}
