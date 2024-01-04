import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'pages/news/news.dart';
import 'pages/settings/settings.dart';
import 'pages/training/training.dart';

class TabBarBot extends StatefulWidget {
  const TabBarBot({super.key});

  @override
  State<TabBarBot> createState() => _TabBarBotState();
}

class _TabBarBotState extends State<TabBarBot> {

  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const NewsPage(),
    const SettingsPage(),
    const TrainingPage(),
  ];

  final List<String> _titles = <String>[
    '首页',
    '新闻',
    '设置',
    '训练',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: '新闻'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: '训练'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
