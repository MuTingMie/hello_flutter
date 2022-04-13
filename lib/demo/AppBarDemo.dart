import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return AppBar(
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
    );
  }

}