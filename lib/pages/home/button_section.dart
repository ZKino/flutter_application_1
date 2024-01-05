import 'package:flutter/material.dart';
import '../phones/phones.dart';
import '../emails/emails.dart';
import '../shares/shares.dart';

class ButtonSection extends StatefulWidget {
  const ButtonSection({super.key});

  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {
  Widget _buildColumn(IconData icon, String label, Widget page) {
    return Expanded(
      child: GestureDetector(
        child: Column(
          children: [
            Icon(icon, color: Colors.teal, size: 30),
            Container(
              height: 20,
              margin: const EdgeInsets.only(top: 6),
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.teal),
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildColumn(
            Icons.mobile_friendly,
            '电话电话电话电话电话电话电话电话',
            const Phones(title: '电话'),
          ),
          _buildColumn(
            Icons.email,
            '邮件',
            const Emails(title: '邮件'),
          ),
          _buildColumn(
            Icons.share,
            '分享',
            const Shares(title: '分享'),
          ),
        ],
      ),
    );
  }
}
