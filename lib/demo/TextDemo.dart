import 'package:flutter/material.dart';

// 文本Demo
class TextDemo extends StatelessWidget {
  const TextDemo({ Key? key }) : super(key: key);

  final TextStyle _textStyle = const TextStyle(
    fontSize: 16.0
  );

  final String _title = '将进酒';
  final String _auther = '李白';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》--  $_auther -- 君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不愿醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马、千金裘，呼儿将出换美酒，与尔同销万古愁。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}