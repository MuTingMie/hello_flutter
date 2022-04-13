import 'package:flutter/material.dart';

// 富文本Demo
class RichTextDemo extends StatelessWidget {
  const RichTextDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return RichText(
      text: const TextSpan(
        text: 'RichText',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ), 
        // children 默认继承 父样式
        children: [
          TextSpan(
            text: 'demo',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            )
          )
       ]
      )
    );
  }
}