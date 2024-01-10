import 'dart:math';
import 'package:flutter/material.dart';

class StateManage extends StatefulWidget {
  const StateManage({super.key});

  @override
  State<StateManage> createState() => _StateManageState();
}

class _StateManageState extends State<StateManage> {
  String uName = 'Tracy';

  void _onPressedHandler() {
    setState(() {
      uName = 'Tracy${Random().nextInt(1000)}';
    });
  }

  void onChangeHandler(String value) {
    setState(() {
      uName = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('状态管理'),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Column(
                children: [
                  Text('我是父组件的值：$uName'),
                  ElevatedButton(
                    onPressed: _onPressedHandler,
                    child: const Text('修改父组件的值'),
                  )
                ],
              ),
            ),
            BoxA(uName: uName),
            const SizedBox(height: 20),
            BoxB(uName: uName, onChange: onChangeHandler)
          ],
        ),
      ),
    );
  }
}

class BoxA extends StatefulWidget {
  const BoxA({super.key, required this.uName});

  final String uName;

  @override
  State<BoxA> createState() => _BoxAState();
}

class _BoxAState extends State<BoxA> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              children: [
                const Text('父组件传值给子组件'),
                Container(
                  width: 300.0,
                  height: 50.0,
                  margin: const EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      widget.uName,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BoxB extends StatefulWidget {
  const BoxB({super.key, required this.uName, required this.onChange});

  final String uName;
  final Function onChange;

  @override
  State<BoxB> createState() => _BoxBState();
}

class _BoxBState extends State<BoxB> {
  void _onTapHandler() {
    widget.onChange('Tracy${Random().nextInt(10)}');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              children: [
                const Text('父组件和子组件通信'),
                GestureDetector(
                  onTap: _onTapHandler,
                  child: Container(
                    width: 300.0,
                    height: 50.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        widget.uName,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
