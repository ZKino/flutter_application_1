import 'package:flutter/material.dart';

class ImgSection extends StatefulWidget {
  const ImgSection({super.key});

  @override
  State<ImgSection> createState() => _ImgSectionState();
}

class _ImgSectionState extends State<ImgSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 240,
      child: Image.asset('images/lake.jpg', fit: BoxFit.cover),
    );
  }
}
