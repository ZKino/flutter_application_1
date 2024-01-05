import 'package:flutter/material.dart';
import '../../widget/animated_container.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AnimatedContainerApp(),
    );
  }
}
