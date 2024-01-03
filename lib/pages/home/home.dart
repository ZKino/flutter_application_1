import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        imgSection,
        const SizedBox(height: 26),
        titleSection,
        const SizedBox(height: 20),
        buttonSection,
        const SizedBox(height: 20),
        textSection,
        const SizedBox(height: 20),
        listSection,
      ],
    );
  }
}

Widget imgSection = Container(
  width: 600,
  height: 240,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(6),
  ),
  child: Image.asset('images/lake.jpg', fit: BoxFit.cover),
);

Widget titleSection = Container(
  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
  child: Row(
    children: [
      const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '水调歌头-苏轼',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              '明月几时有？把酒问青天。不知天上宫阙，今夕是何年。',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
        margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        child: const Row(
          children: [
            Icon(Icons.heart_broken, color: Colors.teal),
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
      Expanded(
        child: Column(
          children: [
            const Icon(
              Icons.call,
              color: Colors.teal,
              size: 30,
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.only(top: 6),
              child: const Text(
                '电话',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: [
            const Icon(
              Icons.near_me,
              color: Colors.teal,
              size: 30,
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.only(top: 6),
              child: const Text(
                '邮件',
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: [
            const Icon(
              Icons.share,
              color: Colors.teal,
              size: 30,
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.only(top: 6),
              child: const Text(
                '分享',
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
  child: const Text(
    '路上只我一个人，背着手踱着。这一片天地好像是我的;'
    '我也像超出了平常旳自己，到了另一世界里。'
    '我爱热闹，也爱冷静;爱群居，也爱独处。'
    '像今晚上，一个人在这苍茫旳月下，什么都可以想，什么都可以不想，便觉是个自由的人。'
    '白天里一定要做的事，一定要说的话，现在都可不理。'
    '这是独处的妙处，我且受用这无边的荷香月色好了。'
    '曲曲折折的荷塘上面，弥望旳是田田的叶子。'
    '叶子出水很高，像亭亭旳舞女旳裙。'
    '层层的叶子中间，零星地点缀着些白花，'
    '有袅娜(niǎo,nuó)地开着旳，有羞涩地打着朵儿旳;'
    '正如一粒粒的明珠，又如碧天里的星星，又如刚出浴的美人。'
    '微风过处，送来缕缕清香，'
    '仿佛远处高楼上渺茫的歌声似的。'
    '这时候叶子与花也有一丝的颤动，像闪电般，霎时传过荷塘的那边去了。'
    '叶子本是肩并肩密密地挨着，这便宛然有了一道凝碧的波痕。'
    '叶子底下是脉脉(mò)的流水，遮住了，不能见一些颜色;而叶子却更见风致了。',
    softWrap: true,
    style: TextStyle(fontSize: 18),
  ),
);

Widget listSection = SizedBox(
  height: 200,
  child: ListView(
    children: const [
      ListTile(
        leading: Icon(Icons.apple),
        title: Text('苹果'),
        trailing: Icon(Icons.keyboard_arrow_right),
        contentPadding: EdgeInsets.all(16),
      ),
      ListTile(
        leading: Icon(Icons.car_crash),
        title: Text('汽车'),
        trailing: Icon(Icons.keyboard_arrow_right),
        contentPadding: EdgeInsets.all(16),
      ),
      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text('雪花'),
        trailing: Icon(Icons.keyboard_arrow_right),
        contentPadding: EdgeInsets.all(16),
      ),
    ],
  ),
);
