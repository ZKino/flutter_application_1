import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo 1',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo 2'),
        ),
        body: ListView(
          children: [
            imgSection,
            const SizedBox(height: 26),
            titleSection,
            const SizedBox(height: 20),
            buttonSection,
            const SizedBox(height: 20),
            textSection,
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
  child: Row(
    children: [
      const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Oeschinen Lake Campground',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Kandersteg Switzerland Kandersteg Switzerland Kandersteg Switzerland Kandersteg Switzerland',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
        margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        child: const Row(
          children: [
            Icon(Icons.ac_unit, color: Colors.green),
            Text('41'),
          ],
        ),
      ),
    ],
  ),
);

Widget buttonSection = Container(
  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          const Icon(
            Icons.call,
            color: Colors.green,
            size: 30,
          ),
          Container(
            height: 20,
            margin: const EdgeInsets.only(top: 6),
            child: const Text(
              'CALL',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
      Column(
        children: [
          const Icon(
            Icons.near_me,
            color: Colors.green,
            size: 30,
          ),
          Container(
            height: 20,
            margin: const EdgeInsets.only(top: 6),
            child: const Text(
              'ROUTE',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
      Column(
        children: [
          const Icon(
            Icons.share,
            color: Colors.green,
            size: 30,
          ),
          Container(
            height: 20,
            margin: const EdgeInsets.only(top: 6),
            child: const Text(
              'SHARE',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
  child: const Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese'
    'Alps. Situated 1,578 meters above sea level, it is one of the'
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a'
    'half-hour walk through pastures and pine forest, leads you to the'
    'lake, which warms to 20 degrees Celsius in the summer. Activities'
    'Alps. Situated 1,578 meters above sea level, it is one of the'
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a'
    'half-hour walk through pastures and pine forest, leads you to the'
    'lake, which warms to 20 degrees Celsius in the summer. Activities'
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
    style: TextStyle(fontSize: 18),
  ),
);

Widget imgSection = Container(
  width: 600,
  height: 240,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(6),
  ),
  child: Image.asset('images/lake.jpg', fit: BoxFit.cover),
);
