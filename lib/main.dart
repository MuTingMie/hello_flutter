import 'package:flutter/material.dart';
import 'demo/ListViewDemo.dart';

void main() {
  // runApp(const Center(
  //   child: Text(
  //     'hello',
  //     textDirection: TextDirection.ltr,
  //   ),
  // ));
  runApp(const App());
}

// 自定义 Widget
// 不需要修改数据继承 StatelessWidget
// 有需要修改数据 继承 StatefulWidget
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // root widget
    // return Container(
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉 debug 标记
      home: const Home(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('hello'),
        elevation: 8.0, //阴影 0.0 去阴影
      ),
      body: const Hello(),
    );
  }
}

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        // 文字样式
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.amber),
      ),
    );
  }
}
