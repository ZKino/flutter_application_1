import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'pages/news/news.dart';
import 'pages/settings/settings.dart';

class TabBar1 extends StatefulWidget {
  const TabBar1({super.key});

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const NewsPage(),
    const SettingsPage(),
  ];

  final List<String> _titles = <String>[
    '首页',
    '新闻',
    '设置',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
      ),
      body: PageView.builder(
        itemCount: _pages.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _pages[_currentIndex];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: '新闻'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
