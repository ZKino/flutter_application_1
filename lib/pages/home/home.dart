import 'package:flutter/material.dart';
import './img_section.dart';
import './title_section.dart';
import './text_section.dart';
import './button_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ImgSection(),
        SizedBox(height: 26),
        TitleSection(),
        SizedBox(height: 20),
        ButtonSection(),
        SizedBox(height: 20),
        TextSection(),
      ],
    );
  }
}
