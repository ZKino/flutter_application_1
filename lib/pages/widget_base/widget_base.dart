import 'package:flutter/material.dart';

class WidgetBase extends StatefulWidget {
  const WidgetBase({super.key});

  @override
  State<WidgetBase> createState() => _WidgetBaseState();
}

class _WidgetBaseState extends State<WidgetBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('基本组件'),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Deep linking',
                textAlign: TextAlign.left,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                      disabledBackgroundColor: Colors.grey[350],
                      disabledForegroundColor: Colors.white,
                    ),
                    child: const Text('ElevatedButton'),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.teal,
                    ),
                    child: const Text('TextButton'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.teal,
                      side: const BorderSide(color: Colors.teal),
                    ),
                    child: const Text('OutlinedButton'),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: Colors.teal,
                    icon: const Icon(Icons.thumb_up),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                    label: const Text('发送'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text('添加'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.teal,
                    ),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.info),
                    label: const Text('详情'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.teal,
                      side: const BorderSide(color: Colors.teal),
                    ),
                  ),
                ],
              ),
              const Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Image(
                    image: AssetImage('images/lake.jpg'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: NetworkImage('https://picsum.photos/200/200'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
