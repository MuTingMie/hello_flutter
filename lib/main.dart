import 'package:flutter/material.dart';
import 'model/post.dart';

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
      home: const Home(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // 列表项 处理
  Widget _listItemBuilder(BuildContext context, int index) {
    // return Text(posts[index].title);
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8.0),
      child: Column(children: [
        Image.network(posts[index].imageUrl),
        const SizedBox(height: 16.0),
        Text(
          posts[index].title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          posts[index].author,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(height: 16.0)
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('hello'),
        elevation: 20.0, //阴影 0.0 去阴影
      ),
      // body: const Hello(),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
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
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.yellow),
      ),
    );
  }
}
