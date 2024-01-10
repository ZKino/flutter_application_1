import 'package:flutter/material.dart';
import '../state_manage/state_manage.dart';
import '../widget_base/widget_base.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  final List<Map<String, dynamic>> _btns = [
    {'name': '状态管理', 'page': const StateManage()},
    {'name': '基本组件', 'page': const WidgetBase()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for (final Map<String, dynamic> btn in _btns)
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => btn['page']),
                  );
                },
                child: Text('${btn['name']}'),
              ),
          ],
        ),
      ),
    );
  }
}
