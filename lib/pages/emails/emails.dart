import 'package:flutter/material.dart';

class Emails extends StatefulWidget {
  const Emails({super.key, required this.title});

  final String title;

  @override
  State<Emails> createState() => _EmailsState();
}

class _EmailsState extends State<Emails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emails'),
      ),
      body: Center(
        child: Text('Emails 路由传递的参数为：${widget.title}'),
      ),
    );
  }
}
