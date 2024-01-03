import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('苹果'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.all(16),
        ),
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('苹果'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.all(16),
        ),
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('苹果'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.all(16),
        ),
      ],
    );
  }
}
