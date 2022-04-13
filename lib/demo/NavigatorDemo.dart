import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('Home'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => const PageDemo(
                      title: 'Home',
                    ))
                  )
                );
              }, 
            ),
            TextButton(
              child: const Text('About'),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              }, 
            ),
          ]
        ),
      ),
    );
  }
}

class PageDemo extends StatelessWidget {
  final String title;

  const PageDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}