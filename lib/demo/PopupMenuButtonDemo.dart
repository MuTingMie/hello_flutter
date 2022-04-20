import 'package:flutter/material.dart';
import 'package:hello_flutter/demo/RichTextDemo.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  const PopupMenuButtonDemo({Key? key}) : super(key: key);

  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();

  // @override
  // State<StatefulWidget> createState() {
  //   throw UnimplementedError();
  // }
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_currentMenuItem),
                PopupMenuButton(
                  // onSelected: (String value) => {
                  //   setState(() {
                  //     _currentMenuItem = value;
                  //   })
                  // },
                  onSelected: (String value) {
                    //print(value);
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    const PopupMenuItem(
                      value: 'Discover',
                      child: Text('Discover'),
                    ),
                    const PopupMenuItem(
                      value: 'Community',
                      child: Text('Community'),
                    )
                  ]
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}