import 'package:flutter/material.dart';

enum Option {
  A, B, C
}

class SimpleDialogDemo extends StatefulWidget {
  const SimpleDialogDemo({ Key? key }) : super(key: key);

  @override
  State<SimpleDialogDemo> createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  Future _openSimpleDialog() async {
    final option = await showDialog(
      context: context, 
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('SimpleDialog'),
          children: [
            SimpleDialogOption(
              child: const Text('Option A'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: const Text('Option B'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: const Text('Option C'),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            )
          ],
        );
      }
    );

    switch (option) {
      case Option.A:
        setState(() {
          _choice = 'A';
        });
        break;
      case Option.B:
        setState(() {
          _choice = 'B';
        });
        break;
      case Option.C:
        setState(() {
          _choice = 'C';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your choice is: $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}