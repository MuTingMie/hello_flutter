import 'package:flutter/material.dart';
import 'package:hello_flutter/demo/BottomNavigationBarDemo.dart';
import 'demo/DrawerDemo.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.lime, 
        highlightColor: const Color.fromRGBO(255, 255, 255, 0.5), 
        splashColor: Colors.white70 //水波纹
          ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('hello'.toUpperCase()),
          elevation: 8.0, //阴影 0.0 去阴影
          // 默认有 menu 侧栏 按钮
          // leading: IconButton(
          //     icon: const Icon(Icons.menu),
          //     tooltip: 'Navigation',
          //     onPressed: () => debugPrint('Navigation button is pressed')),
          actions: [
            IconButton(
              icon: const Icon(Icons.search), 
              tooltip: 'Search', 
              onPressed: () => debugPrint('Search button is pressed')
            ), 
            IconButton(
              icon: const Icon(Icons.login), 
              tooltip: 'Login', 
              onPressed: () => debugPrint('Login button is pressed')
              )
            ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.local_florist)), 
              Tab(icon: Icon(Icons.change_history)), 
              Tab(icon: Icon(Icons.directions_bike))]),
        ),
        //body: const Hello(),
        //body: const ListViewDemo(),
        body: const TabBarView(
          children: [
            ListViewDemo(), 
            Icon(Icons.change_history, size: 128.0, color: Colors.black12), 
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
          ]
        ),
        // drawer: 左侧栏
        drawer: const DrawerDemo(),
        // endDrawer: 右侧栏 - Container 自定义
        endDrawer: const EndDrawerDemo(),
        bottomNavigationBar: const BottomNavigationBarDemo(),
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
        style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.amber),
      ),
    );
  }
}
