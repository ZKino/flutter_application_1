import 'package:flutter/material.dart';

class TextSection extends StatefulWidget {
  const TextSection({super.key});

  @override
  State<TextSection> createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
