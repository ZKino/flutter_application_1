import 'package:flutter/cupertino.dart';
import 'pages/home/home.dart';
import 'pages/news/news.dart';
import 'pages/settings/settings.dart';

class TabBar2 extends StatefulWidget {
  const TabBar2({super.key});

  @override
  State<TabBar2> createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const NewsPage(),
    const SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '首页'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera), label: '新闻'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: '设置'),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) => _pages[index],
        );
      },
    );
  }
}
