import 'package:flutter/material.dart';

class Shares extends StatefulWidget {
  const Shares({super.key, required this.title});

  final String title;

  @override
  State<Shares> createState() => _SharesState();
}

class _SharesState extends State<Shares> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shares'),
      ),
      body: Center(
        child: Text('Shares 路由传递的参数为：${widget.title}'),
      ),
    );
  }
}
